//
//  UIBarButtonItem+WithView.h
//  JazzEducationProgect
//
//  Created by mac on 16/4/10.
//  Copyright © 2016年 闫金泉. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (WithView)
+ (instancetype)initWithSelfNomelImage :(UIImage *)nomelImage andSelectImage :(UIImage *)selectImage target :(id)target action :(SEL)action;
@end
