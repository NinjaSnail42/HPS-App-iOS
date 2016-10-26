//
//  DetailViewController.h
//  HPS
//
//  Created by Brandon Huettner on 28/4/13.
//  Copyright (c) 2013 Brandon Huettner. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end

