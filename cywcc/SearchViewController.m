//
//  SearchViewController.m
//  cywcc
//
//  Created by wangdehuai on 14/10/25.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import "SearchViewController.h"
#import "CanguanViewController.h"
#import "FujinViewController.h"
#import "TousuViewController.h"
#import "ZixunViewController.h"
#import "SouJGViewController.h"
#import "SouQCViewController.h"
#import "SaosaoViewController.h"
#import "BaseMenuButton.h"
#import "BaseCellButton.h"

@interface SearchViewController ()
{
    ZixunViewController *zixunVC;
}
@end

@implementation SearchViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    
    //设置 titleView 加载logo图片
    UIImage *logo = [UIImage imageNamed:@"logo"];
    _logoView = [[UIImageView alloc] initWithImage:logo];
    [_logoView setFrame:CGRectMake((SCREEN_WIDTH-241)/2, 0, 241, 44)];
    [self.navigationItem setTitleView:_logoView];
    
    //加载搜索栏
    UISearchBar *searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 55)];
    [searchBar setBarTintColor:[UIColor colorWithRed:230.0/255.0 green:230.0/255.0 blue:230.0/255.0 alpha:1]];
    [searchBar setPlaceholder:@"搜索"];
    [self.view addSubview:searchBar];
    
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, VIEW_H(searchBar), SCREEN_WIDTH, SCREEN_HEIGHT-64-49-VIEW_H(searchBar))];
    [scrollView setUserInteractionEnabled:YES];
    [self.view addSubview:scrollView];
    
    BaseMenuButton *canguan = [[BaseMenuButton alloc] init];
    [canguan setButtonWithBackgroundImage:@"icon_1" x:15 y:15];
    [canguan addTarget:self action:@selector(canguanClick) forControlEvents:UIControlEventTouchUpInside];
    [scrollView addSubview:canguan];
    
    BaseMenuButton *fujin = [[BaseMenuButton alloc] init];
    [fujin setButtonWithBackgroundImage:@"icon_2" x:VIEW_VX_10(canguan) y:VIEW_Y(canguan)];
    [fujin addTarget:self action:@selector(fujinClick) forControlEvents:UIControlEventTouchUpInside];
    [scrollView addSubview:fujin];
    
    BaseMenuButton *saosao = [[BaseMenuButton alloc] init];
    [saosao setButtonWithBackgroundImage:@"icon_3" x:VIEW_VX_10(fujin) y:VIEW_Y(canguan)];
    [saosao addTarget:self action:@selector(saosaoClick) forControlEvents:UIControlEventTouchUpInside];
    [scrollView addSubview:saosao];
    
    BaseMenuButton *tousu = [[BaseMenuButton alloc] init];
    [tousu setButtonWithBackgroundImage:@"icon_4" x:VIEW_X(canguan) y:VIEW_VY_15(canguan)];
    [tousu addTarget:self action:@selector(tousuClick) forControlEvents:UIControlEventTouchUpInside];
    [scrollView addSubview:tousu];
    
    BaseMenuButton *anquan = [[BaseMenuButton alloc] init];
    [anquan setButtonWithBackgroundImage:@"icon_5" x:VIEW_VX_10(tousu) y:VIEW_Y(tousu)];
    [anquan addTarget:self action:@selector(anquanClick) forControlEvents:UIControlEventTouchUpInside];
    [scrollView addSubview:anquan];
    
    BaseMenuButton *phone = [[BaseMenuButton alloc] init];
    [phone setButtonWithBackgroundImage:@"icon_6" x:VIEW_VX_10(anquan) y:VIEW_Y(anquan)];
    [phone addTarget:self action:@selector(phoneClick) forControlEvents:UIControlEventTouchUpInside];
    [scrollView addSubview:phone];
    
    BaseCellButton *cell1 = [BaseCellButton buttonWithType:UIButtonTypeRoundedRect];
    [cell1 setButtonWithTitle:@"搜全城" detail:@"行政区查找，找遍城市每个角落" x:VIEW_X(tousu) y:VIEW_VY_15(tousu)];
    [cell1 addTarget:self action:@selector(sqcClick) forControlEvents:UIControlEventTouchUpInside];
    [scrollView addSubview:cell1];
    
    BaseCellButton *cell2 = [BaseCellButton buttonWithType:UIButtonTypeRoundedRect];
    [cell2 setButtonWithTitle:@"搜机构" detail:@"政府机构信息查询" x:VIEW_X(cell1) y:VIEW_VY_15(cell1)];
    [cell2 addTarget:self action:@selector(sjgClick) forControlEvents:UIControlEventTouchUpInside];
    [scrollView addSubview:cell2];
}

-(void)canguanClick
{
    //当 push 时候隐藏 tabbar
    [self setHidesBottomBarWhenPushed:YES];
    CanguanViewController *canguanVC = [CanguanViewController new];
    [self.navigationController pushViewController:canguanVC animated:YES];
    [self setHidesBottomBarWhenPushed:NO];
}

-(void)fujinClick
{
    //当 push 时候隐藏 tabbar
    [self setHidesBottomBarWhenPushed:YES];
    FujinViewController *fujinVC = [FujinViewController new];
    [self.navigationController pushViewController:fujinVC animated:YES];
    [self setHidesBottomBarWhenPushed:NO];
}

-(void)saosaoClick
{
    //二维码
    //当 push 时候隐藏 tabbar
    [self setHidesBottomBarWhenPushed:YES];
    SaosaoViewController *saoVC = [SaosaoViewController new];
    [self.navigationController pushViewController:saoVC animated:YES];
    [self setHidesBottomBarWhenPushed:NO];
}

-(void)tousuClick
{
    [self setHidesBottomBarWhenPushed:YES];
    TousuViewController *tousuVC = [TousuViewController new];
    [self.navigationController pushViewController:tousuVC animated:YES];
    [self setHidesBottomBarWhenPushed:NO];
}

-(void)anquanClick
{
    //当 push 时候隐藏 tabbar
    [self setHidesBottomBarWhenPushed:YES];
    zixunVC = [ZixunViewController new];
    [self.navigationController pushViewController:zixunVC animated:YES];
    [self setHidesBottomBarWhenPushed:NO];
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
-(void)sqcClick
{
    //当 push 时候隐藏 tabbar
    [self setHidesBottomBarWhenPushed:YES];
    SouQCViewController *souQcVC = [SouQCViewController new];
    [self.navigationController pushViewController:souQcVC animated:YES];
    [self setHidesBottomBarWhenPushed:NO];
}

-(void)sjgClick
{
    //当 push 时候隐藏 tabbar
    [self setHidesBottomBarWhenPushed:YES];
    SouJGViewController *souJgVC = [SouJGViewController new];
    [self.navigationController pushViewController:souJgVC animated:YES];
    [self setHidesBottomBarWhenPushed:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
