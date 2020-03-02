//animation.js 正式开始，😝

let {
  MXJSLog,
  runApp,
  MXJSFlutterApp,
  MXJSWidgetState,
  MXJSStatefulWidget,
  MXJSStatelessWidget,
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
  AnimationStatus

} = require("js_flutter_ui.js");


//业务代码

class JSAnimationPage extends MXJSStatefulWidget {
  constructor() {
      super('JSAnimationPage');
  }

  createState() {
      return new JSAnimationPageState(this);
  }
}

class JSAnimationPageState extends MXJSWidgetState {
  constructor() {
    super();

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
        onPressed: function () {
            this.beginAnimation();
        }
      }),
      body: new Center({
        child: new AnimatedBuilder({
          animation: this.animation,
          widget: new Container({
            height: this.animation.value() * imageRatio + 2 - 5,
            width: this.animation.value(),
            child: Image.network('http://ugc.qpic.cn/gbar_pic/1ZU94WW9oGojjwGATy7UB9VNkIrn9Ud4t79Tbd7VnMvV4hG8zbfrJFsq0VTOCOicg/'),
          })
          // child: this.child,
        })
      })
    });

    return w;
  }
}

module.exports = { JSAnimationPage };
