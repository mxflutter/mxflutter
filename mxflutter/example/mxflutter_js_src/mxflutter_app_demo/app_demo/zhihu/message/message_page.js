

//message_page.js 正式开始，😝

let {
    runApp,
    MXJSFlutterApp,
    MXJSWidgetState,
    MXJSStatefulWidget,
    MaterialApp,
    Scaffold,
    AppBar,
    Text,
    Center,
    Key
  
} = require("js_flutter.js");

let {GlobalConfig} = require("./zhihu/global_config.js")
class MessagePage extends MXJSStatefulWidget {
    constructor(){
        super("MessagePage", {key: new Key("MessagePage")});
    }

    createState() {
        return new MessagePageState(this);
    }
}

class MessagePageState extends MXJSWidgetState {
 
    build(context){
        let widget = new MaterialApp({
            home: new Scaffold({
                appBar: new AppBar({
                    title: new Center({
                        child: new Text('消息')
                    })
                }),
                body: new Center({
                    child: new Text("努力开发中~")
                })
            })
            // theme: GlobalConfig.themeData
        });
        return widget;
    }
}

module.exports = { MessagePage };
