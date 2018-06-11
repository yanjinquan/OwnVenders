//
//  NSString+Second.h
//  JazzEducationProgect
//
//  Created by mac on 16/5/2.
//  Copyright © 2016年 闫金泉. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Second)
//00:00:00<->NSInteger(second)
+ (instancetype)getHoursStyleString:(NSInteger)secondNum;
- (NSInteger)getSecondStyle;

@end
