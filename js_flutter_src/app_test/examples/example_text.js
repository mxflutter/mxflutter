

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
} = require("js_flutter.js");

const { SectionTitle } = require("./component/section_title.js");

class PageExampleText extends MXJSStatelessWidget {
  constructor(){
    super("PageExampleText");
  }

  build(context){
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('Text',),
      }),
      body: new ListView({
        children:[
          new SectionTitle("普通文本"),
          new ListTile({
            title:new Text("设置文本颜色",{
              style:new TextStyle({
                color:Colors.orange,
              })
            }),
          }),
          new SectionTitle("富文本"),
          new Padding({
            padding:EdgeInsets.all(10),
            child: new RichText({
              text: new TextSpan({
                style: new TextStyle({
                  color: new Color(0xFFFF8C00),
                  fontSize: 18.0,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.orange,
                  decorationStyle: TextDecorationStyle.dashed,
                }),
                text: '超长文案rich text，超长文案rich text，超长文案rich text，超长文案rich text，超长文案rich text，超长文案rich text',
                children: [
                  new TextSpan({
                    text: ' style  ',
                    style: new TextStyle({
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    })
                  }),
                  new TextSpan({
                    text: 'your text',
                    style: new TextStyle({
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    })
                  }),
                ],
              }),
              overflow: TextOverflow.ellipsis,
              maxLines: 99
            }),
          })
        ],
      })
    });
    return widget;
  }
}

module.exports = {
  PageExampleText,
};
