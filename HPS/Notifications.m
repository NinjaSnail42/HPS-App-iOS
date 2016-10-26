//
//  Notifications.m
//  HPS App
//
//  Created by Brandon Huettner2 on 12/9/13.
//  Copyright (c) 2013 Humphrey Public School. All rights reserved.
//

#import "Notifications.h"

@interface Notifications ()

@end

@implementation Notifications

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void) viewWillAppear:(BOOL)animated{
    _notificationLabel.text = [NSString stringWithFormat:@"Test"];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSDictionary *lastNotif = [[NSUserDefaults standardUserDefaults] objectForKey:@"notificationReceived"];
    if (lastNotif != nil)
    {
//handle what you want to do with your notification
        
        //now don't forget to clean userDefaults
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//Work on this
- (IBAction)refreshButton:(id)sender {
}
@end
