

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
//const packages__dio = require("packages/dio/src/dio_test.js");

let cgiDataUrl = "https://c.m.163.com/nc/article/headline/T1348649580692/0-10.html";
let cgiJsonUrl = "https://reactnative.dev/movies.json"

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
    this.dio = packages__dio.Dio();
  }

  dioCodeText() {
    return "let resp = await Dio().get(cgi);";
  }
  
  //例子1，最简单的用法 
  async testDio1(url) {
    
    try {
      let response = await this.dio.get(url);
      MXJSLog.log("await Dio.get(urlStr):request() :" + response);
      return response.data;

    } catch (e$) {
      let e = dart.getThrown(e$);
      MXJSLog.log("testDio() error:" + e);
      return e;

    }
  }

  //例子2，接口还未完全支持
  async testDio2(url) {
    const packages__dio = require("packages/dio/dio.js");
    
    try {
      let response =  await this.dio.get(url, { onReceiveProgress:function (progress,total){
        MXJSLog.log("testDio(): progress: " + progress/total);
      }});

      MXJSLog.log("await Dio.get(urlStr):request() :" + response);
      return response.data;

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
          new SectionTitle("Code 获取网易新闻text"),
          new ListTile({
            trailing: new Icon(Icons["directions_run"]),
            title: new Text(this.dioCodeText(), {
              style: new TextStyle({
                color: Colors.gray,
              })
            }),
            onTap: async function () {
              let response = await this.testDio2(cgiDataUrl);

              this.setState(function () {

                this.response = JSON.stringify(response);

              }.bind(this));

            }.bind(this)
          }),
          new SectionTitle("Code 获取Json Map"),
          new ListTile({
            trailing: new Icon(Icons["directions_run"]),
            title: new Text(this.dioCodeText(), {
              style: new TextStyle({
                color: Colors.gray,
              })
            }),
            onTap: async function () {
              let response = await this.testDio1(cgiJsonUrl);

              this.setState(function () {

                //response.data 为json map obj
                this.response = "json title:" + response["title"]  + " \r\n\r\n\r\njson text:" +  JSON.stringify(response);

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
