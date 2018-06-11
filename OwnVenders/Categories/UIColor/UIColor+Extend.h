//
//  UIColor+Extend.h
//  Wifi
//
//  Created by muxi on 14/11/19.
//  Copyright (c) 2014年 muxi. All rights reserved.
//

#import <UIKit/UIKit.h>
#define Colorrgb(r,g,b) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:1.0f]
#define Colorrgba(r,g,b,a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define ColorhexColor(colorV) [UIColor colorWithHexColorString:@#colorV]
#define ColorhexColorAlpha(colorV,a) [UIColor colorWithHexColorString:@#colorV alpha:a];
#define ClearColor [UIColor clearColor]
//十六进制设置转化为UIColor eg:0xff098a
#define COLORHEX2UI(hexValue) [UIColor colorWithRed:((hexValue & 0xFF0000) >> 16)/255.0 green:((hexValue & 0xFF00) >> 8)/255.0 blue:((hexValue & 0xFF))/255.0 alpha:1.0]

@interface UIColor (Extend)




/**
 *  十六进制颜色
 */
+ (UIColor *)colorWithHexColorString:(NSString *)hexColorString;






/**
 *  十六进制颜色:含alpha
 */
+ (UIColor *)colorWithHexColorString:(NSString *)hexColorString alpha:(float)alpha;


/**
 *  根据颜色创建Image
 */



@end
