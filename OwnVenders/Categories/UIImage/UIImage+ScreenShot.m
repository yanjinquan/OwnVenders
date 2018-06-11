//
//  UIImage+ScreenShot.m
//  Jazz-Education-Ltd
//
//  Created by mac on 16/3/23.
//  Copyright © 2016年 闫金泉. All rights reserved.
//

#import "UIImage+ScreenShot.h"

@implementation UIImage (ScreenShot)


//从bundle加载图片
+ (instancetype)imageFromBundleWithName:(NSString *)name{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:name ofType:@"png"];
    NSData *image = [NSData dataWithContentsOfFile:filePath];
    return [UIImage imageWithData:image];
}

//截取整个View的的内容生成图片
+ (instancetype)imageGetWholelayerWithView:(UIView *)view{
    UIGraphicsBeginImageContext(view.bounds.size);
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    return  UIGraphicsGetImageFromCurrentImageContext();
}

/**
 待补

 @param view <#view description#>
 @return <#return value description#>
 */
+ (instancetype)imageGetPartlayerWithView:(UIView *)view{
    return [[UIImage alloc]init];
}

+ (instancetype)imageWithColor :(UIColor *)color{
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *theImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return theImage;
}
//保存图片到手机相册
- (void)writeToSavePhotosAlbum{
    UIImageWriteToSavedPhotosAlbum(self, self, @selector(image:didFinishSavingWithError:contextInfo:), nil);
}
- (void)image:(UIImage *)image didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo{
    
}
@end
