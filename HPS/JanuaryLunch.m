//
//  JanuaryLunch.m
//  hps app
//
//  Created by Brandon Huettner on 1/4/15.
//  Copyright (c) 2015 Humphrey Public School. All rights reserved.
//

#import "JanuaryLunch.h"

@interface JanuaryLunch ()

@end

@implementation JanuaryLunch

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *fullURL = @"http://www.humphrey.esu7.org/AppFiles/LunchCalendars/JanuaryLunch.pdf";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_lunchView loadRequest:requestObj];
}

- (void) webViewDidStartLoad:(UIWebView *)webView
{
    [_activityIndicator startAnimating];
}

- (void) webViewDidFinishLoad:(UIWebView *)webView
{
    [_activityIndicator stopAnimating];
}

- (void) webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Something Went Wrong..." message:@"Looks like you're not connected to the internet.  Connect to the internet to view the January Breakfast and Lunch Calendar." delegate:self cancelButtonTitle:@"Okay" otherButtonTitles: nil];
    [alert show];
    
    [_activityIndicator stopAnimating];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end