//
//  LYPinwheelRenderer.m
//  TransitionRenderSample
//
//  Created by lance on 16/3/30.
//  Copyright © 2016年 lance. All rights reserved.
//

#import "LYPinwheelRenderer.h"

NSString *const kPassThroughPinwheelFragmentShader = SHADER_STRING
(
 varying highp vec2 texCoordVarying;
 uniform highp float progress;
 uniform sampler2D from;
 uniform sampler2D to;
 
 void main()
 {
     highp vec2 p = texCoordVarying;
     highp float circPos = atan(p.y - 0.5, p.x - 0.5) + progress;
     highp float modPos = mod(circPos, 3.1415 / 4.);
     highp float signed = sign(progress - modPos);
     highp float smoothed = smoothstep(0., 1., signed);
     
     if (smoothed > 0.5){
         gl_FragColor = texture2D(to, p);
     } else {
         gl_FragColor = texture2D(from, p);
     }
     
 }
 
 );

@interface LYPinwheelRenderer ()

@end

@implementation LYPinwheelRenderer

- (NSString *)fragmentShaderString {
    return kPassThroughPinwheelFragmentShader;
}

@end
