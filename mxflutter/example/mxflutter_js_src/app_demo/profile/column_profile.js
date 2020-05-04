//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

const dart_sdk = require("dart_sdk");
const core = dart_sdk.core;
const dart = dart_sdk.dart;
const http = dart_sdk._http

let {
    MXJSLog,
    runApp,
    MXJSFlutterApp,
    MXJSWidgetState,
    MXJSStatefulWidget,
    MXJSStatelessWidget,
    MaterialApp,
    Scaffold,
    Container,
    BoxDecoration,
    BorderRadius,
    Radius,
    ListTile,
    Center,
    Color,
    AppBar,
    SnackBar,
    Text,
    Icon,
    IconData,
    EdgeInsets,
    Colors,
    IconButton,
    FlatButton,
    RaisedButton,
    FloatingActionButton,
    Column,
    Row,
    DropdownButton,
    DropdownMenuItem,
    MainAxisAlignment,
    CrossAxisAlignment,
    TextStyle,
    PopupMenuButton,
    PopupMenuItem,
    ButtonBar,
    MainAxisSize,
    TextDecoration,
    RichText,
    TextSpan,
    Expanded,
    FontWeight,
    TextFormField,
    InputDecoration,
    UnderlineInputBorder,
    TextInputType,
    SizedBox,
    TextField,
    TextEditingController,
    ListView,
    Slider,
    Icons,
    FlutterLogo,
    Wrap,
    Scrollbar,
    Card,
    Theme,
    Navigator,
    MaterialPageRoute,
    MethodChannel,
    ClipRRect,
    BoxFit,
    Duration,
    Key,
    BorderDirectional,
    BorderSide,
    Alignment,
    AspectRatio,
    DecorationImage,
    Rect,
    SingleChildScrollView,
    Stack,
    Padding,
    MediaQuery,
    UniqueKey,
} = require("js_flutter.js");



const { CachedNetworkImage } = require("packages/cached_network_image/cached_network_image");
const { SectionTitle } = require("./component/section_title.js");



//
const g_max_count = 200;

//data
let g_newsOrder = 0;

//实现一个简单的event_bus
let g_event_bus_map = {}; //type Map<key:String,function:handelFun>

class PerformanceProfilingWidget extends MXJSStatefulWidget {
    constructor({ title, profileText, rebuildCallback } = {}) {
        super("PerformanceProfilingWidget", { key: new UniqueKey() });
        this.title = title ? title : "性能分析";
        this.profileText = profileText;
        this.rebuildCallback = rebuildCallback;
    }

    createState() {
        return new PerformanceProfilingWidgetState(this);
    }
}

PerformanceProfilingWidget.Event_Refresh_ProfileInfo = "demo_pref_info_refresh";


class PerformanceProfilingWidgetState extends MXJSWidgetState {
    constructor(widget) {
        super();
        this.profileText = widget.profileText ? widget.profileText : "";
        this.buildCount = 0;
    }

    //Override
    initState() {

        //注册局部刷新事件
        g_event_bus_map[PerformanceProfilingWidget.Event_Refresh_ProfileInfo] = function (profileText) {

            this.refreshProfileText(profileText);

        }.bind(this);

    }

    //Override
    dispose() {
        delete g_event_bus_map[PerformanceProfilingWidget.Event_Refresh_ProfileInfo];
    }

