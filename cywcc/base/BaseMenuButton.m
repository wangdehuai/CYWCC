//
//  BaseMenuButton.m
//  cywcc
//
//  Created by wangdehuai on 14/10/26.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import "BaseMenuButton.h"

@implementation BaseMenuButton

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        
        
    }
    return self;
}

-(void)setButtonWithBackgroundImage:(NSString *)bgImg x:(float)theX y:(float)theY
{
    [self setBackgroundImage:[UIImage imageNamed:bgImg] forState:UIControlStateNormal];
    [self setFrame:CGRectMake(theX, theY, 90, 91)];
}

@end
