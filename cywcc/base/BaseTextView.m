//
//  BaseTextView.m
//  cywcc
//
//  Created by wangdehuai on 14/10/26.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import "BaseTextView.h"

@implementation BaseTextView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor whiteColor]];
        [self setFont:[UIFont systemFontOfSize:16]];
    }
    return self;
}
-(void)setTextViewWithRadius:(float)radius text:(NSString *)text textC:(UIColor *)textC borderW:(float)borderW borderC:(UIColor *)borderC y:(float)theY height:(float)theH
{
    //圆角边框
    [self.layer setBorderColor:borderC.CGColor];
    [self.layer setBorderWidth:borderW];
    [self.layer setCornerRadius:radius];
    [self setText:text];
    [self setTextColor:textC];
    [self setFrame:CGRectMake(10, theY, SCREEN_WIDTH-20, theH)];
}

@end