    build(context) {
        let widget = new Padding({
            padding: EdgeInsets.only({ top: 0.0, bottom: 0.0, left: 10.0, right: 10 }),
            child: new Column({
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    new Row({
                        children: [
                            new Text(this.widget.title + "(" + (++this.buildCount) + ")", {
                                style: new TextStyle({
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0,
                                    color: Colors.black
                                })
                            }),
                            new FlatButton({
                                onPressed: function () {

                                    if (this.widget.rebuildCallback) {
                                        this.widget.rebuildCallback();
                                        return;
                                    }

                                    //性能分析模式 
                                    //打开性能分析模式，widget.enableProfile = true
                                    //可以State类重载onBuildEnd，使用getProfileText获得这次Rebuild的各个阶段耗时
                                    //如果onBuildEnd又触发setState 记得一定this.enableProfile = false; 否则会Rebuild死循环
                                    this.widget.enableProfile = true;

                                    this.setState();
                                    MXJSLog.log('数据量少时，点击...');

                                }.bind(this),
                                child: new Text('点击查看耗时', {
                                    style: new TextStyle({
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.0,
                                        color: Colors.red
                                    })
                                }),
                            })
                        ]
                    }),
                    new Padding({
                        padding: EdgeInsets.only({ top: 0.0, bottom: 10.0, left: 0.0, right: 0 }),
                        child: new Text(this.profileText),
                    }),
                ]
            })
        });
        return new Card({ child: widget, color: new Color(0xFFE1F5FE), margin: EdgeInsets.fromLTRB(8.0, 8.0, 10.0, 0.0) });
    }

    onBuildEnd(args) {

        if (!this.widget.enableProfile) {
            return;
        }

        this.refreshProfileText(this.widget.getProfileText());
    }

    refreshProfileText(profileText) {
        //如果onBuildEnd又触发setState 记得一定this.enableProfile = false; 否则会Rebuild死循环
        this.widget.enableProfile = false;
        this.setState(function () {
            this.profileText = profileText;
        }.bind(this));
    }
}




class ListViewProfileDemo1 extends MXJSStatefulWidget {
    constructor() {
        super('ListViewDemo');
        this.enableProfile = true;
    }

    createState() {
        return new ListViewProfileDemo1State(this);
    }
}

class ListViewProfileDemo1State extends MXJSWidgetState {
    constructor(widget) {
        super();

        this.newsArray = [];
        this.buildCount = 0;
        this.profileText = widget.getProfileText();
    }

    initState() {
        super.initState();
        this.newsArray = g_newsList;


    }


    build(context) {

        g_newsOrder = 0;
        ++this.buildCount

        let items = [];

        items.push(new Container({ child: new PerformanceProfilingWidget({ title: "局部刷新小数据量测试" }) }));
        items.push(new Container({
            child: new PerformanceProfilingWidget({
                title: "整个页面刷新大数据量测试",
                profileText: this.profileText,
                rebuildCallback: function () {

                    //性能分析模式 
                    //打开性能分析模式，widget.enableProfile = true
                    //可以State类重载onBuildEnd，使用getProfileText获得这次Rebuild的各个阶段耗时
                    //如果onBuildEnd又触发setState 记得一定this.enableProfile = false; 否则会Rebuild死循环
                    this.widget.enableProfile = true;
                    this.setState(function () {

                    }.bind(this))

                }.bind(this)
            })
        }));

        for (let i = 0; i < g_max_count; ++i) {

            let item = new Container({ child: this.hotCard(this.newsArray[i % this.newsArray.length], this.buildCount) });
            items.push(item);
        }

        let widget = new Scaffold({
            appBar: new AppBar({
                title: new Text('网易新闻 Column Widget '),
            }),
            body: new SingleChildScrollView({
                child: new Column({
                    children: items
                })
            })
        });

        return widget;
    }

    //
    onBuildEnd(args) {

        if (!this.widget.enableProfile) {
            return;
        }

        //如果onBuildEnd又触发setState 记得一定this.enableProfile = false; 否则会Rebuild死循环
        this.widget.enableProfile = false;

        //1. 整个页面刷新，把ProfileText显示出来
        // this.setState(function () {
        //     this.profileText = this.widget.getProfileText();
        // }.bind(this));

        //2. 给性能Cell 发个通知，局部刷新,把ProfileText显示出来
        let handelFun = g_event_bus_map[PerformanceProfilingWidget.Event_Refresh_ProfileInfo];
        if (handelFun) {
            handelFun(this.widget.getProfileText());
        }
    }

