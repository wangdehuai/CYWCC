//
//  BaseViewController.h
//  cywcc
//
//  Created by wangdehuai on 14/10/25.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController

@property(nonatomic,retain)UIBarButtonItem *backItem;
@property(nonatomic,retain)UIBarButtonItem *LeftItem;
@property(nonatomic,retain)UIBarButtonItem *rightItem;

-(void)setLeftItemWithTitle:(NSString *)title action:(SEL)sel;
-(void)setRightItemWithTitle:(NSString *)title action:(SEL)sel;
@end
