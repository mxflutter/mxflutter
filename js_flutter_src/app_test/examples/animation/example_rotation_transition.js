

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
} = require("js_flutter.js");

const { SectionTitle } = require("./component/section_title.js");

class PageExampleRotationTransition extends MXJSStatefulWidget {
  constructor() {
    super('PageExampleRotationTransition');
  }

  createState() {
    return new PageExampleRotationTransitionState();
  }
}

class PageExampleRotationTransitionState extends MXJSWidgetState {

  constructor() {
    super();
  }

  build(context) {
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('PageExampleRotationTransition'),
      }),
      body: new ListView({
        children: [
          new SectionTitle("PageExampleRotationTransition"),
        ],
      })
    });
    return widget;
  }
}

module.exports = {
  PageExampleRotationTransition,
};
