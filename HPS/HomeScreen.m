//
//  HomeScreen.m
//  hps app
//
//  Created by Brandon Huettner on 12/27/13.
//  Copyright (c) 2013 Humphrey Public School. All rights reserved.
//

#import "HomeScreen.h"
#import <QuartzCore/QuartzCore.h>
#define CORNER_RADIUS 4
#import "SWRevealViewController.h"

@interface HomeScreen ()

@end

@implementation HomeScreen

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
    [self.view addGestureRecognizer:self.revealViewController.panGestureRecognizer];
    
    _button.target = self.revealViewController;
    _button.action = @selector(revealToggle:);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue isKindOfClass:[CustomSegue class]]) {
        ((CustomSegue *)segue).originatingPoint = self.homeScreen.center;
    }
}

- (IBAction)websiteButton:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.humphrey.esu7.org"]];

}
@end
