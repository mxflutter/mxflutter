#include "AppDelegate.h"
#include "GeneratedPluginRegistrant.h"
#import "MXJSFlutterEngine.h"

@interface AppDelegate ()

@property (nonatomic, strong) MXJSFlutterEngine *jsFlutterEngine;

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  // [GeneratedPluginRegistrant registerWithRegistry:self];
  // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    self.flutterEngine = [[FlutterEngine alloc] initWithName:@"kFlutterEngine" project:nil];
    [self.flutterEngine runWithEntrypoint:nil];
    [GeneratedPluginRegistrant registerWithRegistry:self.flutterEngine];
    
    FlutterViewController *flutterVC = [[FlutterViewController alloc] initWithEngine:self.flutterEngine nibName:nil bundle:nil];
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:flutterVC];
    navigationController.navigationBar.hidden = YES;
    self.window.rootViewController = navigationController;
    [self.window makeKeyAndVisible];
    
    self.jsFlutterEngine = [[MXJSFlutterEngine alloc] initJSAppName:nil];
    
    return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

@end

