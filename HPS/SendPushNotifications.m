//
//  SendPushNotifications.m
//  HPS App
//
//  Created by Brandon Huettner on 3/25/14.
//  Copyright (c) 2014 Humphrey Public School. All rights reserved.
//

#import "SendPushNotifications.h"
#import <SystemConfiguration/SCNetworkReachability.h>

@interface SendPushNotifications ()

@end

@implementation SendPushNotifications

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

//    if ([[Reachability reachabilityWithHostName:@"google.com"] currentReachabilityStatus] == NotReachable)
//    {
//        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Something Went Wrong..." message:@"Looks like you're not connected to the internet.  Connect to the internet to view newsletters." delegate:self cancelButtonTitle:@"Okay" otherButtonTitles: nil];
//        [alert show];
//    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Somethin Went Wrong..." message:@"Looks like you're not connected to the internet.  Connect to the internet to view newsletters." delegate:self cancelButtonTitle:@"Okay" otherButtonTitles: nil];
    [alert show];
}

- (IBAction)returnKey:(id)sender {
    [sender resignFirstResponder];
}

- (IBAction)returnSendPush:(id)sender{
    [sender resignFirstResponder];

}

- (IBAction)settingsButton:(id)sender {
    CGRect frame = _settingsView.frame;
    frame.origin.y=50;
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.25];
    _settingsView.frame = frame;
    
    [UIView commitAnimations];
}

- (IBAction)settingsDone:(id)sender {
    CGRect frame = _settingsView.frame;
    frame.origin.y=600;
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.25];
    _settingsView.frame = frame;
    
    [UIView commitAnimations];
}

- (IBAction)cancelButton:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)sendPushButton:(id)sender {
    
    [sender resignFirstResponder];
    
    _loadingView.alpha=1;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.25];
    _sendingPush.alpha=1;
    CALayer *layer = self.sendingPush.layer;
    layer.shadowOffset = CGSizeMake(1, 1);
    layer.shadowColor = [[UIColor blackColor] CGColor];
    layer.shadowRadius = 4.0f;
    layer.shadowOpacity = 0.80f;
    layer.shadowPath = [[UIBezierPath bezierPathWithRect:layer.bounds] CGPath];
    [UIView commitAnimations];
    
    
    CGRect frame = _loadingView.frame;
    frame.origin.y=0;
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:2.0];
    _loadingView.frame = frame;
    
    [UIView commitAnimations];
    
    pushLoadingTimer = [NSTimer scheduledTimerWithTimeInterval:3.0 target:self selector:@selector(pushSent) userInfo:nil repeats:NO];
}

- (void)pushSent{

    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.0];
    _loadingView.alpha=0;
    _sendingPush.alpha=0;
    [UIView commitAnimations];
    
    _pushSentLabel.alpha=1;
    _pushSentBox.text=self.pushText.text;
    _pushText.text=@"";
    _pushSentImage.hidden=NO;
    
    CGRect frame = _loadingView.frame;
    frame.origin.y=600;
    _loadingView.frame = frame;
}


- (IBAction)signInButton:(id)sender {
    
    //Check for Internet Connection
    NSString *fullURL = @"http://www.humphrey.esu7.org";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:requestObj];
    //Finished Checking for Internet Connection
    
}

- (IBAction)administrationInfo:(id)sender {
    UIAlertView *administrationInfo = [[UIAlertView alloc]initWithTitle:@"Administration Page" message:@"This page is for administrators only. It contains tools for administrative use." delegate:self cancelButtonTitle:@"Okay" otherButtonTitles: nil];
    [administrationInfo show];
}

- (IBAction)pushNotificationsInfo:(id)sender {
    UIAlertView *pushNotificationsInfo = [[UIAlertView alloc]initWithTitle:@"Signing In" message:@"You must sign in with the Username and Password that was given to you in order to send push notifications." delegate:self cancelButtonTitle:@"Okay" otherButtonTitles: nil];
    [pushNotificationsInfo show];
}
@end
