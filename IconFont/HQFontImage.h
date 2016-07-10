//
//  HQFontImage.h
//  IconFont
//
//  Created by hqlulu on 16/7/10.
//  Copyright © 2016年 Taodiandian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HQFontImage : NSObject

+ (UIImage *)iconWithName:(NSString*)name fontSize:(CGFloat)size color:(UIColor*)color;
+ (UIImage *)iconWithName:(NSString*)name fontSize:(CGFloat)size color:(UIColor*)color inset:(UIEdgeInsets)inset;
+ (UIImage *)iconWithName:(NSString*)name fontSize:(CGFloat)size color:(UIColor*)color padding:(CGFloat)paddingPercent;

@end
