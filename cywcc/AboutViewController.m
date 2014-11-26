//
//  AboutViewController.m
//  cywcc
//
//  Created by wangdehuai on 14/11/9.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import "AboutViewController.h"

@interface AboutViewController ()
{
    NSArray *array;
    NSString *str;
}
@end

@implementation AboutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"关于我们"];
    
    str = @"   “上海食药监”手机移动客户端由上海食品药品监督管理局主办，是一款实用的生活软件，能更加便捷的胃上海市民提供公共服务渠道。\n  手机客户端四大功能:\n   1.搜索:查询上海食药监督机构信息、上海餐饮企业信息。\n   2.咨讯:定期接收食药监的监督资讯、预警信息及政策法规。\n   3.服务:发挥公众监督作用，提供快捷的投诉渠道。\n   4.我的:查看浏览历史、清楚缓存、版本更新。";
    
    array = [NSArray arrayWithObjects:str,@"软件版本:0.9",@"技术支持:上海华东电脑股份有限公司",@"网址:www.shfsa.gov.cn", nil];
    
    UIView *logoView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 120)];
    UIImage *logoImg = [UIImage imageNamed:@"关于我们logo"];
    UIImageView *logoImgView = [[UIImageView alloc] initWithImage:logoImg];
    [logoImgView setFrame:CGRectMake((SCREEN_WIDTH-logoImg.size.width)/2, 20, logoImg.size.width, logoImg.size.height)];
    [logoView addSubview:logoImgView];
    
    UILabel *logoLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, VIEW_VY_20(logoImgView), SCREEN_WIDTH, 16)];
    [logoLabel setText:@"上海食品药品监督管理局"];
    [logoLabel setFont:[UIFont boldSystemFontOfSize:16]];
    [logoLabel setTextAlignment:NSTextAlignmentCenter];
    [logoView addSubview:logoLabel];
    
    [self.tableView setTableHeaderView:logoView];
    
    
}

#pragma mark -- delegate

//几个 section
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//返回 cell 高度
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0){
//        UITableViewCell *cell = [self tableView:tableView cellForRowAtIndexPath:indexPath];
//        return cell.frame.size.height;
        return 240;
    }
    return 44;
    
}

//每个 section 有几行
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [array count];
}

//返回 cell
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellName = @"cellName";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellName];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellName];
    }
    
    [cell.textLabel setText:[array objectAtIndex:indexPath.row]];
    [cell.textLabel setFont:[UIFont systemFontOfSize:15]];
    [cell.textLabel setNumberOfLines:0];
    
    return cell;
}

//点击进入下级
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 3) {
        NSURL *url = [NSURL URLWithString:@"http://www.spyp.gov.cn"];
        [[UIApplication sharedApplication]openURL:url];
    }
}

#pragma mark -- delegate

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
