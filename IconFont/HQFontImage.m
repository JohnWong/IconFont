//
//  HQFontImage.m
//  IconFont
//
//  Created by hqlulu on 16/7/10.
//  Copyright © 2016年 Taodiandian. All rights reserved.
//

#import "HQFontImage.h"
#import "TBCityIconInfo.h"

@implementation HQFontImage

+ (NSDictionary*)IconDictionary
{
    return @{};
}

+ (NSString*)fontName
{
    return nil;
}

+(NSString*)nameToUnicode:(NSString*)name
{
    NSDictionary *nameToUnicode = [self IconDictionary];
    NSString *code = nameToUnicode[name];
    return code ?: name;
}

+ (UIImage *)iconWithName:(NSString*)name fontSize:(CGFloat)size color:(UIColor*)color
{
    return [self iconWithName:name fontSize:size color:color inset:UIEdgeInsetsZero withBackgroundColor:nil];
}

+ (UIImage *)iconWithName:(NSString*)name fontSize:(CGFloat)size color:(UIColor*)color padding:(CGFloat)paddingPercent
{
    CGFloat padding = size * paddingPercent;
    UIEdgeInsets inset = UIEdgeInsetsMake(padding, padding, padding, padding);
    return [self iconWithName:name fontSize:size color:color inset:inset withBackgroundColor:nil];
}

+ (UIImage *)iconWithName:(NSString*)name fontSize:(CGFloat)size color:(UIColor*)color inset:(UIEdgeInsets)inset
{
    return [self iconWithName:name fontSize:size color:color inset:inset withBackgroundColor:nil];
}

+ (UIImage *)iconWithName:(NSString*)name fontSize:(CGFloat)size color:(UIColor*)color withBackgroundColor:(UIColor*)backgroundColor
{
    return [self iconWithName:name fontSize:size color:color inset:UIEdgeInsetsZero withBackgroundColor:backgroundColor];
}

+ (UIImage *)iconWithName:(NSString*)name fontSize:(CGFloat)size color:(UIColor*)color padding:(CGFloat)paddingPercent withBackgroundColor:(UIColor*)backgroundColor
{
    CGFloat padding = size * paddingPercent;
    UIEdgeInsets inset = UIEdgeInsetsMake(padding, padding, padding, padding);
    return [self iconWithName:name fontSize:size color:color inset:inset withBackgroundColor:backgroundColor];
}

//主方法
+ (UIImage *)iconWithName:(NSString*)name fontSize:(CGFloat)size color:(UIColor*)color inset:(UIEdgeInsets)inset withBackgroundColor:(UIColor*)backgroundColor
{
    NSString *code = [self nameToUnicode:name];
    TBCityIconInfo *info = [TBCityIconInfo iconInfoWithText:code size:size color:color inset:inset];
    if (backgroundColor) {
        info.backgroundColor = backgroundColor;
    }
    NSString *fontName = [self fontName];
    info.fontName = fontName ? : nil;
    return [UIImage iconWithInfo:info];
}

@end
