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

//follow.js 正式开始，😝

let {
  runApp,
  MXJSFlutterApp,
  MXJSWidget,
  Container,
  Row,
  FlatButton,
  Text,
  Expanded,
  TextStyle,
  Colors,
  AspectRatio,
  BoxDecoration,
  DecorationImage,
  NetworkImage,
  Rect,
  Border,
  BorderRadius,
  Radius,
  Color,
  Icon,
  IconData,
  EdgeInsets,
  Column,
  FontWeight,
  PopupMenuButton,
  PopupMenuItem,
  SingleChildScrollView,
  Alignment,
  CircleAvatar,
  
} = jsFlutterRequire("js_flutter_ui.js");

let {GlobalConfig} = jsFlutterRequire("./zhihu/global_config.js");
let {articleList} = jsFlutterRequire("./zhihu/home/article.js");
let {ReplyPage} = jsFlutterRequire("./zhihu/home/reply_page.js");

class Follow extends MXJSWidget {
    constructor(){
        super("Follow");
    }

    wordsCard(article){
        let markWidget;
        if (article.imgUrl == null) {
            markWidget = new Text(article.mark, {
                style: new TextStyle({
                    height: 1.3,
                    color: GlobalConfig.fontColor,
                }),
            });
        } else {
            markWidget = new Row({
                children: [
                    new Expanded({
                        flex: 2,
                        child: new Container({
                            child: new Text(article.mark, {
                                style: new TextStyle({
                                    height: 1.3,
                                    color: GlobalConfig.fontColor,
                                }),
                            }),
                        }),
                    }),
                    new Expanded({
                        flex: 1,
                        child: new AspectRatio({
                            aspectRatio: 3.0 / 2.0,
                            child: new Container({
                                foregroundDecoration: new BoxDecoration({
                                    image: new DecorationImage({
                                        image: new NetworkImage(article.imgUrl),
                                        centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                                    }),
                                    borderRadius: BorderRadius.all(Radius.circular(6.0)),
                                }),
                            }),
                        }),
                    }),
                ],
            });
        }
        return new Container({
            color: new Color(0xFFFFFFFF),
            margin: EdgeInsets.only({
                top: 5.0,
                bottom: 5.0
            }),
            child: new FlatButton({
                onPressed:function(){
                    this.navigatorPush(new ReplyPage);
                },
                child: new Column({
                    children: [
                        new Container({
                            child: new Row({
                                children: [
                                    new Container({
                                        child: new CircleAvatar({
                                            backgroundImage: new NetworkImage(article.headUrl),
                                            radius: 11.0,
                                        }),
                                    }),
                                    new Text(" " + article.user + " " + article.action + " . " + article.time, {
                                        style: new TextStyle({
                                            color: GlobalConfig.fontColor,
                                        }),
                                    }),
                                ],
                            }),
                            padding: EdgeInsets.only({top: 10.0}),
                        }),
                        new Container({
                            child: new Text(article.title, {
                                style: new TextStyle({
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0, 
                                    height: 1.3,
                                    color: Colors.black(),
                                }),
                            }),
                            margin: EdgeInsets.only({top: 6.0, bottom: 2.0}),
                            alignment: Alignment.topLeft,
                        }),
                        new Container({
                            child: markWidget,
                            margin: EdgeInsets.only({top: 6.}),
                            alignment: Alignment.topLeft,
                        }),
                        new Container({
                            child: new Row({
                                children: [
                                    new Expanded({
                                        child: new Text(article.agreeNum.toString() + " 赞同 · " + article.commentNum.toString() + "评论", {
                                            style: new TextStyle({
                                                color: GlobalConfig.fontColor,
                                            }),
                                        }),
                                    }),
                                    new PopupMenuButton({
                                        icon: new Icon(new IconData(0xe260, {fontFamily: 'MaterialIcons'}), {
                                            color: GlobalConfig.fontColor,
                                        }),
                                        itemBuilder: function(context){
                                            let list = [
                                                new PopupMenuItem({
                                                    value: '选项一的值',
                                                    child: new Text('屏蔽这个问题'),
                                                }),
                                                new PopupMenuItem({
                                                    value: '选项二的值',
                                                    child: new Text('取消关注 learner'),
                                                }),
                                                new PopupMenuItem({
                                                    value: '选项三的值',
                                                    child: new Text("举报"),
                                                }),
                                            ];
                                            return list;
                                        },
                                    }),
                                ],
                            }),
                            padding: EdgeInsets.only(),
                        }),
                    ],
                }),
            }),
        });
    }

