//
//  HomeScreen.h
//  hps app
//
//  Created by Brandon Huettner on 12/27/13.
//  Copyright (c) 2013 Humphrey Public School. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomSegue.h"
#import "SWRevealViewController.h"

@interface HomeScreen : UIViewController
@property (weak, nonatomic) IBOutlet UIBarButtonItem *button;
@property () BOOL restrictRotation;

@property (strong, nonatomic) IBOutlet UIView *theView;
@property (strong, nonatomic) IBOutlet UIView *homeScreen;
- (IBAction)websiteButton:(id)sender;
@end
