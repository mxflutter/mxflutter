

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


class PageExampleAppBar extends MXJSStatelessWidget {
  constructor(){
    super("PageExampleAppBar");
  }

  build(context){
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('AppBar',),
      }),
      body: new ListView({
        children:[
          new ListTile({
            title: new Text('最简单的AppBar',),
          }),
          new AppBar({
            title: new Text('NormalAppBar',),
          }),
          new ListTile({
            title: new Text('标题换色',),
          }),
          new AppBar({
            title: new Text('NormalAppBar',{
              style:new TextStyle({
                color:Colors.white,
              }),
            }),
          }),
          new ListTile({
            title: new Text('背景换色',),
          }),
          new AppBar({
            backgroundColor: Colors.blue,
            title: new Text('NormalAppBar',{
              style:new TextStyle({
                color:Colors.white,
              }),
            }),
          }),
          new ListTile({
            title: new Text('设置 leading',),
          }),
          new AppBar({
            leading: new IconButton({
              icon:new Icon(Icons.add),
            }),
            title: new Text('AppBar',),
          }),
          new ListTile({
            title: new Text('设置 action',),
          }),
          new AppBar({
            actions:[
              new IconButton({
                icon:new Icon(Icons.camera),
              })
            ],
            title: new Text('AppBar',),
          }),
          new ListTile({
            title: new Text('设置多个action',),
          }),
          new AppBar({
            actions:[
              new IconButton({
                icon:new Icon(Icons.camera),
              }),
              new IconButton({
                icon:new Icon(Icons.print),
              }),
            ],
            title: new Text('AppBar',),
          }),
        ],
      })
    });
    return widget;
  }
}

module.exports = {
  PageExampleAppBar,
};
