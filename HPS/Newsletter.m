//
//  Newsletter.m
//  HPS App
//
//  Created by Brandon Huettner2 on 12/10/13.
//  Copyright (c) 2013 Humphrey Public School. All rights reserved.
//

#import "Newsletter.h"

@interface Newsletter ()

@end

@implementation Newsletter


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
    }
    return self;
}

-(void)viewWillAppear:(BOOL)animated{
    _backButton.enabled=FALSE;
    _printButton.enabled=FALSE;
    _newsletterView.hidden=TRUE;
    
    CGRect frame = _newsletterView.frame;
    frame.origin.x = 0;
    frame.origin.y = 900;

    _newsletterView.frame = frame;
}

- (void)viewDidLoad
{

    [super viewDidLoad];
    [_newsletterScrollView setContentSize:CGSizeMake(320, 617)];
    
    if ([UIPrintInteractionController isPrintingAvailable]) {
        UIBarButtonItem *barButton = [[UIBarButtonItem alloc]
                                      initWithBarButtonSystemItem:UIBarButtonSystemItemAction
                                      target:self
                                      action:@selector(printWebView:)];
        
        [self.navigationItem setRightBarButtonItem:barButton animated:YES];
        self.printButton = barButton;
    }
}

- (void) webViewDidStartLoad:(UIWebView *)webView
{
    [_activityIndicator startAnimating];
    webView.scalesPageToFit = YES;
}

-(void) webViewDidFinishLoad:(UIWebView *)webView
{
   [_activityIndicator stopAnimating];
    _printButton.enabled=TRUE;
}

- (void) webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error{

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)februaryNewsletterButton:(id)sender {
    NSString *fullURL = @"http://www.humphrey.esu7.org/PDFfiles/Newsletters/FebruaryNewsletter.pdf";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:requestObj];
    _newsletterView.hidden=FALSE;
    
    CGRect frame = _newsletterView.frame;
    frame.origin.x = 0;
    frame.origin.y = 0;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    _backButton.enabled=TRUE;
    _printButton.enabled=TRUE;
    _newsletterView.frame = frame;
    [UIView commitAnimations];
}

- (IBAction)januaryNewsletterButton:(id)sender {
    NSString *fullURL = @"http://www.humphrey.esu7.org/PDFfiles/Newsletters/JanuaryNewsletter.pdf";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:requestObj];
    _newsletterView.hidden=FALSE;
    
    CGRect frame = _newsletterView.frame;
    frame.origin.x = 0;
    frame.origin.y = 0;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    _backButton.enabled=TRUE;

    _newsletterView.frame = frame;
    [UIView commitAnimations];
}

- (IBAction)decemberNewsletterButton:(id)sender {
    NSString *fullURL = @"http://www.humphrey.esu7.org/PDFfiles/Newsletters/DecemberNewsletter.pdf";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:requestObj];
    _newsletterView.hidden=FALSE;
    
    CGRect frame = _newsletterView.frame;
    frame.origin.x = 0;
    frame.origin.y = 0;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    _backButton.enabled=TRUE;
    _newsletterView.frame = frame;
    [UIView commitAnimations];
}

- (IBAction)novemberNewsletterButton:(id)sender {
    NSString *fullURL = @"http://www.humphrey.esu7.org/PDFfiles/Newsletters/NovemberNewsletter.pdf";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:requestObj];
    _newsletterView.hidden=FALSE;
    
    CGRect frame = _newsletterView.frame;
    frame.origin.x = 0;
    frame.origin.y = 0;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    _backButton.enabled=TRUE;
    _newsletterView.frame = frame;
    [UIView commitAnimations];
}

- (IBAction)octoberNewsletterButton:(id)sender {
    NSString *fullURL = @"http://www.humphrey.esu7.org/PDFfiles/Newsletters/OctoberNewsletter.pdf";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:requestObj];
    _newsletterView.hidden=FALSE;
    
    CGRect frame = _newsletterView.frame;
    frame.origin.x = 0;
    frame.origin.y = 0;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    _backButton.enabled=TRUE;
    _newsletterView.frame = frame;
    [UIView commitAnimations];
}

- (IBAction)septemberNewsletterButton:(id)sender {
    NSString *fullURL = @"http://www.humphrey.esu7.org/PDFfiles/Newsletters/SeptemberNewsletter.pdf";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:requestObj];
    _newsletterView.hidden=FALSE;
    
    CGRect frame = _newsletterView.frame;
    frame.origin.x = 0;
    frame.origin.y = 0;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    _backButton.enabled=TRUE;
    _newsletterView.frame = frame;
    [UIView commitAnimations];
}

