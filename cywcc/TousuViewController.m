//
//  TousuViewController.m
//  cywcc
//
//  Created by wangdehuai on 14/10/25.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import "TousuViewController.h"
#import "TousuListViewController.h"
#import "BaseLabel.h"
#import "BaseTextField.h"
#import "BaseTextView.h"

@interface TousuViewController ()

@end

@implementation TousuViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"投诉"];

    [self setRightItemWithTitle:@"下一步" action:@selector(tousuListClick)];
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    [scrollView setContentSize:CGSizeMake(SCREEN_WIDTH, SCREEN_HEIGHT)];
    [self.view addSubview:scrollView];
    
    BaseLabel *shiyouLabel = [[BaseLabel alloc] init];
    [shiyouLabel setLabelWithText:@"事由:" textC:[UIColor blackColor] textF:nil align:NSTextAlignmentCenter x:0 y:0 width:60 height:40];
    
    BaseTextField *textField = [[BaseTextField alloc] init];
    [textField setTextFieleWithRadius:5 tishi:@"简要说明投诉" borderW:1 borderC:[UIColor lightGrayColor] y:10];
    [textField setLeftView:shiyouLabel];
    [scrollView addSubview:textField];
    
    BaseLabel *neirongLabel = [[BaseLabel alloc] init];
    [neirongLabel setLabelWithText:@"内容:" textC:[UIColor blackColor] textF:nil align:NSTextAlignmentLeft x:10 y:VIEW_VY(textField) width:SCREEN_WIDTH-20 height:40];
    [scrollView addSubview:neirongLabel];
    
    BaseTextView *textView = [[BaseTextView alloc] init];
    [textView setTextViewWithRadius:5 text:nil textC:[UIColor blackColor] borderW:1 borderC:[UIColor lightGrayColor] y:VIEW_VY(neirongLabel) height:150];
    [scrollView addSubview:textView];
    
    BaseLabel *fanyingLabel = [[BaseLabel alloc] initWithFrame:CGRectMake(VIEW_X(neirongLabel), VIEW_VY(textView), SCREEN_WIDTH-80, 40)];
    [fanyingLabel setText:@"向其他部门反应过"];
    [scrollView addSubview:fanyingLabel];
    
    UISwitch *fanyingSwitch = [[UISwitch alloc] initWithFrame:CGRectMake(SCREEN_WIDTH-60, VIEW_Y(fanyingLabel)+5, 60, 30)];
    [scrollView addSubview:fanyingSwitch];
    
}
-(void)tousuListClick
{
    [self setHidesBottomBarWhenPushed:YES];
    TousuListViewController *tousuListVC = [TousuListViewController new];
    [self.navigationController pushViewController:tousuListVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
