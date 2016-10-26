//
//  Daily Bullitin.h
//  HPS App
//
//  Created by BulldogThree on 1/8/14.
//  Copyright (c) 2014 Humphrey Public School. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Daily_Bullitin : UIViewController
@property (weak, nonatomic) IBOutlet UIWebView *webView;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;
- (IBAction)refresh:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *errorMessage;


@end
