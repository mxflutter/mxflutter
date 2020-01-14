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
  Image,
} = jsFlutterRequire("js_flutter_ui.js");

let { PageExampleButton }  = jsFlutterRequire("examples/example_button.js");
let { PageExampleAppBar } = jsFlutterRequire("examples/example_app_bar.js");
let { PageExampleSnakeBar } = jsFlutterRequire("examples/example_snake_bar.js");
let { PageExampleColumn } = jsFlutterRequire("examples/example_column.js");
let { PageExampleRow } = jsFlutterRequire("examples/example_row.js");
let { PageExampleContainer } = jsFlutterRequire("examples/example_container.js");
let { PageExampleFlutterLogo } = jsFlutterRequire("examples/example_flutter_logo.js");
let { PageExampleColor } = jsFlutterRequire("examples/example_flutter_color.js");
let { PageExampleIcon } = jsFlutterRequire("examples/example_flutter_icon.js");
let { PageExampleImage } = jsFlutterRequire("examples/example_image.js");






class ExamplesPage extends MXJSWidget {
  constructor(){
    super("ExamplesPage");
  }

  build(context){
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('Flutter Examples',),
      }),
      body: new ListView({
        children:[
          new ListTile({
            title:new Text("AppBar"),
            onTap: this.createCallbackID(function () {
              this.navigatorPush(new PageExampleAppBar());
            }),
          }),
          new ListTile({
            title:new Text("Button"),
            onTap: this.createCallbackID(function () {
              this.navigatorPush(new PageExampleButton());
            }),
          }),
          new ListTile({
            title:new Text("Column"),
            onTap: this.createCallbackID(function () {
              this.navigatorPush(new PageExampleColumn());
            }),
          }),
          new ListTile({
            title:new Text("Row"),
            onTap: this.createCallbackID(function () {
              this.navigatorPush(new PageExampleRow());
            }),
          }),
          new ListTile({
            title:new Text("Container"),
            onTap: this.createCallbackID(function () {
              this.navigatorPush(new PageExampleContainer());
            }),
          }),
          new ListTile({
            title:new Text("FlutterLogo"),
            onTap: this.createCallbackID(function () {
              this.navigatorPush(new PageExampleFlutterLogo());
            }),
          }),
          new ListTile({
            title:new Text("Color"),
            onTap: this.createCallbackID(function () {
              this.navigatorPush(new PageExampleColor());
            }),
          }),
          new ListTile({
            title:new Text("Icon"),
            onTap: this.createCallbackID(function () {
              this.navigatorPush(new PageExampleIcon());
            }),
          }),
          new ListTile({
            title:new Text("Image"),
            onTap: this.createCallbackID(function () {
              this.navigatorPush(new PageExampleImage());
            }),
          }),
          new ListTile({
            title:new Text("SnackBar"),
            onTap: this.createCallbackID(function () {
              this.navigatorPush(new PageExampleSnakeBar());
            }),
          }),

        ],
      })
    });
    return widget;
  }
}

module.exports = {
  ExamplesPage,
};
