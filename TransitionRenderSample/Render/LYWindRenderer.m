//
//  LYWindRenderer.m
//  TransitionRenderSample
//
//  Created by lance on 16/3/30.
//  Copyright © 2016年 lance. All rights reserved.
//

#import "LYWindRenderer.h"

NSString *const kPassThroughWindFragmentShader = SHADER_STRING
(
 varying highp vec2 texCoordVarying;
 uniform highp float progress;
 uniform sampler2D from;
 uniform sampler2D to;
 
 highp float rand (highp vec2 co) {
     return fract(sin(dot(co.xy ,vec2(12.9898,78.233))) * 43758.5453);
 }
 
 void main()
 {
     highp float size = 0.2;
     
     highp vec2 p = texCoordVarying;
     highp float r = rand(vec2(0, p.y));
     highp float m = smoothstep(0.0, -size, p.x*(1.0-size) + size*r - (progress * (1.0 + size)));
     gl_FragColor = mix(texture2D(from, p), texture2D(to, p), m);
     
 }
 
 );

@interface LYWindRenderer()

@end

@implementation LYWindRenderer

- (NSString *)fragmentShaderString {
    return kPassThroughWindFragmentShader;
}

@end
