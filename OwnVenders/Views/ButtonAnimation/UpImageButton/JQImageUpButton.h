//
//  JQImageUpButton.h
//  Vip-Gangqin-Teacher
//
//  Created by yanjinquan on 2017/3/8.
//  Copyright © 2017年 Miaokexinxi. All rights reserved.
//

#import <UIKit/UIKit.h>
IB_DESIGNABLE
@interface JQImageUpButton : UIControl
/**
 图片和文字相对于控件的整体位置
 */
@property (nonatomic, assign)UIEdgeInsets contentInset;
@property (nonatomic, strong)IBInspectable UIImage *image;
@property (nonatomic, copy)IBInspectable NSString *title;
@end
