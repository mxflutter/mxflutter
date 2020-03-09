

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
  AnimatedCrossFade,
  CrossFadeState,
  Duration,
} = require("js_flutter.js");

const { SectionTitle } = require("./component/section_title.js");

class PageExampleAnimatedCrossFade extends MXJSStatefulWidget {
  constructor() {
    super('PageExampleAnimatedCrossFade');
  }

  createState() {
    return new PageExampleAnimatedCrossFadeState();
  }
}

class PageExampleAnimatedCrossFadeState extends MXJSWidgetState {

  constructor() {
    super();
    this.selected = true;
  }

  build(context) {
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('PageExampleAnimatedCrossFade'),
      }),
      floatingActionButton: new FloatingActionButton({
        child: new Icon(Icons.add),
        onPressed: function () {
          this.setState(function () {
            this.selected = !this.selected;
          }.bind(this))
        }.bind(this)
      }),
      body: new AnimatedCrossFade({
        crossFadeState: this.selected ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        duration: new Duration({ milliseconds: 200 }),
        firstChild: new Container({
          width: 500,
          height: 300,
          color: Colors.orange,
          child: new Center({
            child: new Text("第一页", {
              style: new TextStyle({
                color: Colors.white,
                fontSize: 20,
              })
            })
          }),
        }),
        secondChild: new Container({
          width: 500,
          height: 300,
          color: Colors.blue,
          child: new Center({
            child: new Text("第二页", {
              style: new TextStyle({
                color: Colors.white,
                fontSize: 20,
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
