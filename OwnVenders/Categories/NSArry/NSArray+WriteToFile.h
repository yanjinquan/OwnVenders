//
//  NSArray+WriteToFile.h
//  JazzEducationProgect
//
//  Created by mac on 16/4/14.
//  Copyright © 2016年 闫金泉. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (WriteToFile)
- (BOOL)writeArrayToFileWithPlistName:(NSString *)plistName;
+ (instancetype)getArrayWithPlistName:(NSString *)plistName;
@end
