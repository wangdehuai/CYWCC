//
//  BaseSegmentedControl.h
//  cywcc
//
//  Created by wangdehuai on 14/10/29.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseSegmentedControl : UIView
@property(nonatomic,retain)UISegmentedControl *segmentedVC;

-(void)segmentedWithTitles:(NSArray *)titles viewX:(float)theX viewY:(float)theY segmentedWidth:(float)width selected:(NSInteger)index sel:(SEL)sel;
@end
