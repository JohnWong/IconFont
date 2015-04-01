//
//  JWIconImageCollectionViewController.m
//  IconFont
//
//  Created by John Wong on 9/30/14.
//  Copyright (c) 2014 Taodiandian. All rights reserved.
//

#import "JWIconImageCollectionViewController.h"
#import "JWIconCell.h"
#import "JWCollectionHeaderView.h"

#import "TBCityFontImageDefine.h"

@interface JWIconImageCollectionViewController ()

@property (nonatomic, strong) NSArray *iconImageInfos;

@end

@implementation JWIconImageCollectionViewController

#pragma mark life cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    
}

#pragma mark UICollectionViewDataSource
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    if (section == 0) {
        return self.iconImageInfos.count;
    }
    return 0;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    NSString *cellId = @"JWIconCell";
    JWIconCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellId forIndexPath:indexPath];
    if (indexPath.section == 0) {
        // Draw image with IconFont
        UIImage *image = [UIImage iconWithInfo:self.iconImageInfos[indexPath.row]];
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, image.size.width, image.size.height)];
        imageView.image = image;
        [cell setIcon:imageView];
    }
    return cell;
}

- (UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath {
    if (kind == UICollectionElementKindSectionHeader) {
        JWCollectionHeaderView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"HeaderView" forIndexPath:indexPath];
        if (indexPath.section == 0) {
            [headerView setTitle:@"IconFont Image"];
        }
        return headerView;
    }
    return nil;
}

#pragma mark getter and setter

- (NSArray *)iconImageInfos {
    if (!_iconImageInfos) {
        _iconImageInfos = @[
                            kTBCityIconAppreciate,
                            kTBCityIconCheck,
                            kTBCityIconClose,
                            kTBCityIconEdit,
                            kTBCityIconEmoji,
                            kTBCityIconFavorFill,
                            kTBCityIconFavor,
                            kTBCityIconLoading,
                            kTBCityIconLocationFill,
                            kTBCityIconLocation,
                            kTBCityIconPhone,
                            kTBCityIconRoundCheck
                            ];
    }
    return _iconImageInfos;
}

@end
