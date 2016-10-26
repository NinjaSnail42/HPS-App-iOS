//
//  CurrentNewscast.m
//  
//
//  Created by Brandon Huettner on 9/5/15.
//
//

#import "CurrentNewscast.h"

@interface CurrentNewscast ()

@end

@implementation CurrentNewscast

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL *url =[[NSURL alloc]initWithString:@"http://www.humphrey.esu7.org/Videos/Newscast/Newscast.mp4"];
    
    self.movie = [[MPMoviePlayerController alloc]initWithContentURL:url];
    MPMoviePlayerViewController *c = [[MPMoviePlayerViewController alloc]
                                      initWithContentURL:url];
    self.movie.controlStyle = MPMovieControlStyleDefault;
    
    self.movie.shouldAutoplay = NO;
    
    [self.movie.view setFrame: CGRectMake(0, 64, 320, 240)];
    [self.view addSubview:self.movie.view];
    
    [self.view addSubview:self.movie.view];
    [self.movie setFullscreen:YES animated:YES];
    
    [self.navigationController presentMoviePlayerViewControllerAnimated:c];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


- (IBAction)homeButton:(id)sender {
    [self.movie stop];
    [self.movie.view removeFromSuperview];
    
    NSString * storyboardName = @"iPhoneStoryBoard";
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:storyboardName bundle: nil];
    UIViewController * vc = [storyboard instantiateViewControllerWithIdentifier:@"HomeScreen"];
    [self presentViewController:vc animated:YES completion:nil];
}
@end
