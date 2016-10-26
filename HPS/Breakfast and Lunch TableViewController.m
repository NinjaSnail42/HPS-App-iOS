//
//  Breakfast and Lunch TableViewController.m
//  HPS App
//
//  Created by Brandon Huettner on 6/16/14.
//  Copyright (c) 2014 Humphrey Public School. All rights reserved.
//

#import "Breakfast and Lunch TableViewController.h"

@interface Breakfast_and_Lunch_TableViewController ()

@end

@implementation Breakfast_and_Lunch_TableViewController

@synthesize content = _content;

-(NSArray *)content
{
    if (!_content) {
        _content = [[NSArray alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"AugustMenu" ofType:@"plist"]];
    }
    return _content;
}

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
    [super viewDidLoad];
    
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

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.content count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = [[self.content objectAtIndex:indexPath.row] valueForKey:@"month"];
    return cell;
}
@end
