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
    _appreciateIcon.image = [UIImage iconWithInfo:[TBCityIcon appreciate]];
    _checkIcon.image = [UIImage iconWithInfo:[TBCityIcon check]];
    _closeIcon.image = [UIImage iconWithInfo:[TBCityIcon close]];
    _editIcon.image = [UIImage iconWithInfo:[TBCityIcon edit]];
    
    _emojiIcon.image = [UIImage iconWithInfo:[TBCityIcon emoji]];
    _favorFillIcon.image = [UIImage iconWithInfo:[TBCityIcon favorFill]];
    _favorIcon.image = [UIImage iconWithInfo:[TBCityIcon favor]];
    _loadingIcon.image = [UIImage iconWithInfo:[TBCityIcon loading]];
    
    _locationFillIcon.image = [UIImage iconWithInfo:[TBCityIcon locationFill]];
    _locationIcon.image = [UIImage iconWithInfo:[TBCityIcon location]];
    _phoneIcon.image = [UIImage iconWithInfo:[TBCityIcon phone]];
    _roundCheckIcon.image = [UIImage iconWithInfo:[TBCityIcon roundCheck]];
}

@end
