//
//  NSString+Second.m
//  JazzEducationProgect
//
//  Created by mac on 16/5/2.
//  Copyright © 2016年 闫金泉. All rights reserved.
//

#import "NSString+Second.h"
@implementation NSString (Second)
//00:00:00<->NSInteger(second)
- (NSInteger)getSecondStyle{
    NSArray *components = [self componentsSeparatedByString:@":"];
    NSInteger hours   = [[components objectAtIndex:0] integerValue];
    NSInteger minutes = [[components objectAtIndex:1] integerValue];
    NSInteger seconds = [[components objectAtIndex:2] integerValue];
    return 60 * 60 * hours + minutes * 60 + seconds;
}
+ (instancetype)getHoursStyleString:(NSInteger)secondNum{//调用方式 self.secondStyle = self;
    NSInteger hours = secondNum / 3600;
    NSInteger minutes = (secondNum - 3600 * hours) / 60;
    NSInteger seconds = secondNum - 3600 * hours - 60 * minutes;
    if (hours < 0 || minutes < 0 || seconds < 0) {
        return @"00:00:00";
    }
    return [NSString stringWithFormat:@"%02ld:%02ld:%02ld",(long)hours, (long)minutes, (long)seconds];
}
@end
