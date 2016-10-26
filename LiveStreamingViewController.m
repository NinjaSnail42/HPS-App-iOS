//
//  LiveStreamingViewController.m
//  hps app
//
//  Created by Brandon Huettner on 1/5/16.
//  Copyright © 2016 Humphrey Public School. All rights reserved.
//

#import "LiveStreamingViewController.h"

@interface LiveStreamingViewController ()

@end

@implementation LiveStreamingViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    NSString *fullURL = @"http://www.humphrey.esu7.org/AppFiles/LiveStream.shtml";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_liveStreamingWebView loadRequest:requestObj];
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
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Something Went Wrong..." message:@"Looks like you're not connected to the internet.  Connect to the internet to view the live stream." delegate:self cancelButtonTitle:@"Okay" otherButtonTitles: nil];
    [alert show];
    
    [_activityIndicator stopAnimating];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}



@end
