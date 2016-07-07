//
//  UIImage+iconFont.h
//  DiiiPlan
//
//  Created by hqlulu on 16/5/20.
//  Copyright © 2016年 hqlulu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (iconFont)

+ (UIImage *)iconWithName:(NSString*)name fontSize:(CGFloat)size color:(UIColor*)color;
+ (UIImage *)iconWithName:(NSString*)name fontSize:(CGFloat)size color:(UIColor*)color inset:(UIEdgeInsets)inset;

@end
