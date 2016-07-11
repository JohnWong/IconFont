//
//  TBCityIconFont.h
//  iCoupon
//
//  Created by John Wong on 10/12/14.
//  Copyright (c) 2014 Taodiandian. All rights reserved.
//

#import "UIImage+TBCityIconFont.h"
#import "TBCityIconInfo.h"

#define TBCityIconInfoMake(text, imageSize, imageColor) [TBCityIconInfo iconInfoWithText:text size:imageSize color:imageColor]

@interface TBCityIconFont : NSObject

+ (UIFont *)fontWithSize: (CGFloat)size;
+ (UIFont *)fontWithSize: (CGFloat)size withFontName:(NSString*)fontName;
+ (void)setFontName:(NSString *)fontName;

@end
