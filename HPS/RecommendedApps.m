//
//  RecommendedApps.m
//  HPS App
//
//  Created by Brandon Huettner on 1/21/14.
//  Copyright (c) 2014 Humphrey Public School. All rights reserved.
//

#import "RecommendedApps.h"

@interface RecommendedApps ()

@end

@implementation RecommendedApps

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)powerSchoolStudentLink:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://itunes.apple.com/us/app/powerschool-for-students/id444984364?mt=8"]];
}

- (IBAction)powerSchoolParentsLink:(id)sender {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://itunes.apple.com/us/app/powerschool-for-parents/id444983648?mt=8"]];
}

- (IBAction)duolingoLink:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://itunes.apple.com/us/app/duolingo-learn-languages-for/id570060128?mt=8"]];
}

- (IBAction)spellingCityLink:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://itunes.apple.com/us/app/spellingcity/id538407602?mt=8"]];
}
@end
