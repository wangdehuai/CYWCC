//
//  BaseLabel.h
//  cywcc
//
//  Created by wangdehuai on 14/10/26.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseLabel : UILabel
-(void)setLabelWithText:(NSString *)text textC:(UIColor *)textC textF:(UIFont *)font align:(NSTextAlignment)align x:(float)theX y:(float)theY width:(float)theW height:(float)theH;
@end
