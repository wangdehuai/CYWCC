//
//  HistoryViewController.m
//  cywcc
//
//  Created by wangdehuai on 14/11/9.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import "HistoryViewController.h"
#import "DetailViewController.h"

@interface HistoryViewController ()
{
    NSArray *array;
}
@end

@implementation HistoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"浏览历史"];
    array = [NSArray arrayWithObjects:@"历史纪录",@"历史纪录", @"历史纪录", @"历史纪录", @"历史纪录", @"历史纪录", @"历史纪录", @"历史纪录", @"历史纪录", @"历史纪录", @"历史纪录", @"历史纪录", @"历史纪录", @"历史纪录", @"历史纪录", nil];
}

#pragma mark -- delegate
//共几个 section
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


//共有几行
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [array count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellName = @"cellName";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellName];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellName];
    }
    
    [cell.textLabel setText:[array objectAtIndex:indexPath.row]];
    [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
    
    return cell;
}

//点击每行进入 cell 下级
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self setHidesBottomBarWhenPushed:YES];
    DetailViewController *detailVC = [DetailViewController new];
    [self.navigationController pushViewController:detailVC animated:YES];
//    [self setHidesBottomBarWhenPushed:NO];
}

#pragma mark -- delegate

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
