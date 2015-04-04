# IconFont

IconFont is a way to build lossless images of pure color with font file.

## 简介

IconFont是一种通过字体文件来构建纯色图的方案。更详细的介绍参见[使用IconFont减小iOS应用体积](http://johnwong.github.io/mobile/2015/04/03/using-icon-font-in-ios.html)。简单说来其目的是：

1. 减小应用体积，字体文件比图片要小
1. 图标保真缩放，解决2x/3x乃至将来nx图问题
1. 方便更改颜色大小，图片复用

局限性在于只支持纯色图，但是在扁平化的今天纯色图变得越来越多。目前这套方案在点点iOS客户端上做了广泛的应用，对于应用体积压缩很有帮助。

![Screenshot](http://johnwong.github.io/images/2015-04-04-iconfont-screenshot.png)

## 使用指南

### 得到字体文件

强烈建议用[iconfont.cn](http://iconfont.cn/)平台管理字体，资源多，易用。或者使用字体工具自行编辑字体，比如[FontForge](http://fontforge.github.io/en-US/)。如果想了解FontForge的使用，可以看我翻译的官方文档[FontForge与字体设计](http://designwithfontforge.com/zh-CN/index.html)。

这里需要注意的是字体内包含的字体名要与字体文件名一致。从iconfont.cn下载的字体不会有这个问题。

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
```
