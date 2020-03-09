

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
  AnimatedDefaultTextStyle,
  Duration,
  Alignment,
} = require("js_flutter.js");

const { SectionTitle } = require("./component/section_title.js");

class PageExampleAnimatedDefaultTextStyle extends MXJSStatefulWidget {
  constructor() {
    super('PageExampleAnimatedDefaultTextStyle');
  }

  createState() {
    return new PageExampleAnimatedDefaultTextStyleState();
  }
}

class PageExampleAnimatedDefaultTextStyleState extends MXJSWidgetState {

  constructor(){
    super();
    this.fontSize = 20;
  }

  build(context){
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('PageExampleAnimatedDefaultTextStyle',),
      }),
      body: new ListView({
        children:[
          new SectionTitle("PageExampleAnimatedDefaultTextStyle"),
          new Container({
            height:600,
            alignment:Alignment.center,
            child:new AnimatedDefaultTextStyle({
              child:new Text("Hello"),
              style:new TextStyle({
                fontWeight: FontWeight.bold,
                fontSize:this.fontSize,
                color:Colors.blue,
              }),
              duration: new Duration({milliseconds:350}),
            }),
          }),
          new Row({
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
              new RaisedButton({
                child:new Text("缩小"),
                onPressed:function(){
                  this.setState(function() {
                    this.fontSize -= 30;
                  }.bind(this));
                }.bind(this)
              }),
              new SizedBox({
                width: 10,
                height: 10,
              }),
              new RaisedButton({
                child:new Text("放大"),
                onPressed:function(){
                  this.setState(function() {
                    this.fontSize += 30;
                  }.bind(this));
                }.bind(this)
              }),
            ]
          }),
        ],
      })
    });
    return widget;
  }
}

module.exports = {
  PageExampleAnimatedDefaultTextStyle,
};
