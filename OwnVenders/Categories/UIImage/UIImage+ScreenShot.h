//
//  UIImage+ScreenShot.h
//  Jazz-Education-Ltd
//
//  Created by mac on 16/3/23.
//  Copyright © 2016年 闫金泉. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (ScreenShot)
//截取整个View的的内容生成图片
+ (instancetype)imageGetWholelayerWithView:(UIView *)view;
//+ (instancetype)imageGetPartlayerWithView:(UIView *)view;
+ (instancetype)imageWithColor :(UIColor *)color;
//从bundle加载图片
+ (instancetype)imageFromBundleWithName:(NSString *)name;
//保存图片到手机相册
- (void)writeToSavePhotosAlbum;

@end
