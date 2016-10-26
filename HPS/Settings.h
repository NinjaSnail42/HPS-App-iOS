//
//  Settings.h
//  hps app
//
//  Created by Brandon Huettner on 1/4/14.
//  Copyright (c) 2014 Humphrey Public School. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Settings : UIViewController
@property (weak, nonatomic) IBOutlet UISwitch *bandChannelSwitch;
- (IBAction)bandChannelSwitch:(id)sender;
- (IBAction)cancelButton:(id)sender;
- (IBAction)pushNotificationChannelsInfo:(id)sender;
@end
