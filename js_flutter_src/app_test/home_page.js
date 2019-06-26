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

//home_page.js 正式开始，😝

let {
    runApp,
    MXJSFlutterApp,
    MXJSWidget,
    Scaffold,
    Container,
    Color,
    AppBar,
    Text,
    ListView,
    ListTile,
    Icon,
    IconData,
    EdgeInsets,
    TextAlign,
    Row,
    Padding,
    Theme,
} = jsFlutterRequire("js_flutter_ui.js");

let { JSStudiesPage } = jsFlutterRequire("./studies.js");
let {JSPestoPage} = jsFlutterRequire("./pesto.js");
let {JSContactPage} = jsFlutterRequire("./contact.js");
let {JSAnimationPage} = jsFlutterRequire("./animation.js");
let {JSMaterialPage} = jsFlutterRequire("./material.js");
let {JSCupertinoPage} = jsFlutterRequire("./cupertino.js");
let {JSZhiHuPage} = jsFlutterRequire("./zhihu/zhihu.js");

//业务代码

class JSWidgetHomePage extends MXJSWidget {
    constructor() {
        super("JSWidgetHomePage");

        this.data = "biz data";
        this.count = 0;
    }

    build(context) {

        let demoList = new ListView({

            children: [
                new Padding({ padding: EdgeInsets.all(1.0) }),
                this.sectionTitle(context, "App Demo"),
                new ListTile({
                    leading:new Icon(new IconData(0xe39d,{fontFamily:'MaterialIcons'}) ,{color:Theme.of(context).primaryColor}),
                    trailing: new Icon(new IconData(0xe5df, {fontFamily: 'MaterialIcons', matchTextDirection: true})),
                    title: new Text('ZhiHu'),
                    subtitle: new Text('ZhiHu high copy'),
                    onTap:function () {
                        this.navigatorPush(new JSZhiHuPage);
                    }
                }),

                new ListTile({
                    leading:new Icon(new IconData(0xe39d,{fontFamily:'MaterialIcons'}) ,{color:Theme.of(context).primaryColor}),
                    trailing: new Icon(new IconData(0xe5df, {fontFamily: 'MaterialIcons', matchTextDirection: true})),
                    title: new Text('Pesto'),
                    subtitle: new Text('Simple recipe browser'),
                    onTap:function () {
                        this.navigatorPush(new JSPestoPage);
                    }
                }),
    
                new ListTile({
                    leading:new Icon(new IconData(0xe06d,{fontFamily:'MaterialIcons'})),
                    trailing: new Icon(new IconData(0xe5df, {fontFamily: 'MaterialIcons', matchTextDirection: true})),
                    title: new Text('Shrine'),
                    subtitle: new Text('Basic shopping app'),
                    onTap: function () {
                        this.navigatorPush(new JSPestoPage);
                    }
                }),
                new ListTile({
                    leading:new Icon(new IconData(0xe0d0,{fontFamily:'MaterialIcons'}),{color:Theme.of(context).primaryColor}),
                    trailing: new Icon(new IconData(0xe5df, {fontFamily: 'MaterialIcons', matchTextDirection: true})),
                    title: new Text('Contact profile'),
                    subtitle: new Text('Address book entry with a flexible appbar'),
                    onTap: function () {
                        this.navigatorPush(new JSContactPage);
                    }
                }),
                new ListTile({
                    leading:new Icon(new IconData(0xe06d,{fontFamily:'MaterialIcons'})),
                    trailing: new Icon(new IconData(0xe5df, {fontFamily: 'MaterialIcons', matchTextDirection: true})),
                    title: new Text('Animation'),
                    subtitle: new Text('Section organizer'),
                    onTap: function () {
                        this.navigatorPush(new JSAnimationPage);
                    }
                }),
                this.sectionTitle(context, "JSWidget Demo"),

                new ListTile({
                    leading: new Icon(new IconData(0xe06d, { fontFamily: 'MaterialIcons' })),
                    trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new Text('Material'),
                    subtitle: new Text('Material UI Demo'),
                    onTap: function () {
                        this.navigatorPush(new JSMaterialPage);
                    }
                }), 

                new ListTile({
                    leading: new Icon(new IconData(0xe06d, { fontFamily: 'MaterialIcons' })),
                    trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new Text('Cupertino'),
                    subtitle: new Text('Cupertino UI Demo'),
                    onTap: function () {
                        this.navigatorPush(new JSCupertinoPage);
                    }
                }),

                this.sectionTitle(context, "More Material"),
                new ListTile({
                    leading: new Icon(new IconData(0xe39d, { fontFamily: 'MaterialIcons' })),
                    trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new Text('More Material'),
                    subtitle: new Text('More Material UI Demo'),
                    onTap: function () {
                        this.navigatorPush(new JSPestoPage);
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

    sectionTitle(context, title){
        let t = new Container({
            padding: EdgeInsets.all(5.0),
            color: Theme.of(context).primaryColor,
            child: new Row({
                children: [
                    new Icon(new IconData(0xe80e), { size: 16.1, color: new Color(0xFFFFFFFF) }),
                    new Padding({ padding: EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0) }),
                    new Text(title, { textAlign: TextAlign.start })],
            }),
        });

        return t;

    }


}

module.exports = { JSWidgetHomePage };

//测试代码，修改Widget name
//在VSCode 直接运行测试JS代码正确性,在app无任何效果
IDERunFileTestWidget(JSWidgetHomePage);

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
