//
//  BaseTextView.h
//  cywcc
//
//  Created by wangdehuai on 14/10/26.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseTextView : UITextView
-(void)setTextViewWithRadius:(float)radius text:(NSString *)text textC:(UIColor *)textC borderW:(float)borderW borderC:(UIColor *)borderC y:(float)theY height:(float)theH;
@end
