#import "AppDelegate.h"
#import "GeneratedPluginRegistrant.h"
#import "MXFlutterPlugin.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //如需定制一下MXFlutter ，在registerWithRegistry之前调用
    //如无需定制，无需调用。
    [self setupMXFlutter];
    
    [GeneratedPluginRegistrant registerWithRegistry:self];
    // Override point for customization after application launch.
    return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

- (void)setupMXFlutter{
    
    [self setupMXFlutterJSPath];
}

- (void)setupMXFlutterJSPath{
    
    ///mxflutter  js代码模拟器热重载支持
    ///把JS文件重定向到本地地址，简单支持模拟器JS文件热重载，
    ///仅支持模拟器环境使用
    ///*发布版本的热更新，也使用同样API设置为你的JS代码下载目录
    
#if TARGET_IPHONE_SIMULATOR
    
   //业务JS代码的热重载
    NSString *jsAppPath = nil;
    NSArray *jsAppSearchPathList = nil;
    
    ///mxflutter framework的开发者用来加快调试，如不需要修改mxflutter jsframework，无需设置jsFramewrokPath
    NSString *jsFramewrokPath = nil;
    
    ///1. 可以直接修改定位到绝对路径,但多人协作开发时，每个人路径不同需要，需要都配置，推荐第二种方法，配置PROJECT_DIR
    ///jsFramewrokPath = @“/Volumes/Data/Work/mxflutter2/mxflutter/js_lib”;
    ///jsAppPath =  @"/Volumes/Data/Work/mxflutter2/mxflutter_js_src/"
    
    ///2. 可以配置PROJECT_DIR，把JS代码路径地址重定向到开发机iMac地址，用来支持模拟器热重载，支持多人协同，配置PROJECT_DIR方法如下。
    ///XCode -> Build Settings -> Preprocessor Macros ： Debug下增加 PROJECT_DIR=@\""$PROJECT_DIR\/"\"
    ///这是github https://github.com/TGIF-iMatrix/mxflutter.git 下的 flutter/example/ios 工程为例子，js_lib的
    ///物理路径配置如下
    
#ifdef PROJECT_DIR
    
    //可以根据自己的工程部署调整相对路径
    jsAppPath = [PROJECT_DIR stringByAppendingPathComponent:@"../mxflutter_js_src/"];
    
    //
    jsAppSearchPathList = @[
        [jsAppPath  stringByAppendingPathComponent:@"app_demo/"],
        [jsAppPath  stringByAppendingPathComponent:@"mxjsbuilder_demo/"]
    ];
    
    jsFramewrokPath = [PROJECT_DIR stringByAppendingPathComponent:@"../../js_lib/"];
    
#endif
    
    //可以调用[MXFlutterPlugin setJSFramewrokPath:jsFramewrokPath]; 设置jsframework到Documents你的下载目录，支持framework的热更新
    if (jsFramewrokPath.length > 0) {
         [MXFlutterPlugin setJSFramewrokPath:jsFramewrokPath];
    }
    
    if (jsAppPath.length >  0) {
        [MXFlutterPlugin setJSAppPath:jsAppPath jsAppSearchPathList:jsAppSearchPathList];
    }
   
#endif
 
}

@end
