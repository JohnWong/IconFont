//
//  JWCollectionHeaderView.m
//  IconFont
//
//  Created by John Wong on 9/26/14.
//  Copyright (c) 2014 Taodiandian. All rights reserved.
//

#import "JWCollectionHeaderView.h"

@interface JWCollectionHeaderView()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation JWCollectionHeaderView

- (void)setTitle:(NSString *)title {
    self.titleLabel.text = title;
}

@end
