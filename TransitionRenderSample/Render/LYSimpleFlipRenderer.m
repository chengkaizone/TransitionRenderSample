//
//  LYSimpleFlipRenderer.m
//  TransitionRenderSample
//
//  Created by lance on 16/3/30.
//  Copyright © 2016年 lance. All rights reserved.
//

#import "LYSimpleFlipRenderer.h"

NSString *const kPassThroughSimpleFlipFragmentShader = SHADER_STRING
(
 varying highp vec2 texCoordVarying;
 uniform highp float progress;
 uniform sampler2D from;
 uniform sampler2D to;
 
 void main()
 {
     highp vec2 p = texCoordVarying;
     highp vec2 q = p;
     p.x = (p.x - 0.5)/abs(progress - 0.5)*0.5 + 0.5;
     highp vec4 a = texture2D(from, p);
     highp vec4 b = texture2D(to, p);
     gl_FragColor = vec4(mix(a, b, step(0.5, progress)).rgb * step(abs(q.x - 0.5), abs(progress - 0.5)), 1.0);
     
 }
 
 );

@interface LYSimpleFlipRenderer ()

@end

@implementation LYSimpleFlipRenderer

- (NSString *)fragmentShaderString {
    return kPassThroughSimpleFlipFragmentShader;
}

@end
