#import <Foundation/Foundation.h>
#include "AppDelegate.h"
#include "GeneratedPluginRegistrant.h"
#import "MXJSFlutterEngine.h"

@interface AppDelegate ()

@property (nonatomic, strong) MXJSFlutterEngine *jsFlutterEngine;

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    //----------------MXFlutter的启动----------------------------
    //启动顺序很重要
    
    // 一.创建FlutterViewController
    FlutterViewController *flutterVC = [[FlutterViewController alloc] init];
    
    // 二.MXJSFlutterEngine,初始化Flutter/Native/JS 三方的Bridge
    self.jsFlutterEngine = [[MXJSFlutterEngine alloc] initWithEngine:flutterVC.engine];
    
    [GeneratedPluginRegistrant registerWithRegistry:flutterVC];
    
    // 三.设置初始化启动哪个页面
    //这里演示如何控制打开FlutterViewController时，如何控制初始页面
    
    // 1.FlutterHomePage：，先进入Flutter页面，点击再push MXJSPage页面，首页加载速度快
    NSString *route  = @"FlutterHomePage";
    
    // 2.MXJSPage： 直接打开MXFlutter写的页面，TODO：JS引擎启动需要时间，这里会展示菊花，优化中。。。
    //NSString *route  = @"MXJSPage";

    //设置InitialRoute Flutter有bug，必须按这种顺序 https://github.com/flutter/flutter/issues/27216
    [flutterVC setInitialRoute:route];
    
    //----------------MXFlutter的启动 end----------------------------

    UINavigationController *navigationController = [[UINavigationController alloc] initWithRootViewController:flutterVC];
    navigationController.navigationBar.hidden = YES;
    self.window.rootViewController = navigationController;
    [self.window makeKeyAndVisible];
 
//  这里模拟，APP打开之后，一个Native用户点击，打开Flutter 指定页面
//    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(10 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//        [flutterVC pushRoute:route];
//        NSLog(@"    [flutterVC pushRoute:route];");
//    });
    
    return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

@end

