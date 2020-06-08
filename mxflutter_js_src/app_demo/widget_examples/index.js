

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
  Align,
  Stack,
  Alignment,
  GestureDetector
} = require("js_flutter.js");

const { SectionTitle } = require("./component/section_title.js");

class WidgetExamplesPage extends MXJSStatelessWidget {
  constructor() {
    super("WidgetExamplesPage");
    this.widgetsArray = widgetsName.split(',');
    this.indexArray = this.calcIndexArray(this.widgetsArray);

  }

  calcIndexArray(widgetsArray) {

    let tempSet = new Set();
    for (let i = 1; i < widgetsArray.length; ++i) {
      let wName = widgetsArray[i];
      tempSet.add(wName.substring(0, 1));
    }

    return Array.from(tempSet);
  }

  build(context) {
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('Widget Examples'),
      }),
      body: new Stack({
        children: [new Scrollbar({
          child: ListView.builder({
            itemCount: this.widgetsArray.length,
            itemBuilder: function (context, index) {
              return new ListViewItem(this.widgetsArray[index]);
            }.bind(this)
          })
        }),
        new Align({
          alignment: Alignment.centerRight,//new FractionalOffset(1.0, 0.5),
          child: new SizedBox({
            width: 25,
            child: new Padding({
              padding: EdgeInsets.only({ top: 20 }),
              child: ListView.builder({
                itemCount: this.indexArray.length,
                itemBuilder: function (context, index) {
                  let t = this.indexArray[index];
                  return new GestureDetector({
                    onTap: function () {
                      this.onIndexTap(t)
                    }.bind(this),
                    child: new Text(t)
                  });
                }.bind(this)
              })
            })
          })
        })
        ]
      })
    });
    return widget;
  }

  onIndexTap(t) {
    let index = -1;
    for (; index < this.indexArray.length; ++i) {
      if (this.indexArray[index] == t) {
        break;
      }
    }

    if (index == -1) {
      return;
    }

    let h = index * 45;





  }
}

class ListViewItem extends MXJSStatelessWidget {
  constructor(title) {
    super('ListViewItem');
    this.title = title;
    this.subtitle = "";

  }

  build(context) {
    return new Container({
      height: 45,
      child: new ListTile({
        title: new Text(this.title),
        //subtitle: new Text(this.subtitle),
        leading: new Icon(new IconData(0xe06d, { fontFamily: 'MaterialIcons' }), { color: Theme.of(context).primaryColor }),
        //trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
        onTap: function () {
          Navigator.push(context, new MaterialPageRoute({
            builder: function (context) {
              return new PageExampleSharedPreferences;
            }
          }))
        }
      })
    });
  }
}

let widgetsName = "AbsorbPointer,AlertDialog,Align,AnimatedBuilder,AnimatedContainer,AnimatedCrossFade,AnimatedDefaultTextStyle,AnimatedListState,AnimatedModalBarrier,AnimatedOpacity,AnimatedPhysicalModel,AnimatedPositioned,AnimatedSize,AnimatedWidget,AnimatedWidgetBaseState,Appbar,AspectRatio,AssetBundle,BackdropFilter,Baseline,BottomNavigationBar,BottomSheet,ButtonBar,Card,Center,Checkbox,Chip,CircularProgressIndicator,ClipOval,ClipPath,ClipRect,Column,ConstrainedBox,Container,CupertinoActionSheet,CupertinoActivityIndicator,CupertinoAlertDialog,CupertinoButton,CupertinoContextMenu,CupertinoDatePicker,CupertinoDialog,CupertinoDialogAction,CupertinoFullscreenDialogTransition,CupertinoNavigationBar,CupertinoPageScaffold,CupertinoPageTransition,CupertinoPicker,CupertinoPopupSurface,CupertinoScrollbar,CupertinoSegmentedControl,CupertinoSlider,CupertinoSlidingSegmentedControl,CupertinoSwitch,CupertinoTabBar,CupertinoTabScaffold,CupertinoTabView,CupertinoTextField,CupertinoTimerPicker,CustomMultiChildLayout,CustomPaint,CustomScrollView,CustomSingleChildLayout,DataTable,Date & Time Pickers,DecoratedBox,DecoratedBoxTransition,DefaultTextStyle,Dismissible,Divider,DragTarget,Draggable,Drawer,DropdownButton,ExcludeSemantics,Expanded,ExpansionPanel,FadeTransition,FittedBox,FlatButton,FloatingActionButton,Flow,FlutterLogo,Form,FormField,FractionalTranslation,FractionallySizedBox,FutureBuilder,GestureDetector,GridView,Hero,Icon,IconButton,IgnorePointer,Image,IndexedStack,IntrinsicHeight,IntrinsicWidth,LayoutBuilder,LimitedBox,LinearProgressIndicator,ListBody,ListTile,ListView,LongPressDraggable,MaterialApp,MediaQuery,MergeSemantics,Navigator,NestedScrollView,NotificationListener,Offstage,Opacity,OutlineButton,OverflowBox,Padding,PageView,Placeholder,PopupMenuButton,PositionedTransition,Radio,RaisedButton,RawImage,RawKeyboardListener,RefreshIndicator,RichText,RotatedBox,RotationTransition,Row,Scaffold,ScaleTransition,ScrollConfiguration,Scrollable,Scrollbar,Semantics,SimpleDialog,SingleChildScrollView,SizeTransition,SizedBox,SizedOverflowBox,SlideTransition,Slider,SliverAppBar,SnackBar,Stack,Stepper,StreamBuilder,Switch,TabBar,TabBarView,Table,Text,TextField,Theme,Tooltip,Transform,WidgetsApp,Wrap";

module.exports = {
  WidgetExamplesPage,
};