    hotCard(newsModel, buildCount) {

        g_newsOrder++;

        return new Container({
            decoration: new BoxDecoration({
                color: Colors.white,
                border: new BorderDirectional({
                    bottom: new BorderSide({
                        color: Colors.black12,
                        width: 1.0
                    })
                })
            }),
            child: new FlatButton({
                onPressed: function () {


                },
                child: new Container({
                    padding: EdgeInsets.only({ top: 8.0, bottom: 8.0 }),
                    child: new Row({
                        children: [
                            new Expanded({
                                flex: 1,
                                child: new Column({
                                    children: [
                                        new Container({
                                            child: new Text(
                                                String(g_newsOrder), {
                                                style: new TextStyle({
                                                    color: Colors.red,
                                                    fontSize: 18.0
                                                })
                                            }),
                                            alignment: Alignment.topLeft
                                        }),
                                        newsModel.rise != null ?
                                            new Row({
                                                children: [
                                                    new Icon(new IconData(0xe5d8, { fontFamily: 'MaterialIcons' }), {
                                                        color: Colors.red,
                                                        size: 10.0
                                                    }),
                                                    new Text(newsModel.rise, {
                                                        style: new TextStyle({
                                                            color: Colors.red,
                                                            fontSize: 10.0
                                                        })
                                                    })
                                                ]
                                            })
                                            : new Container()
                                    ]
                                })
                            }),
                            new Expanded({
                                flex: 6,
                                child: new Column({
                                    children: [
                                        new Container({
                                            child: new Text("buildCount: " + buildCount + " " + newsModel.title, {
                                                style: new TextStyle({
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16.0,
                                                    height: 1.1,
                                                    color: Colors.black
                                                })
                                            }),
                                            padding: EdgeInsets.only({ bottom: 10.0, right: 4.0 }),
                                            alignment: Alignment.topLeft
                                        }),
                                        newsModel.mark != null ?
                                            new Container({
                                                child: new Text(newsModel.mark, {
                                                    style: new TextStyle({ color: Colors.black54 })
                                                }),
                                                alignment: Alignment.topLeft,
                                                padding: EdgeInsets.only({ bottom: 8.0, right: 4.0 })
                                            }) :
                                            new Container(),
                                        new Container({
                                            child: new Text(newsModel.hotNum, {
                                                style: new TextStyle({ color: Colors.black54 })
                                            }),
                                            alignment: Alignment.topLeft
                                        })
                                    ]
                                })
                            }),
                            new Expanded({
                                flex: 3,
                                child: new AspectRatio({
                                    aspectRatio: 3.0 / 2.0,
                                    child: new ClipRRect({
                                        borderRadius: BorderRadius.circular(4.0),
                                        child: new CachedNetworkImage({
                                            fadeInDuration: new Duration({ milliseconds: 10 }),
                                            fadeOutDuration: new Duration({ milliseconds: 10 }),
                                            imageUrl: newsModel.imgUrl,
                                            width: 124.0,
                                            height: 69.0,
                                            fit: BoxFit.fill
                                        })
                                    }),
                                })
                            })

                        ]
                    })
                })
            })
        })
    }
}


class NewsModel {
    constructor(
        order,
        title,
        hotNum,
        imgUrl,
        { mark,
            rise } = {}
    ) {
        this.order = order;
        this.title = title;
        this.hotNum = hotNum;
        this.imgUrl = imgUrl;
        this.mark = mark;
        this.rise = rise;
    }

    static fromJSON(jsonMap) {
        let news = new NewsModel;

        news.order = String(jsonMap["order"]);
        news.title = jsonMap["title"];
        news.hotNum = String(jsonMap["votecount"]) + " 人点赞";
        news.imgUrl = jsonMap["imgsrc"];
        news.mark = jsonMap["source"];
        news.rise = jsonMap["alias"];

        return news;

    }
}

let g_newsList = [
    new NewsModel("01", "了不起的新时代，世界竞争中的中国制造", "4427 万热度", "https://pic2.zhimg.com/50/v2-710b7a6fea12a7203945b666790b7181_hd.jpg"),
    new NewsModel("02", "一个女生怎样才算见过世面？", "4157 万热度", "https://pic3.zhimg.com/50/v2-56dca99cd8718f9303d43b3015342ba7_hd.jpg", { rise: "3", mark: "所谓世面，就是世界的每一面" }),
    new NewsModel("03", "如果朱标没死，削藩的话，朱棣会造反吗？", "4009 万热度", "https://pic4.zhimg.com/v2-095d2b48970889b108247e6d2dd0fa6b_b.jpg"),
    new NewsModel("04", "如何编译 Linux 内核？", "3110 万热度", "https://pic3.zhimg.com/80/v2-1ea1b0cf80c85b88893b2b97a94d7e71_hd.jpg", { mark: "内核？呵呵" }),
    new NewsModel("05", "如何看待将神话故事拍成电影这件事？", "2119 万热度", "https://pic4.zhimg.com/50/v2-267b1dda62f770bd2bd13cb545117b78_hd.jpg", { rise: "3" })
];


module.exports = {
    ListViewProfileDemo1,
};
