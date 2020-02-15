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
} = jsFlutterRequire("js_flutter_ui.js");


class PageExampleContainer extends MXJSWidget {
  constructor(){
    super("PageExampleContainer");
  }

  genSevenContainers(){
    return  [
      new Container({
        color:Colors.red(),
        height:100,
        width:30,
      }),
      new Container({
        color:Colors.orange(),
        height:100,
        width:30,
      }),
      new Container({
        color:Colors.yellow(),
        height:100,
        width:30,
      }),
      new Container({
        color:Colors.green(),
        height:100,
        width:30,
      }),
      new Container({
        color:Colors.indigo(),
        height:100,
        width:30,
      }),
      new Container({
        color:Colors.purple(),
        height:100,
        width:30,
      }),
    ];
  }


  genThreeContainers(){
    return  [
      new Container({
        color:Colors.red(),
        height:100,
        width:30,
      }),
      new Container({
        color:Colors.orange(),
        height:100,
        width:30,
      }),
      new Container({
        color:Colors.yellow(),
        height:100,
        width:30,
      }),
    ];
  }

  build(context){
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('Container',),
      }),
      body: new ListView({
        children:[
          new ListTile({title:new Text("Container"),}),
          new Container({
            color:Colors.red(),
            height:100,
          }),
          new ListTile({title:new Text("放置内容的Container"),}),
          new Container({
            color:Colors.orange(),
            height:100,
            child:new Text("我有内容")
          }),
          new ListTile({title:new Text("Container里的Padding"),}),
          new Container({
            color:Colors.yellow(),
            padding:EdgeInsets.all(10),
            child:new Text("我有内容")
          }),
          new ListTile({title:new Text("圆角的Container"),}),
          new Container({
            margin:EdgeInsets.all(10),
            padding:EdgeInsets.all(10),
            decoration:new BoxDecoration({
              borderRadius:BorderRadius.all(Radius.circular(4.0)),
              color:Colors.green(),
            }),
            child:new Text("我是圆角Container")
          }),
          new ListTile({title:new Text("固定高宽的Container"),}),
          new Center({
            child:new Container({
              width:100,
              height:100,
              margin:EdgeInsets.all(10),
              padding:EdgeInsets.all(10),
              decoration:new BoxDecoration({
                borderRadius:BorderRadius.all(Radius.circular(4.0)),
                color:Colors.green(),
              }),
              child:new Text("100x100",{
                style:new TextStyle({color:Colors.white()}),
              })
            }),
          })
        ],
      })
    });
    return widget;
  }
}

module.exports = {
  PageExampleContainer,
};
