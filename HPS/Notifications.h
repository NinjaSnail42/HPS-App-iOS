//
//  Notifications.h
//  HPS App
//
//  Created by Brandon Huettner2 on 12/9/13.
//  Copyright (c) 2013 Humphrey Public School. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Notifications : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *notificationLabel;

- (IBAction)refreshButton:(id)sender;

@property (strong, nonatomic) IBOutlet UIActivityIndicatorView *refresh;

@end
