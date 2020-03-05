

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
  AnimatedCrossFade,
  CrossFadeState,
  Duration,
} = require("js_flutter_ui.js");

const { SectionTitle } = require("./component/section_title.js");

class PageExampleAnimatedCrossFade extends MXJSWidget {
  constructor(){
    super("PageExampleAnimatedCrossFade");
    this.selected = true;
  }

  build(context){
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('PageExampleAnimatedCrossFade',),
      }),
      floatingActionButton: new FloatingActionButton({
        child: new Icon(Icons.add),
        onPressed: this.createCallbackID(function () {

          this.setState(function() {
            this.selected = !this.selected;
          })
        })
      }),
      body:  new AnimatedCrossFade({
        crossFadeState:this.selected ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        duration:new Duration({milliseconds:200}),
        firstChild:new Container({
          width:500,
          height:300,
          color:Colors.orange(),
          child: new Center({
            child:new Text("第一页",{
              style:new TextStyle({
                color:Colors.white(),
                fontSize:20,
              })
            })
          }),
        }),
        secondChild:new Container({
          width:500,
          height:300,
          color:Colors.blue(),
          child: new Center({
            child:new Text("第二页",{
              style:new TextStyle({
                color:Colors.white(),
                fontSize:20,
              })
            })
          }),
        }),
      }),
    });
    return widget;
  }
}

module.exports = {
  PageExampleAnimatedCrossFade,
};
