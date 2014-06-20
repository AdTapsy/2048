//
//  AdTapsy.h
//  AdTapsyLib
//
//  Created by Borislav Gizdov on 26.03.14.
//  Copyright (c) 2014 г. AdTapsy Ltd. All rights reserved.
//  <info@adtapsy.com>
//

#import <UIKit/UIKit.h>

@interface AdTapsy : NSObject;

// Use startSession method to start session in app delegate application didFinishLaunchingWithOptions
+(void) startSession: (NSString*) appId;

// Use showInterstitial method in places in the app where you want to show interstitial or video ad
+(void) showInterstitial: (UIViewController*) viewController;


+(void) destroy;
+(void) reload;
+(void) next;
+ (AdTapsy *) shared;
-(BOOL) hasLoadedAd;
+(NSString*) appId;

@end
