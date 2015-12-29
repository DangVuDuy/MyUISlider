//
//  ViewController.m
//  MyUISlider
//
//  Created by Dang Vu Duy on 12/20/15.
//  Copyright © 2015 Dang Vu Duy. All rights reserved.
//

#import "ViewController.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor grayColor];
    [self.slider setThumbImage:[UIImage imageNamed:@"thumb.png"] forState:UIControlStateNormal];
    [self.slider setMinimumValueImage:[UIImage imageNamed:@"MuteSpeaker.png"]];
    [self.slider setMaximumValueImage:[UIImage imageNamed:@"MaxSpeaker.png"]];
    
    //[self.slider setMaximumTrackImage:[UIImage imageNamed: @"maxtrack.png"] forState:UIControlStateNormal];
    UIEdgeInsets inset = UIEdgeInsetsMake(0, 0, 1, 10);
    UIImage* maxTrack = [[UIImage imageNamed: @"track-fill.png"] resizableImageWithCapInsets:inset];
    
    [self.slider setMaximumTrackImage:maxTrack
                             forState:UIControlStateNormal];
    [self.slider setMinimumTrackImage:[UIImage imageNamed: @"track-fit.png"] forState:UIControlStateNormal];
    
}
@end