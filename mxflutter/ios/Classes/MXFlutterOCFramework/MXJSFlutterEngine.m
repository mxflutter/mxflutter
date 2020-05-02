//
//  MXJSFlutterEngine.m
//  MXFlutterOCFramework
//
//  Created by soapyang on 2018/12/22.
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

#import "MXJSFlutterEngine.h"
#import "JSModule.h"
#import "MXJSFlutterDefines.h"
#import "MXJSEngine.h"
#import "MXFlutterPlugin.h"

@interface MXJSFlutterEngine ()
{
    
}

@property (nonatomic, strong) NSString *rootPath;


@property (nonatomic, strong) FlutterMethodChannel *engineMethodChannel;
@property (nonatomic, strong) FlutterBasicMessageChannel* jsFlutterCommonBasicChannel;
@property (nonatomic, strong) NSMutableArray<FlutterMethodCall*> *callFlutterQueue;

@end

@implementation MXJSFlutterEngine

- (instancetype)initWithFlutterMessager:(NSObject<FlutterBinaryMessenger>*)binaryMessenger
{
    if (self = [super init])
    {
        self.binaryMessenger = binaryMessenger;
        [self setup];
    }
    return self;
}

- (void)dispose {
    
}

- (void)setup
{    
    self.callFlutterQueue = [NSMutableArray arrayWithCapacity:2];
    
    [self setupChannel];
}

- (void)setupChannel
{
    
    self.engineMethodChannel = [FlutterMethodChannel
                                methodChannelWithName:@"js_flutter.flutter_main_channel"
                                binaryMessenger:self.binaryMessenger];
    
    __weak MXJSFlutterEngine *weakSelf = self;
    [self.engineMethodChannel setMethodCallHandler:^(FlutterMethodCall * _Nonnull call, FlutterResult  _Nonnull result) {
        __strong MXJSFlutterEngine *strongSelf = weakSelf;
        if (!strongSelf) {
            return;
        }
        
        if ([call.method isEqualToString:@"callNativeRunJSApp"]) {
            [strongSelf callNativeRunJSApp:call.arguments];
        } else if ([call.method isEqualToString:@"callJsCallbackFunction"]) {
            [strongSelf callJsCallBackFunction:call.arguments];
        }
        else if ([call.method isEqualToString:@"mxLog"]) {
            NSLog(@"%@", call.arguments);
        }
    }];
    
    // js <===bridge===> flutter common channel
    self.jsFlutterCommonBasicChannel = [FlutterBasicMessageChannel messageChannelWithName:@"mxflutter.mxflutter_common_basic_channel"
                                                                          binaryMessenger:self.binaryMessenger
                                                                                    codec:[FlutterStringCodec sharedInstance]];
    
    
    [self.jsFlutterCommonBasicChannel setMessageHandler:^(id  _Nullable message, FlutterReply  _Nonnull callback) {
        __strong MXJSFlutterEngine *strongSelf = weakSelf;
        
        [strongSelf.jsEngine.jsExecutor invokeMethod:@"mxfJSBridgeInvokeJSCommonChannel" args:@[message] callback:^(JSValue *result, NSError *error) {
            callback(result.toString);
        }];
        
    }];
    
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
    NSString *jsAppPath = argsMap[@"jsAppPath"];
    NSString *jsAppAssetsKey = argsMap[@"jsAppAssetsKey"];
    
    NSArray* jsAppSearchPathList = argsMap[@"jsAppSearchPathList"];
    NSArray* jsAppSearchPathWithAssetsKeyList = argsMap[@"jsAppSearchPathWithAssetsKeyList"];
    
    //如果Native设置过jsAppPath，以Native为准
    if (self.currentJSAppPath.length > 0) {
        MXJSFlutterLog(@"MXJSFlutterEngine Native工程，设置了currentJSAppPath，RunJSApp使用Native设置的路径 appPath %@",self.currentJSAppPath);
        jsAppPath = self.currentJSAppPath;
        jsAppSearchPathList = self.jsAppSearchPathList;
    }
    else
    {
        
        if (jsAppPath.length  == 0 &&  jsAppAssetsKey.length > 0) {
            NSString *key =  [[MXFlutterPlugin shareInstance].flutterRegistrar lookupKeyForAsset:jsAppAssetsKey];
            jsAppPath = [[[NSBundle mainBundle] bundlePath] stringByAppendingPathComponent:key];
        }
        
        if(jsAppPath.length == 0){
            
            MXJSFlutterLog(@"%@",@"jsAppPath.length == 0");
            return;
        }
        

        
        if (jsAppSearchPathWithAssetsKeyList.count > 0) {
            
            NSMutableArray *searchList = [NSMutableArray array];
            if (jsAppSearchPathList.count > 0) {
                [searchList addObjectsFromArray:jsAppSearchPathList];
            }
            
            for (NSString *jsAppPathAssetsKey in jsAppSearchPathWithAssetsKeyList) {
                NSString *key =  [[MXFlutterPlugin shareInstance].flutterRegistrar lookupKeyForAsset:jsAppPathAssetsKey];
                NSString*  jsAppSearchPath = [[[NSBundle mainBundle] bundlePath] stringByAppendingPathComponent:key];
                [searchList addObject:jsAppSearchPath];
            }
            
            jsAppSearchPathList = searchList;
        }
    }
    
    [self runAppWithPath:jsAppPath jsAppSearchPathList:jsAppSearchPathList];
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
    
    
    [self.engineMethodChannel invokeMethod:call.method arguments:call.arguments];
}

- (void)invokeFlutterRemoveMirrorObjsRef:(NSArray*)mirrorIDArray{
    
    [self.engineMethodChannel invokeMethod:@"mxfJSBridgeRemoveMirrorObjsRef" arguments:mirrorIDArray];
}

//MARK: - JSI->Native->Flutter
//  JSI->Native->Flutter 通用通道
- (void)invokeFlutterCommonChannel:(NSString*)argumentsJSONStr callback:(void(^)(id _Nullable result))callback
{
    [self.jsFlutterCommonBasicChannel sendMessage:argumentsJSONStr reply:^(id  _Nullable reply) {
        if (callback) {
            callback(reply);
        }
    }];
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
    
    [self.engineMethodChannel invokeMethod:call.method arguments:call.arguments result:^(id  _Nullable result) {
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
    
    [self.engineMethodChannel invokeMethod:call.method arguments:call.arguments];
}


- (void)runAppWithPath:(NSString *)jsAppPath jsAppSearchPathList:(NSArray*)pathArray
{
    //退出原来的APP
    if (self.currentApp) {
        [self.currentApp exitApp];
        self.currentApp = nil;
    }
    
    [JSModule clearModuleCache];
    NSString *appRootPath = jsAppPath;
    self.currentApp  = [[MXJSFlutterApp alloc] initWithAppPath:appRootPath jsAppSearchPathList:pathArray engine:self];
    
    [self.currentApp runApp];
}



@end


