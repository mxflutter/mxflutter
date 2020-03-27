

//ask_page.js 正式开始，😝

let {
  runApp,
  MXJSFlutterApp,
  MXJSWidgetState,
  MXJSStatefulWidget,
  MaterialApp,
  Scaffold,
  AppBar,
  Container,
  Row,
  FlatButton,
  Text,
  Expanded,
  TextStyle,
  Colors,
  TextField,
  Icon,
  IconData,
  EdgeInsets,
  Column,
  SingleChildScrollView,
  InputDecoration,
  Navigator
  
} = require("js_flutter.js");

let {GlobalConfig} = require("./zhihu/global_config.js");


class AskPage extends MXJSStatefulWidget {
    constructor() {
        super('AskPage');
    }
  
    createState() {
        return new AskPageState(this);
    }
}

class AskPageState extends MXJSWidgetState {

    build(context){
        let widget = new MaterialApp({
            // theme: GlobalConfig.themeData,
            home: new Scaffold({
                appBar: new AppBar({
                    title: new Container({
                        child: new Row({
                            children: [
                                FlatButton.icon({
                                    onPressed:function(){
                                        Navigator.pop(context);
                                    },
                                    icon: new Icon(new IconData(0xe14c, {fontFamily: 'MaterialIcons'})),
                                    label: new Text("")
                                }),
                                new Expanded({
                                    child: new Container({
                                        child: new Text("提问")
                                    }),
                                }),
                                new FlatButton({
                                    onPressed:function(){

                                    },
                                    child: new Text("下一步", {style: new TextStyle({
                                        color: Colors.black
                                    })})
                                })
                            ]
                        })
                    })
                }),
                body: new SingleChildScrollView({
                    child: new Column({
                        children: [
                            new Container({
                                child: new TextField({
                                    decoration: new InputDecoration({
                                        hintText: "请输入标题",
                                        hintStyle: new TextStyle({
                                            color: Colors.black,
                                        })
                                    })
                                }),
                                margin: EdgeInsets.all(16.0)
                            })
                        ]
                    })
                })
            })
        })
        return widget;
    }
}

module.exports = { AskPage };

