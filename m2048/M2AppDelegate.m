//
//  M2AppDelegate.m
//  m2048
//
//  Created by Danqing on 3/16/14.
//  Copyright (c) 2014 Danqing. All rights reserved.
//

#import "M2AppDelegate.h"
#import "AdTapsy.h"
#import <AVFoundation/AVAudioSession.h>
#import <SpriteKit/SKView.h>

@implementation M2AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [AdTapsy startSession:@"539777bae4b02eacca4bcb67"];
  return YES;
}


- (void)applicationDidEnterBackground:(UIApplication *)application
{
  // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
  // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    SKView *view = (SKView *)self.window.rootViewController.view;
    if (view) {
        view.paused = YES;
    }
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
  // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    SKView *view = (SKView *)self.window.rootViewController.view;
    if (view) {
        view.paused = NO;
    }
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
  // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    UIViewController * viewController = [[[[UIApplication sharedApplication] delegate] window] rootViewController];
    [AdTapsy showInterstitial: viewController];
}

- (void)applicationWillTerminate:(UIApplication *)application
{
  // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    [AdTapsy destroy];
}

@end
