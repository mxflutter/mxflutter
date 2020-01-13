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
  Slider,
  Icons,
} = jsFlutterRequire("js_flutter_ui.js");


class PageExampleAppBar extends MXJSWidget {
  constructor(){
    super("PageExampleAppBar");
  }

  build(context){
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('AppBar',),
      }),
      body: new ListView({
        children:[
          new ListTile({
            title: new Text('最简单的AppBar',),
          }),
          new AppBar({
            title: new Text('NormalAppBar',),
          }),
          new ListTile({
            title: new Text('标题换色',),
          }),
          new AppBar({
            title: new Text('NormalAppBar',{
              style:new TextStyle({
                color:Colors.white(),
              }),
            }),
          }),
          new ListTile({
            title: new Text('背景换色',),
          }),
          new AppBar({
            backgroundColor: Colors.blue(),
            title: new Text('NormalAppBar',{
              style:new TextStyle({
                color:Colors.white(),
              }),
            }),
          }),
          new ListTile({
            title: new Text('设置 leading',),
          }),
          new AppBar({
            leading: new IconButton({
              icon:new Icon(Icons.add),
            }),
            title: new Text('AppBar',),
          }),
          new ListTile({
            title: new Text('设置 action',),
          }),
          new AppBar({
            actions:[
              new IconButton({
                icon:new Icon(Icons.camera),
              })
            ],
            title: new Text('AppBar',),
          }),
          new ListTile({
            title: new Text('设置多个action',),
          }),
          new AppBar({
            actions:[
              new IconButton({
                icon:new Icon(Icons.camera),
              }),
              new IconButton({
                icon:new Icon(Icons.print),
              }),
            ],
            title: new Text('AppBar',),
          }),
        ],
      })
    });
    return widget;
  }
}

module.exports = {
  PageExampleAppBar,
};
