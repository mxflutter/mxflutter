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
  FlutterLogo,
} = jsFlutterRequire("js_flutter_ui.js");


class PageExampleColor extends MXJSWidget {
  constructor(){
    super("PageExampleColor");
  }

  genColorUI(title,colorPrefix){
    let uiList = [
      new ListTile({title:new Text(title)}),
    ];
    const colorKeys = ["50","100","150","200","250","300","350","400","450","500","550","600","650","700","750","800","850","900"]
    //查找主色
    colorKeys.forEach(function(colorKey){
      const colorFnName = colorPrefix+colorKey;
      if(Colors.hasOwnProperty(colorFnName) && typeof(Colors[colorFnName])==="function"){
        uiList.push( new Container({
          height:30,
          color:Colors[colorFnName](),
          child:new Center({
            child:new Text(colorFnName),
          }),
        }));
      }
    });
    //查找辅助色
    let accentUIList = [];
    colorKeys.forEach(function(colorKey){
      const colorFnName = colorPrefix+"Accent"+colorKey;
      if(Colors.hasOwnProperty(colorFnName) && typeof(Colors[colorFnName])==="function"){
        accentUIList.push( new Container({
          height:30,
          color:Colors[colorFnName](),
          child:new Center({
            child:new Text(colorFnName),
          }),
        }));
      }
    });
    if(accentUIList.length>0){
      uiList.push(new ListTile({title:new Text(title+"Accent")}));
      uiList = uiList.concat(accentUIList);
    }

    return uiList;
  }

  build(context){
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('Color',),
      }),
      body: new ListView({
        children:[
          ...this.genColorUI("Red","red"),
          ...this.genColorUI("pink","pink"),
          ...this.genColorUI("purple","purple"),
          ...this.genColorUI("deepPurple","deepPurple"),
          ...this.genColorUI("indigo","indigo"),
          ...this.genColorUI("blue","blue"),
          ...this.genColorUI("lightBlue","lightBlue"),
          ...this.genColorUI("cyan","cyan"),
          ...this.genColorUI("teal","teal"),
          ...this.genColorUI("green","green"),
          ...this.genColorUI("lightGreen","lightGreen"),
          ...this.genColorUI("lime","lime"),
          ...this.genColorUI("yellow","yellow"),
          ...this.genColorUI("amber","amber"),
          ...this.genColorUI("orange","orange"),
          ...this.genColorUI("deepOrange","deepOrange"),
          ...this.genColorUI("brown","brown"),
          ...this.genColorUI("blueGrey","blueGrey"),
        ],
      })
    });
    return widget;
  }
}

module.exports = {
  PageExampleColor,
};
