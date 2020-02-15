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
  AnimatedPositioned,
  Duration,
  Stack,
} = jsFlutterRequire("js_flutter_ui.js");

const { SectionTitle } = jsFlutterRequire("./component/section_title.js");

class PageExampleAnimatedPositioned extends MXJSWidget {
  constructor(){
    super("PageExampleAnimatedPositioned");
    this.top = 200.0;
  }

  changeOpacity() {
    this.setState(function(){
      this.top = this.top == 200.0 ? 0.0 : 200.0;
    });
  }


  build(context){
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('PageExampleAnimatedPositioned',),
      }),
      floatingActionButton: new FloatingActionButton({
        child: new Icon(Icons.add),
        onPressed: this.createCallbackID(function () {
          this.changeOpacity();
        }),
      }),
      body: new Stack({
        children:[
          new AnimatedPositioned({
            child:new Container({
              width: 200,
              height: 200,
              color:Colors.orange(),
            }),
            top:this.top,
            left:this.top,
            duration:new Duration({milliseconds:300}),
          }),
        ]
      })
    });
    return widget;
  }
}

module.exports = {
  PageExampleAnimatedPositioned,
};
