//
//  TBCityIcon.m
//  IconFont
//
//  Created by John Wong on 4/9/15.
//  Copyright (c) 2015 Taodiandian. All rights reserved.
//

#import "TBCityIcon.h"

@implementation TBCityIcon

static const CGFloat kTBCityIconSize = 48;

/* IconFont Unicode Start */
static NSString *const u0078 = @"x";
static NSString *const ue600 = @"\U0000e600";
static NSString *const ue601 = @"\U0000e601";
static NSString *const ue602 = @"\U0000e602";
static NSString *const ue603 = @"\U0000e603";
static NSString *const ue604 = @"\U0000e604";
static NSString *const ue605 = @"\U0000e605";
static NSString *const ue606 = @"\U0000e606";
static NSString *const ue607 = @"\U0000e607";
static NSString *const ue608 = @"\U0000e608";
static NSString *const ue609 = @"\U0000e609";
static NSString *const ue60a = @"\U0000e60a";
static NSString *const ue60b = @"\U0000e60b";
/* IconFont Unicode End */

+ (TBCityIconInfo *)appreciate {
    return TBCityIconInfoMake(ue600, kTBCityIconSize, HEXCOLOR(0x333333));
}

+ (TBCityIconInfo *)check {
    return TBCityIconInfoMake(ue601, kTBCityIconSize, HEXCOLOR(0x00bb9c));
}

+ (TBCityIconInfo *)close {
    return TBCityIconInfoMake(ue602, kTBCityIconSize, HEXCOLOR(0xea8010));
}

+ (TBCityIconInfo *)edit {
    return TBCityIconInfoMake(ue603, kTBCityIconSize, HEXCOLOR(0x11cd6e));
}

+ (TBCityIconInfo *)emoji {
    return TBCityIconInfoMake(ue604, kTBCityIconSize, HEXCOLOR(0xeb4f38));
}

+ (TBCityIconInfo *)favorFill {
    return TBCityIconInfoMake(ue605, kTBCityIconSize, HEXCOLOR(0x56abe4));
}

+ (TBCityIconInfo *)favor {
    return TBCityIconInfoMake(ue606, kTBCityIconSize, HEXCOLOR(0xecf0f1));
}

+ (TBCityIconInfo *)loading {
    return TBCityIconInfoMake(ue607, kTBCityIconSize, HEXCOLOR(0x9d55b8));
}

+ (TBCityIconInfo *)locationFill {
    return TBCityIconInfoMake(ue608, kTBCityIconSize, HEXCOLOR(0xa9b7b7));
}

+ (TBCityIconInfo *)location {
    return TBCityIconInfoMake(ue609, kTBCityIconSize, HEXCOLOR(0x33475f));
}

+ (TBCityIconInfo *)phone {
    return TBCityIconInfoMake(ue60a, kTBCityIconSize, HEXCOLOR(0x000000));
}

+ (TBCityIconInfo *)roundCheck {
    return TBCityIconInfoMake(ue60b, kTBCityIconSize, HEXCOLOR(0xf4c600));
}

@end
