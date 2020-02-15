//VSCode Run support=====================================================================================
//为便于在JS IDE如VSCode，webStorm里脱离APP环境执行JS，以快速验证JS代码正确性
//用g_isNativeEnvironment检查是否在App环境，
//如果不在App环境，Native接口重定向到JS同名函数打印调用
//jsFlutterRequire 转调Node运行环境中的require
//如果不能运行，核对下js_ide_node_run_support.js文件中jsFlutterLibDir 相对路径
//新建文件拷贝这个头
let g_isNativeEnvironment = typeof JSAPI_require != "undefined" ? true : false;
function jsFlutterRequire(file) {
  if (!g_isNativeEnvironment) {
    console.log("[JS]-MXJSFlutter:: jsFlutterRequire", ...arguments);
    let { calcJSFrameworkFilePath } = require("./js_ide_node_run_support.js");
    return require(calcJSFrameworkFilePath(file));
  }
  return mxRequire(file);
}
//VSCode Run support end ================================================================================

//zhihu.js 正式开始，😝


let {
  MXJSLog,
  runApp,
  MXJSFlutterApp,
  MXJSWidget,
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
  CrossAxisAlignment,
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
} = jsFlutterRequire("js_flutter_ui.js");


class PageExampleRow extends MXJSWidget {
  constructor(){
    super("PageExampleRow");
  }

  genSevenContainers(){
    return  [
      new Container({
        color:Colors.red(),
        height:100,
        width:30,
      }),
      new Container({
        color:Colors.orange(),
        height:100,
        width:30,
      }),
      new Container({
        color:Colors.yellow(),
        height:100,
        width:30,
      }),
      new Container({
        color:Colors.green(),
        height:100,
        width:30,
      }),
      new Container({
        color:Colors.indigo(),
        height:100,
        width:30,
      }),
      new Container({
        color:Colors.purple(),
        height:100,
        width:30,
      }),
    ];
  }


  genThreeContainers(){
    return  [
      new Container({
        color:Colors.red(),
        height:100,
        width:30,
      }),
      new Container({
        color:Colors.orange(),
        height:100,
        width:30,
      }),
      new Container({
        color:Colors.yellow(),
        height:100,
        width:30,
      }),
    ];
  }

