

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

// let { PageExampleDio } = require("platform/example_dio.js");
// let { PageExampleFetch } = require("platform/example_fetch.js");
// let { PageExampleNetworkAPI } = require("platform/example_network_native_api.js");
// let { PageExampleMessageChannel } = require("platform/example_message_channel.js");
// let { PageExampleSharedPreferences } = require("platform/example_shared_preferences.js");




class ProfileExamplesPage extends MXJSStatelessWidget {
  constructor() {
    super("ProfileExamplesPage");
  }

  build(context) {
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('Performance Profiling'),
      }),
      body: new Scrollbar({
        child: new ListView({
          children: [
            new SectionTitle("大页面 column模拟"),

            new ListTile({
              title: new Text("Column"),
              subtitle: new Text('200条Feeds同时渲染，模拟大页面刷新'),
              onTap: function () {

                let list_view = require("profile/column_profile.js");

                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new list_view.ListViewProfileDemo1;
                  }
                }));
              }
            }),
            new SectionTitle("MXWidget子元素 column模拟"),

            new ListTile({
              title: new Text("Column"),
              subtitle: new Text('100条FeedsMXWidget子元素渲染'),
              onTap: function () {

                let list_view = require("profile/column_submxwidget_profile.js");

                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new list_view.ListViewProfileDemo1;
                  }
                }));
              }
            }),
            new SectionTitle("ListView"),

            new ListTile({
              title: new Text("ListView"),
              subtitle: new Text('1000条新闻Feeds按需渲染，测试Listview启动和滑动性能'),
              onTap: function () {

                let list_view = require("profile/listview_profile.js");

                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new list_view.ListViewProfileDemo1;
                  }
                }));
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
  ProfileExamplesPage,
};