- (IBAction)augustNewsletterButton:(id)sender {
    NSString *fullURL = @"http://www.humphrey.esu7.org/PDFfiles/Newsletters/AugustNewsletter.pdf";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:requestObj];
    _newsletterView.hidden=FALSE;
    
    CGRect frame = _newsletterView.frame;
    frame.origin.x = 0;
    frame.origin.y = 0;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    _backButton.enabled=TRUE;
    _newsletterView.frame = frame;
    [UIView commitAnimations];
}

- (IBAction)marchNewsletterButton:(id)sender {
    NSString *fullURL = @"http://www.humphrey.esu7.org/PDFfiles/Newsletters/MarchNewsletter.pdf";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:requestObj];
    _newsletterView.hidden=FALSE;
    
    CGRect frame = _newsletterView.frame;
    frame.origin.x = 0;
    frame.origin.y = 0;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    _backButton.enabled=TRUE;
    _newsletterView.frame = frame;
    [UIView commitAnimations];
}

- (IBAction)aprilNewsletterButton:(id)sender {
    NSString *fullURL = @"http://www.humphrey.esu7.org/PDFfiles/Newsletters/AprilNewsletter.pdf";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:requestObj];
    _newsletterView.hidden=FALSE;
    
    CGRect frame = _newsletterView.frame;
    frame.origin.x = 0;
    frame.origin.y = 0;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    _backButton.enabled=TRUE;
    _newsletterView.frame = frame;
    [UIView commitAnimations];
}

- (IBAction)mayNewsletter:(id)sender {
    NSString *fullURL = @"http://www.humphrey.esu7.org/PDFfiles/Newsletters/MayNewsletter.pdf";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:requestObj];
    _newsletterView.hidden=FALSE;
    
    CGRect frame = _newsletterView.frame;
    frame.origin.x = 0;
    frame.origin.y = 0;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    _backButton.enabled=TRUE;
    _newsletterView.frame = frame;
    [UIView commitAnimations];
}


- (IBAction)backButton:(id)sender {
    //NSString *fullURL = @"";
    //NSURL *url = [NSURL URLWithString:fullURL];
    //NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    //[_webView loadRequest:requestObj];
    
    CGRect frame = _newsletterView.frame;
    frame.origin.x = 0;
    frame.origin.y = 900;
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:0.5];
    _backButton.enabled=FALSE;
    _printButton.enabled=FALSE;
    _newsletterView.frame = frame;
    [UIView commitAnimations];
}

- (void)printWebView:(id)sender {
    
    UIPrintInteractionController *pc = [UIPrintInteractionController
                                        sharedPrintController];
    
    UIPrintInfo *printInfo = [UIPrintInfo printInfo];
    printInfo.outputType = UIPrintInfoOutputGeneral;
    printInfo.jobName = @"Print Newsletter";
    pc.printInfo = printInfo;
    
    pc.showsPageRange = YES;
    
    UIViewPrintFormatter *formatter = [self.webView viewPrintFormatter];
    pc.printFormatter = formatter;
    
    UIPrintInteractionCompletionHandler completionHandler =
    ^(UIPrintInteractionController *printController, BOOL completed,
      NSError *error) {
        if(!completed && error){
        }
    };
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        [pc presentFromBarButtonItem:self.printButton animated:YES
                   completionHandler:completionHandler];
    } else {
        [pc presentAnimated:YES completionHandler:completionHandler];
    }
}

- (IBAction)printNewsletter:(UIWebView *)webView {
    
    UIPrintInteractionController *pc = [UIPrintInteractionController sharedPrintController];
    
    UIPrintInfo *printInfo = [UIPrintInfo printInfo];
    printInfo.outputType = UIPrintInfoOutputGeneral;
    printInfo.jobName = @"Newsletter";
    pc.printInfo = printInfo;
    pc.showsPageRange = YES;
    
    UIPrintPageRenderer *renderer = [[UIPrintPageRenderer alloc] init];
    
    UIViewPrintFormatter *formatter = [self.webView viewPrintFormatter];
    [renderer addPrintFormatter:formatter startingAtPageAtIndex:0];
    pc.printPageRenderer = renderer;
    
    UIPrintInteractionCompletionHandler completionHandler =
    ^(UIPrintInteractionController *printController, BOOL completed, NSError *error) {
        if(!completed && error){
        }
    };
    
    if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad) {
        [pc presentFromBarButtonItem:self.printButton animated:YES completionHandler:completionHandler];
    } else {
        [pc presentAnimated:YES completionHandler:completionHandler];
    }
}
@end
