

//search_page.js 正式开始，😝

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
    Navigator
} = require("js_flutter.js");

let {GlobalConfig} = require("./zhihu/global_config.js");

class SearchPage extends MXJSStatefulWidget {
    constructor(){
        super("SearchPage");
    }

    createState() {
        return new SearchPageState(this);
    }
}

class SearchPageState extends MXJSWidgetState {

    searchInput(context) {
        return new Container({
            child: new Row({
                children: [
                    new Container({
                            child: FlatButton.icon({
                                onPressed: function(){
                                    Navigator.pop(context);
                                    
                                },
                                icon: new Icon(new IconData(0xe5c4, {fontFamily: 'MaterialIcons'}), {color: GlobalConfig.fontColor}),
                                label: new Text("")
                            }),
                            width: 60.0
                    }),
                    new Expanded({
                        child: new TextField({
                            autofocus: true,
                            decoration: InputDecoration.collapsed({
                                hintText: "搜索比乎内容",
                                border: InputBorder.none(),
                                hintStyle: new TextStyle({color: GlobalConfig.fontColor})
                            })
                        })
                    })
                ]
            }),
            decoration: new BoxDecoration({
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                color: GlobalConfig.searchBackgroundColor
            })
        });
    }

    build(context){
        let widget = new MaterialApp({
            // theme: GlobalConfig.themeData,
            home: new Scaffold({
                appBar: new AppBar({
                    title: this.searchInput(context)
                }),
                body: new SingleChildScrollView({
                    child: new Column({
                        children: [
                            new Container({
                                child: new Text("比乎热搜", {
                                    style: new TextStyle({
                                        fontWeight: FontWeight.bold, 
                                        fontSize: 16.0
                                    })
                                }),
                                margin: EdgeInsets.only({
                                    top: 16.0,
                                    left: 16.0, 
                                    bottom: 16.0
                                }),
                                alignment: Alignment.topLeft
                            }),
                            new Row({
                                children: [
                                    new Container({
                                        child: new Chip({
                                            label: new FlatButton({
                                                onPressed: function(){}, 
                                                child: new Text("汽车关税下调", {
                                                    style: new TextStyle({color: GlobalConfig.fontColor})
                                                })
                                            }),
                                            backgroundColor: Colors.black12,
                                        }),
                                        margin: EdgeInsets.only({left: 16.0, bottom: 16.0}),
                                        alignment: Alignment.topLeft
                                    }),
                                    new Container({
                                        child: new Chip({
                                            label: new FlatButton({
                                                onPressed: function(){}, 
                                                child: new Text("李彦宏传闻辟谣", {
                                                    style: new TextStyle({color: GlobalConfig.fontColor})
                                                })
                                            }),
                                            backgroundColor: Colors.black12
                                        }),
                                        margin: EdgeInsets.only({left: 16.0, bottom: 16.0}),
                                        alignment: Alignment.topLeft
                                    })
                                ]
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
                                            backgroundColor: Colors.black12
                                        }),
                                        margin: EdgeInsets.only({left: 16.0, bottom: 16.0}),
                                        alignment: Alignment.topLeft
                                    }),
                                    new Container({
                                        child: new Chip({
                                            label: new FlatButton({
                                                onPressed: function(){}, 
                                                child: new Text("超时空同居", {
                                                    style: new TextStyle({color: GlobalConfig.fontColor})
                                                })
                                            }),
                                            backgroundColor: Colors.black12
                                        }),
                                        margin: EdgeInsets.only({left: 16.0, bottom: 16.0}),
                                        alignment: Alignment.topLeft
                                    })
                                ]
                            }),
                            new Container({
                                child: new Text("搜索历史", {
                                    style: new TextStyle({
                                        fontWeight: FontWeight.bold, 
                                        fontSize: 16.0
                                    })
                                }),
                                margin: EdgeInsets.only({left: 16.0, bottom: 16.0}),
                                alignment: Alignment.topLeft
                            }),
                            new Container({
                                child: new Row({
                                    children: [
                                        new Container({
                                        child: new Icon(new IconData(0xe192, {fontFamily: 'MaterialIcons'}), {color: GlobalConfig.fontColor, size: 16.0}),
                                        margin: EdgeInsets.only({right: 12.0})
                                        }),
                                        new Expanded({
                                        child: new Container({
                                                child: new Text("业余兴趣", {
                                                    style: new TextStyle({color: GlobalConfig.fontColor, fontSize: 14.0})
                                                })
                                            })
                                        }),
                                        new Container({
                                            child: new Icon(new IconData(0xe14c, {fontFamily: 'MaterialIcons'}), {color: GlobalConfig.fontColor, size: 16.0})
                                        })
                                    ]
                                }),
                                margin: EdgeInsets.only({left: 16.0, right: 16.0, bottom: 10.0}),
                                padding: EdgeInsets.only({bottom: 10.0}),
                                decoration: new BoxDecoration({
                                    border: new BorderDirectional({bottom: new BorderSide({color: Colors.black12})})
                                })
                            }),
                            new Container({
                                child: new Row({
                                  children: [
                                        new Container({
                                            child: new Icon(new IconData(0xe192, {fontFamily: 'MaterialIcons'}), {color: GlobalConfig.fontColor, size: 16.0}),
                                            margin: EdgeInsets.only({right: 12.0})
                                        }),
                                        new Expanded({
                                            child: new Container({
                                                child: new Text("三体", {style: new TextStyle({color: GlobalConfig.fontColor, fontSize: 14.0})})
                                            })
                                        }),
                                        new Container({
                                            child: new Icon(new IconData(0xe14c, {fontFamily: 'MaterialIcons'}), {color: GlobalConfig.fontColor, size: 16.0})
                                        })
                                    ]
                                }),
                                margin: EdgeInsets.only({left: 16.0, right: 16.0, bottom: 10.0}),
                                padding: EdgeInsets.only({bottom: 10.0}),
                                decoration: new BoxDecoration({
                                    border: new BorderDirectional({bottom: new BorderSide({color: Colors.black12})})
                                })
                            }),
                            new Container({
                                child: new Row({
                                    children: [
                                        new Container({
                                            child: new Icon(new IconData(0xe192, {fontFamily: 'MaterialIcons'}), {color: GlobalConfig.fontColor, size: 16.0}),
                                            margin: EdgeInsets.only({right: 12.0})
                                        }),
                                        new Expanded({
                                            child: new Container({
                                                child: new Text("人类未来", {style: new TextStyle({color: GlobalConfig.fontColor, fontSize: 14.0})})
                                            })
                                        }),
                                        new Container({
                                            child: new Icon(new IconData(0xe14c, {fontFamily: 'MaterialIcons'}), {color: GlobalConfig.fontColor, size: 16.0})
                                        })
                                     ],
                                }),
                                margin: EdgeInsets.only({left: 16.0, right: 16.0, bottom: 10.0}),
                                padding: EdgeInsets.only({bottom: 10.0}),
                                decoration: new BoxDecoration({
                                    border: new BorderDirectional({bottom: new BorderSide({color: Colors.black12})})
                                })
                            })
                        ]
                    })
                })
            })
        });
        return widget;
    }
}

module.exports = { SearchPage };
