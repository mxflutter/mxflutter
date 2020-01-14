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
  IconButton,
  FlatButton,
  RaisedButton,
  FloatingActionButton,
  Column,
  Row,
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
  Icons,
  Placeholder,
} = jsFlutterRequire("js_flutter_ui.js");


class PageExamplePlaceholder extends MXJSWidget {
  constructor(){
    super("PageExamplePlaceholder");
  }

  build(context){
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('Placeholder',),
      }),
      body: new ListView({
        children:[
          new ListTile({
            title:new Text("默认占位符"),
          }),
          new Placeholder(),
          new ListTile({
            title:new Text("占位符换色"),
          }),
          new Placeholder({
            fallbackHeight:100,
            color:Colors.orange(),
          }),
          new ListTile({
            title:new Text("占位符指定高度"),
          }),
          new Placeholder({
            fallbackHeight:100,
            fallbackWidth:100,
            color:Colors.yellow(),
          }),
          new ListTile({
            title:new Text("占位符线条粗细"),
          }),
          new Placeholder({
            fallbackHeight:100,
            fallbackWidth:100,
            strokeWidth:4,
            color:Colors.green(),
          }),
        ],
      })
    });
    return widget;
  }
}

module.exports = {
  PageExamplePlaceholder,
};
