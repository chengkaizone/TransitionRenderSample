//
//  LYPinwheelVideoCompositor.m
//  TransitionRenderSample
//
//  Created by lance on 16/3/30.
//  Copyright © 2016年 lance. All rights reserved.
//

#import "LYPinwheelVideoCompositor.h"
#import "LYPinwheelRenderer.h"

// ============ VTSPinwheelVideoCompositor ============

@implementation LYPinwheelVideoCompositor

- (id)init
{
    self = [super init];

    if (self) {
        self.oglRenderer = [[LYPinwheelRenderer alloc] init];
    }

    return self;
}

@end
