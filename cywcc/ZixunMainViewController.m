//
//  ZixunMainViewController.m
//  cywcc
//
//  Created by wangdehuai on 14/11/25.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import "ZixunMainViewController.h"
#import "BaseLabel.h"
#import "BaseTextView.h"

@interface ZixunMainViewController ()
{
    BaseLabel *zixunTitle;
    BaseLabel *zixunDate;
    BaseTextView *zixunDetail;
}
@end

@implementation ZixunMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTitle:@"咨询详情"];
    [self.view setBackgroundColor:colorlightgray];
    
    UIView *topV = [[UIView alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, 60)];
    [topV setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:topV];
    
    zixunTitle = [[BaseLabel alloc] init];
    [zixunTitle setLabelWithText:@"关于公开征求全地方标准意见的函" textC:nil textF:[UIFont boldSystemFontOfSize:16] align:NSTextAlignmentCenter x:10 y:10 width:SCREEN_WIDTH-20 height:20];
    [topV addSubview:zixunTitle];
    
    zixunDate = [[BaseLabel alloc] init];
    [zixunDate setLabelWithText:@"2013-09-22" textC:[UIColor grayColor] textF:[UIFont systemFontOfSize:12] align:NSTextAlignmentCenter x:10 y:VIEW_VY_5(zixunTitle) width:SCREEN_WIDTH-20 height:20];
    [topV addSubview:zixunDate];
    
    UIView *bottomV = [[UIView alloc] initWithFrame:CGRectMake(0, VIEW_H(topV)+1, SCREEN_WIDTH, SCREEN_HEIGHT-VIEW_H(topV)-68)];
    [bottomV setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:bottomV];
    
    zixunDetail = [[BaseTextView alloc] init];
    [zixunDetail setTextViewWithRadius:0 text:@"我们将UIViewController的init方法中访问的实例变量view在init中将背景设置为黄色，运行程序，我们能发现背景的确变成了黄色，但是，在我们还没有需要使用视图的时候，该视图已经加载好了，在UIViewController的初始方法中访问实例变量view，会导致延迟载入机制失效，这个问题看上去不是很严重，但是如果考虑到内存过低警告，那么问题就大了。运行程序，选择模拟器中的硬件－>模拟内存过低警告，我们会发现，原本设置的黄色背景不见了，这是因为，内存过低，视图控制对象会在发出内存过低警告时收到didReceiveMemoryWarning消息，该方法默认实现，检查视图控制对象的视图是否可见，如果不可见，则释放掉，下次在加载该视图时就不会执行init方法，而是只执行viewDidLoad方法，所以需要将[[selfview ] setBackgroundColor:[UIColoryellowColor]];放到viewDidLoad中，这样如果视图因为内存过低被释放掉了，下次需要使用到该视图的时候，程序会默认取执行该视图的viewDidLoad方法，这样背景颜色就又出来了。" textC:[UIColor darkGrayColor] borderW:0 borderC:0 y:0 height:VIEW_H(bottomV)-10];
    [bottomV addSubview:zixunDetail];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
