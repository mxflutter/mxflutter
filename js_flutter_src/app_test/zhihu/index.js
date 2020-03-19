
let {
  runApp,
  MXJSFlutterApp,
  MXJSStatefulWidget,
  MXJSWidgetState,
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
  Colors
} = require("js_flutter.js");

let {GlobalConfig} = require("./zhihu/global_config.js");
let {HomePage} = require("./zhihu/home/home_page.js");
let {MyPage} = require("./zhihu/my/my_page.js");
let {IdeaPage} = require("./zhihu/idea/idea_page.js");
let {MessagePage} = require("./zhihu/message/message_page.js");

class _NavigationIconView {
    constructor({
        icon, title, vsync
    }) {
        this.item = new BottomNavigationBarItem({
            icon: icon,
            title: title
        });
        this.controller = new AnimationController({
            duration: new Duration({
                milliseconds: 200
            })
        });
    }
}

class Index extends MXJSStatefulWidget {
    constructor() {
        super('Index');
    }
  
    createState() {
        return new IndexState(this);
    }
}

class IndexState extends MXJSWidgetState {
    constructor(){
        super();

        this._currentIndex = 0;
        this._navigationViews = [];
        this._pageList = [];
        this._currentPage = null;
    }

    build(context){
        this._navigationViews = [
            new _NavigationIconView({
              icon: new Icon(new IconData(0xe85d, {fontFamily: 'MaterialIcons'})),
              title: new Text("首页")
            }),
            new _NavigationIconView({
              icon: new Icon(new IconData(0xeb3d, {fontFamily: 'MaterialIcons'})),
              title: new Text("想法")
            }),
            new _NavigationIconView({
              icon: new Icon(new IconData(0xe003, {fontFamily: 'MaterialIcons'})),
              title: new Text("通知")
            }),
            new _NavigationIconView({
              icon: new Icon(new IconData(0xe8a6, {fontFamily: 'MaterialIcons'})),
              title: new Text("我的")
            }),
        ];

        this._pageList = [
            new HomePage(),
            new IdeaPage(),
            new MessagePage(),
            new MyPage()
        ];

        this._currentPage = this._pageList[this._currentIndex];

        let widget = new MaterialApp({
            home: new Scaffold({
                body: new Center({
                    child: this._currentPage
                }),
                bottomNavigationBar: new BottomNavigationBar({
                    items: this._navigationViews.map(navigationIconView => navigationIconView.item),
                    currentIndex: this._currentIndex,
                    fixedColor: Colors.blue,
                    type: BottomNavigationBarType.fixed,
                    onTap: function(index) {
                        this.setState(function() {
                            this._navigationViews[this._currentIndex].controller.reverse();
                            this._currentIndex = index;
                            this._navigationViews[this._currentIndex].controller.forward();
                            this._currentPage = this._pageList[this._currentIndex];
                        }.bind(this))
                    }.bind(this)
                })
                // theme: GlobalConfig.themeData,
            })
        });
        return widget;
    }
}

module.exports = {Index};

