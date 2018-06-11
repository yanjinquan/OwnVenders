//
//  UIView+Extend.h
//  wucai
//
//  Created by muxi on 14/10/26.
//  Copyright (c) 2014年 muxi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIColor+Extend.h"
CG_INLINE CGRect JQ_CGRectMake(CGFloat x, CGFloat y, CGFloat width, CGFloat height)
{
    
    CGRect rect;
    CGFloat autoSizeScale = [UIScreen mainScreen].bounds.size.width / 375;
    rect.origin.x = x * autoSizeScale;
    rect.origin.y = y * autoSizeScale;
    rect.size.width = width * autoSizeScale;
    rect.size.height = height * autoSizeScale;
    return rect;
}

typedef enum{
    
    //上
    UIViewBorderDirectTop=0,
    
    //左
    UIViewBorderDirectLeft,
    
    //下
    UIViewBorderDirectBottom,
    
    //右
    UIViewBorderDirectRight,
    
    
}UIViewBorderDirect;

@interface UIView (Extend)

@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGPoint origin;
@property (nonatomic,assign) CGFloat radius;
//@property (nonatomic, assign) CGFloat basebottom;
@property (nonatomic, assign) CGFloat centerX;
@property (nonatomic, assign) CGFloat centerY;
//@property (nonatomic) CGFloat baseright;

/**
 *  添加边框：注给scrollView添加会出错
 *
 *  @param direct 方向
 *  @param color  颜色
 *  @param width  线宽
 */
-(void)addSingleBorder:(UIViewBorderDirect)direct color:(UIColor *)color width:(CGFloat)width;


/**
 *  自动从xib创建视图
 */
+(instancetype)viewFromXIB;

/**
 *  添加一组子view：
 */
-(void)addSubviewsWithArray:(NSArray *)subViews;

/**
 *  添加边框:四边
 */
-(void)setBorder:(UIColor *)color width:(CGFloat)width;

/**
 *  调试
 */
-(void)debug:(UIColor *)color width:(CGFloat)width;

/**
 *  批量移除视图
 *
 *  @param views 需要移除的视图数组
 */
+(void)removeViews:(NSArray *)views;

/**
 * 获得一个View的师徒控制器
 */
- (UIViewController *)viewController;

/**
 获取view相对于当前Window的frame
 
 @return <#return value description#>
 */
- (CGRect)windowFrame;

@end
