//
//  ZixunViewController.m
//  cywcc
//
//  Created by wangdehuai on 14/11/10.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import "ZixunViewController.h"
#import "ZixunMainViewController.h"

@interface ZixunViewController ()
{
    NSArray *titleArray;
    NSArray *subArray;
    NSArray *timeArray;
}
@end

@implementation ZixunViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"资讯"];
    titleArray = [NSArray arrayWithObjects:@"浦东新区一建筑工地发生中毒",@"浦东新区一建筑工地发生中毒",@"浦东新区一建筑工地发生中毒",@"浦东新区一建筑工地发生中毒",@"浦东新区一建筑工地发生中毒",@"浦东新区一建筑工地发生中毒",@"浦东新区一建筑工地发生中毒",@"浦东新区一建筑工地发生中毒",@"浦东新区一建筑工地发生中毒",@"浦东新区一建筑工地发生中毒", nil];
    subArray = [NSArray arrayWithObjects:@"3013年04月01日晚，浦东新区新区一建筑工地发生中毒新区一建筑工地发生中毒新区一建筑工地发生中毒新区一建筑工地发生中毒",@"3013年04月01日晚，浦东新区新区一建筑工地发生中毒新区一建筑工地发生中毒新区一建筑工地发生中毒新区一建筑工地发生中毒",@"3013年04月01日晚，浦东新区新区一建筑工地发生中毒新区一建筑工地发生中毒新区一建筑工地发生中毒新区一建筑工地发生中毒",@"3013年04月01日晚，浦东新区新区一建筑工地发生中毒新区一建筑工地发生中毒新区一建筑工地发生中毒新区一建筑工地发生中毒",@"3013年04月01日晚，浦东新区新区一建筑工地发生中毒新区一建筑工地发生中毒新区一建筑工地发生中毒新区一建筑工地发生中毒",@"3013年04月01日晚，浦东新区新区一建筑工地发生中毒新区一建筑工地发生中毒新区一建筑工地发生中毒新区一建筑工地发生中毒",@"3013年04月01日晚，浦东新区新区一建筑工地发生中毒新区一建筑工地发生中毒新区一建筑工地发生中毒新区一建筑工地发生中毒",@"3013年04月01日晚，浦东新区新区一建筑工地发生中毒新区一建筑工地发生中毒新区一建筑工地发生中毒新区一建筑工地发生中毒",@"3013年04月01日晚，浦东新区新区一建筑工地发生中毒新区一建筑工地发生中毒新区一建筑工地发生中毒新区一建筑工地发生中毒",@"3013年04月01日晚，浦东新区新区一建筑工地发生中毒新区一建筑工地发生中毒新区一建筑工地发生中毒新区一建筑工地发生中毒",nil];
    timeArray = [NSArray arrayWithObjects:@"2013-12-12 00:00",@"2013-12-12 00:00",@"2013-12-12 00:00",@"2013-12-12 00:00",@"2013-12-12 00:00",@"2013-12-12 00:00",@"2013-12-12 00:00",@"2013-12-12 00:00",@"2013-12-12 00:00",@"2013-12-12 00:00",nil];
}

#pragma mark - tableView 代理

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    _segmented = [[BaseSegmentedControl alloc]init];
    [_segmented segmentedWithTitles:[NSArray arrayWithObjects:@"监管资讯",@"安全注意",@"政策法规", nil] viewX:0 viewY:0 segmentedWidth:SCREEN_WIDTH-20 selected:0 sel:@selector(segmentedChanged:)];
    return _segmented;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 50;
}

//section 里面几行
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [titleArray count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellName = @"cellName";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellName];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellName];
    }
    
    [cell.textLabel setText:[titleArray objectAtIndex:indexPath.row]];
    [cell.detailTextLabel setText:[subArray objectAtIndex:indexPath.row]];
    [cell.detailTextLabel setNumberOfLines:0];
    [cell.detailTextLabel setTextColor:colorgray];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self setHidesBottomBarWhenPushed:YES];
    ZixunMainViewController *zixunMainVC = [ZixunMainViewController new];
    [self.navigationController pushViewController:zixunMainVC animated:YES];
    [self setHidesBottomBarWhenPushed:NO];
}

#pragma mark - segmented 选中
-(void)segmentedChanged:(UISegmentedControl *)sc
{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
