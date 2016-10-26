//
//  Videos.m
//  hps app
//
//  Created by Brandon Huettner on 1/9/14.
//  Copyright (c) 2014 Humphrey Public School. All rights reserved.
//

#import "Videos.h"


@interface Videos ()

@end

@implementation Videos

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.

    NSString *fullURL = @"http://www.humphrey.esu7.org/Videos/Newscast/Newscast.mp4";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_drSeussHarlemShake loadRequest:requestObj];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
