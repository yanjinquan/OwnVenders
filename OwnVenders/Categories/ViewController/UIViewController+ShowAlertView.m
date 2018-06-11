//
//  UIViewController+ShowAlertView.m
//  JazzEducationProgect
//
//  Created by mac on 16/4/22.
//  Copyright © 2016年 闫金泉. All rights reserved.
//

#import "UIViewController+ShowAlertView.h"
#import <objc/runtime.h>
@implementation UIViewController (ShowAlertView)
+ (void)load{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        Class class = [self class];
        SEL originalSelector = @selector(viewWillDisappear:);
        SEL swizzledSelector = @selector(jq_viewWillDisappear:);
        Method originalMethod = class_getInstanceMethod(class, originalSelector);
        Method swizzledMethod = class_getInstanceMethod(class, swizzledSelector);
        method_exchangeImplementations(originalMethod, swizzledMethod);
    });
}
- (void)showAlertWithTitle:(NSString *)title message:(NSString *)message{
    UIAlertController *alertC = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    [self presentViewController:alertC animated:YES completion:nil];
}
- (void)jq_viewWillDisappear:(BOOL)animated{
    [self jq_viewWillDisappear:animated];
}
@end
