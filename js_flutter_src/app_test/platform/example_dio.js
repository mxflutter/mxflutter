

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

const { SectionTitle } = require("./component/section_title.js");

const packages__dio = require("packages/dio/dio.js");

const bridge_netwrok = require("./native_bridge/mxf_bridge_netwrok.js");
const network = bridge_netwrok.network;
const fetch = bridge_netwrok.fetch;


let cgi = "https://c.m.163.com/nc/article/headline/T1348649580692/0-10.html";

class PageExampleDio extends MXJSStatefulWidget {
  constructor() {
    super("PageExampleDio");

    this.data = "biz data";
    this.count = 0;
  }

  createState() {
    return new PageExampleDioState(this);
  }
}

class PageExampleDioState extends MXJSWidgetState {
  constructor() {
    super("PageExampleNetworkState");
    this.response = "点击小人Run上面的代码";
  }

  dioCodeText() {
    return "let resp = await Dio().get(cgi);";
  }
  
  //例子1，接口还未完全支持
  async testDio1() {
    try {
      let response = await packages__dio.Dio().get(cgi);
      MXJSLog.log("await Dio.get(urlStr):request() :" + response);
      return response;

    } catch (e$) {
      let e = dart.getThrown(e$);
      MXJSLog.log("testDio() error:" + e);
      return e;

    }
  }

  //例子2，接口还未完全支持
  async testDio2() {
    try {
      let dio = packages__dio.Dio();
      dio.options.headers = { "client": 'dio', 'common-header': 'xx' };

      let options = new packages__dio.Options.new();
      options.headers = { "a": "b" };

      return await dio.get(cgi, { options });

    } catch (e$) {
      let e = dart.getThrown(e$);
      MXJSLog.log("testDio() error:" + e);
      rethrow;
    }
  }

  build(context) {
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text("Dio Example"),
      }),
      body: new ListView({
        children: [
          new SectionTitle("Code 获取网易新闻"),
          new ListTile({
            trailing: new Icon(Icons["directions_run"]),
            title: new Text(this.dioCodeText(), {
              style: new TextStyle({
                color: Colors.gray,
              })
            }),
            onTap: async function () {
              let response = await this.testDio1();

              this.setState(function () {

                this.response = response.data;

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
  PageExampleDio,
};