    billboard(){
        return new Container({
            margin: EdgeInsets.only({
                top: 5.0, 
                bottom: 5.0,
            }),
            color: GlobalConfig.cardBackgroundColor,
            child: new FlatButton({
                onPressed: function(){

                },
                child: new Column({
                    children:[
                        new Container({
                            child: new Row({
                                children: [
                                    new Container({
                                        child: new CircleAvatar({
                                            backgroundImage: new NetworkImage("https://pic1.zhimg.com/50/v2-0c9de2012cc4c5e8b01657d96da35534_s.jpg"),
                                            radius: 11.0,
                                        }),
                                    }),
                                    new Text("  对啊网", {
                                        style: new TextStyle({
                                            color: GlobalConfig.fontColor,
                                        }),
                                    }),
                                ],
                            }),
                            padding: EdgeInsets.only({top: 10.0}),
                        }),
                        new Container({
                            child: new Text("考过CPA，非名牌大学也能进名企", {
                                style: new TextStyle({
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0, 
                                    height: 1.3,
                                    color: GlobalConfig.fontColor,
                                }),
                            }),
                            margin: EdgeInsets.only({top: 6.0, bottom: 2.0}),
                            alignment: Alignment.topLeft,
                        }),
                        new Container({
                            child: new AspectRatio({
                                aspectRatio: 3.0 / 1.0,
                                child: new Container({
                                    foregroundDecoration: new BoxDecoration({
                                        image: new DecorationImage({
                                            image: new NetworkImage("https://pic2.zhimg.com/50/v2-6416ef6d3181117a0177275286fac8f3_hd.jpg"),
                                            centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
                                        }),
                                        borderRadius: BorderRadius.all(Radius.circular(6.0)),
                                    }),
                                }),
                            }),
                            margin: EdgeInsets.only({top: 6.0, bottom: 14.0}),
                            alignment: Alignment.topLeft,
                        }),
                        new Container({
                            child: new Text("还在羡慕别人的好工作？免费领取价值1980元的注册会计师课程，为自己充电！", {
                                style: new TextStyle({
                                    height: 1.3,
                                    color: GlobalConfig.fontColor,
                                }),
                            }),
                            padding: EdgeInsets.only({bottom: 8.0}),
                        }),
                        new Container({
                            child: new Row({
                                children: [
                                    new Container({
                                        child: new Text("广告", {
                                            style: new TextStyle({
                                                fontSize: 10.0,
                                                color: GlobalConfig.fontColor,
                                            }),
                                        }),
                                        decoration: new BoxDecoration({
                                            border: Border.all({
                                                color: GlobalConfig.fontColor,
                                            }),
                                            borderRadius: BorderRadius.all(Radius.circular(2.0)),
                                        }),
                                        padding: EdgeInsets.only({top: 2.0, bottom: 2.0, left: 3.0, right: 3.0}),
                                    }),
                                    new Expanded({
                                        child: new Text("  查看详情", {
                                            style: new TextStyle({
                                                color: GlobalConfig.fontColor,
                                            }),
                                        })
                                    }),
                                    new Icon(new IconData(0xe14c, {fontFamily: 'MaterialIcons'}), {
                                        color: GlobalConfig.fontColor,
                                    }),
                                ],
                            }),
                            padding: EdgeInsets.only({bottom: 10.0}),
                        }),
                    ],
                }),
            }),
        });
    }

    build(context){
        let widget = new SingleChildScrollView({
            child: new Container({
                margin: EdgeInsets.only({top: 5.0}),
                child: new Column({
                    children: [
                        this.wordsCard(articleList[0]),
                        this.wordsCard(articleList[1]),
                        this.wordsCard(articleList[2]),
                        this.billboard(),
                        this.wordsCard(articleList[3]),
                    ],
                }),
            }),
        });
        return widget;
    }
}

module.exports = { Follow };


//测试代码，修改Widget name
//在VSCode 直接运行测试JS代码正确性,在app无任何效果
IDERunFileTestWidget(Follow);

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