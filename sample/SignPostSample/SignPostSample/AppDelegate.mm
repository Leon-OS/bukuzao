//
//  AppDelegate.m
//  SignPostSample
//
//  Created by everettjf on 2018/8/12.
//  Copyright © 2018 everettjf. All rights reserved.
//

#import "AppDelegate.h"
#include "ThreadPool.h"
#include <os/signpost.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    dispatch_queue_t queue1 = dispatch_queue_create("com.everettjf.test1", DISPATCH_QUEUE_SERIAL);
    os_log_t log1 = os_log_create("com.everettjf.sample.signpost", "thread1");
    os_signpost_id_t spid1 = os_signpost_id_generate(log1);
    
    
    dispatch_queue_t queue2 = dispatch_queue_create("com.everettjf.test2", DISPATCH_QUEUE_SERIAL);
//    os_log_t log2 = os_log_create("com.everettjf.sample.signpost", "thread2");
//    os_signpost_id_t spid2 = os_signpost_id_generate(log2);
//
    for(int i = 0; i < 10; i++){
     
        dispatch_async(queue1, ^{
            
            sleep(1);
            os_signpost_interval_begin(log1, spid1, "task", "infobegin%d", i);
            sleep(arc4random() % 5 + 1);
            os_signpost_interval_end(log1, spid1, "task","infoend%d",i);
        });
        
        
        dispatch_async(queue2, ^{
            sleep(1);
//            os_signpost_interval_begin(log2, spid2, "task2","info");
//            sleep(arc4random() % 10 + 1);
//            os_signpost_interval_end(log2, spid2, "task2");
            
            
            os_signpost_interval_begin(log1, spid1, "task2","info");
            sleep(arc4random() % 10 + 1);
            os_signpost_interval_end(log1, spid1, "task2");
        });
    }
    

    
    
    
//    NSInteger idx = 0;
//    static ThreadPool pool(2);
//
//    pool.enqueue([&]{
//        NSLog(@"begin%@",@(idx));
//
//        os_signpost_interval_begin(log, spid, "task");
//        sleep(arc4random() % 10);
//        os_signpost_interval_end(log, spid, "task");
//
//        NSLog(@"end%@",@(idx));
//    });
//    idx++;
    
    
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
