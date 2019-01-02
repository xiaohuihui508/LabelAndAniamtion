//
//  Globals.h
//  字体渐变和动画
//
//  Created by isoft on 2019/1/2.
//  Copyright © 2019 isoft. All rights reserved.
//

#ifndef Globals_h
#define Globals_h

#define UIColorFromRGBA(r,g,b,a)            [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:a]
#define UIColorFronHSB(h,s,b)               [UIColor colorWithHue:h saturation:s brightness:b alpha:1.0f]

#define kColor1             UIColorFromRGBA(107,127,255,1.0f)
#define kColor2             UIColorFromRGBA(145,62,245,1.0f)
#define kColor3             UIColorFromRGBA(242,63,159,0.8f)
#define kColor4             UIColorFromRGBA(255,164,221,0.8f)
#define kColor5             UIColorFromRGBA(193,44,255,1.0f)
#define kColor6             UIColorFromRGBA(227,25,168,1.0f)
#define kColor7             UIColorFromRGBA(107,127,255,1.0f)
#define kColor8             UIColorFromRGBA(145,62,245,1.0f)
#define kColor9             UIColorFromRGBA(255,19,183,1.0f)
#define kColor10            UIColorFromRGBA(255,31,74,1.0f)

#define kColor11            UIColorFromRGBA(153, 70, 255, 0.8f)
#define kColor12            UIColorFromRGBA(98, 168, 250, 0.8f)

#pragma mark - 判断当前设备
#define IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
#define iPhone3                   ([UIScreen mainScreen].bounds.size.height < 480)
#define iPhone4                   ([UIScreen mainScreen].bounds.size.height == 480)
#define iPhone5                   ([UIScreen mainScreen].bounds.size.height == 568)
#define iPhone6                   ([UIScreen mainScreen].bounds.size.height == 667)
#define iPhone6p                  ([UIScreen mainScreen].bounds.size.height == 736)
#define IS_IPHONE_X (IS_IPHONE && [[UIScreen mainScreen] bounds].size.height == 812.0f)
#define IS_IPHONE_XS (IS_IPHONE && [[UIScreen mainScreen] bounds].size.height == 896.0f)

#define statusBar  ((IS_IPHONE_X ||IS_IPHONE_XS) ? 24 : 0)


#endif /* Globals_h */
