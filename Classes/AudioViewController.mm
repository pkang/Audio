//
//  AudioViewController.m
//  Audio
//
//  Created by Pablo Kang on 10/7/10.
//  Copyright 2010 Blazing Cloud. All rights reserved.
//

#import "AudioViewController.h"
#include "AQPlayer.h"

@implementation AudioViewController

- (void)viewDidLoad {
    [super viewDidLoad];
	NSString *fileName = [[NSBundle mainBundle] pathForResource:@"Test" ofType:@"m4a"];
	NSThread *thread = [[NSThread alloc] initWithTarget:self selector:@selector(playSound:) object:fileName];
	[thread start];
	NSLog(@"view did load");
}

- (void)playSound:(NSString *)fileName {
	AQPlayer *player = new AQPlayer();
	player->CreateQueueForFile((CFStringRef)fileName);
	player->StartQueue(false);
}

- (void)dealloc {
    [super dealloc];
}

@end
