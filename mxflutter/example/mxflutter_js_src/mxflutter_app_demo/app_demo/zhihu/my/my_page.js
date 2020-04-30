

//my_page.js 正式开始，😝

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
    AspectRatio,
    BoxDecoration,
    BorderSide,
    DecorationImage,
    NetworkImage,
    Rect,
    BorderRadius,
    Radius,
    Color,
    Icon,
    IconData,
    BorderDirectional,
    EdgeInsets,
    Column,
    SingleChildScrollView,
    MainAxisAlignment,
    Align,
    Alignment,
    CircleAvatar,
    ListTile,
    MediaQuery,
    Axis,
    Key,
    MaterialPageRoute,
    Navigator
  
} = require("js_flutter.js");

let {GlobalConfig} = require("./zhihu/global_config.js");
let {SearchPage} = require("./zhihu/home/search_page.js");

class MyPage extends MXJSStatefulWidget {
    constructor(){
        super("MyPage", {key: new Key("MyPage")});
    }
    createState() {
        return new MyPageState(this);
    }
}

class MyPageState extends MXJSWidgetState {
    
    barSearch(){
        return new Container({
            child: new FlatButton({
                onPressed: function(){
      
                    Navigator.push(context, new MaterialPageRoute({
                        builder: function (context) {
                            return new SearchPage;
                        }
                    }))
                },
                child: new Row({
                    children: [
                        new Container({
                            child: new Icon(new IconData(0xe8b6, {fontFamily: 'MaterialIcons'}), {
                                size: 18.0,
                                color: GlobalConfig.fontColor
                            }),
                            margin: EdgeInsets.only({right: 26.0})
                        }),
                        new Expanded({
                            child: new Container({
                                child: new Text("搜索知乎内容", {
                                    style: new TextStyle({
                                        color: GlobalConfig.fontColor
                                    })
                                })
                            })
                        }),
                        new Container({
                            child: new FlatButton({
                                onPressed: function(){},
                                child: new Icon(new IconData(0xe8c4, {fontFamily: 'MaterialIcons'}),{
                                    color: GlobalConfig.fontColor,
                                    size: 18.0
                                })
                            }),
                            width: 40.0
                        })
                    ]
                })
            }),
            decoration: new BoxDecoration({
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                color: GlobalConfig.searchBackgroundColor
            })
        });
    }

    infoCardDescItem(context, count, desc, showSeparator){
        return new Row({
            children: [
                new Container({
                    width: (MediaQuery.of(context).size.width - 6.0) / 4,
                    child: new FlatButton ({
                        onPressed: function(){},
                        child: new Container({
                          height: 50.0,
                          child: new Column({
                                children: [
                                    new Container({
                                        child: new Text(count, {style:new TextStyle({fontSize: 16.0, color: GlobalConfig.fontColor})})
                                    }),
                                    new Container({
                                        child: new Text(desc, {style: new TextStyle({fontSize: 12.0, color: GlobalConfig.fontColor})})
                                    })
                                ]
                            })
                        })
                    })
                }),
                showSeparator ? new Container({
                    height: 14.0,
                    width: 1.0,
                    decoration: new BoxDecoration({
                        border: new BorderDirectional({
                            start: new BorderSide({color: Colors.black12, width: 1.0})
                        })
                    })
                })  : new Container(),
            ] 
        })
    }

