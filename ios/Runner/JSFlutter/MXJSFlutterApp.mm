//
//  MXJSAppProxy.m
//  Runner
//
//  Created by soapyang on 2018/12/24.
//  Copyright © 2018 The Chromium Authors. All rights reserved.
//

#import "MXJSFlutterApp.h"
#import "MXJSFlutterViewController.h"
#import "MXJSFlutter.h"
#import "DartVmLiteDylib/DartVM.hpp"
#import "DartVmManager.h"

static FlutterMethodChannel* jsFlutterAppChannelStatic;
static MXJSFlutterEngine* jsFlutterEngineStatic;
static FlutterMethodChannel* dartFlutterAppDebugChannelStatic;

@interface MXJSFlutterApp ()

@property (nonatomic,strong)  FlutterMethodChannel* jsFlutterAppChannel;
@property (nonatomic,strong)  FlutterMethodChannel* dartFlutterAppDebugChannel;

@end

@implementation MXJSFlutterApp

- (instancetype)initWithAppName:(NSString*)appName engine:(MXJSFlutterEngine*)jsFlutterEngine appRootPath:(NSString*)appRootPath
{
    if (self = [super init])
    {
        self.appName = appName;
        self.jsFlutterEngine = jsFlutterEngine;
        jsFlutterEngineStatic = jsFlutterEngine;
        self.appRootPath = appRootPath;
        
        [self setupChannel];
        [self setupJSEngine];
        
    }
    return self;
}

- (void)dealloc{
    MXJSFlutterLog(@"appName%@",self.appName);
}

- (void)setupJSEngine
{
    [self unsetup];
    
    self.jsEngine = [[MXJSEngine alloc] init];
    
    //调试时，指向本地路径，可以热重载
    NSString *jsBasePath = @"";
    
    if (jsBasePath.length == 0) {
        jsBasePath = [[NSBundle mainBundle] bundlePath];
    }
    
    
    //JSFlutter JS运行库搜索路径
    NSString *jsFlutterFrameworkDir = [JSFLUTTER_FRAMEWORK_BASE_DIR stringByAppendingPathComponent:JSFLUTTER_FRAMEWORK_DIR];
    [self.jsEngine addSearchDir:jsFlutterFrameworkDir];
    
    //app业务代码搜索路径
    [self.jsEngine addSearchDir:self.appRootPath];
    //__weak MXJSFlutterEngine *weakSelf = self;
    
    NSString *js_basic_lib_Path = [jsFlutterFrameworkDir stringByAppendingPathComponent:@"js_basic_lib.js"];
    [self.jsExecutor executeScriptPath:js_basic_lib_Path onComplete:^(NSError *error) {
        
    }];
    
}

- (void)unsetup{

}

- (void)setupChannel
{
    self.jsFlutterAppChannel = [FlutterMethodChannel
                         methodChannelWithName:@"js_flutter.js_flutter_app_channel"
                         binaryMessenger:_jsFlutterEngine.flutterViewController];
    jsFlutterAppChannelStatic = self.jsFlutterAppChannel;
    
      __weak MXJSFlutterApp *weakSelf = self;
    
    [self.jsFlutterAppChannel setMethodCallHandler:^(FlutterMethodCall * _Nonnull call, FlutterResult  _Nonnull result) {
        
        MXJSFlutterApp *strongSelf = weakSelf;
        
        if (!strongSelf) {
            return;
        }
        
        if ([call.method isEqualToString:@"callJS"]) {
            
            [strongSelf.jsExecutor invokeJSValue:strongSelf.jsAppObj mothod:@"nativeCall" args:@[call.arguments] callback:^(JSValue *result, NSError *error) {
                
            }];
        } else if ([call.method isEqualToString:@"callDart"]) {
            if (DART_FLUTTER_APP_DEBUG) {
                //调试状态下使用Flutter VM的调试通道
                //Debug模式下，Flutter->DartFlutter
                [strongSelf.dartFlutterAppDebugChannel invokeMethod:call.method arguments:call.arguments];
            } else {
                //使用外挂Dart VM调用通道
                //将字典转换成String
                NSError *error = nil;
                NSData *jsonData = [NSJSONSerialization dataWithJSONObject:call.arguments options:0 error:&error];
                //调试用
                NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
                DartVM *dartVM = [[DartVmManager sharedInstance] getDartVM];
                dartVM->enterMainIsolate();
                Dart_Handle args[1];
                args[0] = Dart_NewStringFromUTF8((const uint8_t *)jsonData.bytes, jsonData.length);
                dartVM->dartFunctionInvokeWithClass("dartFlutterNativeCall", 1, args, "MXDartFlutterApp", NULL);
                dartVM->exitMainIsolate();
            }
        }
    }];
    
    if (DART_FLUTTER_APP_DEBUG) {
        self.dartFlutterAppDebugChannel = [FlutterMethodChannel
                                           methodChannelWithName:@"dart_flutter.dart_flutter_app_debug_channel"
                                           binaryMessenger:_jsFlutterEngine.flutterViewController];
        dartFlutterAppDebugChannelStatic = self.dartFlutterAppDebugChannel;
        [self.dartFlutterAppDebugChannel setMethodCallHandler:^(FlutterMethodCall * _Nonnull call, FlutterResult  _Nonnull result) {
            MXJSFlutterApp *strongSelf = weakSelf;
            
            if (!strongSelf) {
                return;
            }
            //Debug模式下，DartFlutter->Flutter
            callFlutterMethodForDart(call.method, call.arguments);
        }];
    }
}

