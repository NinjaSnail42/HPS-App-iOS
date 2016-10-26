//
//  CurrentNewscast.h
//  
//
//  Created by Brandon Huettner on 9/5/15.
//
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>

@interface CurrentNewscast : UIViewController
- (IBAction)homeButton:(id)sender;

@property (strong, nonatomic) MPMoviePlayerController *movie;
@end
