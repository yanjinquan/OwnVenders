//
//  UIBarButtonItem+WithView.m
//  JazzEducationProgect
//
//  Created by mac on 16/4/10.
//  Copyright © 2016年 闫金泉. All rights reserved.
//

#import "UIBarButtonItem+WithView.h"

@implementation UIBarButtonItem (WithView)
+ (instancetype)initWithSelfNomelImage:(UIImage *)nomelImage andSelectImage:(UIImage *)selectImage target:(id)target action:(SEL)action{
    UIButton *leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [leftButton setImage:nomelImage forState:UIControlStateNormal];
    if (selectImage) {
        [leftButton setImage:selectImage forState:UIControlStateSelected];
    }
    leftButton.frame = CGRectMake(0, 0, 20, 36);

    [leftButton addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
   return [[UIBarButtonItem alloc]initWithCustomView:leftButton];
}

@end
