//
//  JWIconCell.m
//  IconFont
//
//  Created by John Wong on 9/25/14.
//  Copyright (c) 2014 Taodiandian. All rights reserved.
//

#import "JWIconCell.h"

@implementation JWIconCell

- (void)setIcon:(UIView *)icon {
    _icon = icon;
    CGFloat margin = (self.width - _icon.width) / 2.0;
    _icon.frame = CGRectMake(margin, margin, _icon.width, _icon.height);
    _icon.layer.borderColor = [self.tintColor colorWithAlphaComponent:0.3].CGColor;
    _icon.layer.borderWidth = 1.0f;
    [self addSubview:_icon];
}

@end
