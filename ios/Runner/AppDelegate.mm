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
    
    UIViewController *rootVC = [[UIViewController alloc] init];
    UIButton *button = [[UIButton alloc] init];
    [button setTitle:@"进入Flutter页面" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [button sizeToFit];
    button.frame = CGRectMake(125.0, 250.0, button.bounds.size.width, button.bounds.size.height);
    [button addTarget:self action:@selector(didButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [rootVC.view addSubview:button];
    rootVC.view.backgroundColor = [UIColor whiteColor];
    
    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:rootVC];
    navigationController.navigationBar.hidden = YES;
    self.window.rootViewController = navigationController;
    [self.window makeKeyAndVisible];
    
    self.flutterEngine = [[FlutterEngine alloc] initWithName:@"kFlutterEngine" project:nil];
    [self.flutterEngine runWithEntrypoint:nil];
    [GeneratedPluginRegistrant registerWithRegistry:self.flutterEngine];
    
    self.jsFlutterEngine = [[MXJSFlutterEngine alloc] initJSAppName:nil];
    
    return [super application:application didFinishLaunchingWithOptions:launchOptions];
}


- (void)didButtonClicked:(id)sender {
    FlutterViewController *flutterVC = [[FlutterViewController alloc] initWithEngine:self.flutterEngine nibName:nil bundle:nil];
    UINavigationController *navigationVC = (UINavigationController *)self.window.rootViewController;
    [navigationVC pushViewController:flutterVC animated:YES];
}




@end