    infoCard(context){
        return new Container({
            color: GlobalConfig.cardBackgroundColor,
            margin: EdgeInsets.only({top: 10.0, bottom: 6.0}),
            padding: EdgeInsets.only({top: 12.0, bottom: 8.0}),
            child: new Column({
                children: [
                    new Container({
                        margin: EdgeInsets.only({left: 16.0, right: 16.0, bottom: 16.0}),
                        decoration: new BoxDecoration({
                            color: new Color(0xFFF5F5F5),
                            borderRadius: BorderRadius.all(Radius.circular(6.0))
                        }),
                        child: new FlatButton({
                            onPressed: function(){},
                            child: new Container({
                                child: new ListTile({
                                    leading: new Container({
                                        child: new CircleAvatar({
                                            backgroundImage: new NetworkImage("https://pic1.zhimg.com/v2-ec7ed574da66e1b495fcad2cc3d71cb9_xl.jpg"),
                                            radius: 20.0
                                        })
                                    }),
                                    title: new Container({
                                        margin: EdgeInsets.only({bottom: 2.0}),
                                        child: new Text("learner")
                                    }),
                                    subtitle: new Container({
                                        margin: EdgeInsets.only({top: 2.0}),
                                        child: new Text("查看或编辑个人主页")
                                    })
                                })
                            })
                        })
                    }),
                    new Container({
                        child: new Row({
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                this.infoCardDescItem(context, "57", "我的创作", true),
                                this.infoCardDescItem(context, "210", "关注", true),
                                this.infoCardDescItem(context, "18", "我的收藏", true),
                                this.infoCardDescItem(context, "33", "最近浏览", false)
                            ]
                        })
                    })
                ]
            })
        })
    }

    serviceCardDescItem(context, iconDataValue, desc, bgColor){
        return new Container({
            width: MediaQuery.of(context).size.width / 4,
            child: new FlatButton({
                onPressed: function(){},
                child: new Container({
                    child: new Column({
                        children: [
                            new Container({
                                margin: EdgeInsets.only({bottom: 6.0}),
                                child: new CircleAvatar({
                                    radius: 20.0,
                                    child: new Icon(new IconData(iconDataValue, {fontFamily: 'MaterialIcons'}), {color: Colors.white}),
                                    backgroundColor: bgColor
                                })
                            }),
                            new Container({
                                child: new Text(desc, {style: new TextStyle({color: GlobalConfig.fontColor, fontSize: 14.0})})
                            })
                        ]
                    })
                })
            })
        });
    }

    serviceCard(context){
        return new Container({
            color: GlobalConfig.cardBackgroundColor,
            margin: EdgeInsets.only({top: 6.0, bottom: 6.0}),
            padding: EdgeInsets.only({top: 12.0, bottom: 8.0}),
            child: new Column({
                children: [
                    new Container({
                        child: new Row({
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                this.serviceCardDescItem(context, 0xe865, "我的书架", Colors.green),
                                this.serviceCardDescItem(context, 0xe3e7, "我的Live", Colors.blue),
                                this.serviceCardDescItem(context, 0xeb44, "私家课", new Color(0xFFA68F52)),
                                this.serviceCardDescItem(context, 0xe227, "付费咨询", new Color(0xFF355A9B))
                            ]
                        })
                    }),
                    new Container({
                        margin: EdgeInsets.only({top: 16.0}),
                        child: new Row({
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                                this.serviceCardDescItem(context, 0xe8c9, "已购", new Color(0xFF088DB4)),
                                this.serviceCardDescItem(context, 0xe03e, "余额礼卷", Colors.blue),
                                this.serviceCardDescItem(context, 0xe1e2, "服务", new Color(0xFF029A3F))
                            ]
                        })
                    })
                ]
            })
        })
    }

    settingCard(context){
        return new Container({
            color: GlobalConfig.cardBackgroundColor,
            margin: EdgeInsets.only({top: 6.0, bottom: 6.0}),
            padding: EdgeInsets.only({top: 12.0, bottom: 8.0}),
            child: new Row({
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    this.serviceCardDescItem(context, 0xe891, "社区建设", new Color(0xFFB88800)),
                    this.serviceCardDescItem(context, 0xeb45, "反馈", new Color(0xFF63616D)),
                    this.serviceCardDescItem(context, 0xe3a7, "夜间模式", new Color(0xFFB86A0D)),
                    this.serviceCardDescItem(context, 0xe8a4, "设置", new Color(0xFF636269))
                ]
            })
        })
    }

    videoCardHeader(context, title, iconDataValue, colorValue, nextActionTitle){
        return new Container({
            margin: EdgeInsets.only({left: 16.0, bottom: 20.0}),
            child: new Row({
                children: [
                    new Container({
                        child: new CircleAvatar({
                            radius: 20.0,
                            child: new Icon(new IconData(iconDataValue, {fontFamily: 'MaterialIcons'}), {color: Colors.white}),
                            backgroundColor: new Color(colorValue)
                        })
                    }),
                    new Expanded({
                        child: new Container({
                            margin: EdgeInsets.only({left: 8.0}),
                            child: new Text(title, {style: new TextStyle({fontSize: 18.0})})
                        })
                    }),
                    new Container({
                        child: new FlatButton({
                            onPressed: function(){},
                            child: new Text(nextActionTitle, {style: new TextStyle({color: Colors.blue})})
                        })
                    })
                ]
            })
        });
    }

    videoCardItem(context, imgUrl){
        return new Container({
            width: MediaQuery.of(context).size.width / 2.5,
            margin: EdgeInsets.only({right: 6.0}),
            child: new AspectRatio({
                aspectRatio: 4.0 / 2.0,
                child: new Container({
                    foregroundDecoration:new BoxDecoration({
                        image: new DecorationImage({
                            image: new NetworkImage(imgUrl),
                            centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0)
                        }),
                        borderRadius: BorderRadius.all(Radius.circular(6.0))
                    })
                })
            })
        });
    }

    videoCard(context){
        return new Container({
            color: GlobalConfig.cardBackgroundColor,
            margin: EdgeInsets.only({top: 6.0, bottom: 6.0}),
            padding: EdgeInsets.only({top: 12.0, bottom: 8.0}),
            child: new Column({
                children: [
                    this.videoCardHeader(context, "视频创作", 0xe04b, 0xFFB36905, "拍一个"),
                    new Container({
                        margin: EdgeInsets.only({left: 16.0}),
                        child: new SingleChildScrollView({
                            scrollDirection: Axis.horizontal,
                            child: new Row({
                                children: [
                                    this.videoCardItem(context, "https://pic2.zhimg.com/50/v2-5942a51e6b834f10074f8d50be5bbd4d_400x224.jpg"),
                                    this.videoCardItem(context, "https://pic1.zhimg.com/50/v2-0008057d1ad2bd813aea4fc247959e63_400x224.jpg"),
                                    this.videoCardItem(context, "https://pic2.zhimg.com/50/v2-5942a51e6b834f10074f8d50be5bbd4d_400x224.jpg"),
                                    this.videoCardItem(context, "https://pic1.zhimg.com/50/v2-0008057d1ad2bd813aea4fc247959e63_400x224.jpg")
                                ]
                            })
                        })
                    })
                ]
            })
        });
    }

    ideaCardItem(context, title, subTitle, imgUrl){
        return new Container({
            margin: EdgeInsets.only({right: 6.0}),
            decoration: new BoxDecoration({
                color: GlobalConfig.searchBackgroundColor,
                borderRadius: BorderRadius.all(Radius.circular(6.0))
            }),
            child: new Row({
              children: [
                    new Container({
                        padding: EdgeInsets.only({left: 10.0}),
                        child: new Column({
                            children: [
                                new Align({
                                    alignment: Alignment.centerLeft,
                                    child: new Container({
                                        child: new Text(title, {style: new TextStyle({color: Colors.black, fontSize: 16.0})})
                                    })
                                }),
                                new Align({
                                    alignment: Alignment.centerLeft,
                                    child: new Container({
                                        margin: EdgeInsets.only({top: 6.0}),
                                        child: new Text(subTitle, {style: new TextStyle({color: GlobalConfig.fontColor})})
                                    })
                                })
                            ]
                        })
                    }),
                    new Container({
                        margin: EdgeInsets.all(10.0),
                        width: MediaQuery.of(context).size.width / 5,
                        child: new AspectRatio({
                            aspectRatio: 1.0 / 1.0,
                            child: new Container({
                                foregroundDecoration:new BoxDecoration({
                                    image: new DecorationImage({
                                        image: new NetworkImage(imgUrl),
                                        centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0)
                                    }),
                                    borderRadius: BorderRadius.all(Radius.circular(6.0))
                                })
                            })
                        })
                    })
                ]
            })
        });
    }

    ideaCard(context){
        return new Container({
            color: GlobalConfig.cardBackgroundColor,
            margin: EdgeInsets.only({top: 6.0, bottom: 6.0}),
            padding: EdgeInsets.only({top: 12.0, bottom: 8.0}),
            child: new Column({
                children: [
                    this.videoCardHeader(context, "想法", 0xeb3d, 0xFFB36905, "去往想法首页"),
                    new Container({
                        margin: EdgeInsets.only({left: 16.0}),
                        child: new SingleChildScrollView({
                            scrollDirection: Axis.horizontal,
                            child: new Row({
                                children: [
                                    this.ideaCardItem(context, "苹果 WWDC 2018 正在举行", "软件更新意料之中，硬件之谜...", "https://pic2.zhimg.com/50/v2-55039fa535f3fe06365c0fcdaa9e3847_400x224.jpg"),
                                    this.ideaCardItem(context, "此刻你的桌子是什么样子？", "晒一晒你的书桌/办公桌", "https://pic2.zhimg.com/50/v2-ce2e01a047e4aba9bfabf8469cfd3e75_400x224.jpg"),
                                    this.ideaCardItem(context, "关于高考你印象最深的是...", "聊聊你的高三生活", "https://pic2.zhimg.com/50/v2-55039fa535f3fe06365c0fcdaa9e3847_400x224.jpg"),
                                    this.ideaCardItem(context, "夏天一定要吃的食物有哪些", "最适合夏天吃的那种", "https://pic2.zhimg.com/50/v2-ce2e01a047e4aba9bfabf8469cfd3e75_400x224.jpg")
                                ]
                            })
                        })
                    })
                ]
            })
        });
    }

    build(context){
        let widget = new MaterialApp({
            // theme: GlobalConfig.themeData,
            home: new Scaffold({
                appBar: new AppBar({
                    title: this.barSearch()
                }),
                body: new SingleChildScrollView({
                    child: new Container({
                        child: new Column({
                            children: [
                                this.infoCard(context),
                                this.serviceCard(context),
                                this.settingCard(context),
                                this.videoCard(context),
                                this.ideaCard(context)
                            ]
                        })
                    })
                })
            })
        });
        return widget;
    }
}

module.exports = { MyPage };

