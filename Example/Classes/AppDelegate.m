//
//  AppDelegate.m
//  IconFont
//
//  Created by John Wong on 9/24/14.
//  Copyright (c) 2014 Taodiandian. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [TBCityIconFont setFontName:@"LLIconfont"];
    return YES;
}

@end
