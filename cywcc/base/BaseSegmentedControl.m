//
//  BaseSegmentedControl.m
//  cywcc
//
//  Created by wangdehuai on 14/10/29.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import "BaseSegmentedControl.h"

@implementation BaseSegmentedControl

-(void)segmentedWithTitles:(NSArray *)titles viewX:(float)theX viewY:(float)theY segmentedWidth:(float)width selected:(NSInteger)index sel:(SEL)sel
{
    
    [self setBackgroundColor:colorlightgray];
    [self setFrame:CGRectMake(theX, theY, SCREEN_WIDTH, 50)];
    _segmentedVC = [[UISegmentedControl alloc] initWithItems:titles];
    [_segmentedVC setFrame:CGRectMake((SCREEN_WIDTH-width)/2, 10, width, 30)];
    [_segmentedVC setTintColor:colorblue];
    [_segmentedVC setSelectedSegmentIndex:index];
    [_segmentedVC addTarget:self action:sel forControlEvents:UIControlEventValueChanged];
    [self addSubview:_segmentedVC];
}

@end
