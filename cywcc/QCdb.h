//
//  QCdb.h
//  cywcc
//
//  Created by wangdehuai on 14/11/25.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "QCModel.h"

@interface QCdb : NSObject
//加载所有地区
+(void)loadArealistWithsuccess:(void(^)(id object))success
                          fail:(void(^)(NSException *error))failed;


//根据某个地区ID获取改地区下的所有子地区
//pid具体看excel
+(void)loadSubAreaByPID:(NSString *)pid
                success:(void(^)(id object))success
                   fail:(void(^)(NSException *error))failed;

@end
