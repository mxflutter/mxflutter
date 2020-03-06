

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
  Duration,
  DecoratedBoxTransition,
  Radius,
  BoxDecoration,
  AnimationController,
  DecorationTween,
  FlutterLogo,
  BorderRadius,
} = require("js_flutter_ui.js");

const { SectionTitle } = require("./component/section_title.js");

class PageExampleDecoratedBoxTransition extends MXJSWidget {
  constructor(){
    super("PageExampleDecoratedBoxTransition");
    this.controller = new AnimationController();
    this.controller.duration = new Duration({seconds: 2});
    this.controller.createMirrorObjectID();


    this.rectAnimation=new DecorationTween({
      begin:new BoxDecoration({
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(0))
      }),
      end:new BoxDecoration({
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20))
      })
    });
    this.rectAnimation.createMirrorObjectID();

    this.rectAnimation.animate(this.controller.view);

    this.controller.forward();
  }

  build(context){
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('PageExampleDecoratedBoxTransition',),
      }),
      body: new DecoratedBoxTransition({
        child: new FlutterLogo({size: 100}),
        decoration: this.rectAnimation,
      })
    });
    return widget;
  }
}

module.exports = {
  PageExampleDecoratedBoxTransition,
};
