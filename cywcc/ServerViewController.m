//
//  ServerViewController.m
//  cywcc
//
//  Created by wangdehuai on 14/10/25.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import "ServerViewController.h"
#import "DetailViewController.h"

@interface ServerViewController ()
{
    NSArray *array;
    NSArray *arrayImg;
}
@end

@implementation ServerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"服务"];
    
    NSArray *array1 = [NSArray arrayWithObjects:@"医疗器械检查",@"食品药品检查",@"食品药品监督", nil];
    NSArray *array2 = [NSArray arrayWithObjects:@"药品注册",@"医疗器械注册", nil];
    array = [NSArray arrayWithObjects:array1,array2, nil];
    
    NSArray *arrayImg1 = [NSArray arrayWithObjects:@"医疗器械检查",@"食品药品检查",@"食品药品监督", nil];
    NSArray *arrayImg2 = [NSArray arrayWithObjects:@"药品注册",@"医疗器械注册",nil];
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

//进去cell下级
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self setHidesBottomBarWhenPushed:YES];
    DetailViewController *detailVC = [DetailViewController new];
    [self.navigationController pushViewController:detailVC animated:YES];
    [self setHidesBottomBarWhenPushed:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
