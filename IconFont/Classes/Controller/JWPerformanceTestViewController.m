//
//  JWPerformanceTestViewController.m
//  IconFont
//
//  Created by John Wong on 10/10/14.
//  Copyright (c) 2014 Taodiandian. All rights reserved.
//

#import "JWPerformanceTestViewController.h"

@interface JWPerformanceTestViewController ()

@property (nonatomic, assign) NSInteger                 testCount;

@property (weak, nonatomic) IBOutlet UIScrollView       *scrollView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *typeSegment;
@property (weak, nonatomic) IBOutlet UISegmentedControl *sizeSegment;

@end

@implementation JWPerformanceTestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.testCount = 1000;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tearDown {
    for (UIView *view in self.scrollView.subviews) {
        [view removeFromSuperview];
    }
    self.scrollView.contentSize = CGSizeZero;
}

- (IBAction)doTest:(id)sender {
    [self tearDown];
    NSDate *beginDate = [NSDate date];
    NSInteger size = [self testSize];
    NSInteger testCount = self.testCount;
    for (int i=0; i<testCount; i++) {
        UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, i * size, size, size)];
        if (self.typeSegment.selectedSegmentIndex == 0) {
            imageView.image = [UIImage iconWithInfo:TBCityIconInfoMake(@"\U0000e600", size, HEXCOLOR(0x272636))];
        } else if (self.typeSegment.selectedSegmentIndex == 1) {
            NSString *iconName = @"appreciate%ld";
            switch ([self testSize]) {
                case 32:
                    iconName = @"appreciate32";
                    break;
                case 64:
                    iconName = @"appreciate64";
                    break;
                case 200:
                default:
                    iconName = @"appreciate200";
                    break;
            }
            imageView.image = [UIImage imageNamed:iconName];
        }
        [self.scrollView addSubview:imageView];
    }
    self.scrollView.contentSize = CGSizeMake(self.view.frame.size.width, size * testCount);
    
    NSTimeInterval timeCost = -[beginDate timeIntervalSinceNow];
    NSLog(@"Time Cost: %f Size: %ld %@", timeCost, size, self.typeSegment.selectedSegmentIndex == 0? @"Font": @"Image");
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:[NSString stringWithFormat:@"%.3fs", timeCost] style:UIBarButtonItemStylePlain target:nil action:nil];
}

- (NSInteger)testSize {
    switch (self.sizeSegment.selectedSegmentIndex) {
        case 0:
            return 32;
        case 1:
            return 64;
        case 2:
            return 200;
        default:
            return 0;
    }
}
@end
