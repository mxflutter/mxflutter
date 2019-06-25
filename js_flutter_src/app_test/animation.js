//VSCode Run support=====================================================================================
//为便于在JS IDE如VSCode，webStorm里脱离APP环境执行JS，以快速验证JS代码正确性
//用g_isNativeEnvironment检查是否在App环境，
//如果不在App环境，Native接口重定向到JS同名函数打印调用
//jsFlutterRequire 转调Node运行环境中的require
//真是为了JS菜鸟就是我 操碎了心
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

//animation.js 正式开始，😝

let {
  MXJSLog,
  runApp,
  MXJSFlutterApp,
  MXJSWidget,
  Scaffold,
  Container,
  Center,
  AppBar,
  Text,
  Icon,
  IconData,
  FloatingActionButton,
  Image,
  Animation,
  Tween,
  AnimationController,
  AnimatedBuilder,
  Duration,
  AnimationStatus,

} = jsFlutterRequire("js_flutter_ui.js");


//业务代码


class JSAnimationPage extends MXJSWidget {
  constructor() {
    super("JSAnimationPage");

    this.tween = new Tween({begin: 50.0, end: 300.0});
    this.animationController = new AnimationController({duration: new Duration({seconds: 3})});
    this.animationController.createMirrorObjectID();
    this.animation = new Animation({tween: this.tween, controller: this.animationController});
    this.animation.createMirrorObjectID();


    this.animation.addStatusListener(this.animationLoopFunc.bind(this));

    this.count = 0;
  }

  animationLoopFunc(status){
    MXJSLog.log('callback from flutter ....  ' + status);
    if (status == AnimationStatus.completed) {
      this.animationController.reverse();
      this.count ++ ;
    } else if (status == AnimationStatus.dismissed) {
      this.animationController.forward();
    }
    if (this.count > 5){
      this.animation.removeStatusListener(this.animationLoopFunc);
    }
  }

  beginAnimation(){
    this.animationController.forward();
  }

  build(context) {
    var imageRatio = 1.455;

    let w = new Scaffold({
      appBar: new AppBar({
        title: new Text("Animation Demo")
      }),
      floatingActionButton: new FloatingActionButton({
        child: new Icon(new IconData(0xe145,{fontFamily:'MaterialIcons',semanticLabel: 'Action'})),
        onPressed: this.createCallbackID(function () {
            this.beginAnimation();
        }),
      }),
      body: new ScaleAnimation({
        child: Image.network('http://ugc.qpic.cn/gbar_pic/1ZU94WW9oGojjwGATy7UB9VNkIrn9Ud4t79Tbd7VnMvV4hG8zbfrJFsq0VTOCOicg/'),
        animation: this.animation,
      }),
    });

    return w;
  }

}

class ScaleAnimation extends MXJSWidget{

  constructor ({
    child,
    animation,
  } = {}) {
    super();

    this.child = child;
    this.animation = animation;
  }

  build(context){
    var imageRatio = 1.455;
    let widget = new Center({
      child: new AnimatedBuilder({
        animation: this.animation,
        widget: new Container({
          height: this.animation.value() * imageRatio + 2 - 5,
          width: this.animation.value(),
          child: this.child,
        }),
        // child: this.child,
      }),
    })
    return widget;
  }
}




module.exports = { JSAnimationPage };

//测试代码，修改Widget name
//在VSCode 直接运行测试JS代码正确性,在app无任何效果
IDERunFileTestWidget(JSAnimationPage);

//拷贝一份到目标文件
function IDERunFileTestWidget(TestPage) {
  if (g_isNativeEnvironment) {
    return;
  }
  class AppTest extends MXJSFlutterApp {
    constructor() {
      super("app_test", "initRouteName");
    }

    //子类重写
    //flutter->js 用于路由跳转
    //return MXJSWidget subclass
    createJSWidgetWithName(pageName) {
      let w = new TestPage;
      return w;
    }
  }

  let app = new AppTest;
  runApp(app);

  app.runWithPageName();
};
