//
//  ViewController.m
//  Demo
//
//  Created by Silence on 2018/3/26.
//  Copyright © 2018年 Silence. All rights reserved.
//

#import "ViewController.h"
#import <IJKMediaFramework/IJKMediaFramework.h>

@interface ViewController ()

@property (nonatomic,strong) IJKFFMoviePlayerController *player;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL *url = [NSURL URLWithString:@"rtmp://live.hkstv.hk.lxdns.com/live/hks"];
    IJKFFMoviePlayerController *player = [[IJKFFMoviePlayerController alloc]initWithContentURL:url withOptions: [IJKFFOptions optionsByDefault]];
    // 初始化播放器,播放在线视频或直播(RTMP)
    player.view.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    player.view.frame = self.view.bounds;
    player.scalingMode = IJKMPMovieScalingModeAspectFit;
    player.shouldAutoplay = YES;
    
    [self.view addSubview:player.view];
    _player = player;
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.player prepareToPlay];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    [self.player pause];
    [self.player stop];
    [self.player shutdown];
}

@end
