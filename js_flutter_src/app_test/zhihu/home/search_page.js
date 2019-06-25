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

//search_page.js 正式开始，😝

let {
    runApp,
    MXJSFlutterApp,
    MXJSWidget,
    MaterialApp,
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
    TextField,
    Icon,
    IconData,
    BorderDirectional,
    EdgeInsets,
    Column,
    FontWeight,
    SingleChildScrollView,
    InputDecoration,
    Alignment,
    Chip,
    InputBorder,
} = jsFlutterRequire("js_flutter_ui.js");

let {GlobalConfig} = jsFlutterRequire("./zhihu/global_config.js");

class SearchPage extends MXJSWidget {
    constructor(){
        super("SearchPage");
    }

    searchInput() {
        return new Container({
            child: new Row({
                children: [
                    new Container({
                            child: FlatButton.icon({
                                onPressed: function(){
                                    this.navigatorPop();
                                },
                                icon: new Icon(new IconData(0xe5c4, {fontFamily: 'MaterialIcons'}), {color: GlobalConfig.fontColor}),
                                label: new Text(""),
                            }),
                            width: 60.0,
                    }),
                    new Expanded({
                        child: new TextField({
                            autofocus: true,
                            decoration: InputDecoration.collapsed({
                                hintText: "搜索比乎内容",
                                border: InputBorder.none,
                                hintStyle: new TextStyle({color: GlobalConfig.fontColor})
                            }),
                        }),
                    }),
                ],
            }),
            decoration: new BoxDecoration({
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                color: GlobalConfig.searchBackgroundColor
            }),
        });
    }

