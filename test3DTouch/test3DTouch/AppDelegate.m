//
//  AppDelegate.m
//  test3DTouch
//
//  Created by FQL on 16/10/6.
//  Copyright © 2016年 EddieFan. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
   
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] > 9) {
        UIApplicationShortcutItem *shortItem = [launchOptions valueForKey:UIApplicationLaunchOptionsShortcutItemKey];
        if (shortItem) {
            
           //处理3Dtouch 逻辑 静态方法（直接在plist文件添加）添加的时候   动态添加的时候详见五洲会
        }
        return NO;
    }
    
    return YES;
}

-(void)application:(UIApplication *)application performActionForShortcutItem:(UIApplicationShortcutItem *)shortcutItem completionHandler:(void (^)(BOOL))completionHandler
{
    //UIPreviewAction  
    //处理3Dtouch 逻辑 静态方法（直接在plist文件添加）添加的时候   动态添加的时候详见五洲会
    NSInteger type = [shortcutItem.type integerValue];
    switch (type) {
            
        case 0:{
            
        }
            break;
        case 1:{
            
            
            break;
        }
            
        case 2:{
            
            break;
        }
            
        case 3:{
            
            break;
        }
            
        default:
            break;
    }

    
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
