

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
  FlatButton,
  RaisedButton,
  FloatingActionButton,
  Column,
  Row,
  IconButton,
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
  Image,
  Theme,
  Padding,
  Scrollbar,
  Key,
  Navigator,
  MaterialPageRoute,
} = require("js_flutter.js");

const { SectionTitle } = require("./component/section_title.js");

let { PageExampleDio } = require("platform/example_dio.js");
let { PageExampleFetch } = require("platform/example_fetch.js");
let { PageExampleNetworkAPI } = require("platform/example_network_native_api.js");
let { PageExampleMessageChannel } = require("platform/example_message_channel.js");
let { PageExampleSharedPreferences } = require("platform/example_shared_preferences.js");




class PlatformExamplesPage extends MXJSStatelessWidget {
  constructor() {
    super("PlatformExamplesPage");
  }

  build(context) {
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('Platform Examples'),
      }),
      body: new Scrollbar({
        child: new ListView({
          children: [
            new SectionTitle("MessageChannel"),

            new ListTile({
              title: new Text("MessageChannel"),
              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleMessageChannel;
                  }
                }))
              }
            }),
            new SectionTitle("网络组件", { key: new Key("1") }),

            new ListTile({
              title: new Text("Dio Examples"),
              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleDio;
                  }
                }))
              }
            }),

            new ListTile({
              title: new Text("Fetch Examples"),
              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleFetch;
                  }
                }))
              }
            }),

            new ListTile({
              title: new Text("Network NativeApi"),
              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleNetworkAPI;
                  }
                }))
              }
            }),
            new SectionTitle("存储"),

            new ListTile({
              title: new Text("shared_preferences"),
              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleSharedPreferences;
                  }
                }))
              }
            }),

          ],
        })
      })
    });
    return widget;
  }
}

module.exports = {
  PlatformExamplesPage,
};
