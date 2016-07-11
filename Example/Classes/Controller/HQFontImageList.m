//
//  HQFontImageList.m
//  IconFont
//
//  Created by hqlulu on 16/7/11.
//  Copyright © 2016年 Taodiandian. All rights reserved.
//

#import "HQFontImageList.h"

//自定义对应关系，建议iconfont.cn网站打包下载时可以生成此列表
//一行一个，用字体里的名字对应上编码即可

//便捷网页工具转换： http://www.aslibra.com/iconFont/

@implementation HQFontImageList

+ (NSDictionary*)IconDictionary
{
    return @{
             @"delete":@"\U0000e610", // 删除
             @"shezhi":@"\U0000e60f", // 设置
             @"order":@"\U0000e600", // order
             @"jikediancanicon02":@"\U0000e601", // 订单
             @"yinleyinpin":@"\U0000e602", // 音乐音频
             @"luyin":@"\U0000e603", // 录音
             @"tianjia":@"\U0000e604", // 添加
             @"dingdan":@"\U0000e605", // 订单
             @"tianjia1":@"\U0000e606", // 添加
             @"shezhi1":@"\U0000e611", // 设置
             @"8080pxtubiaokuozhan100":@"\U0000e615", // stop
             @"socialconnect":@"\U0000e612", // social-connect
             @"record":@"\U0000e616", // record
             @"bookaskicon1417":@"\U0000e607", // setting
             @"tixing":@"\U0000e608", // 提醒
             @"iconmenubarorder":@"\U0000e609", // order
             @"wifi":@"\U0000e60a", // WIFI
             @"shezhi2":@"\U0000e60b", // 设置
             @"gerenzhongxin01":@"\U0000e60c", // 个人中心 
             @"group":@"\U0000e613", // Group 
             @"help":@"\U0000e614", // help 
             @"play":@"\U0000e617", // play 
             @"tixing1":@"\U0000e60d", // 提醒 
             @"yuyin":@"\U0000e60e", // 语音 
             @"":@""};
}

//单独定义一个字体文件，方便管理多个字体库
+ (NSString*)fontName
{
    return @"iconfont";
}

@end
