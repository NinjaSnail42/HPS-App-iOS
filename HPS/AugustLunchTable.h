//
//  AugustLunchTable.h
//  hps app
//
//  Created by Brandon Huettner on 6/22/14.
//  Copyright (c) 2014 Humphrey Public School. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AugustLunchTable : UITableViewController

@property (nonatomic, strong) NSDictionary *days;
@property (nonatomic, strong) NSDictionary *meals;
@property (nonatomic, strong) NSArray *meal;
@property (nonatomic, strong) NSArray *day;
@property (strong, nonatomic) IBOutlet UITableView *augustMenu;

@end
