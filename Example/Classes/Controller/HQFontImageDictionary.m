//
//  HQFontImageDictionary.m
//  IconFont
//
//  Created by hqlulu on 16/7/10.
//  Copyright © 2016年 Taodiandian. All rights reserved.
//

#import "HQFontImageDictionary.h"

//自定义对应关系，建议iconfont.cn网站打包下载时可以生成此列表
//一行一个，用字体里的名字对应上编码即可

//便捷网页工具转换： http://www.aslibra.com/iconFont/

#define kTBCityIconDictionary @{\
@"top":@"\U0000e600", @1:@"top", \
@"pause":@"\U0000e601", @1:@"pause", \
@"play":@"\U0000e602", @1:@"play", \
@"jingbao":@"\U0000e60b", @1:@"警报", \
@"iconsetting":@"\U0000e603", @1:@"setting", \
@"stop":@"\U0000e604", @1:@"stop", \
@"charline":@"\U0000e605", @1:@"char-line", \
@"kafei":@"\U0000e60c", @1:@"咖啡", \
@"tianjiazujian":@"\U0000e60d", @1:@"添加组件", \
@"pause1":@"\U0000e606", @1:@"pause", \
@"iconfontupgrade":@"\U0000e607", @1:@"upgrade", \
@"stop1":@"\U0000e608", @1:@"stop", \
@"bookaskicon1417":@"\U0000e609", @1:@"setting", \
@"xiugai":@"\U0000e60e", @1:@"修改", \
@"play1":@"\U0000e60a", @1:@"play", \
@"jiesuo":@"\U0000e60f", @1:@"解锁", \
}

@implementation HQFontImageDictionary

+ (NSDictionary*)IconDictionary
{
    return kTBCityIconDictionary;
}

@end
