#import <Foundation/Foundation.h>
#include "AppDelegate.h"
#include "GeneratedPluginRegistrant.h"
#import "MXJSFlutterEngine.h"

#import "RCTNetworking.h"

@interface AppDelegate ()

@property (nonatomic, strong) MXJSFlutterEngine *jsFlutterEngine;

@property (nonatomic, strong) FlutterMethodChannel *listViewDemoChannel;

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
    
    //
    [self setupMessageChannel:flutterVC.engine.binaryMessenger];
    
    return [super application:application didFinishLaunchingWithOptions:launchOptions];
}



- (void)setupMessageChannel:(NSObject<FlutterBinaryMessenger>*)messenger;{
    
    self.listViewDemoChannel = [FlutterMethodChannel
                         methodChannelWithName:@"MXFlutter_MethodChannel_Demo"
                         binaryMessenger:messenger];
    
    __weak AppDelegate *weakSelf = self;
    [self.listViewDemoChannel setMethodCallHandler:^(FlutterMethodCall * _Nonnull call, FlutterResult  _Nonnull result) {
        __strong AppDelegate *strongSelf = weakSelf;
        if (!strongSelf) {
            return;
        }
        
        if ([call.method isEqualToString:@"callNativeIconListRefresh"]) {
            
             result(@[@1,@2,@3,@4]);
           
        } else if ([call.method isEqualToString:@"callNativeIconListLoadMore"]) {
            
             result(@[@4,@3,@2,@1]);
        }
    
    }];
}

typedef void (^ImageLoaderProgressBlock)(int64_t progress, int64_t total);
typedef void (^ImageLoaderPartialLoadBlock)(UIImage *image);
typedef void (^ImageLoaderCompletionBlock)(NSError *error, UIImage *image);


- (void)_loadURLRequest:(NSURLRequest *)request
                                     progressBlock:(ImageLoaderProgressBlock)progressHandler
                                   completionBlock:(void (^)(NSError *error, id imageOrData, NSURLResponse *response))completionHandler
{



  MXURLRequestCompletionBlock processResponse = ^(NSURLResponse *response, NSData *data, NSError *error) {
    // Check for system errors
    if (error) {
      completionHandler(error, nil, response);
      return;
    } else if (!response) {
      completionHandler(RCTErrorWithMessage(@"Response metadata error"), nil, response);
      return;
    } else if (!data) {
      completionHandler(RCTErrorWithMessage(@"Unknown image download error"), nil, response);
      return;
    }

    // Check for http errors
    if ([response isKindOfClass:[NSHTTPURLResponse class]]) {
      NSInteger statusCode = ((NSHTTPURLResponse *)response).statusCode;
      if (statusCode != 200) {
        NSString *errorMessage = [NSString stringWithFormat:@"Failed to load %@", response.URL];
        NSDictionary *userInfo = @{NSLocalizedDescriptionKey: errorMessage};
        completionHandler([[NSError alloc] initWithDomain:NSURLErrorDomain
                                                     code:statusCode
                                                 userInfo:userInfo], nil, response);
        return;
      }
    }

    // Call handler
    completionHandler(nil, data, response);
  };

  // Download image
  __weak __typeof(self) weakSelf = self;
  __block RCTNetworkTask *task =
  [networking networkTaskWithRequest:request
                     completionBlock:^(NSURLResponse *response, NSData *data, NSError *error) {
                       __typeof(self) strongSelf = weakSelf;
                       if (!strongSelf) {
                         return;
                       }

                       if (error || !response || !data) {
                         NSError *someError = nil;
                         if (error) {
                           someError = error;
                         } else if (!response) {
                           someError = RCTErrorWithMessage(@"Response metadata error");
                         } else {
                           someError = RCTErrorWithMessage(@"Unknown image download error");
                         }
                         completionHandler(someError, nil, response);
                         [strongSelf dequeueTasks];
                         return;
                       }

                       dispatch_async(strongSelf->_URLRequestQueue, ^{
                         // Process image data
                         processResponse(response, data, nil);

                         // Prepare for next task
                         [strongSelf dequeueTasks];
                       });
                     }];

  task.downloadProgressBlock = ^(int64_t progress, int64_t total) {
    if (progressHandler) {
      progressHandler(progress, total);
    }
  };

  if (task) {
    if (!_pendingTasks) {
      _pendingTasks = [NSMutableArray new];
    }
    [_pendingTasks addObject:task];
    [self dequeueTasks];
  }

  return ^{
    __typeof(self) strongSelf = weakSelf;
    if (!strongSelf || !task) {
      return;
    }
    dispatch_async(strongSelf->_URLRequestQueue, ^{
      [task cancel];
      task = nil;
    });
    [strongSelf dequeueTasks];
  };
}

@end

