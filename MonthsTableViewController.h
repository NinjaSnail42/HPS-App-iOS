//
//  MonthsTableViewController.h
//  HPS App
//
//  Created by Brandon Huettner on 6/16/14.
//  Copyright (c) 2014 Humphrey Public School. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MonthsTableViewController : UITableViewController
@property (nonatomic, strong) NSDictionary *months;
@property (nonatomic, strong) NSArray *month;
@property (nonatomic, strong) IBOutlet UITableView *monthsTableView;


@end
