

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
} = require("js_flutter.js");

const { SectionTitle } = require("./component/section_title.js");


class PageExampleButton extends MXJSStatelessWidget {
  constructor(){
    super("PageExampleButton");
  }

  build(context){
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('Button',),
      }),
      body: new ListView({
        children:[
          new SectionTitle("RaisedButton"),
          new RaisedButton({
            child:new Text("普通按钮"),
            onPressed:function () {
              MXJSLog.log("Click");
            },
          }),
          new SectionTitle("失效Disable"),
          new RaisedButton({
            child:new Text("Disable 按钮"),
          }),
          new SectionTitle("FlatButton"),
          new FlatButton({
            child:new Text("Flat 按钮"),
          }),
          new FlatButton({
            textColor:Colors.black,
            child:new Text("Flat 按钮"),
          }),
          new SectionTitle("Icon Button"),
          new IconButton({
            icon:new Icon(Icons.camera),
          }),
          new SectionTitle("Floating Action Button"),
          new FloatingActionButton({
            child:new Icon(Icons.camera),
          }),
        ],
      })
    });
    return widget;
  }
}

module.exports = {
  PageExampleButton,
};
