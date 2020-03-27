

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
  AnimatedPhysicalModel,
  Duration,
} = require("js_flutter.js");

const { SectionTitle } = require("./component/section_title.js");

class PageExampleAnimatedPhysicalModel extends MXJSStatefulWidget {
  constructor() {
    super('PageExampleAnimatedPhysicalModel');
  }

  createState() {
    return new PageExampleAnimatedPhysicalModelState();
  }
}

class PageExampleAnimatedPhysicalModelState extends MXJSWidgetState {
  constructor(){
    super();
    this.elevation = 50.0;
  }

  changeOpacity() {
    this.setState(function(){
      this.elevation = this.elevation == 50.0 ? 0.0 : 50.0;
    });
  }

  build(context){
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('PageExampleAnimatedPhysicalModel',),
      }),
      floatingActionButton: new FloatingActionButton({
        child: new Icon(Icons.add),
        onPressed: function () {
          this.changeOpacity();
        }.bind(this),
      }),
      body: new Center({
        child: new AnimatedPhysicalModel({
          child:new Container({
            width: 200,
            height: 200,
            color:Colors.orange,
          }),
          shape:BoxShape.rectangle,
          elevation: this.elevation,
          color:Colors.blue,
          shadowColor: Colors.grey,
          duration:new Duration({milliseconds:500}),
        }),
      }),
    });
    return widget;
  }
}

module.exports = {
  PageExampleAnimatedPhysicalModel,
};
