//
//  CanguanViewController.m
//  cywcc
//
//  Created by wangdehuai on 14/10/26.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import "CanguanViewController.h"

@interface CanguanViewController ()

@end

@implementation CanguanViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"餐饮列表"];
    
    array = [NSMutableArray arrayWithObjects:@"",@"",@"", nil];
}

#pragma mark - tableView 代理

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    _segmented = [[BaseSegmentedControl alloc]init];
    [_segmented segmentedWithTitles:[NSArray arrayWithObjects:@"5000米",@"卫生等级",@"附近优先", nil] viewX:0 viewY:0 segmentedWidth:SCREEN_WIDTH-20 selected:0 sel:@selector(segmentedChanged:)];
    return _segmented;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 50;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellName = @"cellName";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellName];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellName];
    }
    
    [cell.textLabel setText:[array objectAtIndex:indexPath.row]];
    return cell;
}

#pragma mark - segmented 选中
-(void)segmentedChanged:(UISegmentedControl *)sc
{
    if (sc.selectedSegmentIndex == 0) {
        //
    } else if(sc.selectedSegmentIndex == 1)
    {
        //
    }else{
        //
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
