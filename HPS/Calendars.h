//
//  Calendars.h
//  HPS App
//
//  Created by Brandon Huettner2 on 12/10/13.
//  Copyright (c) 2013 Humphrey Public School. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Calendars : UIViewController

- (IBAction)boosterClub:(id)sender;
- (IBAction)band:(id)sender;
- (IBAction)basketball:(id)sender;
- (IBAction)fccla:(id)sender;
- (IBAction)ffa:(id)sender;
- (IBAction)football:(id)sender;
- (IBAction)golf:(id)sender;
- (IBAction)nhs:(id)sender;
- (IBAction)oneAct:(id)sender;
- (IBAction)softball:(id)sender;
- (IBAction)speech:(id)sender;
- (IBAction)spiritSquad:(id)sender;
- (IBAction)track:(id)sender;
- (IBAction)voleyball:(id)sender;
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UIView *calendarView;
- (IBAction)home:(id)sender;

@end
