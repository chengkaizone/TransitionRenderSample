//
//  LYStarWipeVideoCompositor.m
//  TransitionRenderSample
//
//  Created by lance on 16/3/30.
//  Copyright © 2016年 lance. All rights reserved.
//

#import "LYStarWipeVideoCompositor.h"
#import "LYStarWipeRenderer.h"

@implementation LYStarWipeVideoCompositor

- (id)init
{
    self = [super init];

    if (self) {
        self.oglRenderer = [[LYStarWipeRenderer alloc] init];
    }

    return self;
}

@end
