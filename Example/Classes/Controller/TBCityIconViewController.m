//
//  TBCityIconViewController.m
//  IconFont
//
//  Created by John Wong on 4/3/15.
//  Copyright (c) 2015 Taodiandian. All rights reserved.
//

#import "TBCityIconViewController.h"

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
    _appreciateIcon.image = [UIImage iconWithName:@"nice" fontSize:48 color:[UIColor redColor]];
    _checkIcon.image = [UIImage iconWithName:@"check" fontSize:48 color:[UIColor blueColor]];
    _closeIcon.image = [UIImage iconWithName:@"关闭" fontSize:48 color:[UIColor greenColor]];
    
    _editIcon.image = [UIImage iconWithInfo:kTBCityIconEdit];
    _emojiIcon.image = [UIImage iconWithInfo:kTBCityIconEmoji];
    _favorFillIcon.image = [UIImage iconWithInfo:kTBCityIconFavorFill];
    _favorIcon.image = [UIImage iconWithInfo:kTBCityIconFavor];
    _loadingIcon.image = [UIImage iconWithInfo:kTBCityIconLoading];
    
    _locationFillIcon.image = [UIImage iconWithInfo:kTBCityIconLocationFill];
    _locationIcon.image = [UIImage iconWithInfo:kTBCityIconLocation];
    _phoneIcon.image = [UIImage iconWithInfo:kTBCityIconPhone];
    _roundCheckIcon.image = [UIImage iconWithInfo:kTBCityIconRoundCheck];
}

@end
