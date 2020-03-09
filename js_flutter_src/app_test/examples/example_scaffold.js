

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
  BottomNavigationBar,
  BottomNavigationBarType,
  BottomNavigationBarItem,
  AnimationController,
  Duration,
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
  Placeholder,
  Theme,
} = require("js_flutter.js");

class HomePage extends MXJSStatelessWidget {
  constructor() {
    super("HomePage");
  }
  build(context) {
    return new Center({
      child: new Text("HomePage"),
    })
  }
}


class IdeaPage extends MXJSStatelessWidget {
  constructor() {
    super("IdeaPage");
  }
  build(context) {
    return new Center({
      child: new Text("IdeaPage"),
    })
  }
}


class MessagePage extends MXJSStatelessWidget {
  constructor() {
    super("MessagePage");
  }
  build(context) {
    return new Center({
      child: new Text("MessagePage"),
    })
  }
}


class MyPage extends MXJSStatelessWidget {
  constructor() {
    super("MyPage");
  }
  build(context) {
    return new Center({
      child: new Text("MyPage"),
    })
  }
}

class _NavigationIconView {
  constructor({ icon, title, vsync }) {
    this.item = new BottomNavigationBarItem({
      icon: icon,
      title: title
    });
    this.controller = new AnimationController({
      duration: new Duration({
        milliseconds: 200
      })
    });
  }
}



class PageExampleScaffold extends MXJSStatefulWidget {
  constructor() {
    super("PageExampleScaffold");
  }

  createState() {
    return new PageExampleScaffoldState(this);
  }
}

class PageExampleScaffoldState extends MXJSWidgetState {
  constructor(widget) {
    super(widget);
    this._currentIndex = 0;
    this._navigationViews = [];
    this._pageList = [];
    this._currentPage = null;
  }

  build(context) {
    this._navigationViews = [
      new _NavigationIconView({
        icon: new Icon(Icons.assignment),
        title: new Text("首页")
      }),
      new _NavigationIconView({
        icon: new Icon(Icons.all_inclusive),
        title: new Text("想法")
      }),
      new _NavigationIconView({
        icon: new Icon(Icons.add_alert),
        title: new Text("通知")
      }),
      new _NavigationIconView({
        icon: new Icon(Icons.perm_identity),
        title: new Text("我的")
      }),
    ];

    this._pageList = [
      new HomePage(),
      new IdeaPage(),
      new MessagePage(),
      new MyPage()
    ];

    this._currentPage = this._pageList[this._currentIndex];


    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('Scafold'),
      }),
      body: new Center({
        child: this._currentPage
      }),
      floatingActionButton: new FloatingActionButton({
        child: new Icon(Icons.add),
        onPressed: function () {

        }
      }),
      bottomNavigationBar: new BottomNavigationBar({
        items: this._navigationViews.map(navigationIconView => navigationIconView.item),
        currentIndex: this._currentIndex,
        fixedColor: Theme.of(context).primaryColor,
        type: BottomNavigationBarType.fixed,
        onTap: function (index) {
          this.setState(function () {
            this._navigationViews[this._currentIndex].controller.reverse();
            this._currentIndex = index;
            this._navigationViews[this._currentIndex].controller.forward();
            this._currentPage = this._pageList[this._currentIndex];
          }.bind(this))
        }.bind(this)
      }),
    });
    return widget;
  }
}

module.exports = {
  PageExampleScaffold,
};
