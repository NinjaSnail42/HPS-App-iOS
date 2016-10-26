//
//  MonthlyCalendar.h
//  HPS App
//
//  Created by Brandon Huettner on 4/4/14.
//  Copyright (c) 2014 Humphrey Public School. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MonthlyCalendar : UIViewController
@property (strong, nonatomic) IBOutlet UIWebView *monthlyCalendarWebView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

@end
