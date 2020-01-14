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
} = jsFlutterRequire("js_flutter_ui.js");

const { SectionTitle } = jsFlutterRequire("./component/section_title.js");

class PageExampleText extends MXJSWidget {
  constructor(){
    super("PageExampleText");
  }

  build(context){
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('Text',),
      }),
      body: new ListView({
        children:[
          new SectionTitle("普通文本"),
          new ListTile({
            title:new Text("设置文本颜色",{
              style:new TextStyle({
                color:Colors.orange(),
              })
            }),
          }),
          new SectionTitle("富文本"),
          new Padding({
            padding:EdgeInsets.all(10),
            child: new RichText({
              text: new TextSpan({
                style: new TextStyle({
                  color: new Color(0xFFFF8C00),
                  fontSize: 18.0,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.orange(),
                  decorationStyle: TextDecorationStyle.dashed,
                }),
                text: '超长文案rich text，超长文案rich text，超长文案rich text，超长文案rich text，超长文案rich text，超长文案rich text',
                children: [
                  new TextSpan({
                    text: ' style  ',
                    style: new TextStyle({
                      color: Colors.red(),
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    })
                  }),
                  new TextSpan({
                    text: 'your text',
                    style: new TextStyle({
                      color: Colors.blue(),
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    })
                  }),
                ],
              }),
              overflow: TextOverflow.ellipsis,
              maxLines: 99
            }),
          })
        ],
      })
    });
    return widget;
  }
}

module.exports = {
  PageExampleText,
};
