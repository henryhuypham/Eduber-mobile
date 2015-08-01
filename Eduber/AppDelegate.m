//
//  AppDelegate.m
//  Eduber
//
//  Created by Huy Pham on 08/01/15.
//  Copyright (c) 2015 RTH. All rights reserved.
//

#import "AppDelegate.h"
#import "ChatStyling.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    
    //init zopim
    [self initZopim];
    
    return YES;
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

#pragma - Init ZoPim
-(void)initZopim{
    ////////////////////////////////////////////////////////////////////////////////////////////////
    // Chat setup
    ////////////////////////////////////////////////////////////////////////////////////////////////
    
    // apply appearance styling first if you want to customise the look of the chat
    [ChatStyling applyStyling];
    
    // configure account key and pre-chat form
    [ZDCChat configure:^(ZDCConfig *defaults) {
        defaults.accountKey = @"3AEk35sXwOA4Tdy7MhhzuIxCVoL5H3kf";
        defaults.preChatDataRequirements.name = ZDCPreChatDataOptional;
        defaults.preChatDataRequirements.email = ZDCPreChatDataOptional;
        defaults.preChatDataRequirements.phone = ZDCPreChatDataOptional;
        defaults.preChatDataRequirements.department = ZDCPreChatDataOptional;
        defaults.preChatDataRequirements.message = ZDCPreChatDataOptional;
    }];
    
    // To override the default avatar uncomment and complete the image name
    //    [[ZDCChatAvatar appearance] setDefaultAvatar:@"your_avatar_name_here"];
    
    // Uncomment to disable visitor data persistence between application runs
    //[[ZDCChat instance].session visitorInfo].shouldPersist = NO;
    
    // Uncomment if you don't want open chat sessions to be automatically resumed on application launch
    [ZDCChat instance].shouldResumeOnLaunch = NO;
    
    // remember to switch off debug logging before app store submission!
    [ZDCLog enable:YES];
    [ZDCLog setLogLevel:ZDCLogLevelWarn];
    
    ////////////////////////////////////////////////////////////////////////////////////////////////
}



- (void) styleAppChat{
    if ([ZDUUtil isVersionOrNewer:@(7)]) {
        
        // status bar
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleLightContent];
        
        // nav bar
        NSDictionary *navbarAttributes = [NSDictionary dictionaryWithObjectsAndKeys:
                                          [UIColor whiteColor] ,UITextAttributeTextColor, nil];
        [[UINavigationBar appearance] setTintColor:[UIColor redColor]];
        [[UINavigationBar appearance] setTitleTextAttributes:navbarAttributes];
        
//        //Set style for navigation bar
//        UIImage *navigationBackground = [[UIImage imageNamed:@"navigation_background"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 0, 6, 0)];
//        [[UINavigationBar appearance] setBackgroundImage:navigationBackground forBarMetrics:UIBarMetricsDefault];
        
        if ([ZDUUtil isVersionOrNewer:@(8)]) {
            
            // For translucent nav bars set YES
            [[UINavigationBar appearance] setTranslucent:NO];
        }
        
        // For a completely transparent nav bar uncomment this and set 'translucent' above to YES
        // (you may also want to change the title text and tint colors above since they are white by default)
        //[[UINavigationBar appearance] setBarStyle:UIBarStyleDefault];
        //[[UINavigationBar appearance] setBackgroundImage:[UIImage new] forBarMetrics:UIBarMetricsDefault];
        //[[UINavigationBar appearance] setShadowImage:[UIImage new]];
        //[[UINavigationBar appearance] setBackgroundColor:[UIColor clearColor]];
        
    } else {
        //Set style for navigation bar
        //Set style for navigation bar
        UIImage *navigationBackground = [[UIImage imageNamed:@"navigation_background"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 0, 6, 0)];
        [[UINavigationBar appearance] setBackgroundImage:navigationBackground forBarMetrics:UIBarMetricsDefault];
    }
    
}


@end
