

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
} = require("js_flutter.js");

const dart_sdk = require("dart_sdk");
const dart = dart_sdk.dart;

const { SectionTitle } = require("./component/section_title.js");

const packages__dio = require("packages/dio/dio.js");

const bridge_netwrok = require("./native_bridge/mxf_bridge_netwrok.js");
const network = bridge_netwrok.network_ios;
const fetch = bridge_netwrok.fetch;


let cgi = "https://c.m.163.com/nc/article/headline/T1348649580692/0-10.html";

class PageExampleFetch extends MXJSStatefulWidget {
  constructor() {
    super("PageExampleFetch");

    this.data = "biz data";
    this.count = 0;
  }

  createState() {
    return new PageExampleFetchState(this);
  }
}

class PageExampleFetchState extends MXJSWidgetState {
  constructor() {
    super("PageExampleNetworkState");
    this.response = "点击小人Run上面的代码";
  }

  fetchCodeText() {
    return "  async testFetch() {\
      let resp = await fetch(urlStr);\
    }";
  }

  ///fetch 示例
  async testFetch() {
    try {
      let response = await fetch(cgi);
      MXJSLog.log("let obj = await fetch():request() " + response.text);
      return response.text;

    } catch (e$) {
      let e = dart.getThrown(e$);
      MXJSLog.log("testFetch error:" + e);
      return e;

    }
  }

  build(context) {
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text("Fetch Example"),
      }),
      body: new ListView({
        children: [
          new SectionTitle("Code 获取网易新闻"),
          new ListTile({
            trailing: new Icon(Icons["directions_run"]),
            title: new Text(this.fetchCodeText(), {
              style: new TextStyle({
                color: Colors.gray,
              })
            }),
            onTap: async function () {
              let text = await this.testFetch();

              this.setState(function () {

                this.response = text;

              }.bind(this));

            }.bind(this)
          }),
          new SectionTitle("Response"),

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
  PageExampleFetch,
};
