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

//pesto.js 正式开始，😝

let {
  MXJSLog,
  runApp,
  MXJSFlutterApp,
  MXJSWidget,
  Scaffold,
  Container,
  Color,
  Center,
  AppBar,
  Stack,
  Text,
  Icon,
  IconData,
  EdgeInsets,
  BottomNavigationBar,
  BottomNavigationBarItem,
  BottomNavigationBarType,
  Colors,
  Semantics,
  AnimationController,
  Duration,
  CurveTween,
  Interval,
  Curves,
  FadeTransition,
  SlideTransition,
  Tween,
  IconTheme,
  IconThemeData,
  Animation,
  Offset,
  BoxDecoration,
  Border,
  FlatButton,
  RaisedButton,
  FloatingActionButton,
  Column,
  Row,
  IconButton,
  DropdownButton,
  DropdownMenuItem,
  MainAxisAlignment,
  TextStyle,
  PopupMenuButton,
  PopupMenuItem,
  ButtonBar,
  MainAxisSize,
} = jsFlutterRequire("js_flutter_ui.js");


class JSEasyUIDemo extends MXJSWidget {

    constructor(){
        super();
        this.dropdownValue = 'three';
    }

    _buildButtons() {
        let widget = new Column({
            children:[
                new Row({
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        new FlatButton({
                            child: new Text("Flat Button"),
                            onPressed: function() {
                                MXJSLog.log('Flat Button Pressed');
                            },
                            // color: new Color(0x60000000),
                        }),
                        new RaisedButton({
                            child: new Text("Raised Button"),
                            onPressed: function() {
                                MXJSLog.log('Raised Button Pressed');
                            },
                            // color: new Color(0x60000000),
                        }),
                        new FloatingActionButton({
                            child: new Icon(new IconData(0xe145, {fontFamily: 'MaterialIcons'})),
                            tooltip: 'Floating Action Button',
                            onPressed: function() {
                                MXJSLog.log('Floating Action Button Pressed');
                            },
                        }),
                        new IconButton({
                            icon: new Icon(new IconData(0xe815, {fontFamily: 'MaterialIcons'})),
                            onPressed: function() {
                                MXJSLog.log('Icon Button Pressed');
                            },
                        }),
                    ],
                }),
                new Row({
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        new DropdownButton({
                            value: this.dropdownValue,
                            items: ['one', 'two', 'three', 'four'].map(function(value) {
                                return new DropdownMenuItem({
                                    value: value,
                                    child: new Text(value)
                                });
                            }),
                            onChanged: function(newValue) {
                                MXJSLog.log('Icon Button Pressed');
                                this.setState(function (){
                                    this.dropdownValue = newValue;
                                })
                            },
                        }),
                        new PopupMenuButton({
                            onSelected: function(args) {
                                MXJSLog.log('more button pressed, index ' + args);
                            },
                            itemBuilder: function(context) {
                                let list = [
                                    new PopupMenuItem({
                                        value: 1,
                                        child: new Text('App bar scrolls away'),
                                    }),
                                    new PopupMenuItem({
                                        value: 2,
                                        child: new Text('App bar stays away'),
                                    }),
                                    new PopupMenuItem({
                                        value: 3,
                                        child: new Text('App bar floats'),
                                    }),
                                    new PopupMenuItem({
                                        value: 4,
                                        child: new Text('App bar snaps'),
                                    }),
                                ];
                                return list;
                            },
                        }),
                        new ButtonBar({
                            mainAxisSize: MainAxisSize.min,
                            children:[
                                new RaisedButton({
                                    child: new Text('Button Bar 1'),
                                }),
                                new RaisedButton({
                                    child: new Text('Button Bar 2'),
                                }),
                            ]
                        }),
                    ],
                })
            ],
        });

        return widget;
    }

    build(context){
        let widget = new Scaffold({
            appBar: new AppBar({
                title: new Text('Easy UI'),
            }),
            body: new Column({
                children: [
                    new Text('Button', {
                        style: new TextStyle({
                            fontSize: 20.0,
                        })
                    }),
                    this._buildButtons(),
                ]
            }),
        });
        return widget;
    }
}

module.exports = { JSEasyUIDemo };


//测试代码，修改Widget name
//在VSCode 直接运行测试JS代码正确性,在app无任何效果
IDERunFileTestWidget(JSEasyUIDemo);

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