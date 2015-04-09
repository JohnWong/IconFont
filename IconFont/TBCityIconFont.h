//
//  TBCityIconFont.h
//  iCoupon
//
//  Created by John Wong on 10/12/14.
//  Copyright (c) 2014 Taodiandian. All rights reserved.
//

#import "UIImage+TBCityIconFont.h"
#import "TBCityIconInfo.h"

#ifndef TBCityIconFont_h
#define TBCityIconFont_h

static TBCityIconInfo* TBCityIconInfoMake(NSString *text, CGFloat size, UIColor *color)
{
    return [TBCityIconInfo iconInfoWithText:text size:size color:color];
}

#endif


@interface TBCityIconFont : NSObject

+ (UIFont *)fontWithSize: (CGFloat)size;
+ (void)setFontName:(NSString *)fontName;

@end
