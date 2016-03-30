//
//  LYWindVideoCompositor.m
//  TransitionRenderSample
//
//  Created by lance on 16/3/30.
//  Copyright © 2016年 lance. All rights reserved.
//

#import "LYWindVideoCompositor.h"
#import "LYWindRenderer.h"

@implementation LYWindVideoCompositor

- (id)init
{
    self = [super init];

    if (self) {
        self.oglRenderer = [[LYWindRenderer alloc] init];
    }

    return self;
}

@end
