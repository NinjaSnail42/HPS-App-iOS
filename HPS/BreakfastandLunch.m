//
//  BreakfastandLunch.m
//  HPS App
//
//  Created by Brandon Huettner on 3/11/14.
//  Copyright (c) 2014 Humphrey Public School. All rights reserved.
//

#import "BreakfastandLunch.h"

@interface BreakfastandLunch ()

@end

@implementation BreakfastandLunch

@synthesize breakfastMenu,lunchMenu;

- (void)viewDidLoad{
    NSString *menuFile= [[NSBundle mainBundle] pathForResource:@"Menu" ofType:@"plist"];
    _menu = [[NSDictionary alloc] initWithContentsOfFile:menuFile];
    
    lunchMenu = [_menu objectForKey:@"Root"];

    
    [super viewDidLoad];
    self.backButton.enabled=NO;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)backButton:(id)sender {
    CGRect frame = _scrollView.frame;
    frame.size.height = 550;
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    _scrollView.frame = frame;
    _backButton.enabled=NO;
    [UIView commitAnimations];
    
}

- (IBAction)marchThird:(id)sender {
    
    //NSString *marchTest = [lunchMenu objectAtIndex:indexPath.row];
    //[UIView setAnimationDuration:1];
    
    //[UIView setAnimationTransition:UIViewAnimationTransitionCurlUp
                           //forView:_marchView cache:YES];

    
    CGRect frame = _scrollView.frame;
    frame.size.height = 160;
    _scrollView.frame = frame;

    
//Adjust the Rows
    //CGRect rowone = _rowOne.frame;
    //frame.origin.x=321;
    //_rowOne.frame = rowone;
    
    //CGRect rowtwo = _rowTwo.frame;
    //rowtwo.origin.x=321;
    //rowtwo.origin.y=115;
   // _rowTwo.frame = rowtwo;

    //CGRect frame = _rowTwo.frame;
    //frame.origin.x = 0;
    //frame.origin.y = 44;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    //_rowTwo.frame = frame;
    [UIView commitAnimations];
    
   // CGRect rowthree = _rowThree.frame;
    //fram
    
    
    self.backButton.enabled=YES;
    self.date.text=@"Tuesday, April 1st";
    self.breakfast.text=@"Ham and Cheese on a Bun";
    //self.lunch.text = marchTest;
}

- (IBAction)doneButton:(id)sender {
    	[self dismissViewControllerAnimated:YES completion:nil];
}
@end
