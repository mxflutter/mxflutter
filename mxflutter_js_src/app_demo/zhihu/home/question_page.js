

//question_page.js 正式开始，😝

let {
    runApp,
    MXJSFlutterApp,
    MXJSWidgetState,
    MXJSStatefulWidget,
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
    NetworkImage,
    Icon,
    IconData,
    BorderDirectional,
    EdgeInsets,
    Column,
    FontWeight,
    PopupMenuButton,
    PopupMenuItem,
    SingleChildScrollView,
    MainAxisAlignment,
    Alignment,
    CircleAvatar,
    ButtonTextTheme,
    MaterialPageRoute,
    Navigator

} = require("js_flutter.js");

let {GlobalConfig} = require("./zhihu/global_config.js");
let {ReplyPage, Common} = require("./zhihu/home/reply_page.js");

class QuestionPage extends MXJSStatefulWidget {
    constructor(){
        super("QuestionPage");
    }
  
    createState() {
        return new QuestionPageState(this);
    }
}

class QuestionPageState extends MXJSWidgetState {
    
    build(context){
        let widget = new MaterialApp({
            // theme: GlobalConfig.themeData,
            home: new Scaffold({
                appBar: new AppBar({
                    title: Common.searchInput(context)
                }),
                body: new SingleChildScrollView({
                    child: new Column({
                        children: [
                            new Container({
                                child: new Row({
                                    children: [
                                        new Container({
                                            child: new FlatButton({onPressed: function(){}, child: new Text("物理学"), color: GlobalConfig.searchBackgroundColor}),
                                            height: 30.0,
                                            margin: EdgeInsets.only({right: 8.0})
                                        }),
                                        new Container({
                                            child: new FlatButton({onPressed: function(){}, child: new Text("三体(书籍)"), color: GlobalConfig.searchBackgroundColor}),
                                            height: 30.0,
                                            margin: EdgeInsets.only({right: 8.0})
                                        }),
                                        new Container({
                                            child: new FlatButton({onPressed: function(){}, child: new Text("脑洞(网络用语)"), color: GlobalConfig.searchBackgroundColor}),
                                            height: 30.0
                                        })
                                    ]
                                }),
                                padding: EdgeInsets.only({left: 16.0, top: 8.0, bottom: 8.0, right: 16.0}),
                                color: GlobalConfig.cardBackgroundColor
                            }),
                            new Container({
                                child: new Text("《三体》里的水滴有可能被制造出来吗?", {
                                    style: new TextStyle({fontWeight: FontWeight.bold, fontSize: 18.0, height: 1.3, color: Colors.black})
                                }),
                                padding: EdgeInsets.only({left: 16.0, bottom: 8.0, right: 16.0}),
                                alignment: Alignment.topLeft,
                                color: GlobalConfig.cardBackgroundColor
                            }),
                            new Container({
                                child: new Text(
                                    "如果，仅考虑其延长强相互作用力的特性，而不考虑其直角转弯的特性，那么水滴能被制造出来吗？换句话说，强相互作用力能够以影响微观物理量的方式延长吗？",{
                                    style: new TextStyle({height: 1.4, fontSize: 16.0, color: GlobalConfig.fontColor}), 
                                    textAlign: TextAlign.start
                                }),
                                padding: EdgeInsets.only({left: 16.0, right: 16.0, bottom: 8.0}),
                                decoration: new BoxDecoration({
                                    border: new BorderDirectional({
                                        bottom: new BorderSide({
                                            color:  Colors.black
                                        })
                                    }),
                                    color: GlobalConfig.cardBackgroundColor
                                })
                            }),
                            new Container({
                                child: new Row({
                                    children: [
                                        new Expanded({
                                            flex: 1,
                                            child: new Container({
                                                child: FlatButton.icon({
                                                    onPressed: function(){},
                                                    icon: new Icon(new IconData(0xe7f0, {fontFamily: 'MaterialIcons'})),
                                                    label: new Text("邀请回答"),
                                                    textTheme: ButtonTextTheme.accent
                                                }),
                                                decoration: new BoxDecoration({
                                                    border: new BorderDirectional({end: new BorderSide({color: Colors.black})})
                                                })
                                            })
                                        }),
                                        new Expanded({
                                            flex: 1,
                                            child: new Container({
                                                child: FlatButton.icon({
                                                    onPressed: function(){},
                                                    icon: new Icon(new IconData(0xe3ae, {fontFamily: 'MaterialIcons'})),
                                                    label: new Text("写回答"),
                                                    textTheme: ButtonTextTheme.accent
                                                }),
                                                decoration: new BoxDecoration({
                                                    border: new BorderDirectional({end: new BorderSide({color: Colors.black})})
                                                })
                                            })
                                        })
                                    ]
                                }),
                                decoration: new BoxDecoration({
                                  color: GlobalConfig.cardBackgroundColor
                                })
                            }),
                            new Container({
                                margin: EdgeInsets.only({top: 4.0, bottom: 4.0}),
                                child: new Row({
                                    children: [
                                        new Expanded({
                                        child: new Container({
                                            child: new Text("173个回答", {style: new TextStyle({color: GlobalConfig.fontColor})}),
                                            margin: EdgeInsets.only({left: 16.0})
                                        })
                                        }),
                                        new Expanded({
                                            child: new Container({
                                                child: new PopupMenuButton({
                                                    itemBuilder: function(context) {
                                                        let list = [
                                                            new PopupMenuItem({
                                                                value: '质量',
                                                                child: new Container({
                                                                    child: new Row({
                                                                        children: [
                                                                            new Text('按质量排序'),
                                                                            new Icon(new IconData(0xe5ca, {fontFamily: 'MaterialIcons'}), {color: Colors.blue})
                                                                        ]
                                                                    })
                                                                })
                                                            }),
                                                            new PopupMenuItem({
                                                                value: '时间',
                                                                child: new Text('按时间排序')
                                                            })
                                                        ];
                                                        return list;
                                                    }, 
                                                    child: new Container({
                                                        child: new Row({
                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                            children: [
                                                                new Text("按质量排序", {
                                                                    style: new TextStyle({color: GlobalConfig.fontColor})}),
                                                                new Icon(new IconData(0xe313, {fontFamily: 'MaterialIcons'}), {color: GlobalConfig.fontColor})
                                                            ]
                                                        })
                                                    })
                                                }),
                                                alignment: Alignment.centerRight
                                            })
                                        })
                                    ]
                                })
                            }),
                            new Container({
                                color: GlobalConfig.cardBackgroundColor,
                                margin: EdgeInsets.only({bottom: 5.0}),
                                child: new FlatButton({
                                    onPressed: function(){
                         
                                        Navigator.push(context, new MaterialPageRoute({
                                            builder: function (context) {
                                                return new ReplyPage;
                                            }
                                        }))
                                    },
                                    child: new Column({
                                        children: [
                                            new Container({
                                                child: new Row({
                                                    children: [
                                                        new Container({
                                                            child: new CircleAvatar({
                                                                backgroundImage: new NetworkImage("https://pic3.zhimg.com/fc4c1cb34c2901a1a8c05488bbd76fa2_xs.jpg"),
                                                                radius: 11.0
                                                            })
                                                        }),
                                                        new Text(" 游牧由", {style: new TextStyle({color: GlobalConfig.fontColor})})
                                                    ]
                                                }),
                                                padding: EdgeInsets.only({top: 10.0})
                                            }),
                                            new Container({
                                                child: new Text(
                                                    "第一，几年前我跟一个985211级别大学的物理类学科教授聊过这个问题。他很严肃的表示，使用强互作用力为工具在原子角度加工出这种水平的材料，对人类目前的物理...",{
                                                    style: new TextStyle({height: 1.3, color: GlobalConfig.fontColor})
                                                    }),
                                                margin: EdgeInsets.only({top: 6.0, bottom: 14.0}),
                                                alignment: Alignment.topLeft
                                            }),
                                            new Container({
                                                child: new Row({
                                                    children: [
                                                        new Expanded({
                                                            child: new Text("1K 赞同 · 262 评论 · 10 天前", {style: new TextStyle({color: GlobalConfig.fontColor})})
                                                        })
                                                    ]
                                                }),
                                                padding: EdgeInsets.only({bottom: 10.0})
                                            })
                                        ]
                                    })
                                })
                            })
                        ]
                    })
                })
            }),
        });
        return widget;
    }
}

module.exports = { QuestionPage };
