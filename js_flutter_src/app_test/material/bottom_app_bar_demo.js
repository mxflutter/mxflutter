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

//pesto.js 正式开始，😝

let {
  runApp,
  MXJSFlutterApp,
  MXJSWidget,
  Scaffold,
  Container,
  Color,
  AppBar,
  Text,
  ListView,
  Icon,
  IconData,
  FloatingActionButton,
  GestureDetector,
  Expanded,
  Row,
  AlignmentDirectional,
  BottomAppBar,
  IconButton,
  FloatingActionButtonLocation,
  Colors,
  CircularNotchedRectangle,
  EdgeInsetsDirectional,
  TextStyle,
  Radio,
  Semantics,
  MergeSemantics,
  RawMaterialButton,
  BoxConstraints,
  HitTestBehavior,
  MXJSStatelessWidget,
  CircleBorder,
  BorderSide,
  MainAxisAlignment,
  SizedBox,

} = jsFlutterRequire("js_flutter_ui.js");

class JSChoiceValue{
    constructor({
        value,
        title,
        label,
    } = {}) {
        this.value = value;
        this.title = title;
        this.label = label;
    }
}

class JSNamedColor{
    constructor({
        color,
        name,
    } = {}) {
        this.color = color;
        this.name = name;
    }
}

// Notch
kShowNotchTrue = new JSChoiceValue({
    title: 'On',
    label: 'show bottom appbar notch',
    value: true,
});

kShowNotchFalse = new JSChoiceValue({
    title: 'Off',
    label: 'do not show bottom appbar notch',
    value: false,
});

// FAB Position
kFabEndDocked = new JSChoiceValue({
    title: 'Attached - End',
    label: 'floating action button is docked at the end of the bottom app bar',
    value: FloatingActionButtonLocation.endDocked,
});

kFabCenterDocked = new JSChoiceValue({
    title: 'Attached - Center',
    label: 'floating action button is docked at the center of the bottom app bar',
    value: FloatingActionButtonLocation.centerDocked,
});

kFabEndFloat = new JSChoiceValue({
    title: 'Free - End',
    label: 'floating action button floats above the end of the bottom app bar',
    value: FloatingActionButtonLocation.endFloat,
});

kFabCenterFloat = new JSChoiceValue({
    title: 'Free - Center',
    label: 'floating action button is floats above the center of the bottom app bar',
    value: FloatingActionButtonLocation.centerFloat,
});        
    

kFabColors = [
    new JSNamedColor({color: new Color(0xFFFFFFFF), name: 'Clear'}),
    new JSNamedColor({color: new Color(0xFFFFC100), name: 'Orange'}),
    new JSNamedColor({color: new Color(0xFF91FAFF), name: 'Light Blue'}),
    new JSNamedColor({color: new Color(0xFF00D1FF), name: 'Cyan'}),
    new JSNamedColor({color: new Color(0xFF00BCFF), name: 'Cerulean'}),
    new JSNamedColor({color: new Color(0xFF009BEE), name: 'Blue'}),
];


class _JSHeading extends MXJSStatelessWidget {
    constructor ({
        text,
    } = {}) {
        super();
        this.text = text;
    }

    build(context){
        return new Container({
            height: 56.0,
            padding: EdgeInsetsDirectional.only({start: 26.0}),
            alignment: new AlignmentDirectional({start: -1.0, y:0.0}),
            child: new Text(
                this.text,
                {style: new TextStyle({
                    inherit: false,
                    fontSize: 18.0,
                    decorationColor: new Color(0xFF123456),
                    decorationStyle: TextDecorationStyle.wavy,
                    color: new Color(0xFF123456),
                })},
            ),
        });
    }
}

class _JSRadioItem extends MXJSWidget{
    constructor ({
        value,
        groupValue,
        onChanged,
    } = {}) {
        super();
        this.value = value;
        this.groupValue = groupValue;
        this.onChanged = onChanged;

        console.log("[JS]-MXJSFlutter:: jsFlutterRequire..........", value , groupValue);

    }

    build(context){
        return new Container({
            height: 56.0,
            padding: EdgeInsetsDirectional.only({start: 36.0}),
            alignment: new AlignmentDirectional({start: -1.0, y:0.0}),
            child: new MergeSemantics({
                child: new Row({
                    children: [
                        new Radio({
                            value: this.value,
                            groupValue: this.groupValue,
                            onChanged: this.createCallbackID(function () {
                                this.onChanged(this.value);
                            }),
                        }),
                        new Expanded({
                            child: new Semantics({
                                container: true,
                                button: true,
                                label: this.value.label,
                                child: new GestureDetector({
                                    behavior: HitTestBehavior.opaque,
                                    onTap: this.createCallbackID(function () {
                                        this.onChanged(this.value);
                                    }),
                                    child: new Text(this.value.title),
                                }),
                            }),
                        }),
                    ],
                }),
            }),
        });
    }
}

class _JSColorsItem extends MXJSWidget{
    constructor ({
        colors,
        selectedColor,
        onChanged,
    } = {}) {
        super();
        this.colors = colors;
        this.selectedColor = selectedColor;
        this.onChanged = onChanged;
    }
    
    build(context){
        let rowContents = [];
        this.colors.forEach(function(namedColor) {
            let widget = new RawMaterialButton({
                onPressed: this.createCallbackID(function () {
                    this.onChanged(namedColor.color);
                }),
                constraints: new BoxConstraints({
                    minWidth: 32,
                    maxWidth: 32,
                    minHeight: 32,
                    maxHeight: 32,
                }),
                fillColor: namedColor.color,
                shape: new CircleBorder({
                    side: new BorderSide({
                        color: namedColor.color == this.selectedColor ? Colors.black() : new Color(0xFFD5D7DA),
                        width: 2.0,
                    }),
                }),
                child: new Semantics({
                    value: namedColor.name,
                    selected: namedColor.color == this.selectedColor,
                }),
            });
            rowContents.push(widget);
        }.bind(this))
        return new Row({
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: rowContents,
        });
    }
}

