//
//  MonthsTableViewController.m
//  HPS App
//
//  Created by Brandon Huettner on 6/16/14.
//  Copyright (c) 2014 Humphrey Public School. All rights reserved.
//

#import "MonthsTableViewController.h"
#import "MonthTableViewController.h"


@interface MonthsTableViewController ()

@end

@implementation MonthsTableViewController

@synthesize months, month;
@synthesize monthsTableView;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
 //   NSString *monthsFile = [[NSBundle mainBundle] pathForResource:@"Months" ofType:@"plist"];
 //   months = [[NSDictionary alloc] initWithContentsOfFile:monthsFile];
    month = [months objectForKey:@"Month"];
//    [super viewDidLoad];
    
 //   NSURL *url = [NSURL URLWithString:@"http://www.humphrey.esu7.org/Months.plist"];
    
 //   NSURLRequest *request = [NSURLRequest requestWithURL:url cachePolicy:NSURLRequestReloadIgnoringCacheData timeoutInterval:30];
 //   NSURLConnection *connection = [[NSURLConnection alloc]initWithRequest:request delegate:self startImmediately:YES ];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"monthDetail"]) {
        NSIndexPath *indexPath = [self.monthsTableView indexPathForSelectedRow];
        MonthTableViewController *destViewController = segue.destinationViewController;
    }
}
#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//{
  //  return 1;
//}

//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//    return [month count];
//}

//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
 //   static NSString *CellIdentifier = @"Cell";
    
 //   UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
 //   if (cell == nil) {
   //     cell = [[UITableViewCell alloc] initWithStyle://UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
   //     cell.accessoryType =  UITableViewCellAccessoryDisclosureIndicator;
  //  }
  //  NSString *theMonth = [month objectAtIndex:indexPath.row];
  //  cell.textLabel.text = theMonth;
  //  return cell;
//}

@end
