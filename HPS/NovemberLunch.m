//
//  NovemberLunch.m
//  hps app
//
//  Created by Brandon Huettner on 11/4/14.
//  Copyright (c) 2014 Humphrey Public School. All rights reserved.
//

#import "NovemberLunch.h"

@interface NovemberLunch ()

@end

@implementation NovemberLunch


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *fullURL = @"http://www.humphrey.esu7.org/AppFiles/LunchCalendars/NovemberLunch.pdf";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_lunchMenu loadRequest:requestObj];
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
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Something Went Wrong..." message:@"Looks like you're not connected to the internet.  Connect to the internet to view the November Breakfast and Lunch Calendar." delegate:self cancelButtonTitle:@"Okay" otherButtonTitles: nil];
    [alert show];
    
    [_activityIndicator stopAnimating];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
