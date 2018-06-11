//
//  NSDictionary+WriteToFile.h
//  JazzEducationProgect
//
//  Created by mac on 16/4/14.
//  Copyright © 2016年 闫金泉. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (WriteToFile)
- (BOOL)writeDictionaryToFileWithPlistName:(NSString *)plistName;
+ (instancetype)getDictionaryWithPlistName:(NSString *)plistName;
@end
