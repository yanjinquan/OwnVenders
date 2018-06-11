//
//  NSDictionary+WriteToFile.m
//  JazzEducationProgect
//
//  Created by mac on 16/4/14.
//  Copyright © 2016年 闫金泉. All rights reserved.
//

#import "NSDictionary+WriteToFile.h"

@implementation NSDictionary (WriteToFile)
- (BOOL)writeDictionaryToFileWithPlistName:(NSString *)plistName{
    NSArray *paths=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES);
    NSString *plistPath1 = [paths objectAtIndex:0];
    //得到完整的文件名
    plistName = [NSString stringWithFormat:@"%@.plist", plistName];
    NSString *filename=[plistPath1 stringByAppendingPathComponent:plistName];
    return [self writeToFile:filename atomically:YES];
}
+ (instancetype)getDictionaryWithPlistName:(NSString *)plistName{
    NSArray *paths=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES);
    NSString *plistPath1 = [paths objectAtIndex:0];
    //得到完整的文件名
    NSString *newPlistName = [NSString stringWithFormat:@"%@.plist", plistName];
    NSString *filename=[plistPath1 stringByAppendingPathComponent:newPlistName];
    NSDictionary *dic = [NSDictionary dictionaryWithContentsOfFile:filename];
    if (dic) {
        return dic;
    }
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:plistName ofType:@"plist"];
    return [self dictionaryWithContentsOfFile:plistPath];
}
@end
