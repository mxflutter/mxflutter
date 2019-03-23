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

//replay_page.js 正式开始，😝

let {
    runApp,
    MXJSFlutterApp,
    MXJSWidget,
    MaterialApp,
    ThemeData,
    Scaffold,
    AppBar,
    Container,
    Row,
    FlatButton,
    Text,
    Expanded,
    TextStyle,
    Colors,
    AspectRatio,
    BoxDecoration,
    BorderSide,
    DecorationImage,
    NetworkImage,
    Rect,
    Border,
    BorderRadius,
    Radius,
    Color,
    TextField,
    Theme,
    Icon,
    IconData,
    IconButton,
    BorderDirectional,
    EdgeInsets,
    Column,
    FontWeight,
    PopupMenuButton,
    PopupMenuItem,
    SingleChildScrollView,
    InputDecoration,
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
    ButtonTextTheme,
  
} = jsFlutterRequire("js_flutter_ui.js");

let {GlobalConfig} = jsFlutterRequire("./zhihu/global_config.js");

class Common {
    static searchInput(context) {
        return new Container({
            child: new Row({
                children: [
                    new Container({
                        child: FlatButton.icon({
                            onPressed: function(){
                        
                            },
                            icon: new Icon(new IconData(0xe5c4, {fontFamily: 'MaterialIcons'}), {color: GlobalConfig.fontColor}),
                            label: new Text(""),
                        }),
                        width: 60.0,
                    }),
                    new Expanded({
                        child: new TextField({
                            decoration: InputDecoration.collapsed({
                                hintText: "搜索比乎内容",
                                hintStyle: new TextStyle({color: GlobalConfig.fontColor})
                            }),
                        }),
                    }),
                    new Container({
                        child: new IconButton({icon: new Icon(new IconData(0xe80d, {fontFamily: 'MaterialIcons'}), {color: GlobalConfig.fontColor}), 
                            onPressed: function(){}, 
                            padding: EdgeInsets.all(0.0),
                            iconSize: 18.0
                        }),
                    }),
                    new Container({
                        child: new IconButton({icon: new Icon(new IconData(0xe896, {fontFamily: 'MaterialIcons'}), {color: GlobalConfig.fontColor}), 
                            onPressed: function(){}, 
                            padding: EdgeInsets.all(0.0), 
                            iconSize: 18.0
                        }),
                    }),
                ],
            }),
            decoration: new BoxDecoration({
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                color: GlobalConfig.searchBackgroundColor,
            }),
            height: 36.0,
        });
    }
}

class ReplyPage extends MXJSWidget {
    constructor(){
        super("ReplyPage constructor");
    }

    build(context){
        let widget = new Text("知乎");
        return widget;
    }
}

module.exports = { ReplyPage, Common };


//测试代码，修改Widget name
//在VSCode 直接运行测试JS代码正确性,在app无任何效果
IDERunFileTestWidget(ReplyPage);

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