# MXFlutter Preview version

[中文文档点这里](https://github.com/TGIF-iMatrix/MXFlutter/blob/master/README.md)

MXFlutter is a high-performance Flutter dynamic framework based on JS. It develops Flutter applications by writing JavaScript code in a way similar to Dart's development.[More details are here](https://github.com/TGIF-iMatrix/MXFlutter/blob/master/Documentation/introduceEnglish.md)

Email：imatrixteam@qq.com

Flutter 1.5.4  https://storage.googleapis.com/flutter_infra/releases/stable/macos/flutter_macos_v1.5.4-hotfix.2-stable.zip

## Feature

- Support Dart Flutter syntax
- Support for defining classes that are same name as the Widget in Flutter
- Support for defining the same Build mode, SetState refresh and event response methods
- Support js modular development
- Support VS Code direct debugging
- Support for simulator page hot updates

## Sample code

```JavaScript
class HomePage extends MXJSWidget {
    constructor(){
        super("HomePage", {key: "HomePage"});
    }

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
                                size: 16.0,
                            }),
                            label: new Text("坚果R1摄像头损坏",{
                                style: new TextStyle({
                                    color: GlobalConfig.fontColor,
                                }),
                            }),
                        }),
                    }),
                    new Container({
                        decoration: new BoxDecoration({
                            border: new BorderDirectional({
                                start: new BorderSide({
                                    color: GlobalConfig.fontColor,
                                    width: 1.0,
                                },)
                            }),
                        }),
                        height: 14.0,
                        width: 1.0,
                    }),
                    new Container({
                        child: FlatButton.icon({
                            onPressed: function(){
                                this.navigatorPush(new AskPage);
                            },
                            icon: new Icon(new IconData(0xe22b, {fontFamily: 'MaterialIcons'}),{
                                color: GlobalConfig.fontColor,
                                size: 16.0,
                            }),
                            label: new Text("提问", {
                                style: new TextStyle({
                                    color: GlobalConfig.fontColor,
                                }),
                            }),
                        }),
                    }),
                ],
            }),
            decoration: new BoxDecoration({
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                color: GlobalConfig.searchBackgroundColor,
            }),
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
                      unselectedLabelColor: Colors.black(),
                      tabs: [
                        new Tab({text: "关注"}),
                        new Tab({text: "推荐"}),
                        new Tab({text: "热榜"}),
                      ],
                    }),
                    backgroundColor: Colors.white,
                }),
                body: new TabBarView({
                    children: [
                        new Follow(),
                        new Recommend(),
                        new Hot(),
                    ]
                }),
            }),
        });
        return widget;
    }
}
``` 

## Effect

![](https://github.com/langbluesky/Image/blob/master/demo_0.gif?raw=true)

Here, thanks to the author of the Flutter Edition [HackSoul](https://github.com/HackSoul), The author draws sample code from [zhihu-flutter](https://github.com/HackSoul/zhihu-flutter).

## Usage

* Step 1: Flutter here, create and launch MXJSFlutterApp

```Dart
MXJSFlutter.getInstance().setup();
MXJSFlutter.getInstance().runJSApp(jsAppName: "app_test", pageName: null);
```

* Step 2: JS here, write MXJSWidget page code

```JavaScript
class AppTest extends MXJSFlutterApp {
    constructor() {
        super("app_test", "initRouteName");
    }

    createJSWidgetWithName(pageName) {
        let w = new JSWidgetHomePage;
        return w;
    }
}

function main(pageName) {

    MXJSLog.log("main:pageName" + pageName);

    let app = new AppTest;
    runApp(app);
}
``` 

* Step 3: Back to Flutter, enter the MXJSWidget page

```Dart
Navigator.push(context, MaterialPageRoute(builder: (context) => MXJSFlutter.getInstance().navigatorPushWithPageName("JSWidgetHomePage")));
``` 

## License

MXFlutter is available under the MIT license. See the LICENSE file for more info.

## Participate in the contribution

If you have good comments or suggestions, please feel free to ask us about Issues or Pull Requests.

## QQ Group

For those interested in MXFlutter, you could communicate with us by add QQ group:747535761

![qrcode](https://github.com/langbluesky/Image/blob/master/qrcode.png?raw=true)



