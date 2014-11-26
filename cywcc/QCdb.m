//
//  QCdb.m
//  cywcc
//
//  Created by wangdehuai on 14/11/25.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import "QCdb.h"

@implementation QCdb

+(void)loadArealistWithsuccess:(void (^)(id))success fail:(void (^)(NSException *))failed{
    GCD_Asynchronous(^(void){
        @try {
            
            NSString *dbPath = [[[NSBundle mainBundle]resourcePath] stringByAppendingPathComponent:@"FoodDB.sqlite"];
            FMDatabase *db = [FMDatabase databaseWithPath:dbPath] ;
            if (![db open]) {
                NSLog(@"Could not open db.");
                return ;
            }
            NSMutableArray *arealist=[NSMutableArray array];
            FMResultSet *rs = [db executeQuery:@"SELECT id, pid,name FROM Area WHERE pid='0'"];
            while ([rs next]) {
                
                AreaModel *area=[[AreaModel alloc]init];
                area.name = [rs stringForColumn:@"name"];
                area.areaID= [rs stringForColumn:@"id"];
                area.pid= [rs stringForColumn:@"pid"];
                
                [arealist addObject:area];
            }
            
            if(success)
            {
                GCD_UpdateUI(^(void){
                    success(arealist);
                });
            }
            [rs close];
            [db close];
            
        }
        @catch (NSException *exception) {
            if(failed)
            {
                GCD_UpdateUI(^(void){
                    NSLog(@"%@",exception);
                    failed(exception);
                });
            }
        }
        
    });
}



+(void)loadSubAreaByPID:(NSString *)pid success:(void (^)(id))success fail:(void (^)(NSException *))failed
{
    NSString *sql=[NSString stringWithFormat:@"SELECT id,pid,name FROM Area WHERE pid = '%@'",pid];
    NSLog(@"sql=%@",sql);
    GCD_Asynchronous(^(void){
        @try {
            
            NSString *dbPath = [[[NSBundle mainBundle]resourcePath] stringByAppendingPathComponent:@"FoodDB.sqlite"];
            NSLog(@"dbPath=%@",dbPath);
            FMDatabase *db = [FMDatabase databaseWithPath:dbPath] ;
            if (![db open]) {
                NSLog(@"Could not open db.");
                return ;
            }
            
            
            NSMutableArray *arealist=[NSMutableArray array];
            
            
            FMResultSet *rs = [db executeQuery:sql];
            
            while ([rs next]) {
                
                AreaModel *area=[[AreaModel alloc]init];
                area.pid= [rs stringForColumn:@"pid"];
                area.name = [rs stringForColumn:@"name"];
                area.areaID= [rs stringForColumn:@"id"];
                
                [arealist addObject:area];
            }
            
            if(success)
            {
                GCD_UpdateUI(^(void){
                    success(arealist);
                });
            }
            [rs close];
            [db close];
            
        }
        @catch (NSException *exception) {
            if(failed)
            {
                GCD_UpdateUI(^(void){
                    NSLog(@"%@",exception);
                    failed(exception);
                });
            }
        }
        
    });
}

@end
