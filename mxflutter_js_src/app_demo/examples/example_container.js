

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
  BoxDecoration,
  BorderRadius,
  Radius,
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
  CrossAxisAlignment,
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


class PageExampleContainer extends MXJSStatelessWidget {
  constructor(){
    super("PageExampleContainer");
  }

  genSevenContainers(){
    return  [
      new Container({
        color:Colors.red,
        height:100,
        width:30,
      }),
      new Container({
        color:Colors.orange,
        height:100,
        width:30,
      }),
      new Container({
        color:Colors.yellow,
        height:100,
        width:30,
      }),
      new Container({
        color:Colors.green,
        height:100,
        width:30,
      }),
      new Container({
        color:Colors.indigo,
        height:100,
        width:30,
      }),
      new Container({
        color:Colors.purple,
        height:100,
        width:30,
      }),
    ];
  }


  genThreeContainers(){
    return  [
      new Container({
        color:Colors.red,
        height:100,
        width:30,
      }),
      new Container({
        color:Colors.orange,
        height:100,
        width:30,
      }),
      new Container({
        color:Colors.yellow,
        height:100,
        width:30,
      }),
    ];
  }

  build(context){
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('Container',),
      }),
      body: new ListView({
        children:[
          new ListTile({title:new Text("Container"),}),
          new Container({
            color:Colors.red,
            height:100,
          }),
          new ListTile({title:new Text("放置内容的Container"),}),
          new Container({
            color:Colors.orange,
            height:100,
            child:new Text("我有内容")
          }),
          new ListTile({title:new Text("Container里的Padding"),}),
          new Container({
            color:Colors.yellow,
            padding:EdgeInsets.all(10),
            child:new Text("我有内容")
          }),
          new ListTile({title:new Text("圆角的Container"),}),
          new Container({
            margin:EdgeInsets.all(10),
            padding:EdgeInsets.all(10),
            decoration:new BoxDecoration({
              borderRadius:BorderRadius.all(Radius.circular(4.0)),
              color:Colors.green,
            }),
            child:new Text("我是圆角Container")
          }),
          new ListTile({title:new Text("固定高宽的Container"),}),
          new Center({
            child:new Container({
              width:100,
              height:100,
              margin:EdgeInsets.all(10),
              padding:EdgeInsets.all(10),
              decoration:new BoxDecoration({
                borderRadius:BorderRadius.all(Radius.circular(4.0)),
                color:Colors.green,
              }),
              child:new Text("100x100",{
                style:new TextStyle({color:Colors.white}),
              })
            }),
          })
        ],
      })
    });
    return widget;
  }
}

module.exports = {
  PageExampleContainer,
};
