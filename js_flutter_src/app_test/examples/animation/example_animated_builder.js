


let {
  MXJSLog,
  runApp,
  MXJSFlutterApp,
  MXJSWidgetState,
  MXJSStatefulWidget,
  MXJSStatelessWidget,
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
} = require("js_flutter.js");

const { SectionTitle } = require("./component/section_title.js");

class PageExampleAnimatedBuilder extends MXJSStatelessWidget {
  constructor() {
    super("PageExampleAnimatedBuilder");
    this.count = 0;
    this.tween = new Tween({ begin: 50.0, end: 300.0 });
    this.animationController = new AnimationController({ duration: new Duration({ seconds: 2 }) });
    this.animation = new Animation({ tween: this.tween, controller: this.animationController });
    this.animation.addStatusListener(this.animationLoopFunc.bind(this));
  }

  animationLoopFunc(status) {
    MXJSLog.log('callback from flutter ....  ' + status);
    if (status === AnimationStatus.completed) {
      this.animationController.reverse();
      this.count++;
    } else if (status === AnimationStatus.dismissed) {
      this.animationController.forward();
    }
    if (this.count > 5) {
      this.animation.removeStatusListener(this.animationLoopFunc);
    }
  }

  beginAnimation() {
    this.animationController.forward();
  }

  build(context) {
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('PageExampleAnimatedBuilder'),
      }),
      floatingActionButton: new FloatingActionButton({
        child: new Icon(Icons.add),
        onPressed: function () {
          this.beginAnimation();
        }.bind(this)
      }),
      body: new ScaleAnimation({
        child: Image.network('https://pic2.zhimg.com/50/v2-6416ef6d3181117a0177275286fac8f3_hd.jpg'),
        animation: this.animation
      })
    });
    return widget;
  }
}



class ScaleAnimation extends MXJSStatefulWidget {

  constructor({
    child,
    animation
  } = {}) {
    super('ScaleAnimation');
    this.child = child;
    this.animation = animation;
  }

  createState() {
    return new ScaleAnimationState();
  }
}

class ScaleAnimationState extends MXJSWidgetState {

  build(context) {
    const imageRatio = 1.455;
    const widget = new Center({
      child: new AnimatedBuilder({
        animation: this.widget.animation,
        widget: new Container({
          width: "$value",
          child: this.widget.child
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
