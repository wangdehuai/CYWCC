//
//  SouJGViewController.m
//  cywcc
//
//  Created by wangdehuai on 14/11/24.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import "SouJGViewController.h"

@interface SouJGViewController ()
{
    NSArray *array;
}
@end

@implementation SouJGViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // nav 搜索栏
    _search = [[UISearchBar alloc] initWithFrame:CGRectMake(50, 0, SCREEN_WIDTH-70, 44)];
    [self.navigationItem setTitleView:_search];
    
    array = [NSArray arrayWithObjects:@"asdf",@"asdf",@"asdf",@"asdf",@"asdf",@"asdf",@"asdf",@"asdf",@"asdf",@"asdf",@"asdf",@"asdf", nil];
    self.tableView = [[UITableView alloc] initWithFrame:[[UIScreen mainScreen]bounds] style:UITableViewStylePlain];
}

#pragma mark - tableView 代理

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    _segmented = [[BaseSegmentedControl alloc]init];
    [_segmented segmentedWithTitles:[NSArray arrayWithObjects:@"机构类别",@"机构名称", nil] viewX:0 viewY:0 segmentedWidth:SCREEN_WIDTH-20 selected:0 sel:@selector(segmentedChanged:)];
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

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 80;
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
