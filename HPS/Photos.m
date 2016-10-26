//
//  Photos.m
//  
//
//  Created by Brandon Huettner on 6/11/15.
//
//

#import "Photos.h"

@interface Photos ()

@end

@implementation Photos

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *fullURL = @"https://photos.google.com/share/AF1QipMWajchqRw6hjb5Say7OeEzz5KmPJT2xlgqw71Pru0Xt6SPjzOwCxAY-hIQb8su2w?key=U0g2RVFwMUwzU1BfQnlMT19UQnJGbGFpM0JXVHV3";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_photosWebview loadRequest:requestObj];
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


@end
