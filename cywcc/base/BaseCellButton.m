//
//  BaseCellButton.m
//  cywcc
//
//  Created by wangdehuai on 14/10/26.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import "BaseCellButton.h"

@implementation BaseCellButton

-(void)setButtonWithTitle:(NSString *)title detail:(NSString *)detail x:(float)theX y:(float)theY
{
    [self setFrame:CGRectMake(theX, theY, SCREEN_WIDTH-30,70)];
    
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 15, SCREEN_WIDTH-60, 20)];
    [titleLabel setFont:[UIFont boldSystemFontOfSize:16]];
    [titleLabel setText:title];
    [self addSubview:titleLabel];
    
    UILabel *detailLabel = [[UILabel alloc] initWithFrame:CGRectMake(15, 35, SCREEN_WIDTH-60, 20)];
    [detailLabel setFont:[UIFont boldSystemFontOfSize:14]];
    [detailLabel setTextColor:[UIColor grayColor]];
    [detailLabel setText:detail];
    [self addSubview:detailLabel];
    
    UIImage *jiantou = [UIImage imageNamed:@"其他通用箭头"];
    UIImageView *jiantouView = [[UIImageView alloc] initWithImage:jiantou];
    [jiantouView setFrame:CGRectMake(SCREEN_WIDTH-60, 20, 30, 30)];
    [self addSubview:jiantouView];
    
    //圆角边框
    [self.layer setBorderColor:[UIColor lightGrayColor].CGColor];
    [self.layer setBorderWidth:1];
    [self.layer setCornerRadius:5];
    
    //阴影
    [self setBackgroundColor:[UIColor whiteColor]];
    [self.layer setShadowColor:[UIColor lightGrayColor].CGColor];
    [self.layer setShadowRadius:1];
    [self.layer setShadowOffset:CGSizeMake(0, 1)];
    [self.layer setShadowOpacity:0.9];
}

@end
