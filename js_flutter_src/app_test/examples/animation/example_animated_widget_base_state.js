

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
} = require("js_flutter_ui.js");

const { SectionTitle } = require("./component/section_title.js");

class PageExampleAnimatedWidgetBaseState extends MXJSWidget {
  constructor(){
    super("PageExampleAnimatedWidgetBaseState");
  }

  build(context){
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('PageExampleAnimatedWidgetBaseState',),
      }),
      body: new ListView({
        children:[
          new SectionTitle("PageExampleAnimatedWidgetBaseState"),
          new SectionTitle("todo...泛型类"),
        ],
      })
    });
    return widget;
  }
}

module.exports = {
  PageExampleAnimatedWidgetBaseState,
};
