//VSCode Run support=====================================================================================
//为便于在JS IDE如VSCode，webStorm里脱离APP环境执行JS，以快速验证JS代码正确性
//用g_isNativeEnvironment检查是否在App环境，
//如果不在App环境，Native接口重定向到JS同名函数打印调用
//jsFlutterRequire 转调Node运行环境中的require
//真是为了JS菜鸟就是我 操碎了心
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

//pesto.js 正式开始，😝

let {
  MXJSLog,
  runApp,
  MXJSFlutterApp,
  MXJSWidget,
  Scaffold,
  Container,
  Color,
  AppBar,
  Text,
  Icon,
  IconData,
  EdgeInsets,
  Colors,
  FlatButton,
  RaisedButton,
  FloatingActionButton,
  Column,
  Row,
  IconButton,
  DropdownButton,
  DropdownMenuItem,
  MainAxisAlignment,
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
  Card,
  CrossAxisAlignment,
  MainAxisAlignment,
  Align,
  Center,
  Image,
  Alignment,
  CircleAvatar,
  DefaultTabController,
  NestedScrollView,
  SliverOverlapAbsorber,
} = jsFlutterRequire("js_flutter_ui.js");

let _kGalleryAssetsPackage = 'js_flutter_src/app_test/flutter_gallery_assets/';

class _Page {
    constructor({label}) {
        this.label = label;
    }

    get id() {
        return this.label[0];
    }

    toString() {
        return '$runtimeType("$this.label")';
    }
}

class _cardData {
    constructor({title, imageAsset, imageAssetPackage}) {
        this.title = title,
        this.imageAsset = imageAsset,
        this.imageAssetPackage = imageAssetPackage;
    }
}

let _allPages = {
    [new _Page({label: 'HOME'})] : [
        new _cardData({
            title: 'Flatwear',
            imageAsset: 'products/flatwear.png',
            imageAssetPackage: _kGalleryAssetsPackage,
        }),
        new _CardData({
            title: 'Pine Table',
            imageAsset: 'products/table.png',
            imageAssetPackage: _kGalleryAssetsPackage,
        }),
        new _CardData({
            title: 'Blue Cup',
            imageAsset: 'products/cup.png',
            imageAssetPackage: _kGalleryAssetsPackage,
        }),
          new _CardData({
            title: 'Tea Set',
            imageAsset: 'products/teaset.png',
            imageAssetPackage: _kGalleryAssetsPackage,
        }),
          new _CardData({
            title: 'Desk Set',
            imageAsset: 'products/deskset.png',
            imageAssetPackage: _kGalleryAssetsPackage,
        }),
          new _CardData({
            title: 'Blue Linen Napkins',
            imageAsset: 'products/napkins.png',
            imageAssetPackage: _kGalleryAssetsPackage,
        }),
          new _CardData({
            title: 'Planters',
            imageAsset: 'products/planters.png',
            imageAssetPackage: _kGalleryAssetsPackage,
        }),
        new _CardData({
            title: 'Kitchen Quattro',
            imageAsset: 'products/kitchen_quattro.png',
            imageAssetPackage: _kGalleryAssetsPackage,
        }),
        new _CardData({
            title: 'Platter',
            imageAsset: 'products/platter.png',
            imageAssetPackage: _kGalleryAssetsPackage,
        }),
    ],

    [new _Page({label : 'APPAREL'})] : [
        new _CardData({
            title: 'Cloud-White Dress',
            imageAsset: 'products/dress.png',
            imageAssetPackage: _kGalleryAssetsPackage,
        }),
        new _CardData({
            title: 'Ginger Scarf',
            imageAsset: 'products/scarf.png',
            imageAssetPackage: _kGalleryAssetsPackage,
        }),
        new _CardData({
            title: 'Blush Sweats',
            imageAsset: 'products/sweats.png',
            imageAssetPackage: _kGalleryAssetsPackage,
        }),
    ]
};

class _CardDataItem extends MXJSWidget {
    constructor({page, data}) {
        super();
        this.page = page;
        this.data = data;
        this.height = 272.0;
    }

    build(context) {
        let widget = new Card({
            child: new Padding({
                padding: EdgeInsets.all(16.0),
                child: new Column({
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                        new Align({
                            alignment: this.page.id == 'H' ? Alignment.centerLeft : Alignment.centerRight,
                            child: new CircleAvatar({
                                child: new Text(this.page.id.toString()),
                            })
                        }),
                        new SizedBox({
                            width: 144.0,
                            height: 144.0,
                            child: Image.asset(
                                this.data.imageAsset, {
                                    package: this.data.imageAssetPackage,
                                    fit: BoxFit.contain,
                                }
                            ),
                        }),
                        new Center({
                            child: new Text(
                                this.data.title, {
                                    style: Theme.of(context).textTheme.title,
                            }),
                        }),
                    ],
                })
            }),
        });
    }
}

class JSTabsDemo extends MXJSWidget {
    constructor(){
        super();
    }

    build(context){
        let widget = new DefaultTabController({
            length: _allPages.length,
            child: new Scaffold({
                body: new NestedScrollView({
                    headerSliverBuilder: function(context, innerBoxIsScrolled) {
                        return [
                            new SliverOverlapAbsorber({
                                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                            })
                        ];
                    }
                })
            })
        });
        return widget;
    }
}

module.exports = { JSTabsDemo };


//测试代码，修改Widget name
//在VSCode 直接运行测试JS代码正确性,在app无任何效果
IDERunFileTestWidget(JSTabsDemo);

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