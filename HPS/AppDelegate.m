//
//  AppDelegate.m
//  HPS
//
//  Created by Brandon Huettner on 28/4/13.
//  Copyright (c) 2013 Brandon Huettner. All rights reserved.
//

#import <Parse/Parse.h>
#import "AppDelegate.h"
#import "HomeScreen.h"

#define UIColorFromRGB(rgbValue) [UIColor colorWithRed:((float)((rgbValue & 0xFF0000) >> 16))/255.0 green:((float)((rgbValue & 0xFF00) >> 8))/255.0 blue:((float)(rgbValue & 0xFF))/255.0 alpha:1.0]

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [Parse setApplicationId:@"QO3ec4YxJhzGzzuBqIjCXIfVxBr0KOKvM7GN766X"
                  clientKey:@"jFBrXGiI6YaPKLbhso2weDr1pmKPynpsXuIFO5Cf"];

    PFInstallation *currentInstallation = [PFInstallation currentInstallation];
    [currentInstallation addUniqueObject:@"HPS" forKey:@"channels"];
    [currentInstallation saveInBackground];
   
    [[UINavigationBar appearance] setBarTintColor:UIColorFromRGB(0xCC0000)];
    [[UIToolbar appearance] setBarTintColor:UIColorFromRGB(0xCC0000)];
    [[UIBarButtonItem appearance] setTintColor:UIColorFromRGB(0x000000)];

    
    if (application.applicationState != UIApplicationStateBackground) {
    
        BOOL preBackgroundPush = ![application respondsToSelector:@selector(backgroundRefreshStatus)];
        BOOL oldPushHandlerOnly = ![self respondsToSelector:@selector(application:didReceiveRemoteNotification:fetchCompletionHandler:)];
        BOOL noPushPayload = ![launchOptions objectForKey:UIApplicationLaunchOptionsRemoteNotificationKey];
        if (preBackgroundPush || oldPushHandlerOnly || noPushPayload) {
            [PFAnalytics trackAppOpenedWithLaunchOptions:launchOptions];
        }
    }
    
    [application registerForRemoteNotificationTypes:UIRemoteNotificationTypeBadge|
     UIRemoteNotificationTypeAlert|
     UIRemoteNotificationTypeSound];
    
    
    if ([launchOptions objectForKey:UIApplicationLaunchOptionsRemoteNotificationKey])
    {[[NSUserDefaults standardUserDefaults] setObject:[launchOptions objectForKey:UIApplicationLaunchOptionsRemoteNotificationKey] forKey:@"notificationReceived"];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }

    
    return YES;
}

//- (void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
//{
    //mdata = [[NSMutableData alloc]init];
//}

//- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
//{
  //  [mdata appendData:data];
//}


//- (void)connectionDidFinishLoading:(NSURLConnection *)connection
//{
   // NSString  *filePath = [NSString stringWithFormat:@"%u/%@", NSDocumentDirectory,@"Months.plist"];
    //[mdata writeToFile:filePath atomically:YES];
//}


- (void)application:(UIApplication *)application
didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken
{
    // Store the deviceToken in the current installation and save it to Parse.
    PFInstallation *currentInstallation = [PFInstallation currentInstallation];
    [currentInstallation setDeviceTokenFromData:deviceToken];
    [currentInstallation saveInBackground];
}

- (void)application:(UIApplication *)application
didReceiveRemoteNotification:(NSDictionary *)userInfo {
    
    [PFPush handlePush:userInfo];
    
    if (application.applicationState == UIApplicationStateInactive) {
        [PFAnalytics trackAppOpenedWithRemoteNotificationPayload:userInfo];
    }
    
}

- (void)application:(UIApplication *)application
didReceiveRemoteNotification:(NSDictionary *)userInfo
fetchCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler {
    if (application.applicationState == UIApplicationStateInactive) {
        [PFAnalytics trackAppOpenedWithRemoteNotificationPayload:userInfo];
    }
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