  build(context){
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('Row',),
      }),
      body: new ListView({
        children:[
          new ListTile({title:new Text("Row"),}),
          new Row({
            children: [
              new Container({
                color:Colors.red(),
                height:100,
                width:30,
              }),
              new Container({
                color:Colors.orange(),
                height:100,
                width:30,
              }),
              new Container({
                color:Colors.yellow(),
                height:100,
                width:30,
              }),
              new Container({
                color:Colors.green(),
                height:100,
                width:30,
              }),
              new Container({
                color:Colors.indigo(),
                height:100,
                width:30,
              }),
              new Container({
                color:Colors.purple(),
                height:100,
                width:30,
              }),
            ],
          }),

          new ListTile({title:new Text("Row Top-Left"),}),
          new Container({
            color:Colors.grey(),
            height:200,
            child:new Row({
              mainAxisAlignment:MainAxisAlignment.start,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: this.genThreeContainers(),
            }),
          }),
          new ListTile({title:new Text("Row Top-Middle"),}),
          new Container({
            color:Colors.grey(),
            height:200,
            child:new Row({
              mainAxisAlignment:MainAxisAlignment.start,
              crossAxisAlignment:CrossAxisAlignment.center,
              children: this.genThreeContainers(),
            }),
          }),
          new ListTile({title:new Text("Row Top-Right"),}),
          new Container({
            color:Colors.grey(),
            height:200,
            child:new Row({
              mainAxisAlignment:MainAxisAlignment.start,
              crossAxisAlignment:CrossAxisAlignment.end,
              children: this.genThreeContainers(),
            }),
          }),

          new ListTile({title:new Text("Row Center-Left"),}),
          new Container({
            color:Colors.grey(),
            height:200,
            child:new Row({
              mainAxisAlignment:MainAxisAlignment.center,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: this.genThreeContainers(),
            }),
          }),
          new ListTile({title:new Text("Row Center-Center"),}),
          new Container({
            color:Colors.grey(),
            height:200,
            child:new Row({
              mainAxisAlignment:MainAxisAlignment.center,
              crossAxisAlignment:CrossAxisAlignment.center,
              children: this.genThreeContainers(),
            }),
          }),
          new ListTile({title:new Text("Row Center-Right"),}),
          new Container({
            color:Colors.grey(),
            height:200,
            child:new Row({
              mainAxisAlignment:MainAxisAlignment.center,
              crossAxisAlignment:CrossAxisAlignment.end,
              children: this.genThreeContainers(),
            }),
          }),

          new ListTile({title:new Text("Row Bottom-Left"),}),
          new Container({
            color:Colors.grey(),
            height:200,
            child:new Row({
              mainAxisAlignment:MainAxisAlignment.end,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: this.genThreeContainers(),
            }),
          }),
          new ListTile({title:new Text("Row Bottom-Middle"),}),
          new Container({
            color:Colors.grey(),
            height:200,
            child:new Row({
              mainAxisAlignment:MainAxisAlignment.end,
              crossAxisAlignment:CrossAxisAlignment.center,
              children: this.genThreeContainers(),
            }),
          }),
          new ListTile({title:new Text("Row Bottom-Right"),}),
          new Container({
            color:Colors.grey(),
            height:200,
            child:new Row({
              mainAxisAlignment:MainAxisAlignment.end,
              crossAxisAlignment:CrossAxisAlignment.end,
              children: this.genThreeContainers(),
            }),
          }),



          new ListTile({title:new Text("Row SpaceAround-Left"),}),
          new Container({
            color:Colors.grey(),
            height:200,
            child:new Row({
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: this.genThreeContainers(),
            }),
          }),
          new ListTile({title:new Text("Row SpaceAround-Middle"),}),
          new Container({
            color:Colors.grey(),
            height:200,
            child:new Row({
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              crossAxisAlignment:CrossAxisAlignment.center,
              children: this.genThreeContainers(),
            }),
          }),
          new ListTile({title:new Text("Row SpaceAround-Right"),}),
          new Container({
            color:Colors.grey(),
            height:200,
            child:new Row({
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              crossAxisAlignment:CrossAxisAlignment.end,
              children: this.genThreeContainers(),
            }),
          }),




          new ListTile({title:new Text("Row SpaceBetween-Left"),}),
          new Container({
            color:Colors.grey(),
            height:200,
            child:new Row({
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: this.genThreeContainers(),
            }),
          }),
          new ListTile({title:new Text("Row SpaceBetween-Middle"),}),
          new Container({
            color:Colors.grey(),
            height:200,
            child:new Row({
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              crossAxisAlignment:CrossAxisAlignment.center,
              children: this.genThreeContainers(),
            }),
          }),
          new ListTile({title:new Text("Row SpaceBetween-Right"),}),
          new Container({
            color:Colors.grey(),
            height:200,
            child:new Row({
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              crossAxisAlignment:CrossAxisAlignment.end,
              children: this.genThreeContainers(),
            }),
          }),

          new ListTile({title:new Text("Row SpaceEvenly-Left"),}),
          new Container({
            color:Colors.grey(),
            height:200,
            child:new Row({
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: this.genThreeContainers(),
            }),
          }),
          new ListTile({title:new Text("Row SpaceEvenly-Middle"),}),
          new Container({
            color:Colors.grey(),
            height:200,
            child:new Row({
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              crossAxisAlignment:CrossAxisAlignment.center,
              children: this.genThreeContainers(),
            }),
          }),
          new ListTile({title:new Text("Row SpaceEvenly-Right"),}),
          new Container({
            color:Colors.grey(),
            height:200,
            child:new Row({
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              crossAxisAlignment:CrossAxisAlignment.end,
              children: this.genThreeContainers(),
            }),
          }),


        ],
      })
    });
    return widget;
  }
}

module.exports = {
  PageExampleRow,
};
