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


const _kSmallLogoImage = 'js_flutter_src/app_test/flutter_gallery_assets/logos/pesto/logo_small.png';
const _kGalleryAssetsPackage = 'js_flutter_src/app_test/flutter_gallery_assets/';

class PageExampleImage extends MXJSWidget {
  constructor(){
    super("PageExampleImage");
  }

  genImageUI(boxFitName){
    return [
      new ListTile({
        title: new Text('BoxFit.'+boxFitName,),
      }),
      new Container({
        height:150,
        width: 300,
        color:Colors.orange(),
        child:Image.asset(_kGalleryAssetsPackage + 'people/ali_landscape.png', {
          package: 'flutter_gallery_assets',
          fit: BoxFit[boxFitName],
          height: 100
        }),
      }),
    ];
  }


  build(context){
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('Image',),
      }),
      body: new ListView({
        children:[
          new ListTile({
            title: new Text('加载网络图片',),
          }),
          Image.network('https://cdn.pixabay.com/photo/2015/10/30/20/13/sunrise-1014712_960_720.jpg',{
            fit: BoxFit.cover,
            height: 250
          }),
          new ListTile({
            title: new Text('加载本地图片',),
          }),
          Image.asset(_kGalleryAssetsPackage + 'people/ali_landscape.png', {
            package: 'flutter_gallery_assets',
            fit: BoxFit.cover,
            height: 250
          }),
          ...this.genImageUI("contain"),
          ...this.genImageUI("fill"),
          ...this.genImageUI("fitHeight"),
          ...this.genImageUI("fitWidth"),
          ...this.genImageUI("scaleDown"),
          ...this.genImageUI("none"),
        ],
      })
    });
    return widget;
  }
}

module.exports = {
  PageExampleImage,
};
