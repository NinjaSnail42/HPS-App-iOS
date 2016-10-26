//
//  Contact.m
//  HPS App
//
//  Created by Brandon Huettner2 on 12/10/13.
//  Copyright (c) 2013 Humphrey Public School. All rights reserved.

#import "Contact.h"
#import <QuartzCore/QuartzCore.h>

@interface Contact ()

@end

@implementation Contact

- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return (toInterfaceOrientation == UIInterfaceOrientationPortrait);
}

- (BOOL)shouldAutorotate
{
    return NO;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationPortrait;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)schoolWeb:(id)sender {
     [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.humphrey.esu7.org/"]];
}

- (IBAction)callFloat:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel:4029231230"]];
}

- (IBAction)mapButton:(id)sender {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://maps.apple.com/?q=405+South+7th+Street,+Humphrey,+NE"]];
}

//This is for the home button animation.
- (IBAction)home:(id)sender {
     CGRect frame = _secondHome.frame;
     frame.size.width=2000;
     frame.size.height=2000;
     frame.origin.x=-810;
     frame.origin.y=-710;
     
     [UIView beginAnimations:nil context:nil];
     [UIView setAnimationDuration:0.40];
     _secondHome.frame = frame;
     [UIView commitAnimations];
    
    [NSTimer scheduledTimerWithTimeInterval:0.10
                                     target:self
                                   selector:@selector(homescreen:)
                                   userInfo:nil
                                    repeats:NO];
    
    [NSTimer scheduledTimerWithTimeInterval:0.10
                                     target:self
                                   selector:@selector(secondHome:)
                                   userInfo:nil
                                    repeats:NO];

    
    
}

-(IBAction)homescreen:(id)sender{
    NSString * storyboardName = @"iPhoneStoryBoard";
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle: nil];
    UIViewController * vc = [storyboard instantiateViewControllerWithIdentifier:@"HomeScreen"];
    [self presentViewController:vc animated:YES completion:nil];
}

-(IBAction)secondHome:(id)sender{
}

@end
