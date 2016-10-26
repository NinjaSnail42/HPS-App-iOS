//
//  SendPushNotifications.h
//  HPS App
//
//  Created by Brandon Huettner on 3/25/14.
//  Copyright (c) 2014 Humphrey Public School. All rights reserved.
//

#import <UIKit/UIKit.h>

@class PushViewController;

@interface SendPushNotifications : UIViewController{
    NSTimer *pushLoadingTimer;
}
//Check for Internet Connection
@property (weak, nonatomic) IBOutlet UIWebView *webView;



//Info
- (IBAction)administrationInfo:(id)sender;
- (IBAction)pushNotificationsInfo:(id)sender;


@property (strong, nonatomic) PushViewController *pushViewController;
@property (weak, nonatomic) IBOutlet UIView *sendingPush;

@property (strong, nonatomic) IBOutlet UITextField *usernameField;
@property (strong, nonatomic) IBOutlet UITextField *passwordField;
@property (strong, nonatomic) IBOutlet UILabel *informationIncorrect;
@property (strong, nonatomic) IBOutlet UIButton *signInButton;

- (IBAction)returnKey:(id)sender;
- (IBAction)returnSendPush:(id)sender;
@property (weak, nonatomic) IBOutlet UIView *settingsView;

- (IBAction)settingsButton:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *pushText;
@property (weak, nonatomic) IBOutlet UIScrollView *loadingView;
@property (weak, nonatomic) IBOutlet UILabel *pushSentLabel;
@property (weak, nonatomic) IBOutlet UITextView *pushSentBox;

- (IBAction)settingsDone:(id)sender;
- (IBAction)cancelButton:(id)sender;
- (IBAction)sendPushButton:(id)sender;
- (IBAction)signInButton:(id)sender;
@property (strong, nonatomic) IBOutlet UIImageView *pushSentImage;

- (void)pushSent;

//Switches
@property (strong, nonatomic) IBOutlet UISwitch *bandSwitch;
@property (strong, nonatomic) IBOutlet UISwitch *speechSwitch;

@end
