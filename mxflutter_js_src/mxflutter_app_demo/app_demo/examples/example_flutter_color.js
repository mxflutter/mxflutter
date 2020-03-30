

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
  FlutterLogo,
} = require("js_flutter.js");

class PageExampleColor extends MXJSStatelessWidget {
  constructor() {
    super("PageExampleColor");
  }

  genColorUI(title, colorPrefix) {
    let uiList = [
      new ListTile({ title: new Text(title) }),
    ];
    const colorKeys = ["50", "100", "150", "200", "250", "300", "350", "400", "450", "500", "550", "600", "650", "700", "750", "800", "850", "900"]
    //查找主色
    colorKeys.forEach(function (colorKey) {
      const colorFnName = colorPrefix + colorKey;
      if (Colors.hasOwnProperty(colorPrefix)) {

        let c = Colors[colorPrefix].swatch[parseInt(colorKey)];

        if (c != null) {
          uiList.push(new Container({
            height: 30,
            color: Colors[colorPrefix].swatch[colorKey],
            child: new Center({
              child: new Text(colorFnName),
            }),
          }));
        }
      }
    });
    //查找辅助色
    let accentUIList = [];
    colorKeys.forEach(function (colorKey) {
      const colorFnName = colorPrefix + "Accent";
      if (Colors.hasOwnProperty(colorFnName)) {

        let c = Colors[colorPrefix].swatch[parseInt(colorKey)];

        if (c != null) {
          accentUIList.push(new Container({
            height: 30,
            color: c,
            child: new Center({
              child: new Text(colorFnName + colorKey),
            }),
          }));
        }
      }
    });
    if (accentUIList.length > 0) {
      uiList.push(new ListTile({ title: new Text(title + "Accent") }));
      uiList = uiList.concat(accentUIList);
    }

    return uiList;
  }

  build(context) {
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('Color'),
      }),
      body: new ListView({
        children: [
          ...this.genColorUI("Red", "red"),
          ...this.genColorUI("pink", "pink"),
          ...this.genColorUI("purple", "purple"),
          ...this.genColorUI("deepPurple", "deepPurple"),
          ...this.genColorUI("indigo", "indigo"),
          ...this.genColorUI("blue", "blue"),
          ...this.genColorUI("lightBlue", "lightBlue"),
          ...this.genColorUI("cyan", "cyan"),
          ...this.genColorUI("teal", "teal"),
          ...this.genColorUI("green", "green"),
          ...this.genColorUI("lightGreen", "lightGreen"),
          ...this.genColorUI("lime", "lime"),
          ...this.genColorUI("yellow", "yellow"),
          ...this.genColorUI("amber", "amber"),
          ...this.genColorUI("orange", "orange"),
          ...this.genColorUI("deepOrange", "deepOrange"),
          ...this.genColorUI("brown", "brown"),
          ...this.genColorUI("blueGrey", "blueGrey"),
        ],
      })
    });
    return widget;
  }
}

module.exports = {
  PageExampleColor,
};
