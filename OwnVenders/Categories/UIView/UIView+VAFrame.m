//
//  UIView+VAFrame.m
//  VIPABC-iOS-Phone
//
//  Created by john shi on 16/4/21.
//  Copyright © 2016年 vipabc. All rights reserved.
//

#import "UIView+VAFrame.h"

@implementation UIView (VAFrame)

- (CGFloat)basex {
    return self.frame.origin.x;
}

- (void)setBasex:(CGFloat)basex {
    CGRect frame = self.frame;
    frame.origin.x = basex;
    self.frame = frame;
}



- (CGFloat)basey {
    return self.frame.origin.y;
}


- (void)setBasey:(CGFloat)basey {
    CGRect frame = self.frame;
    frame.origin.y = basey;
    self.frame = frame;
}


- (CGFloat)baseright {
    return self.frame.origin.x + self.frame.size.width;
}

- (void)setBaseright:(CGFloat)baseright {
    CGRect frame = self.frame;
    frame.origin.x = baseright - self.frame.size.width;
    self.frame = frame;
}


- (CGFloat)basebottom {
    return self.frame.origin.y + self.frame.size.height;
}


- (void)setBasebottom:(CGFloat)basebottom {
    CGRect frame = self.frame;
    frame.origin.y = basebottom - self.frame.size.height;
    self.frame = frame;
}


- (CGFloat)basewidth {
    return self.frame.size.width;
}


- (void)setBasewidth:(CGFloat)basewidth {
    
    CGRect frame = self.frame;
    frame.size.width = basewidth;
    self.frame = frame;
    
}


- (CGFloat)baseheight {
    return self.frame.size.height;
}

- (void)setBaseheight:(CGFloat)baseheight {
    
    CGRect frame = self.frame;
    frame.size.height = baseheight;
    self.frame = frame;
    
}

- (CGSize)basesize {
    return self.frame.size;
}


- (void)setBasesize:(CGSize)basesize {
    
    CGRect frame = self.frame;
    frame.size = basesize;
    self.frame = frame;
    
}


- (CGPoint)baseorigin {
    return self.frame.origin;
}

- (void)setBaseorigin:(CGPoint)baseorigin {
    CGRect frame = self.frame;
    frame.origin = baseorigin;
    self.frame = frame;
}



@end
