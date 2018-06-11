//
//  OneLineButton.h
//  Jazz-Education-Ltd
//
//  Created by mac on 16/3/15.
//  Copyright © 2016年 闫金泉. All rights reserved.
//

#import <UIKit/UIKit.h>
@class OneLineButton;
//如何将这些放到一个公共类中？？？？？
typedef struct JQOneLineButtonMargin {
    CGFloat  top, buttom, sides, lines;
}JQOneLineButtonMargin;
CG_INLINE JQOneLineButtonMargin
JQOneLineButtonMarginMake(CGFloat top, CGFloat buttom, CGFloat sides, CGFloat lines){
    JQOneLineButtonMargin sets;
    sets.top = top;
    sets.buttom = buttom;
    sets.sides = sides;
    sets.lines = lines;
    return sets;
}
@protocol JQOneLineButtonDelegate <NSObject>
@optional//可选的
- (void)oneLineButton :(OneLineButton *)onelineView disselectbuttonAtIndex :(NSInteger)index;
@required//必须执行的
- (void)oneLineButton :(OneLineButton *)onelineView didselectbuttonAtIndex :(NSInteger)index;
@end
@interface OneLineButton : UIView
/** 设置每个button的宽，button的是去不相同的，如果不设置会根据JQOneLineButtonsMake 和frame算出值；如果设置了with。JQOneLineButtonsMake中的sides将代表left */
@property(nonatomic, assign)CGFloat buttonWith;
@property(nonatomic)         JQOneLineButtonMargin  contentInset1;

@property(nonatomic, strong)UIColor *buttonColor;
@property(nonatomic, weak)id <JQOneLineButtonDelegate> delegate;
+ (instancetype)initViewWith :(NSArray <NSString *>*)titles;

- (void)setButtonstitlesArray :(NSArray <NSString *>*)titles;
@property(nonatomic, assign)CGFloat fontSize;
@property(nonatomic, strong)UIColor *fontColor;
//- (void)setButtonsNomalImagesArray :(NSArray <UIImage *>*)images;
//- (void)setButtonsSelectImagesArray:(NSArray<UIImage *> *)images;
//
//- (void)setbuttonTitleNomalAtIndex :(NSInteger)index with :(NSString *)title;
//- (void)setbuttonTitleSelectAtIndex :(NSInteger)index with :(NSString *)title;
//
//- (void)setbuttonImageNomalAtIndex :(NSInteger)index with :(NSString *)title;
//- (void)setbuttonImageSelectAtIndex :(NSInteger)index with :(NSString *)title;
@end




@interface JQIndexButton : UIButton
@property(nonatomic, assign)NSInteger index;
@end



