//
//  TabViewController.m
//  cywcc
//
//  Created by wangdehuai on 14/10/25.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import "TabViewController.h"
#import "BaseViewController.h"
#import "BaseNavViewController.h"
#import "SearchViewController.h"
#import "ZixunViewController.h"
#import "ServerViewController.h"
#import "MyViewController.h"

@interface TabViewController ()
{
    BOOL isShow;
}
@property(nonatomic,retain)UIButton *jiantouBtn;
@property(nonatomic,retain)UIButton *telBtn;
@end

@implementation TabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tabBar setBarTintColor:[UIColor blackColor]];
    [self.tabBar setTintColor:colorblue];
    
    SearchViewController *searchVC = [SearchViewController new];
    BaseNavViewController *searchNav = [[BaseNavViewController alloc] initWithRootViewController:searchVC];
    
    ZixunViewController *zixunVC = [ZixunViewController new];
    BaseNavViewController *zixunNav = [[BaseNavViewController alloc] initWithRootViewController:zixunVC];
    
    ServerViewController *serverVC = [ServerViewController new];
    BaseNavViewController *serverNav = [[BaseNavViewController alloc] initWithRootViewController:serverVC];
    
    MyViewController *myVC = [MyViewController new];
    BaseNavViewController *myNav = [[BaseNavViewController alloc] initWithRootViewController:myVC];
    
    BaseViewController *baseVC = [BaseViewController new];
    
    UITabBarItem *searchItem = [[UITabBarItem alloc] initWithTitle:@"查找" image:[UIImage imageNamed:@"图标_1"] tag:11];
    UITabBarItem *zixunItem = [[UITabBarItem alloc] initWithTitle:@"资讯" image:[UIImage imageNamed:@"图标_2"] tag:12];
    UITabBarItem *serverItem = [[UITabBarItem alloc] initWithTitle:@"服务" image:[UIImage imageNamed:@"图标_3"] tag:13];
    UITabBarItem *myItem = [[UITabBarItem alloc] initWithTitle:@"我的" image:[UIImage imageNamed:@"图标_4"] tag:14];
    UITabBarItem *baseItem = [[UITabBarItem alloc] initWithTitle:@"" image:[UIImage imageNamed:@""] tag:15];
    
    [searchNav setTabBarItem:searchItem];
    [zixunNav setTabBarItem:zixunItem];
    [serverNav setTabBarItem:serverItem];
    [myNav setTabBarItem:myItem];
    [baseVC setTabBarItem:baseItem];
    [self setViewControllers:[NSArray arrayWithObjects:searchNav,zixunNav,serverNav,myNav,baseVC, nil]];
    
    //滑懂电话按钮
    isShow = NO;
    _telBtn = [[UIButton alloc] initWithFrame:CGRectMake(SCREEN_WIDTH-60, 0, SCREEN_WIDTH-64, 49)];
    [_telBtn setBackgroundColor:colordarkgray];
    [_telBtn setTitle:@"热线电话：15034116016" forState:UIControlStateNormal];
    [_telBtn addTarget:self action:@selector(phoneClick) forControlEvents:UIControlEventTouchUpInside];
    [self.tabBar addSubview:_telBtn];
    
    
    //item剪头
    _jiantouBtn = [[UIButton alloc] initWithFrame:CGRectMake(SCREEN_WIDTH-60, 0, 64, 49)];
    [_jiantouBtn setBackgroundColor:colordarkgray];
    [_jiantouBtn setBackgroundImage:[UIImage imageNamed:@"图标_05"] forState:UIControlStateNormal];
    [_jiantouBtn addTarget:self action:@selector(jiantouClick) forControlEvents:UIControlEventTouchUpInside];
    [self.tabBar addSubview:_jiantouBtn];
    
    
}

-(void)jiantouClick
{
    if (isShow == NO) {
        [UITabBar animateWithDuration:0.3 animations:^{
            [_telBtn setFrame:CGRectMake(0, 0, SCREEN_WIDTH-60, 49)];
            [_jiantouBtn setBackgroundImage:[UIImage imageNamed:@"图标_5"] forState:UIControlStateNormal];
        }];
        isShow = YES;
    }else
    {
        [UIView animateWithDuration:0.3 animations:^{
            [_telBtn setFrame:CGRectMake(SCREEN_WIDTH-60, 0, SCREEN_WIDTH-60, 49)];
            [_jiantouBtn setBackgroundImage:[UIImage imageNamed:@"图标_05"] forState:UIControlStateNormal];
        }];
        isShow = NO;
    }
}

-(void)phoneClick
{
    //电话
    UIAlertView *isPhone = [[UIAlertView alloc] initWithTitle:@"提示" message:@"你是否要拨打12331" delegate:self cancelButtonTitle: @"确定" otherButtonTitles:@"取消", nil];
    [isPhone show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 0)
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"tel://15034116016"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
