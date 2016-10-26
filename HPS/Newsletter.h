//
//  Newsletter.h
//  HPS App
//
//  Created by Brandon Huettner2 on 12/10/13.
//  Copyright (c) 2013 Humphrey Public School. All rights reserved.
//

#import <UIKit/UIKit.h>
#define SIMPLE_LAYOUT 0

@interface Newsletter : UIViewController <UIWebViewDelegate>

// Newsletter Buttons
- (IBAction)februaryNewsletterButton:(id)sender;
- (IBAction)januaryNewsletterButton:(id)sender;
- (IBAction)decemberNewsletterButton:(id)sender;
- (IBAction)novemberNewsletterButton:(id)sender;
- (IBAction)octoberNewsletterButton:(id)sender;
- (IBAction)septemberNewsletterButton:(id)sender;
- (IBAction)augustNewsletterButton:(id)sender;
- (IBAction)marchNewsletterButton:(id)sender;
- (IBAction)aprilNewsletterButton:(id)sender;
- (IBAction)mayNewsletter:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *augustButton;

@property (weak, nonatomic) IBOutlet UIScrollView *newsletterScrollView;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *backButton;
- (IBAction)backButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;
@property (weak, nonatomic) IBOutlet UIView *newsletterView;
- (IBAction)printNewsletter:(id)sender;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *printButton;

@end
