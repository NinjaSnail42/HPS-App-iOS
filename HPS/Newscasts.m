//
//  Newscasts.m
//  hps app
//
//  Created by Brandon Huettner on 10/13/14.
//  Copyright (c) 2014 Humphrey Public School. All rights reserved.
//

#import "Newscasts.h"
#import <MediaPlayer/MediaPlayer.h>

@interface Newscasts ()

@end

@implementation Newscasts

- (void)viewDidLoad {
    [super viewDidLoad];

    
    
    NSString *fullURL = @"http://www.humphrey.esu7.org/Videos/NewscastArchives/SD/Newscast%2010-2-14_SD.mp4";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_newscastTest loadRequest:requestObj];
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    UIView *view = [window.subviews objectAtIndex:0];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
