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

//index.js 正式开始，😝

let {
  runApp,
  MXJSFlutterApp,
  MXJSWidget,
  MaterialApp,
  Scaffold,
  Text,
  Icon,
  IconData,
  Center,
  BottomNavigationBarItem,
  AnimationController,
  Duration,
  BottomNavigationBar,
  BottomNavigationBarType,
  Colors,
} = jsFlutterRequire("js_flutter_ui.js");

let {GlobalConfig} = jsFlutterRequire("./zhihu/global_config.js");
let {HomePage} = jsFlutterRequire("./zhihu/home/home_page.js");
let {MyPage} = jsFlutterRequire("./zhihu/my/my_page.js");
let {IdeaPage} = jsFlutterRequire("./zhihu/idea/idea_page.js");
let {MessagePage} = jsFlutterRequire("./zhihu/message/message_page.js");

class _NavigationIconView {
    constructor({
        icon, title, vsync
    }) {
        this.item = new BottomNavigationBarItem({
            icon: icon,
            title: title,
        });
        this.controller = new AnimationController({
            duration: new Duration({
                milliseconds: 200,
            })
        });
    }
}

class Index extends MXJSWidget {
    constructor(){
        super('Index');
        this._currentIndex = 0;
        this._navigationViews = [];
        this._pageList = [];
        this._currentPage = null;
    }

    build(context){
        this._navigationViews = [
            new _NavigationIconView({
              icon: new Icon(new IconData(0xe85d, {fontFamily: 'MaterialIcons'})),
              title: new Text("首页"),
            }),
            new _NavigationIconView({
              icon: new Icon(new IconData(0xeb3d, {fontFamily: 'MaterialIcons'})),
              title: new Text("想法"),
            }),
            new _NavigationIconView({
              icon: new Icon(new IconData(0xe003, {fontFamily: 'MaterialIcons'})),
              title: new Text("通知"),
            }),
            new _NavigationIconView({
              icon: new Icon(new IconData(0xe8a6, {fontFamily: 'MaterialIcons'})),
              title: new Text("我的"),
            }),
        ];

        this._pageList = [
            new HomePage(),
            new IdeaPage(),
            new MessagePage(),
            new MyPage(),
        ];

        this._currentPage = this._pageList[this._currentIndex];

        let widget = new MaterialApp({
            home: new Scaffold({
                body: new Center({
                    child: this._currentPage,
                }),
                bottomNavigationBar: new BottomNavigationBar({
                    items: this._navigationViews.map(navigationIconView => navigationIconView.item),
                    currentIndex: this._currentIndex,
                    fixedColor: Colors.blue(),
                    type: BottomNavigationBarType.fixed,
                    onTap: function(index) {
                        this.setState(function() {
                            this._navigationViews[this._currentIndex].controller.reverse();
                            this._currentIndex = index;
                            this._navigationViews[this._currentIndex].controller.forward();
                            this._currentPage = this._pageList[this._currentIndex];
                        })
                    },
                }),
                // theme: GlobalConfig.themeData,
            })
        });
        return widget;
    }
}

module.exports = {Index};


//测试代码，修改Widget name
//在VSCode 直接运行测试JS代码正确性,在app无任何效果
IDERunFileTestWidget(Index);

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