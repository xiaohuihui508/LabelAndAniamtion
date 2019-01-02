//
//  MoreViewController.m
//  字体渐变和动画
//
//  Created by isoft on 2019/1/2.
//  Copyright © 2019 isoft. All rights reserved.
//

#import "MoreViewController.h"

@interface MoreViewController ()

@end

@implementation MoreViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIImageView *imgViewLogo = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Logo111.png"]];
    [self.view addSubview:imgViewLogo];
    [imgViewLogo mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view.mas_top).offset(100);
        make.centerX.mas_equalTo(self.view);
        make.height.mas_equalTo(128 * 0.8);
        make.width.mas_equalTo(626 * 0.8);
    }];
    
    UIImageView *imgLable = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"11.png"]];
    imgLable.contentMode = UIViewContentModeScaleToFill;
    [imgViewLogo addSubview:imgLable];
    [imgLable mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(imgViewLogo);
    }];
    
    [self.view setNeedsLayout];
    [self.view layoutIfNeeded];
    
    
    [RTGradientHelper addGradientChromatoAnimation:imgViewLogo];
    
    
    // lable
    UILabel* lable1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 300, 375, 50)];
    lable1.textAlignment = NSTextAlignmentCenter;
    lable1.text = @"交流故事，沟通想法";
    lable1.font = [UIFont systemFontOfSize:28];
    [RTGradientHelper addLinearGradientForLableText:self.view lable:lable1 start:[UIColor blueColor] and:[UIColor greenColor]];
    
    UILabel* lable2 = [[UILabel alloc] initWithFrame:CGRectMake(0, 440, 375, 50)];
    lable2.textAlignment = NSTextAlignmentCenter;
    lable2.text = @"交流故事，沟通想法";
    lable2.font = [UIFont systemFontOfSize:28];
    [RTGradientHelper addGradientChromatoAnimationForLableText:self.view lable:lable2];
    
    
    
    self.view.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(dismissBtn:)];
    tapRecognizer.numberOfTapsRequired = 1;
    [self.view addGestureRecognizer:tapRecognizer];
}

#pragma mark - buttonAction
- (void)dismissBtn:(UITapGestureRecognizer *)gesture {
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
