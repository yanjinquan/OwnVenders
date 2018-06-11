//
//  NSString+RegExtend.m
//  Jazz-Education-Ltd
//
//  Created by appleQ on 16/3/18.
//  Copyright © 2016年 闫金泉. All rights reserved.
//

#import "NSString+RegExtend.h"
#import <CommonCrypto/CommonDigest.h>
#import <UIKit/UIKit.h>
@implementation NSString (RegExtend)
- (BOOL)isMobileNO{
    NSString * MOBILE = @"^1(3|4|5|7|8)\\d{9}$";
    NSPredicate *regextestmobile = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", MOBILE];
    return [regextestmobile evaluateWithObject:self];
}
- (BOOL)isEmail{
    NSString *pattern = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
    NSPredicate *regextestmobile = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    return [regextestmobile evaluateWithObject:self];
}
- (BOOL)isCode{
    NSString *code = @"\\d{4}";
    NSPredicate *regextestCode = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", code];
    return [regextestCode evaluateWithObject:self];
}
- (BOOL)isMiaokeCode{
    NSString *pattern = @"^[A-Z0-9a-z]{6,16}$";
    NSPredicate *regextestmobile = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", pattern];
    return  [regextestmobile evaluateWithObject:self];
}



- (NSString *) MD5String
{
    const char *cStr = [self UTF8String];
    unsigned char result[CC_MD5_DIGEST_LENGTH];
    CC_MD5(cStr, (CC_LONG)strlen(cStr), result);
    return [[NSString stringWithFormat:@"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
             result[0], result[1], result[2], result[3],
             result[4], result[5], result[6], result[7],
             result[8], result[9], result[10], result[11],
             result[12], result[13], result[14], result[15]
             ] lowercaseString];
}
- (CGSize)getSizeWithWidth:(CGFloat)width textsysFont:(CGFloat)font{
   UIFont *textFont = [UIFont systemFontOfSize:font + 1];
   NSDictionary * tdic = [NSDictionary dictionaryWithObjectsAndKeys:textFont, NSFontAttributeName,nil];
   CGSize size =[self boundingRectWithSize:CGSizeMake(width, 100000) options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading | NSStringDrawingTruncatesLastVisibleLine attributes:tdic context:nil].size;
    return size;
}
//只试用于这个项目
- (NSArray *)getNumberArr{
    NSArray *arr = [self componentsSeparatedByString:@"-"];
    NSMutableArray *numbrs = [@[] mutableCopy];
    for (NSString *str in arr) {
        [numbrs addObject:[str substringFromIndex:1]];
    }
    return (NSArray *)numbrs;
}
+ (NSString *)getWeekDayFordate:(long long)data
{
    NSArray *weekday = [NSArray arrayWithObjects: [NSNull null], @"周日", @"周一", @"周二", @"周三", @"周四", @"周五", @"周六", nil];
    
    NSDate *newDate = [NSDate dateWithTimeIntervalSince1970:data];
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSDateComponents *components = [calendar components:NSCalendarUnitWeekday fromDate:newDate];
    
    NSString *weekStr = [weekday objectAtIndex:components.weekday];
    return weekStr;
}
+ (NSString *)getHourTimeWithTime:(long long)time {
    NSDate *confromTimesp = [NSDate dateWithTimeIntervalSince1970:time];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:@"HH:mm"];
    NSTimeZone* timeZone = [NSTimeZone localTimeZone];
    [formatter setTimeZone:timeZone];
    return [formatter stringFromDate:confromTimesp];
}
+ (NSString *)getDayStingWithTime:(long long)time{
    NSDate *confromTimesp = [NSDate dateWithTimeIntervalSince1970:time];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:@"yyyy-MM-dd"];
    NSTimeZone* timeZone = [NSTimeZone localTimeZone];
    [formatter setTimeZone:timeZone];
    return [formatter stringFromDate:confromTimesp];
}

+ (NSString *)getMonthTimeWith:(long long)time {
    NSDate *confromTimesp = [NSDate dateWithTimeIntervalSince1970:time];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:@"MM月dd日"];
    NSTimeZone* timeZone = [NSTimeZone localTimeZone];
    [formatter setTimeZone:timeZone];
    return [formatter stringFromDate:confromTimesp];
}
+ (NSString *)getMouthAndWeekDayWithTime:(long long)time{
    return [self stringWithFormat:@"%@ %@", [self getMonthTimeWith:time], [self getWeekDayFordate:time]];
}
@end