    build(context){
        let widget = new MaterialApp({
            // theme: GlobalConfig.themeData,
            home: new Scaffold({
                appBar: new AppBar({
                    title: this.searchInput(),
                }),
                body: new SingleChildScrollView({
                    child: new Column({
                        children: [
                            new Container({
                                child: new Text("比乎热搜", {
                                    style: new TextStyle({
                                        fontWeight: FontWeight.bold, 
                                        fontSize: 16.0
                                    }),
                                }),
                                margin: EdgeInsets.only({
                                    top: 16.0,
                                    left: 16.0, 
                                    bottom: 16.0
                                }),
                                alignment: Alignment.topLeft,
                            }),
                            new Row({
                                children: [
                                    new Container({
                                        child: new Chip({
                                            label: new FlatButton({
                                                onPressed: function(){}, 
                                                child: new Text("汽车关税下调", {
                                                    style: new TextStyle({color: GlobalConfig.fontColor}),
                                                })
                                            }),
                                            backgroundColor: Colors.black12(),
                                        }),
                                        margin: EdgeInsets.only({left: 16.0, bottom: 16.0}),
                                        alignment: Alignment.topLeft,
                                    }),
                                    new Container({
                                        child: new Chip({
                                            label: new FlatButton({
                                                onPressed: function(){}, 
                                                child: new Text("李彦宏传闻辟谣", {
                                                    style: new TextStyle({color: GlobalConfig.fontColor})
                                                })
                                            }),
                                            backgroundColor: Colors.black12(),
                                        }),
                                        margin: EdgeInsets.only({left: 16.0, bottom: 16.0}),
                                        alignment: Alignment.topLeft,
                                    }),
                                ],
                            }),
                            new Row({
                                children: [
                                    new Container({
                                        child: new Chip({
                                            label: new FlatButton({
                                                onPressed: function(){}, 
                                                child: new Text("小米8", {
                                                    style: new TextStyle({color: GlobalConfig.fontColor})
                                                })
                                            }),
                                            backgroundColor: Colors.black12(),
                                        }),
                                        margin: EdgeInsets.only({left: 16.0, bottom: 16.0}),
                                        alignment: Alignment.topLeft,
                                    }),
                                    new Container({
                                        child: new Chip({
                                            label: new FlatButton({
                                                onPressed: function(){}, 
                                                child: new Text("超时空同居", {
                                                    style: new TextStyle({color: GlobalConfig.fontColor})
                                                })
                                            }),
                                            backgroundColor: Colors.black12(),
                                        }),
                                        margin: EdgeInsets.only({left: 16.0, bottom: 16.0}),
                                        alignment: Alignment.topLeft,
                                    }),
                                ],
                            }),
                            new Container({
                                child: new Text("搜索历史", {
                                    style: new TextStyle({
                                        fontWeight: FontWeight.bold, 
                                        fontSize: 16.0
                                    }),
                                }),
                                margin: EdgeInsets.only({left: 16.0, bottom: 16.0}),
                                alignment: Alignment.topLeft,
                            }),
                            new Container({
                                child: new Row({
                                    children: [
                                        new Container({
                                        child: new Icon(new IconData(0xe192, {fontFamily: 'MaterialIcons'}), {color: GlobalConfig.fontColor, size: 16.0}),
                                        margin: EdgeInsets.only({right: 12.0}),
                                        }),
                                        new Expanded({
                                        child: new Container({
                                                child: new Text("业余兴趣", {
                                                    style: new TextStyle({color: GlobalConfig.fontColor, fontSize: 14.0}),
                                                }),
                                            }),
                                        }),
                                        new Container({
                                            child: new Icon(new IconData(0xe14c, {fontFamily: 'MaterialIcons'}), {color: GlobalConfig.fontColor, size: 16.0}),
                                        }),
                                    ],
                                }),
                                margin: EdgeInsets.only({left: 16.0, right: 16.0, bottom: 10.0}),
                                padding: EdgeInsets.only({bottom: 10.0}),
                                decoration: new BoxDecoration({
                                    border: new BorderDirectional({bottom: new BorderSide({color: Colors.black12()})})
                                }),
                            }),
                            new Container({
                                child: new Row({
                                  children: [
                                        new Container({
                                            child: new Icon(new IconData(0xe192, {fontFamily: 'MaterialIcons'}), {color: GlobalConfig.fontColor, size: 16.0}),
                                            margin: EdgeInsets.only({right: 12.0}),
                                        }),
                                        new Expanded({
                                            child: new Container({
                                                child: new Text("三体", {style: new TextStyle({color: GlobalConfig.fontColor, fontSize: 14.0}),}),
                                            }),
                                        }),
                                        new Container({
                                            child: new Icon(new IconData(0xe14c, {fontFamily: 'MaterialIcons'}), {color: GlobalConfig.fontColor, size: 16.0}),
                                        })
                                    ],
                                }),
                                margin: EdgeInsets.only({left: 16.0, right: 16.0, bottom: 10.0}),
                                padding: EdgeInsets.only({bottom: 10.0}),
                                decoration: new BoxDecoration({
                                    border: new BorderDirectional({bottom: new BorderSide({color: Colors.black12()})})
                                }),
                            }),
                            new Container({
                                child: new Row({
                                    children: [
                                        new Container({
                                            child: new Icon(new IconData(0xe192, {fontFamily: 'MaterialIcons'}), {color: GlobalConfig.fontColor, size: 16.0}),
                                            margin: EdgeInsets.only({right: 12.0}),
                                        }),
                                        new Expanded({
                                            child: new Container({
                                                child: new Text("人类未来", {style: new TextStyle({color: GlobalConfig.fontColor, fontSize: 14.0}),}),
                                            }),
                                        }),
                                        new Container({
                                            child: new Icon(new IconData(0xe14c, {fontFamily: 'MaterialIcons'}), {color: GlobalConfig.fontColor, size: 16.0}),
                                        })
                                     ],
                                }),
                                margin: EdgeInsets.only({left: 16.0, right: 16.0, bottom: 10.0}),
                                padding: EdgeInsets.only({bottom: 10.0}),
                                decoration: new BoxDecoration({
                                    border: new BorderDirectional({bottom: new BorderSide({color: Colors.black12()})})
                                }),
                            }),
                        ],
                    }),
                }),
            }),
        });
        return widget;
    }
}

module.exports = { SearchPage };


//测试代码，修改Widget name
//在VSCode 直接运行测试JS代码正确性,在app无任何效果
IDERunFileTestWidget(SearchPage);

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