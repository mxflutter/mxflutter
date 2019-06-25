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

//pesto.js 正式开始，😝

let {
  runApp,
  MXJSFlutterApp,
  MXJSWidget,
  Scaffold,
  Container,
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
  Offset,
  BoxDecoration,
  Border,
} = jsFlutterRequire("js_flutter_ui.js");

class NavigationIconView {
    constructor({
        icon,
        activeIcon,
        title,
        color,
        vsync,
    } = {}) {
        this._icon = icon;
        this._title = title;
        this._color = color;
        this.item = new BottomNavigationBarItem({
            icon: icon,
            activeIcon: activeIcon,
            title: new Text(title),
            backgroundColor: color,
        });
        this.controller = new AnimationController({
            duration: new Duration({milliseconds: 200}),
            // vsync: vsync,
        });
        this._animation = this.controller.drive(new CurveTween({
            curve: new Interval(0.5, 1.0, {
                curve: Curves.fastOutSlowIn,
            })
        }));
    }
    
    transition(type, context) {
        var iconColor;
        if (type == BottomNavigationBarType.shifting) {
            iconColor = this._color;
        } else {
            let themeData = Theme.of(context);
            iconColor = themeData.brightness == Brightness.light ? themeData.primaryColor : themeData.accentColor;
        }
        
        return new FadeTransition({
            opacity: this._animation,
            child: new SlideTransition({
                position: this._animation.drive(new Tween({
                    begin: new Offset(0.0, 0.2),
                    end: new Offset(0.0, 0.0),  
                })),
                child: new IconTheme({
                    data: new IconThemeData({
                        color: iconColor,
                        size: 120.0
                    }),
                    child: new Semantics({
                        label: 'Placeholder for $this._title tab',
                        child: this._icon
                    })
                })
            }) 
        })
    }
}

class CustomIcon extends MXJSWidget {
    build(context) {
        /// TODO:
        let iconThemeData = IconTheme.of(context);
        return new Container({
            margin: EdgeInsets.all(4.0),
            width: iconThemeData.size - 8.0,
            height: iconThemeData.size - 8.0,
            color: iconThemeData.color,
        }); 
    }
}

class CustomInactiveIcon extends MXJSWidget {
    build(context) {
        /// TODO:
        let iconThemeData = IconTheme.of(context);
        return new Container({
            margin: EdgeInsets.all(4.0),
            width: iconThemeData.size - 8.0,
            height: iconThemeData.size - 8.0,
            decoration: new BoxDecoration({
                border: Border.all({
                    color: iconThemeData.color,
                    width: 2.0
                })
            }),
        }); 
    }
}

class JSBottomNavigationDemo extends MXJSWidget {
    constructor () {
        super();
        this._currentIndex = 0;
        this._type = BottomNavigationBarType.shifting;
        this._navigationViews = [];
    }

    initState() {
        // this._navigationViews = [
        //     new NavigationIconView({
        //         icon: new Icon(new IconData(0xe190, {fontFamily: 'MaterialIcons'})),
        //         title: 'Alarm',
        //         color: Colors.deepPurple(),
        //         vsync: this,
        //     }),
        //     new NavigationIconView({
        //         activeIcon: new CustomIcon(),
        //         icon: new CustomInactiveIcon(),
        //         title: 'Box',
        //         color: Colors.deepOrange(),
        //         vsync: this,
        //     }),
        //     new NavigationIconView({
        //         activeIcon: new Icon(new IconData(0xe2bd, {fontFamily: 'MaterialIcons'})),
        //         icon: new Icon(new IconData(0xe2c2, {fontFamily: 'MaterialIcons'})),
        //         title: 'Cloud',
        //         color: Colors.teal(),
        //         vsync: this,
        //     }),
        //     new NavigationIconView({
        //         activeIcon: new Icon(new IconData(0xe87d, {fontFamily: 'MaterialIcons'})),
        //         icon: new Icon(new IconData(0xe87e, {fontFamily: 'MaterialIcons'})),
        //         title: 'Favorites',
        //         color: Colors.indigo(),
        //         vsync: this,
        //     }),
        //     new NavigationIconView({
        //         icon: new Icon(new IconData(0xe614, {fontFamily: 'MaterialIcons'})),
        //         title: 'Event',
        //         color: Colors.pink(),
        //         vsync: this,
        //     }),
        // ];
        
        // this._navigationViews[this._currentIndex].controller.value = 1.0;
    }

    dispose(){
        this._navigationViews.map(function(view) {
            view.controller.dispose();
        })
    }

    _buildTransitionsStack(context) {
        var transitions = [];
        for(var i = 0; i < this._navigationViews.length; i++){
            transitions.push(this._navigationViews[i].transition(this._type, context));
        }

        transitions.sort(function (a, b) {
            let aAnimation = a.opacity;
            let bAnimation = b.opacity;
            let aValue = aAnimation.value;
            let bValue = bAnimation.value;
            return aValue < bValue;
        });

        return new Stack({
            children: transitions
        });
    }
    
    build(context){
        this._navigationViews = [
            new NavigationIconView({
                icon: new Icon(new IconData(0xe190, {fontFamily: 'MaterialIcons'})),
                title: 'Alarm',
                color: Colors.deepPurple(),
                // vsync: this,
            }),
            new NavigationIconView({
                activeIcon: new CustomIcon(),
                icon: new CustomInactiveIcon(),
                title: 'Box',
                color: Colors.deepOrange(),
                // vsync: this,
            }),
            new NavigationIconView({
                activeIcon: new Icon(new IconData(0xe2bd, {fontFamily: 'MaterialIcons'})),
                icon: new Icon(new IconData(0xe2c2, {fontFamily: 'MaterialIcons'})),
                title: 'Cloud',
                color: Colors.teal(),
                // vsync: this,
            }),
            new NavigationIconView({
                activeIcon: new Icon(new IconData(0xe87d, {fontFamily: 'MaterialIcons'})),
                icon: new Icon(new IconData(0xe87e, {fontFamily: 'MaterialIcons'})),
                title: 'Favorites',
                color: Colors.indigo(),
                // vsync: this,
            }),
            new NavigationIconView({
                icon: new Icon(new IconData(0xe614, {fontFamily: 'MaterialIcons'})),
                title: 'Event',
                color: Colors.pink(),
                // vsync: this,
            }),
        ];
        
        this._navigationViews[this._currentIndex].controller.value = 1.0;

        let botNavBar = new BottomNavigationBar({
            items:this._navigationViews.map(function(navigationView) {
                return navigationView.item;
            }),
            currentIndex: this._currentIndex,
            type: this._type,
            onTap: function(args) {
                this.setState(function() {
                    var index = args;
                    this._navigationViews[this._currentIndex].controller.reverse();
                    this._currentIndex = index;
                    this._navigationViews[this._currentIndex].controller.forward();
                });
            }
        });

        let widget = new Scaffold({
            appBar: new AppBar({
                title: new Text('Bottom Navigation'),
            }),
            body: new Center({
                child : this._buildTransitionsStack(context),
            }),
            bottomNavigationBar: botNavBar,
        });
        return widget;
    }
}

module.exports = { JSBottomNavigationDemo };


//测试代码，修改Widget name
//在VSCode 直接运行测试JS代码正确性,在app无任何效果
IDERunFileTestWidget(JSBottomNavigationDemo);

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