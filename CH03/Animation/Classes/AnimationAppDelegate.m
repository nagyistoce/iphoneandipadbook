//
//  AnimationAppDelegate.m
//  Animation
//
//  Created by Henry Yu on 10-11-08.
//  Copyright Sevenuc.com 2010. All rights reserved.
//

#import "AnimationAppDelegate.h"

@implementation AnimationAppDelegate

@synthesize window;


#pragma mark -
#pragma mark Application lifecycle

- (BOOL)application:(UIApplication *)application 
   didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    
    
    // Override point for customization after application launch.
	window.backgroundColor = [UIColor blackColor];
	
	CGRect bounds = [[UIScreen mainScreen] bounds];
	int screenWidth =  bounds.size.width;
	int screenHeight =  bounds.size.height;
	
	CGRect frame = CGRectMake((screenWidth-312)/2, (screenHeight-312)/2, 312, 312);
	UIImageView *animationView = [[UIImageView alloc] initWithFrame:frame];
	
	animationView.animationImages = [NSArray arrayWithObjects:	
									 [UIImage imageNamed:@"1.gif"],
									 [UIImage imageNamed:@"2.gif"],
									 [UIImage imageNamed:@"3.gif"],
									 [UIImage imageNamed:@"4.gif"],
									 [UIImage imageNamed:@"5.gif"], 
									 [UIImage imageNamed:@"6.gif"], nil];
	
	animationView.animationDuration = 1.25;
	animationView.animationRepeatCount = 0;
	[animationView startAnimating];
	[window addSubview:animationView];
	
	[animationView release]; 
	
	
    [window makeKeyAndVisible];
	
	return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, called instead of applicationWillTerminate: when the user quits.
     */
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    /*
     Called as part of  transition from the background to the inactive state: here you can undo many of the changes made on entering the background.
     */
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}


- (void)applicationWillTerminate:(UIApplication *)application {
    /*
     Called when the application is about to terminate.
     See also applicationDidEnterBackground:.
     */
}


#pragma mark -
#pragma mark Memory management

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application {
    /*
     Free up as much memory as possible by purging cached data objects that can be recreated (or reloaded from disk) later.
     */
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
