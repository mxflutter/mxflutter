
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
  AnimatedPositioned,
  Duration,
  Stack,
} = require("js_flutter.js");

const { SectionTitle } = require("./component/section_title.js");

class PageExampleAnimatedPositioned extends MXJSStatefulWidget {
  constructor() {
    super('PageExampleAnimatedPositioned');
  }

  createState() {
    return new PageExampleAnimatedPositionedState();
  }
}

class PageExampleAnimatedPositionedState extends MXJSWidgetState {

  constructor() {
    super();
    this.top = 200.0;
  }

  changeOpacity() {
    this.setState(function () {
      this.top = this.top == 200.0 ? 0.0 : 200.0;
    });
  }


  build(context) {
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('PageExampleAnimatedPositioned'),
      }),
      floatingActionButton: new FloatingActionButton({
        child: new Icon(Icons.add),
        onPressed: function () {
          this.changeOpacity();
        }.bind(this),
      }),
      body: new Stack({
        children: [
          new AnimatedPositioned({
            child: new Container({
              width: 200,
              height: 200,
              color: Colors.orange,
            }),
            top: this.top,
            left: this.top,
            duration: new Duration({ milliseconds: 300 }),
          }),
        ]
      })
    });
    return widget;
  }
}

module.exports = {
  PageExampleAnimatedPositioned,
};
