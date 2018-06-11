//
//  NSTimer+invoke.h
//  CaShapeLayerAndUIBezierPath
//
//  Created by yanjinquan on 16/3/4.
//  Copyright © 2016年 com.taobus.www. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (invoke)
+(NSTimer*)scheduledTimerWithTimeInterval:(NSTimeInterval)ti block:(void(^)(void))block userInfo:(id)userInfo repeats:(BOOL)yesOrNo;
@end
