

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
  AnimatedSize,
  Duration,
  Stack,
} = require("js_flutter.js");

const { SectionTitle } = require("./component/section_title.js");

class PageExampleAnimatedSize extends MXJSStatefulWidget {
  constructor() {
    super('PageExampleAnimatedSize');
  }

  createState() {
    return new PageExampleAnimatedSizeState();
  }
}

class PageExampleAnimatedSizeState extends MXJSWidgetState {

  constructor() {
    super("PageExampleAnimatedSize");
    this.size = 200.0;
  }

  changeOpacity() {
    this.setState(function () {
      this.size = this.size == 200.0 ? 50.0 : 200.0;
    }.bind(this));
  }


  build(context) {
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('PageExampleAnimatedSize'),
      }),
      floatingActionButton: new FloatingActionButton({
        child: new Icon(Icons.add),
        onPressed: function () {
          this.changeOpacity();
        }.bind(this),
      }),
      body: new AnimatedSize({
        child: new Container({
          width: this.size,
          height: this.size,
          color: Colors.orange,
        }),
        duration: new Duration({ milliseconds: 300 }),
      }),
    });
    return widget;
  }
}

module.exports = {
  PageExampleAnimatedSize,
};
