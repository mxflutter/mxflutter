//VSCode Run support=====================================================================================
//为便于在JS IDE如VSCode，webStorm里脱离APP环境执行JS，以快速验证JS代码正确性
//用g_isNativeEnvironment检查是否在App环境，
//如果不在App环境，Native接口重定向到JS同名函数打印调用
//jsFlutterRequire 转调Node运行环境中的require
//真是为了JS菜鸟就是我 操碎了心
//如果不能运行，核对下js_ide_node_run_support.js文件中jsFlutterLibDir 相对路径
//新建文件拷贝这个头
let g_isNativeEnvironment = typeof JSAPI_require != "undefined" ? true : false;
function jsFlutterRequire(file) {
  if (!g_isNativeEnvironment) {
    console.log("[JS]-MXJSFlutter:: jsFlutterRequire", ...arguments);
    let { calcJSFrameworkFilePath } = require("./js_ide_node_run_support.js");
    return require(calcJSFrameworkFilePath(file));
  }
    return mxRequire(file);
}
//VSCode Run support end ================================================================================

//HomePage.js 正式开始，😝

let {
  runApp,
  MXJSFlutterApp,
  MXJSWidget,
  Scaffold,
  Text,
  Theme,
  EdgeInsets,
  Column,
  SizedBox,
  Card,
  CrossAxisAlignment,
  MainAxisAlignment,
  Align,
  Center,
  Image,
  Alignment,
  CircleAvatar,
  DefaultTabController,
  NestedScrollView,
  SliverOverlapAbsorber,
  SliverAppBar,
  TabBar,
  Tab,
  TabBarView,
  SafeArea,
  Builder,
  CustomScrollView,
  SliverChildBuilderDelegate,
  SliverOverlapInjector,
  SliverPadding,
  SliverFixedExtentList,
  Padding,
  
} = jsFlutterRequire("js_flutter_ui.js");

class HomePage extends MXJSWidget {
    constructor(){
        super("HomePage constructor");
    }

    build(context){
        let widget = new Text("知乎");
        return widget;
    }
}

module.exports = { HomePage };


//测试代码，修改Widget name
//在VSCode 直接运行测试JS代码正确性,在app无任何效果
IDERunFileTestWidget(HomePage);

//拷贝一份到目标文件
function IDERunFileTestWidget(TestPage) {
    if (g_isNativeEnvironment) {
        return;
    }
    class AppTest extends MXJSFlutterApp {
        constructor() {
            super("app_test", "initRouteName");
        }

        //子类重写
        //flutter->js 用于路由跳转
        //return MXJSWidget subclass
        createJSWidgetWithName(pageName) {
            let w = new TestPage;
            return w;
        }
    }

    let app = new AppTest;
    runApp(app);

    app.runWithPageName();
};