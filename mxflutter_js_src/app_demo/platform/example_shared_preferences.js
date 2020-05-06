

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
  TextDecorationStyle,
  TextOverflow,
  Padding,
  Icons,
  MethodChannel
} = require("js_flutter.js");

const dart_sdk = require("dart_sdk");
const dart = dart_sdk.dart;
const async = dart_sdk.async;

const { SectionTitle } = require("./component/section_title.js");
let packages__sp = require("packages/shared_preferences/shared_preferences.js");


async function testPreference() {
  let packages__sp = require("packages/shared_preferences/shared_preferences.js");

  try {

    let _prefs = (await packages__sp.SharedPreferences.getInstance());
    _prefs.setString("mxflutter", "MXFlutter SharedPreferences: Count : " + this.count++);



    let v = _prefs.getString("soap");
    MXJSLog.log("_prefs.getString('soap'):" + v);

    _prefs.setStringList("soaplist", ["soap", "mxflutter uuuuu"]);

    let vList = _prefs.getStringList("soaplist");
    MXJSLog.log("_prefs.getStringList('soaplist'):" + vList);

  } catch (e$) {
    let e = dart.getThrown(e$);
    MXJSLog.log("testPreference error:" + e);
    return e;

  }


}


class PageExampleSharedPreferences extends MXJSStatefulWidget {
  constructor() {
    super("PageExampleSharedPreferences");

  }

  createState() {
    return new PageExampleSharedPreferencesState(this);
  }
}

class PageExampleSharedPreferencesState extends MXJSWidgetState {
  constructor() {
    super("PageExampleSharedPreferencesState");
    this.response = "点击小人Run上面的代码";
    this.count = 0;

    this.prefs = null;
    this.setup();
  }

  async setup() {
    this.prefs = (await packages__sp.SharedPreferences.getInstance());
  }


  dioCodeText() {
    return "prefs.setString(‘mxflutter’, str)";
  }
  dioCodeText2() {
    return "this.prefs.getString('mxflutter')";
  }


  build(context) {
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text("MessageChannel Example"),
      }),
      body: new ListView({
        children: [
          new SectionTitle("Code 调用prefs.setString"),
          new ListTile({
            trailing: new Icon(Icons["directions_run"]),
            title: new Text(this.dioCodeText(), {
              style: new TextStyle({
                color: Colors.gray,
              })
            }),
            onTap: async function () {


              this.setState(function () {

                let str = "MXFlutter SharedPreferences: Count : " + this.count++;

                let v = this.prefs.setString("mxflutter", str);
                this.response = " prefs.setString('mxflutter'," + str + ")";

              }.bind(this));

            }.bind(this)
          }),
          new SectionTitle("Code 调用 prefs.getString"),
          new ListTile({
            trailing: new Icon(Icons["directions_run"]),
            title: new Text(this.dioCodeText2(), {
              style: new TextStyle({
                color: Colors.gray,
              })
            }),
            onTap: async function () {

              this.setState(function () {
                let v = this.prefs.getString("mxflutter");
                this.response = v;

              }.bind(this));

            }.bind(this)
          }),
          new SectionTitle("prefs Result"),

          new Padding({
            padding: EdgeInsets.all(10),
            child: new Text(this.response, {
              style: new TextStyle({
                color: Colors.gray,
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
  PageExampleSharedPreferences,
};
