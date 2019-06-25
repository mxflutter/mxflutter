//VSCode Run support=====================================================================================
//为便于在JS IDE如VSCode，webStorm里脱离APP环境执行JS，以快速验证JS代码正确性
//用g_isNativeEnvironment检查是否在App环境，
//如果不在App环境，Native接口重定向到JS同名函数打印调用
//jsFlutterRequire 转调Node运行环境中的require
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
    AppBar,
    Container,
    Row,
    FlatButton,
    Text,
    Expanded,
    TextStyle,
    Colors,
    BoxDecoration,
    BorderSide,
    BorderRadius,
    Radius,
    Icon,
    IconData,
    BorderDirectional,
    DefaultTabController,
    TabBar,
    Tab,
    TabBarView,
} = jsFlutterRequire("js_flutter_ui.js");

let {GlobalConfig} = jsFlutterRequire("./zhihu/global_config.js");
let {Follow} = jsFlutterRequire("./zhihu/home/follow.js");
let {Recommend} = jsFlutterRequire("./zhihu/home/recommend.js");
let {Hot} = jsFlutterRequire("./zhihu/home/hot.js");
let {SearchPage} = jsFlutterRequire("./zhihu/home/search_page.js");
let {AskPage} = jsFlutterRequire("./zhihu/home/ask_page.js");

class HomePage extends MXJSWidget {
    constructor(){
        super("HomePage", {key: "HomePage"});
    }

    barSearch(){
        return new Container({
            child: new Row({
                children: [
                    new Expanded({
                        child: FlatButton.icon({
                            onPressed:function(){
                                this.navigatorPush(new SearchPage);
                            },
                            icon: new Icon(new IconData(0xe8b6, {fontFamily: 'MaterialIcons'}),{
                                color: GlobalConfig.fontColor,
                                size: 16.0,
                            }),
                            label: new Text("坚果R1摄像头损坏",{
                                style: new TextStyle({
                                    color: GlobalConfig.fontColor,
                                }),
                            }),
                        }),
                    }),
                    new Container({
                        decoration: new BoxDecoration({
                            border: new BorderDirectional({
                                start: new BorderSide({
                                    color: GlobalConfig.fontColor,
                                    width: 1.0,
                                },)
                            }),
                        }),
                        height: 14.0,
                        width: 1.0,
                    }),
                    new Container({
                        child: FlatButton.icon({
                            onPressed: function(){
                                this.navigatorPush(new AskPage);
                            },
                            icon: new Icon(new IconData(0xe22b, {fontFamily: 'MaterialIcons'}),{
                                color: GlobalConfig.fontColor,
                                size: 16.0,
                            }),
                            label: new Text("提问", {
                                style: new TextStyle({
                                    color: GlobalConfig.fontColor,
                                }),
                            }),
                        }),
                    }),
                ],
            }),
            decoration: new BoxDecoration({
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                color: GlobalConfig.searchBackgroundColor,
            }),
        })
    }

    build(context){
        let widget = new DefaultTabController({
            length: 3,
            child: new Scaffold({
                appBar: new AppBar({
                    title: this.barSearch(),
                    bottom: new TabBar({
                      labelColor: Colors.blue(),
                      indicatorColor: Colors.blue(),
                      unselectedLabelColor: Colors.black(),
                      tabs: [
                        new Tab({text: "关注"}),
                        new Tab({text: "推荐"}),
                        new Tab({text: "热榜"}),
                      ],
                    }),
                    backgroundColor: Colors.white(),
                }),
                body: new TabBarView({
                    children: [
                        new Follow(),
                        new Recommend(),
                        new Hot(),
                    ]
                }),
            }),
        });
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