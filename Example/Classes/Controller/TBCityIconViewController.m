//
//  TBCityIconViewController.m
//  IconFont
//
//  Created by John Wong on 4/3/15.
//  Copyright (c) 2015 Taodiandian. All rights reserved.
//

#import "TBCityIconViewController.h"
#import "HQFontImageDictionary.h"
#import "HQFontImageList.h"

@interface TBCityIconViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *appreciateIcon;
@property (weak, nonatomic) IBOutlet UIImageView *checkIcon;
@property (weak, nonatomic) IBOutlet UIImageView *closeIcon;
@property (weak, nonatomic) IBOutlet UIImageView *editIcon;
@property (weak, nonatomic) IBOutlet UIImageView *emojiIcon;
@property (weak, nonatomic) IBOutlet UIImageView *favorFillIcon;
@property (weak, nonatomic) IBOutlet UIImageView *favorIcon;
@property (weak, nonatomic) IBOutlet UIImageView *loadingIcon;
@property (weak, nonatomic) IBOutlet UIImageView *locationFillIcon;
@property (weak, nonatomic) IBOutlet UIImageView *locationIcon;
@property (weak, nonatomic) IBOutlet UIImageView *phoneIcon;
@property (weak, nonatomic) IBOutlet UIImageView *roundCheckIcon;

@end

@implementation TBCityIconViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //使用名字的方式引用
    _appreciateIcon.image = [HQFontImageDictionary iconWithName:@"pause" fontSize:48 color:[UIColor redColor] inset:UIEdgeInsetsMake(10, 10, 10, 10)];
    _checkIcon.image = [HQFontImageDictionary iconWithName:@"pause" fontSize:48 color:[UIColor blueColor] padding:0.3 withBackgroundColor:[UIColor yellowColor]];
    _closeIcon.image = [HQFontImageDictionary iconWithName:@"汉" fontSize:48 color:[UIColor redColor]];
    //自定义，但两个字体会有上下偏移不同，不知道是否字体文件问题
    _editIcon.image = [HQFontImageList iconWithName:@"汉" fontSize:48 color:[UIColor redColor]];
    _emojiIcon.image = [HQFontImageDictionary iconWithName:@"pause" fontSize:48 color:[UIColor redColor] withBackgroundColor:[UIColor blackColor]];
    
    _favorFillIcon.image = [UIImage iconWithInfo:kTBCityIconFavorFill];
    _favorIcon.image = [UIImage iconWithInfo:kTBCityIconFavor];
    _loadingIcon.image = [UIImage iconWithInfo:kTBCityIconLoading];
    
    _locationFillIcon.image = [UIImage iconWithInfo:kTBCityIconLocationFill];
    _locationIcon.image = [UIImage iconWithInfo:kTBCityIconLocation];
    _phoneIcon.image = [UIImage iconWithInfo:kTBCityIconPhone];
    _roundCheckIcon.image = [UIImage iconWithInfo:kTBCityIconRoundCheck];
}

@end
