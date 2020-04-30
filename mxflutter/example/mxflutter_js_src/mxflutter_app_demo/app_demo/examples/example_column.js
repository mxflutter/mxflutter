

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
} = require("js_flutter.js");


class PageExampleColumn extends MXJSStatelessWidget {
  constructor(){
    super("PageExampleColumn");
  }

  genSevenContainers(){
    return  [
      new Container({
        color:Colors.red,
        height:30,
        width:100,
      }),
      new Container({
        color:Colors.orange,
        height:30,
        width:100,
      }),
      new Container({
        color:Colors.yellow,
        height:30,
        width:100,
      }),
      new Container({
        color:Colors.green,
        height:30,
        width:100,
      }),
      new Container({
        color:Colors.indigo,
        height:30,
        width:100,
      }),
      new Container({
        color:Colors.purple,
        height:30,
        width:100,
      }),
    ];
  }


  genThreeContainers(){
    return  [
      new Container({
        color:Colors.red,
        height:30,
        width:100,
      }),
      new Container({
        color:Colors.orange,
        height:30,
        width:100,
      }),
      new Container({
        color:Colors.yellow,
        height:30,
        width:100,
      }),
    ];
  }

  build(context){
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('Column',),
      }),
      body: new ListView({
        children:[
          new ListTile({title:new Text("Column"),}),
          new Column({
            children: [
              new Container({
                color:Colors.red,
                height:30,
              }),
              new Container({
                color:Colors.orange,
                height:30,
              }),
              new Container({
                color:Colors.yellow,
                height:30,
              }),
              new Container({
                color:Colors.green,
                height:30,
              }),
              new Container({
                color:Colors.indigo,
                height:30,
              }),
              new Container({
                color:Colors.purple,
                height:30,
              }),
            ],
          }),

          new ListTile({title:new Text("Column Top-Left"),}),
          new Container({
            color:Colors.grey,
            height:200,
            child:new Column({
              mainAxisAlignment:MainAxisAlignment.start,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: this.genThreeContainers(),
            }),
          }),
          new ListTile({title:new Text("Column Top-Middle"),}),
          new Container({
            color:Colors.grey,
            height:200,
            child:new Column({
              mainAxisAlignment:MainAxisAlignment.start,
              crossAxisAlignment:CrossAxisAlignment.center,
              children: this.genThreeContainers(),
            }),
          }),
          new ListTile({title:new Text("Column Top-Right"),}),
          new Container({
            color:Colors.grey,
            height:200,
            child:new Column({
              mainAxisAlignment:MainAxisAlignment.start,
              crossAxisAlignment:CrossAxisAlignment.end,
              children: this.genThreeContainers(),
            }),
          }),

          new ListTile({title:new Text("Column Center-Left"),}),
          new Container({
            color:Colors.grey,
            height:200,
            child:new Column({
              mainAxisAlignment:MainAxisAlignment.center,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: this.genThreeContainers(),
            }),
          }),
          new ListTile({title:new Text("Column Center-Center"),}),
          new Container({
            color:Colors.grey,
            height:200,
            child:new Column({
              mainAxisAlignment:MainAxisAlignment.center,
              crossAxisAlignment:CrossAxisAlignment.center,
              children: this.genThreeContainers(),
            }),
          }),
          new ListTile({title:new Text("Column Center-Right"),}),
          new Container({
            color:Colors.grey,
            height:200,
            child:new Column({
              mainAxisAlignment:MainAxisAlignment.center,
              crossAxisAlignment:CrossAxisAlignment.end,
              children: this.genThreeContainers(),
            }),
          }),

          new ListTile({title:new Text("Column Bottom-Left"),}),
          new Container({
            color:Colors.grey,
            height:200,
            child:new Column({
              mainAxisAlignment:MainAxisAlignment.end,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: this.genThreeContainers(),
            }),
          }),
          new ListTile({title:new Text("Column Bottom-Middle"),}),
          new Container({
            color:Colors.grey,
            height:200,
            child:new Column({
              mainAxisAlignment:MainAxisAlignment.end,
              crossAxisAlignment:CrossAxisAlignment.center,
              children: this.genThreeContainers(),
            }),
          }),
          new ListTile({title:new Text("Column Bottom-Right"),}),
          new Container({
            color:Colors.grey,
            height:200,
            child:new Column({
              mainAxisAlignment:MainAxisAlignment.end,
              crossAxisAlignment:CrossAxisAlignment.end,
              children: this.genThreeContainers(),
            }),
          }),



          new ListTile({title:new Text("Column SpaceAround-Left"),}),
          new Container({
            color:Colors.grey,
            height:200,
            child:new Column({
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: this.genThreeContainers(),
            }),
          }),
          new ListTile({title:new Text("Column SpaceAround-Middle"),}),
          new Container({
            color:Colors.grey,
            height:200,
            child:new Column({
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              crossAxisAlignment:CrossAxisAlignment.center,
              children: this.genThreeContainers(),
            }),
          }),
          new ListTile({title:new Text("Column SpaceAround-Right"),}),
          new Container({
            color:Colors.grey,
            height:200,
            child:new Column({
              mainAxisAlignment:MainAxisAlignment.spaceAround,
              crossAxisAlignment:CrossAxisAlignment.end,
              children: this.genThreeContainers(),
            }),
          }),




          new ListTile({title:new Text("Column SpaceBetween-Left"),}),
          new Container({
            color:Colors.grey,
            height:200,
            child:new Column({
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: this.genThreeContainers(),
            }),
          }),
          new ListTile({title:new Text("Column SpaceBetween-Middle"),}),
          new Container({
            color:Colors.grey,
            height:200,
            child:new Column({
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              crossAxisAlignment:CrossAxisAlignment.center,
              children: this.genThreeContainers(),
            }),
          }),
          new ListTile({title:new Text("Column SpaceBetween-Right"),}),
          new Container({
            color:Colors.grey,
            height:200,
            child:new Column({
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              crossAxisAlignment:CrossAxisAlignment.end,
              children: this.genThreeContainers(),
            }),
          }),

          new ListTile({title:new Text("Column SpaceEvenly-Left"),}),
          new Container({
            color:Colors.grey,
            height:200,
            child:new Column({
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: this.genThreeContainers(),
            }),
          }),
          new ListTile({title:new Text("Column SpaceEvenly-Middle"),}),
          new Container({
            color:Colors.grey,
            height:200,
            child:new Column({
              mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              crossAxisAlignment:CrossAxisAlignment.center,
              children: this.genThreeContainers(),
            }),
          }),
          new ListTile({title:new Text("Column SpaceEvenly-Right"),}),
          new Container({
            color:Colors.grey,
            height:200,
            child:new Column({
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
  PageExampleColumn,
};
