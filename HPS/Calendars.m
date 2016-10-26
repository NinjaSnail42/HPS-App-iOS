//
//  Calendars.m
//  HPS App
//
//  Created by Brandon Huettner2 on 12/10/13.
//  Copyright (c) 2013 Humphrey Public School. All rights reserved.
//

#import "Calendars.h"

@interface Calendars ()

@end

@implementation Calendars

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

    NSUserDefaults* defaults = [NSUserDefaults standardUserDefaults];
    BOOL hasAlreadyBeenLaunched = [defaults boolForKey:@"HasAlreadyBeenLaunched"];
    
    if (!hasAlreadyBeenLaunched) {
        [defaults setBool:YES forKey:@"HasAlreadyBeenLaunched"];
        [defaults synchronize];
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Setting Up Calendars" message:@"Just click on the Calendar that you would like to add, wait for a message to appear, and click on Subscribe. The calendars that you add will appear in your Calendar App with all of the corresponding events. You can also scroll to view more calendars." delegate:self cancelButtonTitle:@"Continue" otherButtonTitles: nil];
        [alert show];
    }
    
    [_scrollView setContentSize:CGSizeMake(320, 550)];
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)boosterClub:(id)sender {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.google.com/calendar/ical/humphrey.esu7.org_l35n8cmod90jirvqt215mf7qrk%40group.calendar.google.com/public/basic.ics"]];
}

- (IBAction)band:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.google.com/calendar/ical/humphrey.esu7.org_6nt0mvj9clobn10nrumipd03js%40group.calendar.google.com/public/basic.ics"]];
}

- (IBAction)basketball:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.google.com/calendar/ical/humphrey.esu7.org_fk0hfeke4qinh3kuo87oqkcmag%40group.calendar.google.com/public/basic.ics"]];
}

- (IBAction)fccla:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.google.com/calendar/ical/humphrey.esu7.org_bllo9sticam2g86ot822k30jm8%40group.calendar.google.com/public/basic.ics"]];
}

- (IBAction)ffa:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.google.com/calendar/ical/humphrey.esu7.org_v6k2tkl5q3f9kjhvordtr80efo%40group.calendar.google.com/public/basic.ics"]];
}

- (IBAction)football:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.google.com/calendar/ical/humphrey.esu7.org_669gmid8c8rcqvthc70mikqa1o%40group.calendar.google.com/public/basic.ics"]];
}

- (IBAction)golf:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.google.com/calendar/ical/humphrey.esu7.org_tuavjrt2tgmhelvjo0urv4cv8s%40group.calendar.google.com/public/basic.ics"]];
}

- (IBAction)nhs:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.google.com/calendar/ical/humphrey.esu7.org_4uk7vmo3rscvndk4v1gnibf6dc%40group.calendar.google.com/public/basic.ics"]];
}

- (IBAction)oneAct:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.google.com/calendar/ical/humphrey.esu7.org_6k6c0eplrr6g5h7qpf685likjo%40group.calendar.google.com/public/basic.ics"]];
}

- (IBAction)softball:(id)sender {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.google.com/calendar/ical/humphrey.esu7.org_ghf7j3dbg9anpn050k455u4ie8%40group.calendar.google.com/public/basic.ics"]];
}

- (IBAction)speech:(id)sender {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.google.com/calendar/ical/humphrey.esu7.org_vuea274345vgg5p2d8b1vauluc%40group.calendar.google.com/public/basic.ics"]];
}

- (IBAction)spiritSquad:(id)sender {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.google.com/calendar/ical/humphrey.esu7.org_j9pdg7csgo2v53n271np0gtpi8%40group.calendar.google.com/public/basic.ics"]];
}

- (IBAction)track:(id)sender {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.google.com/calendar/ical/humphrey.esu7.org_fb1npkjfku7o39tktapn6vbubo%40group.calendar.google.com/public/basic.ics"]];
}

- (IBAction)voleyball:(id)sender {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.google.com/calendar/ical/humphrey.esu7.org_25tgo5bubmhdh7hdces71d024o%40group.calendar.google.com/public/basic.ics"]];
}
- (IBAction)home:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
