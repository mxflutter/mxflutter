#import "MXFlutterPlugin.h"

@interface MXFlutterPlugin ()



@end

@implementation MXFlutterPlugin

static MXFlutterPlugin *g_MXFlutterPluginInstance = nil;
static NSString  *g_presetJSFrameworkPath = nil;

+ (MXFlutterPlugin*)shareInstance {
    return g_MXFlutterPluginInstance;
}

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
    
    [self setupJSFramewrokPath:registrar];
    
    if (g_MXFlutterPluginInstance != nil) {
        [g_MXFlutterPluginInstance dispose];
    }
    
    g_MXFlutterPluginInstance = [[MXFlutterPlugin alloc] init];
    g_MXFlutterPluginInstance.flutterRegistrar = registrar;
    g_MXFlutterPluginInstance.mxEngine = [[MXJSFlutterEngine alloc] initWithFlutterMessager:registrar.messenger];
    
}

 //如果要热更新jsframework，设置jsFramewrokPath为你的下载目录
+ (void)setJSFramewrokPath:(NSString*)path{
    g_presetJSFrameworkPath = path;
}

+ (void)setupJSFramewrokPath:(NSObject<FlutterPluginRegistrar>*)registrar {
    
    //如果要热更新jsframework，设置jsFramewrokPath为你的下载目录
    NSString *jsFramewrokPath = g_presetJSFrameworkPath;
    if (jsFramewrokPath.length > 0) {
        [MXJSFlutterEngine setJSFrameworkPath:jsFramewrokPath];
        return;
    }
    
    //把JS文件重定向到本地地址，简单支持模拟器JS文件热重载
    //仅支持模拟器环境使用
    
#if TARGET_IPHONE_SIMULATOR && PROJECT_DIR
    
    ///配置PROJECT_DIR，把JS代码路径地址重定向到开发机iMac地址，用来支持模拟器热重载
    ///XCode -> Build Settings -> Preprocessor Macros ： Debug下增加 PROJECT_DIR=@\""$PROJECT_DIR\/"\"
    //这是github https://github.com/TGIF-iMatrix/mxflutter.git 下的 flutter/example/ios 工程为例子，js_lib的
    //物理路径配置如下
    jsFramewrokPath = [PROJECT_DIR stringByAppendingPathComponent:@"../../js_lib/"];
    
#else
    
    NSString* key = [registrar lookupKeyForAsset:@"js_lib/" fromPackage:@"mxflutter"];
    jsFramewrokPath = [[[NSBundle mainBundle] bundlePath] stringByAppendingPathComponent:key];
    
#endif
    
    [MXJSFlutterEngine setJSFrameworkPath:jsFramewrokPath];
    
}

- (void)dispose{
    if (self.mxEngine != nil) {
        [self.mxEngine dispose];
        self.mxEngine = nil;
    }
}

@end

