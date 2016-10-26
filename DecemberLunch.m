//
//  DecemberLunch.m
//  hps app
//
//  Created by Brandon Huettner on 11/26/14.
//  Copyright (c) 2014 Humphrey Public School. All rights reserved.
//

#import "DecemberLunch.h"

@interface DecemberLunch ()

@end

@implementation DecemberLunch

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *fullURL = @"http://www.humphrey.esu7.org/AppFiles/LunchCalendars/DecemberLunch.pdf";
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
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Something Went Wrong..." message:@"Looks like you're not connected to the internet.  Connect to the internet to view the September Breakfast and Lunch Calendar." delegate:self cancelButtonTitle:@"Okay" otherButtonTitles: nil];
    [alert show];
    
    [_activityIndicator stopAnimating];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
