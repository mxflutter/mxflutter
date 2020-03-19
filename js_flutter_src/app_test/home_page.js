let {
    runApp,
    MXJSFlutterApp,
    MXJSStatefulWidget,
    MXJSWidgetState,
    Scaffold,
    Container,
    Color,
    Colors,
    AppBar,
    Text,
    ListView,
    ListTile,
    Icon,
    IconData,
    EdgeInsets,
    TextAlign,
    TextStyle,
    Row,
    Padding,
    Theme,
    Navigator,
    MaterialPageRoute,
    Scrollbar,
    MXJSLog,
} = require("js_flutter.js");

let { JSPestoPage } = require("./pesto.js");
let { JSContactPage } = require("./contact.js");
let { JSAnimationPage } = require("./animation.js");
let { JSMaterialPage } = require("./material.js");
let { JSZhiHuPage } = require("./zhihu/zhihu.js");

let { ExamplesPage } = require("./examples/index.js");
let { JSCupertinoPage } = require("./cupertino.js");
let { ListViewDemo } = require("./listview_demo.js");

main_ddc = require("./dart_js/main.ddc.js");
flutter_demo_ddc = require("./dart_js/flutter_demo.ddc.js");
contact_demo_ddc = require("./dart_js/contacts_demo.ddc.js");
pesto_demo_ddc = require("./dart_js/pesto_demo.ddc.js");

const packages__zhihu__home__home_page = require('packages/zhihu/home/home_page');
const home_page = packages__zhihu__home__home_page.home__home_page;
const packages__zhihu__idea__idea_page = require('packages/zhihu/idea/idea_page');
const idea_page = packages__zhihu__idea__idea_page.idea__idea_page;
const packages__zhihu__market__market_page = require('packages/zhihu/market/market_page');
const market_page = packages__zhihu__market__market_page.market__market_page;
const packages__zhihu__notice__notice_page = require('packages/zhihu/notice/notice_page');
const notice_page = packages__zhihu__notice__notice_page.notice__notice_page;
const packages__zhihu__my__my_page = require('packages/zhihu/my/my_page');
const my_page = packages__zhihu__my__my_page.my__my_page;
const packages__zhihu__index = require('packages/zhihu/index/index');
const index_page = packages__zhihu__index.index__index;



//flutter_gallery
// const packages__flutter_gallery__gallery__app = require('packages/flutter_gallery/gallery/app');
// const flutter_gallery_app = packages__flutter_gallery__gallery__app.gallery__app;

const dart_sdk = require("dart_sdk");
let packages__dio__src__cancel_token = require('packages/dio/cancel_token.dart.lib.js');

const core = dart_sdk.core;
const async = dart_sdk.async;
const typed_data = dart_sdk.typed_data;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const _interceptors = dart_sdk._interceptors;
const js = dart_sdk.js;
const _js_helper = dart_sdk._js_helper;

const { Dio, Response } = require("packages/dio/dio.js");

const bridge_netwrok = require("./native_bridge/mxf_bridge_netwrok.js");
const network = bridge_netwrok.network;
const fetch = bridge_netwrok.fetch;



let urlStr = "https://facebook.github.io/react-native/movies.json";


function testDio() {

    // return async.async(dart.dynamic, (function* getHttp() {

    //     try {
    //         core.print("yield dioAPI.get(dart.dynamic, )" + urlStr);

    //         // var JSArrayOfJsObject = () => (JSArrayOfJsObject = dart.constFn(_interceptors.JSArray$(core.MapEntry)))();

    //         // let entry = new core.MapEntry;
    //         // entry.key = ("userAgent");
    //         // entry.value = ("dio");

    //         // let a = JSArrayOfJsObject().of([entry, entry]);

    //         // let h = core.Map.fromEntries(a);

    //         let m = new Map();
    //         m["a"] = "b";

    //         //MapEntryOfK
    //         dioAPI.options.headers = m;//{"userAgent": 'dio', 'common-header': 'xx'};


    //         let response = (yield dioAPI.get(dart.dynamic, urlStr));

    //         core.print("end yield dioAPI.get(dart.dynamic, )" + urlStr);
    //         core.print(response);

    //     } catch (e$) {
    //         let e = dart.getThrown(e$);
    //         core.print("dio:request() " + e);
    //         rethrow;

    //     }
    // }).bind(this));




    //let url2 = "https://a3.att.hudong.com/68/61/300000839764127060614318218_950.jpg";



    // NetWork.MXFNetworkInstance.sendRequest({method:"GET",url:urlStr,responseType: 'arraybuffer',onCompleteResponse: function (status, respHeaders, responseData, errorDesc, isTimeOut){

    //     core.print("JSINetworkInstance.sendRequest2:status:[" + status + "]  responseData: [" + responseData + "] ");

    // }});

    // testFetch();
    testDio();


}

