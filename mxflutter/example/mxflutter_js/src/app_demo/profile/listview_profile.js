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
    Rect
} = require("js_flutter.js");



const { CachedNetworkImage } = require("packages/cached_network_image/cached_network_image");
const { SectionTitle } = require("./component/section_title.js");



//
const g_max_count = 1000;

//data
let g_newsOrder = 0;
//
class ListViewProfileDemo1 extends MXJSStatefulWidget {
    constructor() {
        super('ListViewDemo');
    }

    createState() {
        return new ListViewProfileDemo1State(this);
    }

}

class ListViewProfileDemo1State extends MXJSWidgetState {
    constructor() {
        super();

        this.newsArray = [];
        this.buildCount = 1;
    }

    initState() {
        super.initState();
        this.newsArray = g_newsList;
    }



    build(context) {

        g_newsOrder = 0;
        this.buildCount++;
        let widget = new Scaffold({
            appBar: new AppBar({
                title: new Text('网易新闻 ListViewExample'),
            }),
            body: new Scrollbar({
                child: ListView.builder({
                    itemCount: g_max_count,
                    itemBuilder: function (context, index) {
                        return new ListViewItem(this.newsArray[index % this.newsArray.length]);
                    }.bind(this),
                })
            })
        });

        return widget;
    }
}

class ListViewItem extends MXJSStatelessWidget {
    constructor(oneNewsMap) {
        super('ListViewItem');

        this.newsModel = oneNewsMap;

        this.index = Math.ceil(Math.random() * 10000);


    }


    hotCard(context, newsModel) {

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
                                            child: new Text(newsModel.title, {
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


    build(context) {

        try {
            return this.hotCard(context, this.newsModel);
        } catch (e$) {
            let e = dart.getThrown(e$);
            MXJSLog.log("card:build(context):  error:" + e);
            return null;

        }
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
