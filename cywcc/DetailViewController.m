//
//  DetailViewController.m
//  cywcc
//
//  Created by wangdehuai on 14/11/9.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
{
    NSArray *titleArray;
    NSArray *detailArray;
    UIImageView *imgView;
}
@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"详情"];

    titleArray = @[@[@"pic"],@[@"电话:"],@[@"地址:"],@[@"传真:"],@[@"邮箱:"]];
    detailArray = @[@[@"上海市医疗器械检查所"],@[@"9898998"],@[@"山西太原市小店区"],@[@"8989889"],@[@"wangdehuai@me.com"]];
    
}

#pragma mark -- delegate

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.section == 0 && indexPath.row == 0){
        return 100;
    }
    return 44;
}

//返回几个 section
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [titleArray count];
}

//一个 section 有几行
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [titleArray[section] count];
}

//返回 cell
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellName = @"cellName";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellName];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue2 reuseIdentifier:cellName];
    }
    
    if (indexPath.section == 0) {
        [cell.imageView setImage:[UIImage imageNamed:@"机构信息图片背景"]];
        [cell.detailTextLabel setText:@"上海市医疗器械检查所"];
        [cell.detailTextLabel setFont:[UIFont systemFontOfSize:17]];
    }else{
        
    //标题样式
    [cell.textLabel setFont:[UIFont systemFontOfSize:17]];
    [cell.textLabel setTextColor:colordarkgray];
    [cell.textLabel setTextAlignment:NSTextAlignmentLeft];
    //内容样式
    [cell.detailTextLabel setFont:[UIFont systemFontOfSize:17]];
//    [cell.detailTextLabel  setLayoutMargins:UIEdgeInsetsMake(0, -190, 0, 0)];
    
    [cell.textLabel setText:[titleArray[indexPath.section] objectAtIndex:indexPath.row]];
    [cell.detailTextLabel setText:[detailArray[indexPath.section] objectAtIndex:indexPath.row]];
        
    }
    return cell;
}
#pragma mark -- delegate
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
