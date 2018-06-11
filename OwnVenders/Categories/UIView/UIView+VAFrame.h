//
//  UIView+VAFrame.h
//  VIPABC-iOS-Phone
//
//  Created by john shi on 16/4/21.
//  Copyright © 2016年 vipabc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (VAFrame)

@property (nonatomic, assign) CGFloat basex;
@property (nonatomic, assign) CGFloat basey;

@property (nonatomic, assign) CGFloat baseright;
@property (nonatomic, assign) CGFloat basebottom;

@property (nonatomic, assign) CGFloat basewidth;
@property (nonatomic, assign) CGFloat baseheight;

@property (nonatomic, assign) CGPoint baseorigin;
@property (nonatomic, assign) CGSize basesize;

@end
