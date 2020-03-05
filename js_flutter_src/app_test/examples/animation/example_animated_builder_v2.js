
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
} = require("js_flutter_ui.js");

const { SectionTitle } = require("./component/section_title.js");

class PageExampleAnimatedBuilderV2 extends MXJSWidget {
  constructor(){
    super("PageExampleAnimatedBuilderV2");
    this.count = 0;
    this._controller = new AnimationController({
      duration: new Duration({seconds: 1}),
      // upperBound: 100,
      // vsync: this,
    });
    this._controller.createMirrorObjectID();
    this._controller.forward();
  }

  beginAnimation(){
    this._controller.repeat();
  }

  build(context){
    const widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('PageExampleAnimatedBuilderV2',),
      }),
      floatingActionButton: new FloatingActionButton({
        child: new Icon(Icons.add),
        onPressed: this.createCallbackID(function () {
          this.beginAnimation();
        })
      }),
      body: new AnimatedBuilder({
        animation: this._controller,
        widget: new Center({
          child: new Container({
            height:"100+$value*100",   //动态计算$value
            width:"200+$value*200",    //动态计算$value
            color: Colors.orange(),
            child: new Center({
              child: new Text("点击 ( + ) 号，重复播放",{
                style:new TextStyle({
                  color:Colors.white()
                })
              }),
            }),
          })
        }),
        // builder 由于异步频繁调用JS，会导致JS线程性能问题，没有实现，async在builder中调用也存在技术问题
        // builder: this.createCallbackID(function(context,child){
        //   console.log("call builder in js....aaaa");
        //   MXJSLog.log("call builder in js....bbbb");
        //   return child;
        // }),
      })
    });
    return widget;
  }
}

module.exports = {
  PageExampleAnimatedBuilderV2,
};
