//
//  MyViewController.m
//  cywcc
//
//  Created by wangdehuai on 14/11/9.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import "MyViewController.h"
#import "HistoryViewController.h"
#import "AboutViewController.h"

@interface MyViewController ()
{
    NSArray *array;
    NSArray *arrayImg;
}
@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"我的"];
    
    NSArray *array1 = [NSArray arrayWithObjects:@"历史纪录",@"清除缓存", nil];
    NSArray *array2 = [NSArray arrayWithObjects:@"版本更新",@"关于我们", nil];
    array = [NSArray arrayWithObjects:array1,array2, nil];
    
    NSArray *arrayImg1 = [NSArray arrayWithObjects:@"浏览历史",@"清除缓存", nil];
    NSArray *arrayImg2 = [NSArray arrayWithObjects:@"版本更新",@"关于我们",nil];
    arrayImg= [NSArray arrayWithObjects:arrayImg1,arrayImg2, nil];
}

//共几个 section
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [array count];
}


//共有几行
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [array[section] count];
}

//返回 cell
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellName = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellName];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellName];
    }
    [cell.imageView setImage:[UIImage imageNamed:[[arrayImg objectAtIndex:indexPath.section]objectAtIndex:indexPath.row]]];
    [cell.textLabel setText:[array[indexPath.section]objectAtIndex:indexPath.row]];
    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    return cell;
}

//选中某一行
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    if (indexPath.section == 0 && indexPath.row == 0) {
        NSLog(@"进入浏览历史");
        [self setHidesBottomBarWhenPushed:YES];
        HistoryViewController *historyVC = [HistoryViewController new];
        [self.navigationController pushViewController:historyVC animated:YES];
        [self setHidesBottomBarWhenPushed:NO];
    }else if (indexPath.section == 0 && indexPath.row == 1)
    {
        NSLog(@"提示清除缓存");
        UIAlertView *clearView = [[UIAlertView alloc] initWithTitle:@"温馨提示" message:@"你要清楚缓存吗？" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
        [clearView show];
    }else if (indexPath.section == 1 && indexPath.row == 0)
    {
        NSLog(@"提示版本升级");
        UIAlertView *uploadView = [[UIAlertView alloc] initWithTitle:@"温馨提示" message:@"有新版本发布，是否前去下载？" delegate:self cancelButtonTitle:@"下次再说" otherButtonTitles:@"立即升级", nil];
        [uploadView show];
    }else if (indexPath.section == 1 && indexPath.row == 1)
    {
        NSLog(@"进入关于我们");
        [self setHidesBottomBarWhenPushed:YES];
        AboutViewController *aboutVC = [AboutViewController new];
        [self.navigationController pushViewController:aboutVC animated:YES];
        [self setHidesBottomBarWhenPushed:NO];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
