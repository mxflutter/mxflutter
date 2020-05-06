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


let { SmartRefresher, ClassicFooter, RefreshController } = require('packages/pull_to_refresh/pull_to_refresh');
const { CachedNetworkImage } = require("packages/cached_network_image/cached_network_image");


const { SectionTitle } = require("./component/section_title.js");

const packages__dio = require("packages/dio/dio.js");

//用于演示网络请求cgi
//let cgi = "https://c.m.163.com/nc/article/headline/T1348649580692/0-10.html";

//data
let g_newsOrder = 0;
//
class ListViewDemo extends MXJSStatefulWidget {
    constructor() {
        super('ListViewDemo');
    }

    createState() {
        return new ListViewDemoState(this);
    }

    testIDE(var1,var2,list,abc){
        return [];
    }
}

class ListViewDemoState extends MXJSWidgetState {
    constructor() {
        super();

        this.refreshController = new RefreshController();
        this.methodChannel = new MethodChannel("MXFlutter_MethodChannel_Demo");
        this.dio = packages__dio.Dio();

        this.newsArray = [];

        this.pageCount = 10;
        this.pageIndex = 0;
        this.loading = false;
        this.buildCount = 1;
    }

    initState() {
        super.initState();
        this.refresh(true);
    }

    async refresh(isInit) {

        let newsArray = await this.requestHttpData(true);

        if(!isInit){
            this.endRefreshOrLoadMore(true, newsArray == null || newsArray.length == 0);
        }

        this.setState(function () {
            this.newsArray = newsArray.concat(this.newsArray);
        }.bind(this));

        return newsArray;
    }


    async loadMore() {

        let newsArray = await this.requestHttpData(false);
        this.endRefreshOrLoadMore(false, newsArray == null || newsArray.length == 0);

        this.setState(function () {
            this.newsArray = this.newsArray.concat(newsArray);
        }.bind(this));

       
    }

    async requestHttpData(isRefresh) {

        if (this.loading) {
            return [];
        }

        this.loading = true;
        let result = await this.requestNews();
        this.loading = false;

        if (result) {
            if(typeof result == "String"){
                result = JSON.parse(result);
            }

            let respArray = result["T1348649580692"];
            return respArray;
        } else {
            return [];
        }

    }

    endRefreshOrLoadMore(isRefresh, isNoData) {
        this.refreshController.loadComplete();
        this.refreshController.refreshCompleted();
        return;
        if (isRefresh) {
            this.refreshController.refreshCompleted();

        } else {

            if (isNoData) {
                this.refreshController.loadNoData();
            }
            else {

                this.refreshController.loadComplete();
            }
        }

    }

    ///dio 示例
    async requestNews() {
        this.pageIndex = this.pageIndex % 4
        let startIndex = this.pageIndex * this.pageCount;
        let endIndex = startIndex + this.pageCount;
        this.pageIndex++;

        let url = "https://c.m.163.com/nc/article/headline/T1348649580692/" + startIndex + "-" + endIndex + ".html";
        try {

            // let response = await fetch(url);
            // MXJSLog.log("requestNews:resp: " + response.text);

            let response = await this.dio.get(url);
            MXJSLog.debug("await Dio.get(urlStr):request() :" + response);
            return response.data;

        } catch (e$) {
            let e = dart.getThrown(e$);
            MXJSLog.log("requestNews:resp:  error:" + e);
            return null;

        }
    }

    build(context) {

        g_newsOrder = 0;
        this.buildCount++;
        let widget = new Scaffold({
            appBar: new AppBar({
                title: new Text('网易新闻 ListViewExample'),
            }),
            body: new Scrollbar({
                child: new SmartRefresher({
                    controller: this.refreshController,
                    enablePullUp: true,
                    enablePullDown: true,
                    footer: new ClassicFooter({
                        failedIcon: null,
                        canLoadingIcon: null,
                        idleIcon: null,
                        noMoreIcon: null,
                        loadingIcon: null,
                        canLoadingText: '',
                        failedText: '网络错误，请重试',
                        noDataText: '已经没有了',
                        loadingText: '加载中...',
                        idleText: '上拉加载更多',
                    }),
                    // 动态创建Item
                    child: ListView.builder({
                        itemCount: this.newsArray.length,
                        itemBuilder: function (context, index) {
                            return new ListViewItem(this.newsArray[index]);
                        }.bind(this),
                    }),
                    onRefresh: function () {

                        MXJSLog.log("onRefresh");
                        this.refresh();

                    }.bind(this),
                    onLoading: function () {

                        MXJSLog.log("onLoading");
                        this.loadMore();

                    }.bind(this),
                }),


            })
        });
        return widget;
    }
}

class ListViewItem extends MXJSStatelessWidget {
    constructor(oneNewsMap) {
        super('ListViewItem');

        this.newsModel = NewsModel.fromJSON(oneNewsMap);

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


module.exports = {
    ListViewDemo,
};
