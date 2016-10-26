//
//  LiveStreamingViewController.h
//  hps app
//
//  Created by Brandon Huettner on 1/5/16.
//  Copyright © 2016 Humphrey Public School. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LiveStreamingViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;
@property (weak, nonatomic) IBOutlet UIWebView *liveStreamingWebView;

@end
