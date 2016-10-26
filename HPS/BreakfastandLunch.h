//
//  BreakfastandLunch.h
//  HPS App
//
//  Created by BulldogThree on 3/11/14.
//  Copyright (c) 2014 Humphrey Public School. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BreakfastandLunch : UIViewController

@property (strong, nonatomic) NSDictionary *menu;
@property (strong, nonatomic) NSArray *breakfastMenu;
@property (strong, nonatomic) NSArray *lunchMenu;




@property (weak, nonatomic) IBOutlet UITextView *breakfastText;
@property (weak, nonatomic) IBOutlet UITextView *lunchText;
@property (weak, nonatomic) IBOutlet UILabel *testText;
@property (weak, nonatomic) IBOutlet UINavigationBar *titleBar;
@property (strong, nonatomic) IBOutlet UIView *menusView;
@property (strong, nonatomic) IBOutlet UIView *marchLunchCalendarView;
@property (weak, nonatomic) IBOutlet UIView *marchView;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *backButton;
- (IBAction)backButton:(id)sender;
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
- (IBAction)doneButton:(id)sender;

//Calendar Items
@property (strong, nonatomic) IBOutlet UIView *rowOne;
@property (strong, nonatomic) IBOutlet UIView *rowTwo;
@property (strong, nonatomic) IBOutlet UIView *rowThree;
@property (strong, nonatomic) IBOutlet UIView *rowFour;
@property (strong, nonatomic) IBOutlet UIView *rowFive;
@property (strong, nonatomic) IBOutlet UIView *rowSix;


//Menu Information
@property (strong, nonatomic) IBOutlet UILabel *date;
@property (strong, nonatomic) IBOutlet UITextView *breakfast;
@property (strong, nonatomic) IBOutlet UITextView *lunch;


//March Buttons
- (IBAction)marchThird:(id)sender;

@end
