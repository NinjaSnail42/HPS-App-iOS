//
//  Settings.m
//  hps app
//
//  Created by Brandon Huettner on 1/4/14.
//  Copyright (c) 2014 Humphrey Public School. All rights reserved.
//

#import "Settings.h"

@interface Settings ()

@end

@implementation Settings

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)bandChannelSwitch:(id)sender {
}

- (IBAction)cancelButton:(id)sender {
            [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)pushNotificationChannelsInfo:(id)sender {
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Push Notification Channels" message:@"You can now subscribe to specific channels to get push notifications about the events associated with that channel.  To Subscribe, turn the switch on." delegate:self cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alert show];
}
@end
