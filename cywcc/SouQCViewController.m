//
//  SouQCViewController.m
//  cywcc
//
//  Created by wangdehuai on 14/11/24.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import "SouQCViewController.h"

@interface SouQCViewController ()
{
    UITableView *leftTableV;
    UITableView *rightTableV;
    
    NSMutableArray *leftArray;
    NSMutableArray *rightArray;
}
@end

@implementation SouQCViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"搜全城"];
    [self.view setBackgroundColor:colorlightgray];
    
    leftTableV = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 119, SCREEN_HEIGHT) style:UITableViewStylePlain];
    [leftTableV setSeparatorInset:UIEdgeInsetsZero];
    [leftTableV setLayoutMargins:UIEdgeInsetsZero];
    [leftTableV setDelegate:self];
    [leftTableV setDataSource:self];
    [self.view addSubview:leftTableV];
    
    rightTableV = [[UITableView alloc] initWithFrame:CGRectMake(leftTableV.frame.size.width+1, 0, SCREEN_WIDTH-(leftTableV.frame.size.width+1), SCREEN_HEIGHT) style:UITableViewStylePlain];
    [rightTableV setSeparatorInset:UIEdgeInsetsZero];
    [rightTableV setLayoutMargins:UIEdgeInsetsZero];
    [rightTableV setDelegate:self];
    [rightTableV setDataSource:self];
    [self.view addSubview:rightTableV];
    
    leftArray = [NSMutableArray arrayWithObjects:@"虹口",@"虹口",@"虹口",@"虹口",@"虹口",@"虹口",@"虹口",@"虹口",@"虹口",@"虹口",nil];
    rightArray = [NSMutableArray arrayWithObjects:@"南京西路街道",@"南京西路街道",@"南京西路街道",@"南京西路街道",@"南京西路街道",nil];
}


#pragma mark - tableView 代理

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if ([tableView isEqual:leftTableV]) {
        return [leftArray count];
    }else {
        return [rightArray count];
    }
}

-(void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([cell respondsToSelector:@selector(setSeparatorInset:)]) {
        
        [cell setSeparatorInset:UIEdgeInsetsZero];
        
    }
    
    if ([cell respondsToSelector:@selector(setLayoutMargins:)]) {
        
        [cell setLayoutMargins:UIEdgeInsetsZero];
        
    }
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if ([tableView isEqual:leftTableV]) {
        static NSString *cellName = @"leftcell";
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellName];
        if (!cell) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellName];
        }
        [cell.textLabel setText:[leftArray objectAtIndex:indexPath.row]];
        [cell setAccessoryType:UITableViewCellAccessoryDisclosureIndicator];
        return cell;
    }else{
        static NSString *cellName = @"rightcell";
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellName];
        if (!cell) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:cellName];
        }
        
        [cell.textLabel setText:[rightArray objectAtIndex:indexPath.row]];
        return cell;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
