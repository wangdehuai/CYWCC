//
//  BaseTextField.m
//  cywcc
//
//  Created by wangdehuai on 14/10/26.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import "BaseTextField.h"

@implementation BaseTextField

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setBackgroundColor:[UIColor whiteColor]];
        //圆角边框
    }
    return self;
}
-(void)setTextFieleWithRadius:(float)radius tishi:(NSString *)tishi borderW:(float)borderW borderC:(UIColor *)borderC y:(float)theY
{
    [self.layer setBorderColor:borderC.CGColor];
    [self.layer setBorderWidth:borderW];
    [self.layer setCornerRadius:radius];
    [self setPlaceholder:tishi];
    [self setFrame:CGRectMake(10, theY, SCREEN_WIDTH-20, 40)];
    
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 40)];
    self.leftView = view;
    self.leftViewMode = UITextFieldViewModeAlways;
}
@end
