//
//  NSString+RegExtend.h
//  Jazz-Education-Ltd
//
//  Created by appleQ on 16/3/18.
//  Copyright © 2016年 闫金泉. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>
@interface NSString (RegExtend)
- (BOOL)isMobileNO;
- (BOOL)isEmail;
- (BOOL)isCode;
- (NSString *)MD5String;
- (CGSize)getSizeWithWidth:(CGFloat)width textsysFont:(CGFloat)font;
- (NSArray *)getNumberArr;
/**eg: 周一*/
+ (NSString *)getWeekDayFordate:(long long)data;
/**eg:09:55*/
+ (NSString *)getHourTimeWithTime:(long long)time;
/**eg: 3月15日*/
+ (NSString *)getMonthTimeWith:(long long)time;
/**eg: 3月15日 周一*/
+ (NSString *)getMouthAndWeekDayWithTime:(long long)time;
+ (NSString *)getDayStingWithTime:(long long)time;
//妙可信息密码检测
- (BOOL)isMiaokeCode;
@end
