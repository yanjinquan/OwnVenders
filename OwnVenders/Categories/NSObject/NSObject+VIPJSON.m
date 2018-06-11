//
//  NSObject+VIPJSON.m
//  VIPStudent
//
//  Created by 李俊麟 on 2017/9/19.
//  Copyright © 2017年 VIPractice. All rights reserved.
//

#import "NSObject+VIPJSON.h"

@implementation NSObject (VIPJSON)

- (NSArray *)vip_arrayValue {
    return [self isKindOfClass:[NSArray class]] ? (NSArray *)self : nil;
}

- (NSDictionary *)vip_dictionaryValue {
    return [self isKindOfClass:[NSDictionary class]] ? (NSDictionary *)self : nil;
}

- (NSString *)vip_stringValue {
    return [self isKindOfClass:[NSString class]] ? (NSString *)self : nil;
}

- (NSNumber *)vip_numberValue {
    return [self isKindOfClass:[NSNumber class]] ? (NSNumber *)self : nil;
}

- (BOOL)vip_boolValue {
    return self.vip_numberValue.boolValue;
}

- (double)vip_doubleValue {
    return self.vip_numberValue.doubleValue;
}

- (float)vip_floatValue {
    return self.vip_numberValue.floatValue;
}

- (NSInteger)vip_integerValue {
    return self.vip_numberValue.integerValue;
}

@end
