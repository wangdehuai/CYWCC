//
//  BaseViewController.m
//  cywcc
//
//  Created by wangdehuai on 14/10/25.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    _backItem = [[UIBarButtonItem alloc] initWithTitle:@"" style:UIBarButtonItemStyleDone target:self action:nil];
    [self.navigationItem setBackBarButtonItem:_backItem];
    
}

-(void)setLeftItemWithTitle:(NSString *)title action:(SEL)sel
{
    _LeftItem = [[UIBarButtonItem alloc] initWithTitle:title style:UIBarButtonItemStyleDone target:self action:sel];
    [self.navigationItem setLeftBarButtonItem:_LeftItem];
}


-(void)setRightItemWithTitle:(NSString *)title action:(SEL)sel
{
    _rightItem = [[UIBarButtonItem alloc] initWithTitle:title style:UIBarButtonItemStyleDone target:self action:sel];
    [self.navigationItem setRightBarButtonItem:_rightItem];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
