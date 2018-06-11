//
//  NSObject+VIPJSON.h
//  VIPStudent
//
//  Created by 李俊麟 on 2017/9/19.
//  Copyright © 2017年 VIPractice. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 验证 JSON 对象的合法性
 */
@interface NSObject (VIPJSON)

@property (readonly) NSArray *vip_arrayValue;
@property (readonly) NSDictionary *vip_dictionaryValue;
@property (readonly) NSString *vip_stringValue;
@property (readonly) NSNumber *vip_numberValue;
@property (readonly) BOOL vip_boolValue;
@property (readonly) double vip_doubleValue;
@property (readonly) float vip_floatValue;
@property (readonly) NSInteger vip_integerValue;

@end
