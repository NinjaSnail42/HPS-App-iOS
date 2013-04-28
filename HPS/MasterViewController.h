//
//  MasterViewController.h
//  HPS
//
//  Created by Brandon Huettner on 28/4/13.
//  Copyright (c) 2013 Brandon Huettner. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;

@end
