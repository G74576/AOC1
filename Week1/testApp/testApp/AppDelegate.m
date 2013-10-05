//
//  AppDelegate.m
//  testApp
//
//  Created by Kevin O'Toole on 10/5/13.
//  Copyright (c) 2013 Kevin O'Toole. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    //My code:
    
    int minPushUpReqMale = 40;
    int minPushUpReqFemale = 30;
    bool medFit = YES;
    bool writtenTest = NO;
    float maxTimeForPushUp = 2.5f;
    
    //Cast to int:
    NSLog(@"To pass my PFT, if male I must do %d pushups, if female I must do %d pushups within %f minutes", minPushUpReqMale, minPushUpReqFemale, maxTimeForPushUp);
    
    
    //And/If/Else:
    
    if ((medFit == YES) && (writtenTest == YES))
    {
        NSLog(@"You are qualified to take the physical fitness test.");
    }
    else if ((medFit == NO) && (writtenTest == YES))
    {
        NSLog(@"You must take the medical exam before you can take the physical fintess test.");
    }
    else if ((medFit == YES) && (writtenTest == NO))
    {
        NSLog(@"You must take the written test before you can take the physical fitness test.");
    }
    else if ((medFit == NO) && (writtenTest == NO))
    {
        NSLog(@"You must take the medical exam and written test before you can take the physical fintess test.");
    }
    
    //For Loop:
    
    for (minPushUpReqMale = 1; minPushUpReqMale <= 40; minPushUpReqMale++) {
        NSLog(@"%d drill sergeant", minPushUpReqMale);
    }
    
    //While Loop:
    
    while (maxTimeForPushUp > 0) {
        NSLog(@"Time remaining = %f", maxTimeForPushUp);
        maxTimeForPushUp--;
    }
    
    //Or/IF/Else:
    if ((minPushUpReqMale < 40) || (maxTimeForPushUp < 2.5f))
    {
        NSLog(@"You have not not passed the physical fintess test!");
    }
    else
    {
        NSLog(@"You have passed the physical fitness test! Congratulations!");
    }
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