- (void)runApp
{
    [self runAppWithPageName:@""];
}

//加载main.js 调用main函数
- (void)runAppWithPageName:(NSString*)pageName
{
    
    __weak MXJSFlutterApp *weakSelf = self;
    [self.jsExecutor executeMXJSBlockOnJSThread:^(MXJSExecutor *executor) {
        
        MXJSFlutterApp *strongSelf = weakSelf;
        
        if (!strongSelf) {
            return;
        }
        
        executor.jsContext[@"MXNativeJSFlutterApp"] = strongSelf;
        
        NSString *mainJS = [strongSelf.appRootPath stringByAppendingPathComponent:@"main.js"];
        
        [executor executeScriptPath:mainJS onComplete:^(NSError *error) {
            
            MXJSFlutterLog(@"MXJSFlutter : runApp error:%@",error);
            
            //执行main.js 时，自己执行main() ,方便用js IDE直接执行调试JS代码
            //        [executor invokeMothod:@"main" args:@[pageName] callback:^(JSValue *result, NSError *error) {
            //
            //            NSLog(@"MXJSFlutter : call main error:%@",error);
            //        }];
            
        
        }];
        
    }];
}

//加载Dart文件 调用main函数
- (void)runDartAppWithPageName:(NSString*)pageName
{
    if (!DART_FLUTTER_APP_DEBUG) {
        if ([[DartVmManager sharedInstance] getDartVM] != NULL) {
            DartVM *dartVM = [[DartVmManager sharedInstance] getDartVM];
            dartVM->exitMainIsolate();
            dartVM->shutdownMainIsolate();
        }

        [[DartVmManager sharedInstance] initializeVM:@"mainApp.dart"];
        
        //绑定下DartNative方法，供Dart调用
        DartVM *dartVM = [[DartVmManager sharedInstance] getDartVM];
        
        dartVM->startMainIsolate();
        
        const char *lib_url = dartVM->libraryUrlInRootPath("dart_flutter_framework.dart");
        dartVM->addNativeFunctionBindingInLibrary(lib_url, "CallHostFlutterMethod", callFlutterWidgetChannelWithMethodNameDart);
    }
}


-(void)exitApp
{
    self.jsAppObj = nil;
    self.jsEngine = nil;
}


- (MXJSExecutor*)jsExecutor
{
    return self.jsEngine.jsExecutor;
}

//MARK: - js -> native -> flutter
//--------------------------------------------

- (void)jsAPISetCurrentJSApp:(JSValue*)jsAppObj
{
    self.jsAppObj = jsAppObj;
    
}


  - (void)jsAPICallFlutterReloadApp:(JSValue*)jsAppObj  widgetData:(NSString*)data
{
    self.jsAppObj = jsAppObj;
    
    [self.jsFlutterEngine.flutterViewController callFlutterReloadAppWithJSWidgetData:data];
}



- (void)callFlutterWidgetChannelWithMethodName:(NSString*)method arguments:(id)arguments
{
    [self.jsFlutterAppChannel invokeMethod:method arguments:arguments];
}

//Dart方法绑定
void callFlutterWidgetChannelWithMethodNameDart(Dart_NativeArguments arguments)
{
    Dart_EnterScope();
    Dart_SetReturnValue(arguments, Dart_Null());
    Dart_Handle methodName = Dart_GetNativeArgument(arguments, 0);
    const char *methodNameCString = "";
    Dart_StringToCString(methodName, &methodNameCString);
    
    Dart_Handle data = Dart_GetNativeArgument(arguments, 1);
    const char *dataCString = "";
    Dart_StringToCString(data, &dataCString);
    
    callFlutterMethodForDart([NSString stringWithUTF8String:methodNameCString],[NSString stringWithUTF8String:dataCString]);
    Dart_ExitScope();
}

void callFlutterMethodForDart(NSString *methodName,NSString *args) {
    if ([methodName isEqualToString:@"reloadApp"]) {
        [jsFlutterEngineStatic.flutterViewController callFlutterReloadAppWithJSWidgetData:args];
    } else {
        [jsFlutterAppChannelStatic invokeMethod:methodName arguments:@{@"widgetData":args}];
    }
}

@end

