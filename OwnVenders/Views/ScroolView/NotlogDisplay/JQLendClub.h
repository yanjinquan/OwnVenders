//
//  JQLendClub.h
//  ScroolLendingClub
//
//  Created by mac on 16/3/9.
//  Copyright © 2016年 闫金泉. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef NS_ENUM(NSInteger, JQSlidingDirection){//定义滑动方向
    JQSlidingHorizontally,
    JQSlidingVertical
};
@interface JQLendClub : UIView
@property(nonatomic, strong)NSArray <UIImage *> *images;//image array
@property(nonatomic, assign)JQSlidingDirection sliedDirection;//default Horizontally
@property(nonatomic, assign, setter=isShowScrollIndicator:)BOOL ShowScrollIndicator;//default NO
@property(nonatomic, assign)BOOL showPageControl;//default YES
@property(nonatomic, assign)BOOL PageControlUserInter;//default NO
@property(nonatomic, assign)CGRect pageControlFrame; //you can set it‘s frame own ,if no,will obtain a default frame
@end

@interface ImageItem : UICollectionViewCell
@property(nonatomic, strong)UIImage *image;
@end