async function testDio() {
    try {
        let response = await Dio().get(urlStr);
        core.print("await Dio.get(urlStr):request() " + response.json);

    } catch (e$) {
        let e = dart.getThrown(e$);
        core.print("testDio() " + e);
        rethrow;

    }
}


async function testFetch() {
    let response = await fetch(urlStr);
    core.print("let obj = await fetch():request() " + response.json);
}


//业务代码
class JSWidgetHomePage extends MXJSStatefulWidget {
    constructor() {
        super("JSWidgetHomePage");

        this.data = "biz data";
        this.count = 0;
    }

    createState() {
        return new JSWidgetHomePageState(this);
    }
}

class JSWidgetHomePageState extends MXJSWidgetState {

    build(context) {

        let demoList = new ListView({

            children: [
                new Padding({ padding: EdgeInsets.all(1.0) }),
                this.sectionTitle(context, "App Demo"),
                new ListTile({
                    leading: new Icon(new IconData(0xe39d, { fontFamily: 'MaterialIcons' }), { color: Theme.of(context).primaryColor }),
                    trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new Text('Examples'),
                    subtitle: new Text('All examples'),
                    onTap: function () {
                        Navigator.push(context, new MaterialPageRoute({
                            builder: function (context) {
                                return new ExamplesPage;
                            }
                        }))
                    }
                }),
                new ListTile({
                    leading: new Icon(new IconData(0xe39d, { fontFamily: 'MaterialIcons' }), { color: Theme.of(context).primaryColor }),
                    trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new Text('ZhiHu'),
                    subtitle: new Text('ZhiHu high copy'),
                    onTap: function () {
                        Navigator.push(context, new MaterialPageRoute({
                            builder: function (context) {
                                return new JSZhiHuPage;
                            }
                        }))
                    }
                }),

                new ListTile({
                    leading: new Icon(new IconData(0xe39d, { fontFamily: 'MaterialIcons' }), { color: Theme.of(context).primaryColor }),
                    trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new Text('ListViewDemo'),
                    subtitle: new Text('ListView ,Message Channel, Pull to refresh'),

                    onTap: function () {
                        Navigator.push(context, new MaterialPageRoute({
                            builder: function (context) {
                                return new ListViewDemo;
                            }
                        }))
                    }
                }),

                new ListTile({
                    leading: new Icon(new IconData(0xe39d, { fontFamily: 'MaterialIcons' }), { color: Theme.of(context).primaryColor }),
                    trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new Text('Test NetworkAPI'),
                    subtitle: new Text('Debug testDio'),

                    onTap: function () {
                        testDio();
                        // Navigator.push(context, new MaterialPageRoute({
                        //     builder: function (context) {
                        //         return new JSPestoPage;
                        //     }
                        // }))
                    }
                }),

                new ListTile({
                    leading: new Icon(new IconData(0xe06d, { fontFamily: 'MaterialIcons' })),
                    trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new Text('Shrine'),
                    subtitle: new Text('Basic shopping app'),

                    onTap: function () {
                        Navigator.push(context, new MaterialPageRoute({
                            builder: function (context) {
                                return new JSPestoPage;
                            }
                        }))
                    }
                }),
                new ListTile({
                    leading: new Icon(new IconData(0xe0d0, { fontFamily: 'MaterialIcons' }), { color: Theme.of(context).primaryColor }),
                    trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new Text('Contact profile'),
                    subtitle: new Text('Address book entry with a flexible appbar'),

                    onTap: function () {
                        Navigator.push(context, new MaterialPageRoute({
                            builder: function (context) {
                                return new JSContactPage;
                            }
                        }))
                    }
                }),
                new ListTile({
                    leading: new Icon(new IconData(0xe06d, { fontFamily: 'MaterialIcons' })),
                    trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new Text('Animation'),
                    subtitle: new Text('Section organizer'),
                    onTap: function () {
                        Navigator.push(context, new MaterialPageRoute({
                            builder: function (context) {
                                return new JSAnimationPage;
                            }
                        }))
                    }
                }),
                // this.sectionTitle(context, "JSWidget Demo"),

                // new ListTile({
                //     leading: new Icon(new IconData(0xe06d, { fontFamily: 'MaterialIcons' })),
                //     trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                //     title: new Text('Material'),
                //     subtitle: new Text('Material UI Demo'),
                //     onTap: function () {
                //         this.navigatorPush(new JSMaterialPage);
                //     }
                // }), 

                // this.sectionTitle(context, "More Material"),
                // new ListTile({
                //     leading: new Icon(new IconData(0xe39d, { fontFamily: 'MaterialIcons' })),
                //     trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                //     title: new Text('More Material'),
                //     subtitle: new Text('More Material UI Demo'),
                //     onTap: function () {
                //         this.navigatorPush(new JSPestoPage);
                //     }
                // }),

                this.sectionTitle(context, "Dart2js"),
                new ListTile({
                    leading: new Icon(new IconData(0xe39d, { fontFamily: 'MaterialIcons' })),
                    trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new Text('Dart2js样例'),
                    subtitle: new Text('简单样例'),
                    onTap: function () {
                        main_ddc.main.main();
                    }
                }),
                new ListTile({
                    leading: new Icon(new IconData(0xe39d, { fontFamily: 'MaterialIcons' })),
                    trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new Text('FlutterDemo'),
                    subtitle: new Text('简单样例'),
                    onTap: function () {
                        Navigator.push(context, new MaterialPageRoute({
                            builder: function (context) {
                                return new flutter_demo_ddc.main.MyHomePage.new;
                            }
                        }))
                    }
                }),
                new ListTile({
                    leading: new Icon(new IconData(0xe39d, { fontFamily: 'MaterialIcons' })),
                    trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new Text('ContactDemo'),
                    subtitle: new Text('联系人'),

                    onTap: function () {
                        Navigator.push(context, new MaterialPageRoute({
                            builder: function (context) {
                                return new contact_demo_ddc.contacts_demo.ContactsDemo.new;
                            }
                        }))
                    }
                }),
                new ListTile({
                    leading: new Icon(new IconData(0xe39d, { fontFamily: 'MaterialIcons' })),
                    trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new Text('PestoDemo'),
                    subtitle: new Text('菜谱'),
                    onTap: function () {
                        Navigator.push(context, new MaterialPageRoute({
                            builder: function (context) {
                                return new pesto_demo_ddc.pesto_demo.PestoDemo.new;
                            }
                        }))
                    }
                }),
                new ListTile({
                    leading: new Icon(new IconData(0xe39d, { fontFamily: 'MaterialIcons' })),
                    trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new Text('ZhiHu'),
                    subtitle: new Text('知乎-高仿版'),

                    onTap: function () {
                        Navigator.push(context, new MaterialPageRoute({
                            builder: function (context) {
                                return new index_page.Index.new;
                            }
                        }))
                    }
                }),
                // new ListTile({
                //     leading: new Icon(new IconData(0xe39d, { fontFamily: 'MaterialIcons' })),
                //     trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                //     title: new Text('Flutter Gallery'),
                //     subtitle: new Text('Flutter Gallery'),
                //     onTap: function () {
                //         this.navigatorPush(new flutter_gallery_app.GalleryApp.new);
                //     }
                // }),

                this.sectionTitle(context, "JSWidget Demo"),

                new ListTile({
                    leading: new Icon(new IconData(0xe06d, { fontFamily: 'MaterialIcons' })),
                    trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new Text('Material'),
                    subtitle: new Text('Material UI Demo'),
                    onTap: function () {
                        Navigator.push(context, new MaterialPageRoute({
                            builder: function (context) {
                                return new JSMaterialPage;
                            }
                        }))
                    }
                }),

                new ListTile({
                    leading: new Icon(new IconData(0xe06d, { fontFamily: 'MaterialIcons' })),
                    trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new Text('Cupertino'),
                    subtitle: new Text('Cupertino UI Demo'),
                    onTap: function () {
                        Navigator.push(context, new MaterialPageRoute({
                            builder: function (context) {
                                return new JSCupertinoPage;
                            }
                        }))
                    }
                }),

            ]
        });

        let w = new Scaffold({
            appBar: new AppBar({
                title: new Text("JSFlutter UI Demo")
            }),
            body: demoList
        });


        return w;
    }

    sectionTitle(context, title) {
        let t = new Container({
            padding: EdgeInsets.all(5.0),
            color: Theme.of(context).primaryColor,
            child: new Row({
                children: [
                    new Icon(new IconData(0xe80e), { size: 16.1, color: new Color(0xFFFFFFFF) }),
                    new Padding({ padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0) }),
                    new Text(title, { textAlign: TextAlign.start })]
            })
        });

        return t;

    }


}

module.exports = { JSWidgetHomePage };
