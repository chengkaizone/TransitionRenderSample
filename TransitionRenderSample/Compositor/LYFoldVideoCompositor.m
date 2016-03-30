//
//  LYFoldVideoCompositor.m
//  TransitionRenderSample
//
//  Created by lance on 16/3/30.
//  Copyright © 2016年 lance. All rights reserved.
//

#import "LYFoldVideoCompositor.h"
#import "LYFoldRenderer.h"

@implementation LYFoldVideoCompositor

- (id)init
{
    self = [super init];

    if (self) {
        self.oglRenderer = [[LYFoldRenderer alloc] init];
    }

    return self;
}

@end
