//
//  UIImageView+HeaderImage.m
//  JazzEducationProgect
//
//  Created by mac on 16/5/11.
//  Copyright © 2016年 闫金泉. All rights reserved.
//

#import "UIImageView+HeaderImage.h"

@implementation UIImageView (HeaderImage)
- (void)setHeaderIamgeWithUrlStr:(NSString *)url PlaceHolderImage:(UIImage *)placeHolder{
    if (placeHolder) {
        self.image = placeHolder;
    }
}
@end
