# IconFont [![Pod version](https://badge.fury.io/co/IconFont.svg)](http://badge.fury.io/co/IconFont)

IconFont is a way to build lossless images of pure color with font file.

## 简介

IconFont是一种通过字体文件来构建纯色图的方案。更详细的介绍参见[使用IconFont减小iOS应用体积](http://johnwong.github.io/mobile/2015/04/03/using-icon-font-in-ios.html)。简单说来其目的是：

1. 减小应用体积，字体文件比图片要小
1. 图标保真缩放，解决2x/3x乃至将来nx图问题
1. 方便更改颜色大小，图片复用

局限性在于只支持纯色图，但是在扁平化的今天纯色图变得越来越多。目前这套方案在点点iOS客户端上做了广泛的应用，对于应用体积压缩很有帮助。

![Screenshot](http://johnwong.github.io/images/2015-04-04-iconfont-screenshot.png)

## 使用指南

### 安装IconFont

#### 必要条件

Xcode 5
iOS 6.0 +
ARC enabled
CoreText framework

#### 使用CocoaPods安装

添加`pod 'IconFont', '~> 0.0.2'`到你项目的Podfile中。

运行`pod install`或者`pod update`来安装。

#### 手动安装

下载源码，将IconFont目录拖到你的项目中，并添加CoreText框架到你的项目中。

### 得到字体文件

强烈建议用[iconfont.cn](http://iconfont.cn/)平台管理字体，资源多，易用。或者使用字体工具自行编辑字体，比如[FontForge](http://fontforge.github.io/en-US/)。如果想了解FontForge的使用，可以看我翻译的官方文档[FontForge与字体设计](http://designwithfontforge.com/zh-CN/index.html)。

这里需要注意的是字体内包含的字体名要与字体文件名一致。从iconfont.cn下载的字体可能需要重命名。点击下图字体项目的`编辑项目`按钮，Font Family一栏就是字体内包含的字体名，将下载解压后的ttf文件名修改为这个字体名。当然，也可以在下载后使用FontForge工具修改ttf文件内包含的字体名。

![Screenshot](http://johnwong.github.io/images/2015-04-04-iconfont-web.png)

### 引用头文件

在需要使用的地方引用头文件，或者在预编译pch文件中做全局引用：

```objective-c
#import "TBCityIconFont.h"
```

### 设置字体名称

系统会默认加载字体名称LLIconfont，如果字体名不是这个，则需要在使用字体之前设置字体的名称。例如在AppDelegate的`-application:didFinishLaunchingWithOptions:`方法中添加：

```objective-c
[TBCityIconFont setFontName:@"LLIconfont"];
```

### 创建UIImage

使用UIImage的category方法从字体创建UIImage：

```objective-c
[UIImage iconWithInfo:TBCityIconInfoMake(@"\U0000e601", 24, [UIColor blackColor])]
```
其中`e601`图标在字体中存放的Unicode字符位。如果字体从iconfont.cn网站下载，这个值可以在页面上图标下方找到。可能更好的方法是在另一个文件中将图标预定义好，方便管理，使用的时候也更加简洁。

```objective-c
// TBCityIconDefine.h

#define kTBCityIconCheck TBCityIconInfoMake(@"\U0000e601", 24, [UIColor blackColor])
```

```objective-c
[UIImage iconWithInfo:kTBCityIconAppreciate]
```

### 代码结构

核心代码在工程的IconFont目录下，结构为：

```
IconFont
├── TBCityIconFont.h
├── TBCityIconFont.m
├── TBCityIconInfo.h
├── TBCityIconInfo.m
├── UIImage+TBCityIconFont.h
└── UIImage+TBCityIconFont.m
└── HQFontImage.h
└── HQFontImage.m
```

## 新的引用方式说明

### 关于HQFontImage

HQFontImage是扩展和加强原来的使用方式，增加字体定义，名称到图标数据映射，用文字做图片，自定义背景颜色等。
使用时需要定义子类使用，示例工程里有，可以参考使用。

### 1 获取字体文件和相应的网页文件

强烈建议用[iconfont.cn](http://iconfont.cn/)平台管理字体，资源多，易用。
下载的zip文件，包含网页样例，我们可以从网页样例转换为我们需要用的数据

### 2 转换数据

我们只是增加了字体映射关系，方便使用，所以需要做一次转换，iconfont.cn 官方提供这样的转换会更好。
目前官方没有，所以可以参考这个网页小工具：
[http://www.aslibra.com/iconFont/](http://www.aslibra.com/iconFont/)
把demo.html用浏览器打开，按提示处理即可，官方数据格式不变的情况下可用。
我们把官方用在css的类名作为唯一名称做映射关系。

### 3 做一个HQFontImage的子类

定义映射关系或者自定义字体文件，上面提供的网页可以方便得到下面的数据

```objective-c
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
```

### 4 使用示例

引用自定义的子类文件
```objective-c
#import "HQFontImageDictionary.h"
#import "HQFontImageList.h"
```

使用图片
```objective-c
    //使用名字的方式引用
    _appreciateIcon.image = [HQFontImageDictionary iconWithName:@"pause" fontSize:48 color:[UIColor redColor] inset:UIEdgeInsetsMake(10, 10, 10, 10)];
    _checkIcon.image = [HQFontImageDictionary iconWithName:@"pause" fontSize:48 color:[UIColor blueColor] padding:0.3 withBackgroundColor:[UIColor yellowColor]];
    _closeIcon.image = [HQFontImageDictionary iconWithName:@"汉" fontSize:48 color:[UIColor redColor]];
    //自定义，但两个字体会有上下偏移不同，不知道是否字体文件问题
    _editIcon.image = [HQFontImageList iconWithName:@"汉" fontSize:48 color:[UIColor redColor]];
    _emojiIcon.image = [HQFontImageDictionary iconWithName:@"pause" fontSize:48 color:[UIColor redColor] withBackgroundColor:[UIColor blackColor]];
```
