

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

class PageExampleNetworkAPI extends MXJSStatefulWidget {
  constructor() {
    super("PageExampleFetch");
  }

  createState() {
    return new PageExampleNetworkAPIState(this);
  }
}

class PageExampleNetworkAPIState extends MXJSWidgetState {
  constructor() {
    super("PageExampleNetworkAPIState");
    this.response = "点击小人Run上面的代码";
  }

  fetchCodeText() {
    return "network.sendRequest";
  }

  ///networkapi 示例
  testNetwork(url, method, { headers, body, incrementalUpdates, withCredentials } = {}) {
    network.sendRequest({
      url, method, headers, body, withCredentials,
      onCreateRequest: function (requestID) {

      },
      onReceiveResponse: function (status, respHeaders, responseURL) {
      },
      onCompleteResponse: function (status, respHeaders, origResponseType, responseData, errorDesc, isTimeOut) {

        let showText = "responseData";

        if (errorDesc == null) {
          //ok
          showText = responseData;
        }
        else {
          //fail
          showText = errorDesc;
        }

        this.setState(function () {

          this.response = showText;

        }.bind(this));

      }.bind(this),
      onReceiveIncrementalData: function (responseString, progress, total) {

      },
      onReceiveDataProgress: function (progress, total) {

      },
      onUploadProgress: function (progress, total) {

      },

    });
  }

  build(context) {
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text("Network NativeApi Example"),
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

              this.testNetwork(cgi);

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
  PageExampleNetworkAPI,
};
