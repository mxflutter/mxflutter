//
//  MXJSFlutterEngine.m
//  Runner
//
//  Created by soapyang on 2018/12/22.
//  Copyright © 2018 The Chromium Authors. All rights reserved.
//

#import "MXJSFlutterEngine.h"
#import "MXJSFlutterApp.h"
#import "JSModule.h"
#import "MXJSFlutterDefines.h"
#import <Flutter/Flutter.h>
#import "AppDelegate.h"
#import "MXJSEngine.h"

@interface MXJSFlutterEngine ()
{
//    BOOL _flutterEngineIsDidRender;
}

@property (nonatomic, strong) NSString *rootPath;
@property (nonatomic, strong) MXJSFlutterApp *currentApp;

@property (nonatomic, strong) FlutterMethodChannel *basicChannel;
@property (nonatomic, strong) NSMutableArray<FlutterMethodCall*> *callFlutterQueue;

@end

@implementation MXJSFlutterEngine

- (instancetype)initJSAppName:(NSString*)jsAppName
{
    if (self = [super init])
    {
//        _flutterEngineIsDidRender = NO;
        _jsAppName = jsAppName;
        
        [self setup];
    }
    return self;
}

- (void)setup
{
    [self unsetup];
    
    self.rootPath = [JSFLUTTER_SRC_BASE_DIR stringByAppendingPathComponent:JSFLUTTER_SRC_DIR];
    self.callFlutterQueue = [NSMutableArray arrayWithCapacity:2];
//    __weak MXJSFlutterViewController *weakSelf = self;
//    
//    [self setFlutterViewDidRenderCallback:^{
//        _flutterEngineIsDidRender = YES;
//        
//        for (FlutterMethodCall *call in weakSelf.callFlutterQueue) {
//            [weakSelf.basicChannel invokeMethod:call.method arguments:call.arguments];
//        }
//    }];
    
    AppDelegate *delegate = ((AppDelegate *)UIApplication.sharedApplication.delegate);
    self.flutterEngine = delegate.flutterEngine;
    
    [self setupChannel];
    
    if (self.jsAppName && self.jsAppName.length > 0)
    {
        [self runJSApp:self.jsAppName];
    }
}

- (void)setupChannel
{
    
    self.basicChannel = [FlutterMethodChannel
                         methodChannelWithName:@"js_flutter.flutter_main_channel"
                         binaryMessenger:self.flutterEngine.binaryMessenger];
    
    __weak MXJSFlutterEngine *weakSelf = self;
    [self.basicChannel setMethodCallHandler:^(FlutterMethodCall * _Nonnull call, FlutterResult  _Nonnull result) {
        __strong MXJSFlutterEngine *strongSelf = weakSelf;
        if (!strongSelf) {
            return;
        }
        
        if ([call.method isEqualToString:@"callNativeRunJSApp"]) {
            [strongSelf callNativeRunJSApp:call.arguments];
        } else if ([call.method isEqualToString:@"callJsCallbackFunction"]) {
            [strongSelf callJsCallBackFunction:call.arguments];
        }
    }];
    
    //Test
    FlutterMethodChannel* batteryChannel = [FlutterMethodChannel methodChannelWithName:@"samples.flutter.io/battery" binaryMessenger:self.flutterEngine.binaryMessenger];
    [batteryChannel setMethodCallHandler:^(FlutterMethodCall* call, FlutterResult result) {
        if ([call.method isEqualToString:@"getPlatformVersion"]) {
            result(@"samples.flutter.io/battery test string");
        } else {
            result(@(404));
        }
    }];
}

- (void)runJSApp:(NSString*)appName
{
    [self runApp:appName pageName:nil];
}

- (void)callJsCallBackFunction:(id)arguments
{
    NSDictionary *argsMap = arguments;
    NSString *callbackId = argsMap[@"callbackId"];
    NSString *param = argsMap[@"param"];
    
    [self.jsEngine callJSCallbackFunction:callbackId param:param];
}

//MARK: - flutter -> Native
//由Flutter 代码启动JSApp。 可以用在先显示Dart页面，然后路由调转到JS页面
//启动JSApp之后，执行JS代码，JS代码可以主动调用Flutter显示自己的页面，也能接受Flutter的指令，显示对应页面
- (void)callNativeRunJSApp:(id)arguments
{
    NSDictionary *argsMap = arguments;
    NSString *jsAppName = argsMap[@"jsAppName"];
    NSString *pageName = argsMap[@"pageName"];
    
    [self runApp:jsAppName pageName:pageName];
}

