

//idea_page.js 正式开始，😝

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

let {GlobalConfig} = require("./zhihu/global_config.js");

class IdeaPage extends MXJSStatefulWidget {
    constructor(){
        super("IdeaPage", {key: new Key("IdeaPage")});
    }

    createState() {
        return new IdeaPageState(this);
    }
}

class IdeaPageState extends MXJSWidgetState {
    
    build(context){
        let widget = new MaterialApp({
            home: new Scaffold({
                appBar: new AppBar({
                    title: new Center({
                        child: new Text('想法')
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

module.exports = { IdeaPage };

