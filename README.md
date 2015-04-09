IconFont ![License MIT](https://go-shields.herokuapp.com/license-MIT-blue.png)
=======================

![Version](http://cocoapod-badges.herokuapp.com/v/IconFont/badge.png)
![Platform](http://cocoapod-badges.herokuapp.com/p/IconFont/badge.png)

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

### 码表构建

我在尝试新的构建流程，将字体中包含的Unicode码点列出到代码中。这样可以防止使用图标字库中不存在的字符。如果你觉得没有必要，那么直接跳到下一节。

* 添加构建脚本
  * 选中项目的Target，点击Build Phases
  * 点击+，选择New Run Script Phase
  * 重命名当前的Phase为Check IconFont，并拖动到Compile Sources之前
  * 展开`Check IconFont`，在文本框加入如下代码：

```
#!/bin/sh
if ! test -e "IconFont.py";then
  curl -L https://raw.githubusercontent.com/JohnWong/PyTTF/master/ttf.py >> IconFont.py
fi
python IconFont.py
```
这里下载的脚本来自我写的解析TrueType文件的Python脚本[https://github.com/JohnWong/pyttf](https://github.com/JohnWong/pyttf)。

* 创建图标定义类

例如创建`TBCityIcon`类，用来管理所有的图标定义。在其中插入一段特殊注释，脚本会在构建时在这里列出字体文件所包含的所有码点。注释格式如下：

```
/* IconFont Unicode Start */
/* IconFont Unicode End */
```

* 项目目录下创建配置文件`IconFont.json`，例如示例工程中配置如下：

```
{
    "checksum": "504204786d9de64e7da1b6d3dcdfc52c",
    "font": "Example/Classes/LLIconfont.ttf",
    "define": "Example/Classes/TBCityIcon.m"
}
```

其中font为项目中使用的字体文件路径，define为图标定义类，比如前面创建的`TBCityIcon.m`，checksum不必填写。脚本会在每次构建时检查font字段指定的字体文件的md5，与配置文件的记录相比较。如果不同则解析字体文件的所有码点，并存放到define指定文件的一段特殊注释之间，比如：

```
/* IconFont Unicode Start */
static NSString *const u0078 = @"x";
static NSString *const ue600 = @"\U0000e600";
static NSString *const ue601 = @"\U0000e601";
/* IconFont Unicode End */
```

### 创建UIImage

接下来可以使用UIImage的category方法从字体创建UIImage。

#### 直接使用

```objective-c
[UIImage iconWithInfo:TBCityIconInfoMake(@"\U0000e601", 24, [UIColor blackColor])]
```
其中`e601`图标在字体中存放的Unicode字符位。如果字体从iconfont.cn网站下载，这个值可以在页面上图标下方找到。

#### 使用预定义管理图标

可能更好的方法是在另一个文件中将图标预定义好，方便管理，使用的时候也更加简洁。

```objective-c
// TBCityIconDefine.h

#define kTBCityIconCheck TBCityIconInfoMake(@"\U0000e601", 24, [UIColor blackColor])
```

```objective-c
[UIImage iconWithInfo:kTBCityIconCheck]
```

#### 新的构建流程

如果你尝试了上一节`码表构建`，那么执行一次构建，图标定义类`TBCityIcon`中就会列出字体的所有码点。就可以很方便地定义图标：
```
// TBCityIcon.h
+ (TBCityIconInfo *)appreciate;

// TBCityIcon.m
+ (TBCityIconInfo *)appreciate {
    return TBCityIconInfoMake(ue600, kTBCityIconSize, [UIColor blackColor]);
}
```
创建UIImage也非常简单了：
```
[UIImage iconWithInfo:[TBCityIcon appreciate]]
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
