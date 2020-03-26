

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
  FlatButton,
  RaisedButton,
  FloatingActionButton,
  Column,
  Row,
  IconButton,
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



class PageExampleSnakeBar extends MXJSStatelessWidget {
  constructor(){
    super("PageExampleSnackbar");
  }

  build(context){
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('Idea Test',),
      }),
      body: new ListView({
        children:[
          new ListTile({
            leading:new Icon(Icons.ac_unit),
            title:new Text("Scaffold.of(context) 测试"),
          }),
          new MyScaffoldBody(),
        ],
      })
    });
    return widget;
  }
}

class MyScaffoldBody extends MXJSStatelessWidget {
  constructor(){
    super("MyScaffoldBody");
  }

  build(context){
    let widget =  new RaisedButton({
      child:new Text("测试 Scaffold.of(context)"),
      onPressed: function () {
        let context = {
          widgetID: this.widgetID,
        };
        Scaffold.of(context).showSnackBar(
          new SnackBar({content: new Text('我是通过JS脚本构建的,终于动态化了！！')})
        );
      }.bind(this),
    });
    return widget;
  }
}


module.exports = {
  PageExampleSnakeBar,
};
