//
//  AudioAppDelegate.h
//  Audio
//
//  Created by Pablo Kang on 10/7/10.
//  Copyright 2010 Blazing Cloud. All rights reserved.
//

#import <UIKit/UIKit.h>

@class AudioViewController;

@interface AudioAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    AudioViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet AudioViewController *viewController;

@end

