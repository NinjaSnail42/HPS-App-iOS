//
//  NewView.m
//  hps app
//
//  Created by Brandon Huettner on 12/4/14.
//  Copyright (c) 2014 Humphrey Public School. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "NewView.h"

@interface NewView ()

@end

@implementation NewView

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)home:(id)sender {
    CGRect frame = _homeButton.frame;
    frame.size.width=2000;
    frame.size.height=2000;
    frame.origin.x=-810;
    frame.origin.y=-710;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.30];
    _homeButton.frame = frame;
    [UIView commitAnimations];

    [NSTimer scheduledTimerWithTimeInterval:5.20
                                     target:self
                                   selector:@selector(homescreen:)
                                   userInfo:nil
                                    repeats:NO];
    

}
-(IBAction)homescreen:(id)sender{
    NSString * storyboardName = @"iPhoneStoryBoard";
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle: nil];
    UIViewController * vc = [storyboard instantiateViewControllerWithIdentifier:@"HomeScreen"];
    [self presentViewController:vc animated:YES completion:nil];
}
@end
