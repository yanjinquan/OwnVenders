//
//  OneLineButton.m
//  Jazz-Education-Ltd
//
//  Created by mac on 16/3/15.
//  Copyright © 2016年 闫金泉. All rights reserved.
////typedef struct JQOneLineButton {
//CGFloat  top, buttom, sides, lines;
//}JQOneLineButtons;

#import "OneLineButton.h"
#define JQOneLineMarginTop 0
#define JQOneLineMarginButtom 0
#define JQOneLineMarginSides 0
#define JQOneLineMarginLines 20
#define JQOneLineMarginDeflotColor [UIColor clearColor]
#define JQtop self.contentInset1.top
#define JQbuttom self.contentInset1.buttom
#define JQlines self.contentInset1.lines
#define JQsides self.contentInset1.sides
#define JQOneLineFontSize 15.0
#define JQOneLineFontColor [UIColor blackColor]
@implementation JQIndexButton

@end
@interface OneLineButton ()
@property(nonatomic, strong)NSArray *titles;
//@property(nonatomic, strong)NSArray *selectTitles;
//@property(nonatomic, strong)NSArray *images;
//@property(nonatomic, strong)NSArray *selectImages;
@end

@implementation OneLineButton
- (instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        self.contentInset1 = JQOneLineButtonMarginMake(JQOneLineMarginTop, JQOneLineMarginButtom, JQOneLineMarginSides, JQOneLineMarginLines);
        self.buttonColor = JQOneLineMarginDeflotColor;
        self.fontSize = JQOneLineFontSize;
        self.fontColor = JQOneLineFontColor;
        
    }
    return self;
}
- (void)layoutSubviews{
    [super layoutSubviews];
    [self addSubButtons];
}
#pragma mark --ownFanction
+ (instancetype)initViewWith:(NSArray<NSString *> *)titles{
    OneLineButton *view = [[self alloc]init];
    view.backgroundColor = [UIColor clearColor];
    view.titles = titles;
    return view;
}

- (void)setButtonstitlesArray:(NSArray<NSString *> *)titles{
    self.titles = titles;
}

- (void)clickButton : (JQIndexButton *)button{
    if ([self.delegate respondsToSelector:@selector(oneLineButton:disselectbuttonAtIndex:)]) {
        [self.delegate oneLineButton:self disselectbuttonAtIndex:button.index];
    }
    [self.delegate oneLineButton:self didselectbuttonAtIndex:button.index];
}
- (void)addSubButtons{
    if (self.titles) {
        CGFloat with;
        CGFloat hight = self.frame.size.height - 2 * JQtop - JQbuttom;
        CGFloat y = JQtop;
        if (self.buttonWith) {
            with = self.buttonWith;
        }else{
            with = (self.frame.size.width - 2 * JQsides - (self.titles.count - 1) * JQlines) / 2;
        }
        for (int i = 0; i < self.titles.count; i++) {
            JQIndexButton *subBtn = [JQIndexButton buttonWithType:UIButtonTypeSystem];
            subBtn.backgroundColor = self.buttonColor;
            [subBtn setTitle:self.titles[i] forState:(UIControlStateNormal)];
            subBtn.index = i;
            [subBtn addTarget:self action:@selector(clickButton:) forControlEvents:(UIControlEventTouchUpInside)];
            CGFloat x = JQsides / 2 + (with + JQlines) * i;
            [subBtn.titleLabel setFont:[UIFont systemFontOfSize:self.fontSize]];
            [subBtn setTitleColor:self.fontColor forState:UIControlStateNormal];
            subBtn.frame = CGRectMake(x, y, with, hight);
            [self addSubview:subBtn];
        }
    }
}
@end
