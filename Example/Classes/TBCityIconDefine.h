//
//  TBCityFontImageDefine.h
//  iCoupon
//
//  Created by John Wong on 10/12/14.
//  Copyright (c) 2014 Taodiandian. All rights reserved.
//

#ifndef iCoupon_TBCityFontImageDefine_h
#define iCoupon_TBCityFontImageDefine_h

#define kTBCityIconSize 48

#define kTBCityIconAppreciate   TBCityIconInfoMake(@"\U0000e600", kTBCityIconSize, HEXCOLOR(0x333333))
#define kTBCityIconCheck        TBCityIconInfoMake(@"\U0000e601", kTBCityIconSize, HEXCOLOR(0x00bb9c))
#define kTBCityIconClose        TBCityIconInfoMake(@"\U0000e602", kTBCityIconSize, HEXCOLOR(0xea8010))
#define kTBCityIconEdit         TBCityIconInfoMake(@"\U0000e603", kTBCityIconSize, HEXCOLOR(0x11cd6e))
#define kTBCityIconEmoji        TBCityIconInfoMake(@"\U0000e604", kTBCityIconSize, HEXCOLOR(0xeb4f38))
#define kTBCityIconFavorFill    TBCityIconInfoMake(@"\U0000e605", kTBCityIconSize, HEXCOLOR(0x56abe4))
#define kTBCityIconFavor        TBCityIconInfoMake(@"\U0000e606", kTBCityIconSize, HEXCOLOR(0xecf0f1))
#define kTBCityIconLoading      TBCityIconInfoMake(@"\U0000e607", kTBCityIconSize, HEXCOLOR(0x9d55b8))
#define kTBCityIconLocationFill TBCityIconInfoMake(@"\U0000e608", kTBCityIconSize, HEXCOLOR(0xa9b7b7))
#define kTBCityIconLocation     TBCityIconInfoMake(@"\U0000e609", kTBCityIconSize, HEXCOLOR(0x33475f))
#define kTBCityIconPhone        TBCityIconInfoMake(@"\U0000e60a", kTBCityIconSize, HEXCOLOR(0x000000))
#define kTBCityIconRoundCheck   TBCityIconInfoMake(@"\U0000e60b", kTBCityIconSize, HEXCOLOR(0xf4c600))

//自定义对应关系，建议iconfont.cn网站打包下载时可以生成此列表
//一行一个，用字体里的名字对应上编码即可
#define kTBCityIconDictionary   @{\
@"nice":@"\U0000e600",\
@"check":@"\U0000e601",\
@"关闭":@"\U0000e602",\
@"":@""}

#endif