//MARK: - native -> flutter
//--------------------------------------------
//调用Flutter切换到JSWidget，显示JS渲染的内容
//MARK: - native -> flutter
//--------------------------------------------
- (void)callFlutterReloadAppWithJSWidgetData:(NSString*)widgetData
{
    [self callFlutterReloadAppWithRouteName:@"MXJSWidget" widgetData:widgetData];
}

- (void)callFlutterReloadAppWithRouteName:(NSString*)routeName widgetData:(NSString*)widgetData
{
    routeName = routeName?routeName:@"";
    widgetData = widgetData?widgetData:@"";
    
    NSMutableDictionary *arguments = [[NSMutableDictionary alloc] init];
    if (routeName)
    {
        [arguments setObject:routeName forKey:@"routeName"];
    }
    if (widgetData)
    {
        [arguments setObject:widgetData forKey:@"widgetData"];
    }
    FlutterMethodCall* call  = [FlutterMethodCall methodCallWithMethodName:@"reloadApp" arguments:arguments];
    
//    if (!_flutterEngineIsDidRender) {
//
//        [self.callFlutterQueue addObject:call];
//        return;
//    }
    
    [self.basicChannel invokeMethod:call.method arguments:call.arguments];
}

- (void)callFlutterMethodChannelInvoke:(NSString*)channelName methodName:(NSString*)methodName params:(NSDictionary *)params callback:(void(^)(id _Nullable result))callback
{
    NSMutableDictionary *arguments = [[NSMutableDictionary alloc] init];
    if (channelName)
    {
        [arguments setObject:channelName forKey:@"channelName"];
    }
    if (methodName)
    {
        [arguments setObject:methodName forKey:@"methodName"];
    }
    if (params)
    {
        [arguments setObject:params forKey:@"params"];
    }
    FlutterMethodCall* call = [FlutterMethodCall methodCallWithMethodName:@"mxflutterBridgeMethodChannelInvoke" arguments:arguments];
//    if (!_flutterEngineIsDidRender) {
//        [self.callFlutterQueue addObject:call];
//        return;
//    }
    
    [self.basicChannel invokeMethod:call.method arguments:call.arguments result:^(id  _Nullable result) {
        if (callback) {
            callback(result);
        }
    }];
}

- (void)callFlutterEventChannelReceiveBroadcastStreamListenInvoke:(NSString*)channelName
                                                      streamParam:(NSString *)streamParam
                                                         onDataId:(NSString *)onDataId
                                                        onErrorId:(NSString *)onErrorId
                                                         onDoneId:(NSString *)onDoneId
                                                    cancelOnError:(NSNumber *)cancelOnError
                            
{
    if ([streamParam isEqualToString:@"null"]) {
        streamParam = nil;
    }
    
    NSMutableDictionary *arguments = [[NSMutableDictionary alloc] init];
    if (channelName)
    {
        [arguments setObject:channelName forKey:@"channelName"];
    }
    if (streamParam)
    {
        [arguments setObject:streamParam forKey:@"streamParam"];
    }
    if (onDataId)
    {
        [arguments setObject:onDataId forKey:@"onDataId"];
    }
    if (onErrorId)
    {
        [arguments setObject:onErrorId forKey:@"onErrorId"];
    }
    if (onErrorId)
    {
        [arguments setObject:onErrorId forKey:@"onErrorId"];
    }
    if (cancelOnError)
    {
        [arguments setObject:cancelOnError forKey:@"cancelOnError"];
    }
    FlutterMethodCall* call = [FlutterMethodCall methodCallWithMethodName:@"mxflutterBridgeEventChannelReceiveBroadcastStreamListenInvoke"
                                                                arguments:arguments];
//    if (!_flutterEngineIsDidRender) {
//        [self.callFlutterQueue addObject:call];
//        return;
//    }
    
    [self.basicChannel invokeMethod:call.method arguments:call.arguments];
}


- (void)unsetup {
    if (self.currentApp) {
        [self.currentApp exitApp];
        self.currentApp = nil;
    }
}

- (void)runApp:(NSString*)appName pageName:(NSString*)pageName
{
    [self setup];
    [JSModule clearModuleCache];
    NSString *appRootPath = [self.rootPath stringByAppendingPathComponent:appName];
    self.currentApp  = [[MXJSFlutterApp alloc] initWithAppName:appName engine:self appRootPath:appRootPath];
    
    [self.currentApp runAppWithPageName:pageName];
}

- (BOOL)showPage:(NSString*)pageName
{
    return YES;
}

@end
