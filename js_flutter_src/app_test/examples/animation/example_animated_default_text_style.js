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
  TextDecorationStyle,
  TextOverflow,
  Padding,
  AnimatedDefaultTextStyle,
  Duration,
  Alignment,
} = jsFlutterRequire("js_flutter_ui.js");

const { SectionTitle } = jsFlutterRequire("./component/section_title.js");

class PageExampleAnimatedDefaultTextStyle extends MXJSWidget {
  constructor(){
    super("PageExampleAnimatedDefaultTextStyle");
    this.fontSize = 20;
  }

  build(context){
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('PageExampleAnimatedDefaultTextStyle',),
      }),
      body: new ListView({
        children:[
          new SectionTitle("PageExampleAnimatedDefaultTextStyle"),
          new Container({
            height:600,
            alignment:Alignment.center,
            child:new AnimatedDefaultTextStyle({
              child:new Text("Hello"),
              style:new TextStyle({
                fontWeight: FontWeight.bold,
                fontSize:this.fontSize,
                color:Colors.blue(),
              }),
              duration: new Duration({milliseconds:350}),
            }),
          }),
          new Row({
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              new RaisedButton({
                child:new Text("缩小"),
                onPressed:this.createCallbackID(function(){
                  this.setState(function() {
                    this.fontSize -= 30;
                  });
                })
              }),
              new SizedBox({
                width: 10,
                height: 10,
              }),
              new RaisedButton({
                child:new Text("放大"),
                onPressed:this.createCallbackID(function(){
                  this.setState(function() {
                    this.fontSize += 30;
                  });
                })
              }),
            ]
          }),
        ],
      })
    });
    return widget;
  }
}

module.exports = {
  PageExampleAnimatedDefaultTextStyle,
};
