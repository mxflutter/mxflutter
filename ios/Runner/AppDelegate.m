#import "AppDelegate.h"
#import "GeneratedPluginRegistrant.h"
#import "MXFlutterPlugin.h"


@interface AppDelegate ()

//示例代码，非运行mxflutter的必须代码
@property (nonatomic, strong) FlutterMethodChannel *listViewDemoChannel;

@end


@implementation AppDelegate

- (BOOL)application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    //如需定制一下MXFlutter ，在registerWithRegistry之前调用
    //如无需定制，无需调用setupMXFlutter。
    [self setupMXFlutter];
    
    [GeneratedPluginRegistrant registerWithRegistry:self];
    // Override point for customization after application launch.
    return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

- (void)setupMXFlutter{

    [self setupMXFlutterJSPath];
    
    [self setupMessageChannelDemo];
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
    ///jsAppPath =  @"/Volumes/Data/Work/mxflutter2/mxflutter_js/src"
    
    ///2. 可以配置PROJECT_DIR，把JS代码路径地址重定向到开发机iMac地址，用来支持模拟器热重载，支持多人协同，配置PROJECT_DIR方法如下。
    ///XCode -> Build Settings -> Preprocessor Macros ： Debug下增加 PROJECT_DIR=@\""$PROJECT_DIR\/"\"
    ///这是github https://github.com/TGIF-iMatrix/mxflutter.git 下的 flutter/example/ios 工程为例子，js_lib的
    ///物理路径配置如下
    
#ifdef PROJECT_DIR
    
    //如果定义了PROJECT_DIR，需要根据自己的工程位置调整相对路径../mxflutter_js_src/
    jsAppPath = [PROJECT_DIR stringByAppendingPathComponent:@"../mxflutter_js_src/"];
    
    //
    jsAppSearchPathList = @[
        [jsAppPath  stringByAppendingPathComponent:@"app_demo/"],
        [jsAppPath  stringByAppendingPathComponent:@"mxjsbuilder_demo/"]
    ];
    
    //如果定义了PROJECT_DIR，需要根据自己的工程位置调整js_lib/的相对路径 ../mxflutter/js_lib/
    jsFramewrokPath = [PROJECT_DIR stringByAppendingPathComponent:@"../mxflutter/js_lib/"];
    
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

//示例代码，非运行mxflutter的必须代码，支持JS的MessageChannel例子
- (void)setupMessageChannelDemo{
    
    FlutterViewController* controller = (FlutterViewController*)self.window.rootViewController;
    
    self.listViewDemoChannel = [FlutterMethodChannel
                                methodChannelWithName:@"MXFlutter_MethodChannel_Demo"
                                binaryMessenger:controller.binaryMessenger];
    
    __weak AppDelegate *weakSelf = self;
    [self.listViewDemoChannel setMethodCallHandler:^(FlutterMethodCall * _Nonnull call, FlutterResult  _Nonnull result) {
        __strong AppDelegate *strongSelf = weakSelf;
        if (!strongSelf) {
            return;
        }
        
        if ([call.method isEqualToString:@"callNativeIconListRefresh"]) {
            
            //result(@[@1,@2,@3,@4]);
    
            NSURLSession *session = [NSURLSession sharedSession];
            NSURLSessionDataTask *task = [session dataTaskWithURL:[NSURL URLWithString:@"https://reactnative.dev/movies.json"] completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
                result(response.description);
            }];
            
            [task resume];
           
            
        } else if ([call.method isEqualToString:@"callNativeIconListLoadMore"]) {
            
            result(@{@"SomeStr":@"MethodCall",@"NumList":@[@4,@3,@2,@1]});
        }
        
    }];
}

@end
