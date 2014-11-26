//
//  BaseNavViewController.m
//  cywcc
//
//  Created by wangdehuai on 14/10/25.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import "BaseNavViewController.h"

@interface BaseNavViewController ()
@end

@implementation BaseNavViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //左右 item 颜色
    [self.navigationBar setTintColor:[UIColor whiteColor]];
    
    //黑底白字，nav不透明
    [self.navigationBar setBarStyle:UIBarStyleBlackOpaque];
    [self.navigationBar setBackgroundImage:[UIImage imageNamed:@"导航栏背景"] forBarMetrics:UIBarMetricsDefault];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