class JSBottomAPPBarDemo extends MXJSWidget {
    // _scaffoldKey;//new GlobalKey();
    constructor () {
        super();
        this._showNotch = kShowNotchTrue;
        this._fabLocation = kFabCenterDocked;
        this._babColor = kFabColors[1].color;
    }

    showSnackBar() {
        text =
        "When the Scaffold's floating action button location changes, "
        'the floating action button animates to its new position.'
        'The BottomAppBar adapts its shape appropriately.';

        _scaffoldKey.currentState.showSnackBar(
            new SnackBar({content: Text(text)}),
        );
    }

    onShowNotchChanged(value) {
        console.log("[JS]-MXJSFlutter:: jsFlutterRequire..........");
        this.setState(function() {
            this._showNotch = value;
        });
    }
    
    onFabLocationChanged(value) {
        this.setState(function() {
            this._fabLocation = value;
        });
    }
    
    onBabColorChange(value) {
        this.setState(function() {
            this._babColor = value;
        });
    }

    build(context){
        let floatingButtonLocation = this._fabLocation.value;

        let rowContents = [
            new IconButton({
                icon: new Icon(new IconData(0xe5d2,{fontFamily:'MaterialIcons', semanticLabel: 'Show bottom sheet'})),
                tooltip: 'Show bottom sheet',
                onPressed: this.createCallbackID(function () {
                    Scaffold.of(context).showSnackBar(
                        new SnackBar({content: new Text('This is a dummy sheet action.')}),
                    );
                }),
            }),
        ];

        if (floatingButtonLocation == FloatingActionButtonLocation.centerDocked || floatingButtonLocation == FloatingActionButtonLocation.centerFloat)
        {
            rowContents.push(
                new Expanded({child:new SizedBox()})
            );
        }

        rowContents.push(
            new IconButton({
                icon: new Icon(new IconData(0xe8b6,{fontFamily:'MaterialIcons', semanticLabel: 'show search action'})),
                tooltip: 'show search action',
                onPressed: this.createCallbackID(function () {
                    Scaffold.of(context).showSnackBar(
                    new SnackBar({content: new Text('This is a dummy search action.')}),
                    );
                }),
            })
        );

        rowContents.push(
            new IconButton({
                icon: new Icon(new IconData(0xe5d3,{fontFamily:'MaterialIcons', semanticLabel: 'Show menu actions'})),
                tooltip: 'Show menu actions',
                onPressed: this.createCallbackID(function () {
                    Scaffold.of(context).showSnackBar(
                        new SnackBar({content: new Text('This is a dummy menu action.')}),
                    );
                }),
            })
        );

        let widget = new Scaffold({
            // key: _scaffoldKey,
            appBar: new AppBar({
                title: new Text('Bottom app bar'),
            }),
            body: new ListView({
                children : [
                    new _JSHeading({text: "Notch"}),
                    new _JSRadioItem({value: kShowNotchTrue, groupValue: this._showNotch, onChanged: this.onShowNotchChanged.bind(this)}),
                    new _JSRadioItem({value: kShowNotchFalse, groupValue: this._showNotch, onChanged: this.onShowNotchChanged.bind(this)}),

                    new _JSHeading({text: "FAB Position"}),
                    new _JSRadioItem({value: kFabEndDocked, groupValue: this._fabLocation, onChanged: this.onFabLocationChanged.bind(this)}),
                    new _JSRadioItem({value: kFabCenterDocked, groupValue: this._fabLocation, onChanged: this.onFabLocationChanged.bind(this)}),
                    new _JSRadioItem({value: kFabEndFloat, groupValue: this._fabLocation, onChanged: this.onFabLocationChanged.bind(this)}),
                    new _JSRadioItem({value: kFabCenterFloat, groupValue: this._fabLocation, onChanged: this.onFabLocationChanged.bind(this)}),

                    new _JSHeading({text: "App bar color"}),
                    new _JSColorsItem({colors: kFabColors, selectedColor: this._babColor, onChanged:this.onBabColorChange.bind(this)})

                ], 
            }),
            bottomNavigationBar: new BottomAppBar({
                // color: Colors.red,
                child: new Row({children: rowContents}),
                color: this._babColor,
                shape: this._showNotch.value == true ? new CircularNotchedRectangle() : null,
            }),
            floatingActionButton: new FloatingActionButton({
                child: new Icon(new IconData(0xe145,{fontFamily:'MaterialIcons',semanticLabel: 'Action'})),
                onPressed: this.createCallbackID(function () {
        
                }),
                backgroundColor: Colors.orange(),
            }),
            floatingActionButtonLocation: floatingButtonLocation,
        });
        return widget;
    }
}

module.exports = { JSBottomAPPBarDemo };


//测试代码，修改Widget name
//在VSCode 直接运行测试JS代码正确性,在app无任何效果
IDERunFileTestWidget(JSBottomAPPBarDemo);

//拷贝一份到目标文件
function IDERunFileTestWidget(TestPage) {
    if (g_isNativeEnvironment) {
        return;
    }
    class AppTest extends MXJSFlutterApp {
        constructor() {
            super("app_test", "initRouteName");
        }

        //子类重写
        //flutter->js 用于路由跳转
        //return MXJSWidget subclass
        createJSWidgetWithName(pageName) {
            let w = new TestPage;
            return w;
        }
    }

    let app = new AppTest;
    runApp(app);

    app.runWithPageName();
};