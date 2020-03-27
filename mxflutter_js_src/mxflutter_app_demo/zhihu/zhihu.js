
let {
  runApp,
  MXJSFlutterApp,
  MXJSWidgetState,
  MXJSStatefulWidget,
  MaterialApp
} = require("js_flutter.js");

let {Index} = require("./zhihu/index.js");

class JSZhiHuPage extends MXJSStatefulWidget {
    constructor() {
        super('JSZhiHuPage');
    }
  
    createState() {
        return new JSZhiHuPageState(this);
    }
}

  
class JSZhiHuPageState extends MXJSWidgetState {
    build(context){
        let widget = new MaterialApp({
            title: "知乎-高仿版",
            home: new Index()
        });
        return widget;
    }
}

module.exports = { JSZhiHuPage };

