//
//  QCModel.m
//  cywcc
//
//  Created by wangdehuai on 14/11/25.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import "QCModel.h"

@implementation QCModel

-(id)initWithCoder:(NSCoder *)aDecoder
{
    if(self=[super init])
    {
        self.areaID=[aDecoder decodeObjectForKey:@"areaID"];
        self.pid=[aDecoder decodeObjectForKey:@"pid"];
        self.name=[aDecoder decodeObjectForKey:@"name"];
    }
    return self;
}

-(void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.areaID forKey:@"areaID"];
    [aCoder encodeObject:self.pid forKey:@"pid"];
    [aCoder encodeObject:self.name forKey:@"name"];
}

@end
