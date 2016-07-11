//
//  TBCityIconInfo.h
//  iCoupon
//
//  Created by John Wong on 10/12/14.
//  Copyright (c) 2014 Taodiandian. All rights reserved.
//

@interface TBCityIconInfo : NSObject

@property (nonatomic, strong) NSString *text;
@property (nonatomic, assign) NSInteger size;
@property (nonatomic, assign) UIEdgeInsets imageInsets;
@property (nonatomic, strong) UIColor *color;
@property (nonatomic, strong) UIColor *backgroundColor;
@property (nonatomic, strong) NSString *fontName;

- (instancetype)initWithText:(NSString *)text size:(NSInteger)size color:(UIColor *)color;
- (instancetype)initWithText:(NSString *)text size:(NSInteger)size color:(UIColor *)color inset:(UIEdgeInsets)inset;
+ (instancetype)iconInfoWithText:(NSString *)text size:(NSInteger)size color:(UIColor *)color;
+ (instancetype)iconInfoWithText:(NSString *)text size:(NSInteger)size color:(UIColor *)color inset:(UIEdgeInsets)inset;

@end
