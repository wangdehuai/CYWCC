//
//  BaseLabel.m
//  cywcc
//
//  Created by wangdehuai on 14/10/26.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import "BaseLabel.h"

@implementation BaseLabel

-(void)setLabelWithText:(NSString *)text textC:(UIColor *)textC textF:(UIFont *)font align:(NSTextAlignment)align x:(float)theX y:(float)theY width:(float)theW height:(float)theH
{
    [self setText:text];
    [self setFont:font];
    [self setTextColor:textC];
    [self setTextAlignment:align];
    [self setFrame:CGRectMake(theX, theY, theW, theH)];
}

@end
