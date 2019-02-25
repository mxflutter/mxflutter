#include "AppDelegate.h"
#include "GeneratedPluginRegistrant.h"

#include "JSFlutter/MXJSFlutterViewController.h"
#import "DartVmManager.h"

@interface AppDelegate () 

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  // [GeneratedPluginRegistrant registerWithRegistry:self];
  // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    MXJSFlutterViewController* flutterVC = [[MXJSFlutterViewController alloc] initJSAppName:nil];
    
//    UINavigationController *navigationController = [[UINavigationController alloc]
//                                                    initWithRootViewController:flutterVC];
    

    self.window.rootViewController = flutterVC;
    [self.window makeKeyAndVisible];
    
    return [super application:application didFinishLaunchingWithOptions:launchOptions];
}





@end

