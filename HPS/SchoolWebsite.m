//
//  SchoolWebsite.m
//  hps app
//
//  Created by Brandon Huettner on 2/8/14.
//  Copyright (c) 2014 Humphrey Public School. All rights reserved.
//

#import "SchoolWebsite.h"

@interface SchoolWebsite ()

@end

@implementation SchoolWebsite

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewWillAppear:(BOOL)animated{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.humphrey.esu7.org"]];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(void)viewDidAppear:(BOOL)animated{
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
