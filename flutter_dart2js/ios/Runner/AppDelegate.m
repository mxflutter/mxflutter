#import "AppDelegate.h"
#import "GeneratedPluginRegistrant.h"
#import "FlutterJSManager.h"
#import "FlutterNativePlugin.h"
#import "FlutterMethodChannelManager.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  [GeneratedPluginRegistrant registerWithRegistry:self];
  // Override point for customization after application launch.
    
    [[FlutterJSManager sharedInstance] runMainJS];
    
    NSObject<FlutterPluginRegistrar>* registrar = [self registrarForPlugin:@"FlutterNativePlugin"];
    [[FlutterMethodChannelManager sharedInstance] setupMethodChannelWithMessenger:registrar];
    
    [FlutterNativePlugin registerWithRegistrar:registrar];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(4 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [[FlutterMethodChannelManager sharedInstance].methodChannel invokeMethod:@"native_call" arguments:@"native call: hello world!"];
    });
    
  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

@end
