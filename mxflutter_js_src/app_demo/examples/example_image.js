

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
} = require("js_flutter.js");

class PageExampleImage extends MXJSStatelessWidget {
  constructor(){
    super("PageExampleImage");
  }

  genImageUI(boxFitName){
    return [
      new ListTile({
        title: new Text('BoxFit.'+boxFitName,),
      }),
      new Container({
        height:150,
        width: 300,
        color:Colors.orange,
        child:Image.asset('people/ali_landscape.png', {
          package: 'flutter_gallery_assets',
          fit: BoxFit[boxFitName],
          height: 100
        }),
      }),
    ];
  }


  build(context){
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('Image',),
      }),
      body: new ListView({
        children:[
          new ListTile({
            title: new Text('加载网络图片',),
          }),
          Image.network('https://cdn.pixabay.com/photo/2015/10/30/20/13/sunrise-1014712_960_720.jpg',{
            fit: BoxFit.cover,
            height: 250
          }),
          new ListTile({
            title: new Text('加载本地图片',),
          }),
          Image.asset('people/ali_landscape.png', {
            package: 'flutter_gallery_assets',
            fit: BoxFit.cover,
            height: 250
          }),
          ...this.genImageUI("contain"),
          ...this.genImageUI("fill"),
          ...this.genImageUI("fitHeight"),
          ...this.genImageUI("fitWidth"),
          ...this.genImageUI("scaleDown"),
          ...this.genImageUI("none"),
        ],
      })
    });
    return widget;
  }
}

module.exports = {
  PageExampleImage,
};
