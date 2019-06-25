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
  MXJSWidget,
  Scaffold,
  Color,
  AppBar,
  Text,
  ListView,
  ListTile,
  Icon,
  IconData,
  EdgeInsets,
  Padding,
} = jsFlutterRequire("js_flutter_ui.js");


let {JSBottomAPPBarDemo} = jsFlutterRequire("./material/bottom_app_bar_demo.js");

class JSCupertinoPage extends MXJSWidget {
    constructor() {
        super("JSCupertinoPage");
    }
    
    build(context){
        let w = new Scaffold({
            appBar: new AppBar({
                title: new Text("Cupertino Demo")
            }),
            // floatingActionButton: new FloatingActionButton({
            //     child: new Icon(new IconData(0xe3c9)),
            //     onPressed: this.createCallbackID(function () {

            //     }),
            // }),
            body: new ListView({
                children: [
                    new Padding({ padding: EdgeInsets.all(1.0) }),
                    new ListTile({
                        leading:new Icon(new IconData(0xe39d,{fontFamily:'MaterialIcons'}) ,{color:new  Color(0xFFFF9800)}),
                        trailing: new Icon(new IconData(0xe5df, {fontFamily: 'MaterialIcons', matchTextDirection: true})),
                        title: new Text('Backdrop'),
                        subtitle: new Text('Select a front layer from back layer'),
                        onTap:function () {
                            this.navigatorPush(new JSPestoPage);
                        }
                    }),

                    new ListTile({
                        leading:new Icon(new IconData(0xe39d,{fontFamily:'MaterialIcons'}) ,{color:new  Color(0xFFFF9800)}),
                        trailing: new Icon(new IconData(0xe5df, {fontFamily: 'MaterialIcons', matchTextDirection: true})),
                        title: new Text('Bottom app bar'),
                        subtitle: new Text('Optional floating action button notch'),
                        onTap:function () {
                            this.navigatorPush(new JSBottomAPPBarDemo);
                        }
                    }),
                ],
            })
        });
    
        return w;
    }
}

module.exports = { JSCupertinoPage };
