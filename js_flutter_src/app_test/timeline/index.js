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

//zhihu.js 正式开始，😝


let {
  MXJSLog,
  runApp,
  MXJSFlutterApp,
  MXJSWidget,
  MaterialApp,
  Scaffold,
  Container,
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
  Slider
} = jsFlutterRequire("js_flutter_ui.js");



class TimelinePage extends MXJSWidget {
  constructor(){
    super("TimelinePage");
  }

  build(context){
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('懒虫笔记'),
      }),
      body: new ListView({
        children:[
          new ListTile({
            title:new Text("Container"),
          }),
          new Container({
            height:100,
            color: Colors.indigo(),
            child: new Center({
              child: new Text("Hello123",{
                style: new TextStyle({
                  fontSize: 20.0,
                  color: Colors.red(),
                  fontWeight: FontWeight.bold
                }),
              })
            }),
          }),
          new RaisedButton({
            child:new Text("Normal Button"),
            onPressed: this.createCallbackID(function (widgetID) {
              console.log("------>widgetID",widgetID);
              Scaffold.of(context).showSnackBar(
                new SnackBar({content: new Text('This is a dummy sheet action.')})
              );
            }),
          })
        ],
      })
    });
    return widget;
  }
}

module.exports = {
  TimelinePage,
};
