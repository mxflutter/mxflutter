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

static FlutterMethodChannel* jsFlutterAppChannelStatic;
static MXJSFlutterEngine* jsFlutterEngineStatic;

@interface MXJSFlutterApp ()

@property (nonatomic,strong)  FlutterMethodChannel* jsFlutterAppChannel;

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
    NSString *jsFlutterFrameworkDir = [JSFLUTTER_SRC_BASE_DIR stringByAppendingPathComponent:JSFLUTTER_FRAMEWORK_DIR];
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
                         binaryMessenger:_jsFlutterEngine.flutterViewController.binaryMessenger];
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
        }
    }];
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

@end

