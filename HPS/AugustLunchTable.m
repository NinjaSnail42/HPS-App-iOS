//
//  AugustLunchTable.m
//  hps app
//
//  Created by Brandon Huettner on 6/22/14.
//  Copyright (c) 2014 Humphrey Public School. All rights reserved.
//

#import "AugustLunchTable.h"

@interface AugustLunchTable ()

@end

@implementation AugustLunchTable

@synthesize days, meals, day, meal;
@synthesize augustMenu;

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
     NSURL *URL = [[NSURL alloc] initFileURLWithPath:@"http://www.humphrey.esu7.org/AugustLunch.plist"];
    
    NSString *augustFile= [URL absoluteString];
    days = [[NSDictionary alloc] initWithContentsOfFile:augustFile];
    day = [days objectForKey:@"Day"];
    [super viewDidLoad];
    
    
    //NSURLRequest *request = [NSURLRequest requestWithURL:url cachePolicy:NSURLRequestReloadIgnoringCacheData timeoutInterval:30];
    //NSURLConnection *connection = [[NSURLConnection alloc]initWithRequest:request delegate:self startImmediately:YES ];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return [days count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [days count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";

    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
   if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.accessoryType =  UITableViewCellAccessoryDisclosureIndicator;
    }
    NSString *theDay = [day objectAtIndex:indexPath.row];
    cell.textLabel.text = theDay;
    return cell;
}


@end
