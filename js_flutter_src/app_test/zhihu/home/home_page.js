

//HomePage.js 正式开始，😝

let {
    runApp,
    MXJSFlutterApp,
    MXJSWidgetState,
    MXJSStatefulWidget,
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
    TabBarView
} = require("js_flutter_ui.js");

let {GlobalConfig} = require("./zhihu/global_config.js");
let {Follow} = require("./zhihu/home/follow.js");
let {Recommend} = require("./zhihu/home/recommend.js");
let {Hot} = require("./zhihu/home/hot.js");
let {SearchPage} = require("./zhihu/home/search_page.js");
let {AskPage} = require("./zhihu/home/ask_page.js");

class HomePage extends MXJSStatefulWidget {
    constructor(){
        super("HomePage", {key: "HomePage"});
    }
  
    createState() {
        return new HomePageState(this);
    }
}

class HomePageState extends MXJSWidgetState {
  
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
                                size: 16.0
                            }),
                            label: new Text("坚果R1摄像头损坏",{
                                style: new TextStyle({
                                    color: GlobalConfig.fontColor
                                })
                            })
                        })
                    }),
                    new Container({
                        decoration: new BoxDecoration({
                            border: new BorderDirectional({
                                start: new BorderSide({
                                    color: GlobalConfig.fontColor,
                                    width: 1.0
                                })
                            })
                        }),
                        height: 14.0,
                        width: 1.0
                    }),
                    new Container({
                        child: FlatButton.icon({
                            onPressed: function(){
                                this.navigatorPush(new AskPage);
                            },
                            icon: new Icon(new IconData(0xe22b, {fontFamily: 'MaterialIcons'}),{
                                color: GlobalConfig.fontColor,
                                size: 16.0
                            }),
                            label: new Text("提问", {
                                style: new TextStyle({
                                    color: GlobalConfig.fontColor
                                })
                            })
                        })
                    })
                ]
            }),
            decoration: new BoxDecoration({
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                color: GlobalConfig.searchBackgroundColor
            })
        })
    }

    build(context){
        let widget = new DefaultTabController({
            length: 3,
            child: new Scaffold({
                appBar: new AppBar({
                    title: this.barSearch(),
                    bottom: new TabBar({
                      labelColor: Colors.blue,
                      indicatorColor: Colors.blue,
                      unselectedLabelColor: Colors.black,
                      tabs: [
                        new Tab({text: "关注"}),
                        new Tab({text: "推荐"}),
                        new Tab({text: "热榜"})
                      ]
                    }),
                    backgroundColor: Colors.white
                }),
                body: new TabBarView({
                    children: [
                        new Follow(),
                        new Recommend(),
                        new Hot()
                    ]
                })
            })
        });
        return widget;
    }
}

module.exports = { HomePage };

