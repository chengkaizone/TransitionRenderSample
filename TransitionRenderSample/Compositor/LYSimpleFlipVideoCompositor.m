//
//  LYSimpleFlipVideoCompositor.m
//  TransitionRenderSample
//
//  Created by lance on 16/3/30.
//  Copyright © 2016年 lance. All rights reserved.
//

#import "LYSimpleFlipVideoCompositor.h"
#import "LYSimpleFlipRenderer.h"

@implementation LYSimpleFlipVideoCompositor

- (id)init
{
    self = [super init];

    if (self) {
        self.oglRenderer = [[LYSimpleFlipRenderer alloc] init];
    }

    return self;
}

@end
