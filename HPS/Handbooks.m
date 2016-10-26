//
//  Handbooks.m
//  HPS App
//
//  Created by Brandon Huettner2 on 12/11/13.
//  Copyright (c) 2013 Humphrey Public School. All rights reserved.
//

#import "Handbooks.h"

@interface Handbooks ()

@end

@implementation Handbooks

- (BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    return (toInterfaceOrientation == UIInterfaceOrientationPortrait);
}

- (BOOL)shouldAutorotate
{
    return NO;
}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}

- (UIInterfaceOrientation)preferredInterfaceOrientationForPresentation
{
    return UIInterfaceOrientationPortrait;
}

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
    BOOL hasAlreadyBeenLaunched = [defaults boolForKey:@"DocumentsHasAlreadyBeenLaunched"];
    
    if (!hasAlreadyBeenLaunched) {
        [defaults setBool:YES forKey:@"DocumentsHasAlreadyBeenLaunched"];
        [defaults synchronize];
        
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Viewing Documents" message:@"To view Documents, make sure that you are connected to Wifi or Cellular Data." delegate:self cancelButtonTitle:@"Continue" otherButtonTitles: nil];
        [alert show];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//Handbooks

- (IBAction)classifiedEmployeeHandbook:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.humphrey.esu7.org/PDFfiles/Handbooks/13-14%20Classified%20Employee%20Handbook.pdf"]];
}


//Forms
- (IBAction)consentForm:(id)sender {
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"http://www.humphrey.esu7.org/PDFfiles/2013-14%20Transportation%20Policy%20&%20Consent%20Form.pdf"]];
}

- (IBAction)certifiedPersonnelApplication:(id)sender {
    [[UIApplication sharedApplication]openURL:[NSURL URLWithString:@"http://www.humphrey.esu7.org/PDFfiles/Forms/Application-Certificated%20Personnel.pdf"]];
}

- (IBAction)classifiedEmployeesApplicatonForm:(id)sender {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://www.humphrey.esu7.org/PDFfiles/Forms/Application-Classified%20Employees.pdf"]];
}
@end
