//
//  Contact.h
//  HPS App
//
//  Created by Brandon Huettner2 on 12/10/13.
//  Copyright (c) 2013 Humphrey Public School. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Contact : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *homeButton;
@property (weak, nonatomic) IBOutlet UIButton *secondHome;
- (IBAction)home:(id)sender;
@property (strong, nonatomic) IBOutlet UIView *lineOne;
- (IBAction)callFloat:(id)sender;
- (IBAction)mapButton:(id)sender;
@end
