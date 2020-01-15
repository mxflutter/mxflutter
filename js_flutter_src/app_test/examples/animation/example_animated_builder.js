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
  Animation,
  AnimatedBuilder,
  AnimationController,
  Duration,
  Interval,
  CurveTween,
  Curves,
  Tween,
  Image,
} = jsFlutterRequire("js_flutter_ui.js");

const { SectionTitle } = jsFlutterRequire("./component/section_title.js");

class PageExampleAnimatedBuilder extends MXJSWidget {
  constructor(){
    super("PageExampleAnimatedBuilder");
    this.count = 0;
    this.tween = new Tween({begin: 50.0, end: 300.0});
    this.animationController = new AnimationController({duration: new Duration({seconds: 2})});
    this.animationController.createMirrorObjectID();
    this.animation = new Animation({tween: this.tween, controller: this.animationController});
    this.animation.createMirrorObjectID();
    this.animation.addStatusListener(this.animationLoopFunc.bind(this));
  }

  animationLoopFunc(status){
    MXJSLog.log('callback from flutter ....  ' + status);
    if (status === AnimationStatus.completed) {
      this.animationController.reverse();
      this.count++;
    } else if (status === AnimationStatus.dismissed) {
      this.animationController.forward();
    }
    if (this.count > 5){
      this.animation.removeStatusListener(this.animationLoopFunc);
    }
  }

  beginAnimation(){
    this.animationController.forward();
  }

  build(context){
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('PageExampleAnimatedBuilder',),
      }),
      floatingActionButton: new FloatingActionButton({
        child: new Icon(Icons.add),
          onPressed: this.createCallbackID(function () {
            this.beginAnimation();
          })
      }),
      body: new ScaleAnimation({
        child: Image.network('https://pic2.zhimg.com/50/v2-6416ef6d3181117a0177275286fac8f3_hd.jpg'),
        animation: this.animation
      })
    });
    return widget;
  }
}

class ScaleAnimation extends MXJSWidget{
  constructor ({
     child,
     animation
  } = {}) {
    super();
    this.child = child;
    this.animation = animation;
  }

  build(context){
    const imageRatio = 1.455;
    const widget = new Center({
      child: new AnimatedBuilder({
        animation: this.animation,
        widget: new Container({
          height: this.animation.value() * imageRatio + 2 - 5,
          width: this.animation.value(),
          child: this.child
        })
        // child: this.child,
      })
    });
    return widget;
  }
}

module.exports = {
  PageExampleAnimatedBuilder,
};
