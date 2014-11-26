//
//  AppDelegate.m
//  cywcc
//  王德怀CYWCC
//  Created by wangdehuai on 14/10/25.
//  Copyright (c) 2014年 wangdehuai. All rights reserved.
//

#import "AppDelegate.h"
#import "TabViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    TabViewController *tabVC = [[TabViewController alloc] init];
    [self.window setRootViewController:tabVC];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    //当应用程序即将从活动转移到非活动状态时发送。这可能会发生某些类型的临时中断（例如呼入电话呼叫或SMS消息），或者当用户退出该应用程序和它开始过渡到背景状态。
    //使用这个方法来暂停正在进行的工作，关闭计时器，并踩下油门的OpenGL ES的帧速率。游戏应该使用这种方法来暂停游戏。
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    //使用这个方法来释放共享资源，保存用户数据，无效计时器，并储存足够的应用程序状态信息到你的应用程序恢复到其当前状态的情况下，它后来终止。
    //如果您的应用程序支持后台运行，这种方法被称为代替applicationWillTerminate：当用户退出。
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    //调用作为从背景到非活动状态的转换的一部分;在这里您可以撤消许多就进入后台的变化。
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    //重新启动被暂停的（或尚未开始），而应用程序是不活动的任何任务。如果该应用程序是以前的背景，任选刷新用户界面。
}

- (void)applicationWillTerminate:(UIApplication *)application {
    //当应用程序即将终止调用。如果适当保存数据。另请参见applicationDidEnterBackground:.
}

@end
