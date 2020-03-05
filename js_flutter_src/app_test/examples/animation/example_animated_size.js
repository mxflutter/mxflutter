

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
  AnimatedSize,
  Duration,
  Stack,
} = require("js_flutter_ui.js");

const { SectionTitle } = require("./component/section_title.js");

class PageExampleAnimatedSize extends MXJSWidget {
  constructor(){
    super("PageExampleAnimatedSize");
    this.size = 200.0;
  }

  changeOpacity() {
    this.setState(function(){
      this.size = this.size == 200.0 ? 50.0 : 200.0;
    });
  }


  build(context){
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('PageExampleAnimatedSize',),
      }),
      floatingActionButton: new FloatingActionButton({
        child: new Icon(Icons.add),
        onPressed: this.createCallbackID(function () {
          this.changeOpacity();
        }),
      }),
      body: new AnimatedSize({
        child:new Container({
          width: this.size,
          height: this.size,
          color:Colors.orange(),
        }),
        duration:new Duration({milliseconds:300}),
      }),
    });
    return widget;
  }
}

module.exports = {
  PageExampleAnimatedSize,
};
