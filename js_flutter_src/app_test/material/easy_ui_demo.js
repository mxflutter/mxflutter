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

//easy_ui_demo.js 正式开始，😝

let {
  MXJSLog,
  runApp,
  MXJSFlutterApp,
  MXJSWidget,
  Scaffold,
  Container,
  Color,
  AppBar,
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
} = jsFlutterRequire("js_flutter_ui.js");


class JSEasyUIDemo extends MXJSWidget {

    constructor(){
        super();
        this.dropdownValue = 'three';
        this.iconColorIndex = 10;
        this.sliderValue = 25.0;
        this.sliderDiscreteValue = 20.0;
    }

    // Buttons
    _buildButtons() {
        let widget = new Column({
            children:[
                new Row({
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        new FlatButton({
                            child: new Text(
                                "Flat Button",{
                                    style: new TextStyle({color: new Color(0xFF000000)}),
                                }),
                            onPressed: function() {
                                MXJSLog.log('Flat Button Pressed');
                            },
                            onHighlightChanged: function(args) {
                                MXJSLog.log('Flat Button onHighlightChanged');
                            }
                            // color: new Color(0x60000000),
                        }),
                        new RaisedButton({
                            child: new Text("Raised Button"),
                            onPressed: function() {
                                MXJSLog.log('Raised Button Pressed');
                            },
                            // color: new Color(0x60000000),
                        }),
                        new FloatingActionButton({
                            child: new Icon(new IconData(0xe145, {fontFamily: 'MaterialIcons'})),
                            tooltip: 'Floating Action Button',
                            onPressed: function() {
                                MXJSLog.log('Floating Action Button Pressed');
                            },
                        }),
                        new IconButton({
                            icon: new Icon(new IconData(0xe815, {fontFamily: 'MaterialIcons'})),
                            onPressed: function() {
                                MXJSLog.log('Icon Button Pressed');
                            },
                        }),
                    ],
                }),
                new Row({
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        new DropdownButton({
                            value: this.dropdownValue,
                            items: ['one', 'two', 'three', 'four'].map(function(value) {
                                return new DropdownMenuItem({
                                    value: value,
                                    child: new Text(value)
                                });
                            }),
                            onChanged: function(newValue) {
                                MXJSLog.log('Icon Button Pressed');
                                this.setState(function (){
                                    this.dropdownValue = newValue;
                                })
                            },
                        }),
                        new PopupMenuButton({
                            onSelected: function(args) {
                                MXJSLog.log('more button pressed, index ' + args);
                            },
                            itemBuilder: function(context) {
                                let list = [
                                    new PopupMenuItem({
                                        value: 1,
                                        child: new Text('App bar scrolls away'),
                                    }),
                                    new PopupMenuItem({
                                        value: 2,
                                        child: new Text('App bar stays away'),
                                    }),
                                    new PopupMenuItem({
                                        value: 3,
                                        child: new Text('App bar floats'),
                                    }),
                                    new PopupMenuItem({
                                        value: 4,
                                        child: new Text('App bar snaps'),
                                    }),
                                ];
                                return list;
                            },
                        }),
                        new ButtonBar({
                            mainAxisSize: MainAxisSize.min,
                            children:[
                                new RaisedButton({
                                    child: new Text('Button Bar 1'),
                                    onPressed: function() {
                                        MXJSLog.log('Button Bar 1 pressed');
                                    }
                                }),
                                new RaisedButton({
                                    child: new Text('Button Bar 2'),
                                    onPressed: function() {
                                        MXJSLog.log('Button Bar 2 pressed');
                                    }
                                }),
                            ]
                        }),
                    ],
                })
            ],
        });

        return widget;
    }

    // Texts
    _buildTexts() {
        let widget = new Container({
            padding: EdgeInsets.only({top: 10.0}),
            child: new Column({
                children:[
                    new Row({
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            new Container({
                                padding: EdgeInsets.only({right: 15.0}),
                                child: new Text(
                                    '这是一个text', {
                                    style: new TextStyle({
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.italic,
                                      color: new Color(0xFFFF00FF),
                                      fontSize: 20.0,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Color.fromRGBO(0, 0, 0, 1),
                                      decorationStyle: TextDecorationStyle.double,
                                    }),
                                    overflow: TextOverflow.ellipsis,
                                }),
                            }),
                            
                            new Expanded({
                                child: new RichText({
                                    text: new TextSpan({
                                        style: new TextStyle({
                                            color: new Color(0xFFFF8C00),
                                            fontSize: 18.0,
                                            decoration: TextDecoration.underline,
                                            decorationColor: Colors.orange(),
                                            decorationStyle: TextDecorationStyle.dashed,
                                        }),
                                        text: '超长文案rich text，超长文案rich text，超长文案rich text，超长文案rich text，超长文案rich text，超长文案rich text',
                                    }),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                }),
                            })
                        ],
                    })
                ],
            }),
        });

        return widget;
    }

    // Icons
    _buildIcons() {
        let iconColors = [
            Colors.red(),
            Colors.pink(),
            Colors.purple(),
            Colors.deepPurple(),
            Colors.indigo(),
            Colors.blue(),
            Colors.lightBlue(),
            Colors.cyan(),
            Colors.teal(),
            Colors.green(),
            Colors.lightGreen(),
            Colors.lime(),
            Colors.yellow(),
            Colors.amber(),
            Colors.orange(),
            Colors.deepOrange(),
            Colors.brown(),
            Colors.grey(),
            Colors.blueGrey(),
        ];
        
        let widget = new Container({
            padding: EdgeInsets.only({top: 10.0}),
            child: new Column({
                children:[
                    new Row({
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            new IconButton({
                                color: iconColors[this.iconColorIndex],
                                icon: new Icon(new IconData(0xe87c, {fontFamily: 'MaterialIcons'})),
                                onPressed: function() {
                                    this.iconColorIndex = (this.iconColorIndex + 1) % iconColors.length;
                                    this.setState(function() {
                                        
                                    })
                                },
                                iconSize: 24.0,
                            }),
                            new IconButton({
                                color: iconColors[this.iconColorIndex],
                                icon: new Icon(new IconData(0xe87c, {fontFamily: 'MaterialIcons'})),
                                onPressed: function() {
                                    this.iconColorIndex = (this.iconColorIndex + 1) % iconColors.length;
                                    this.setState(function() {

                                    })
                                },
                                iconSize: 36.0,
                            }),
                            new IconButton({
                                color: iconColors[this.iconColorIndex],
                                icon: new Icon(new IconData(0xe87c, {fontFamily: 'MaterialIcons'})),
                                onPressed: function() {
                                    this.iconColorIndex = (this.iconColorIndex + 1) % iconColors.length;
                                    this.setState(function() {
                                        
                                    })
                                },
                                iconSize: 48.0,
                            }),
                        ],
                    }),
                    new Row({
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                            new IconButton({
                                color: iconColors[this.iconColorIndex],
                                icon: new Icon(new IconData(0xe001, {fontFamily: 'MaterialIcons'})),
                                onPressed: function() {
                                    this.iconColorIndex = (this.iconColorIndex + 1) % iconColors.length;
                                    this.setState(function() {
                                        
                                    })
                                },
                                iconSize: 24.0,
                            }),
                            new IconButton({
                                color: iconColors[this.iconColorIndex],
                                icon: new Icon(new IconData(0xe001, {fontFamily: 'MaterialIcons'})),
                                onPressed: function() {
                                    this.iconColorIndex = (this.iconColorIndex + 1) % iconColors.length;
                                    this.setState(function() {
                                        
                                    })
                                },
                                iconSize: 36.0,
                            }),
                            new IconButton({
                                color: iconColors[this.iconColorIndex],
                                icon: new Icon(new IconData(0xe001, {fontFamily: 'MaterialIcons'})),
                                onPressed: function() {
                                    this.iconColorIndex = (this.iconColorIndex + 1) % iconColors.length;
                                    this.setState(function() {
                                        
                                    })
                                },
                                iconSize: 48.0,
                            }),
                        ],
                    })
                ],
            }),
        });

        return widget;
    }

    // TextFields
    _buildTextFields() {
        let widget = new Container({
            padding: EdgeInsets.only({top: 10.0}),
            child: new Column({
                children:[
                    new Container({
                        padding: EdgeInsets.only({right: 15.0}),
                        child: new TextField({
                            keyboardType: TextInputType.number(),
                            onSubmitted: function (args) {
                                MXJSLog.log('number onSubmitted');
                            },
                            decoration: new InputDecoration({
                                labelText: 'placeholder',
                            }),
                            onChanged: function(args) {
                                MXJSLog.log('number onChanged');
                            }
                        }),
                    }),
                    new SizedBox({
                        height: 24.0,
                    }),
                    new TextField({
                        controller: new TextEditingController({
                            text: 'initial text',
                        }),
                        keyboardType: TextInputType.emailAddress(),
                        onSubmitted: function (args) {
                            MXJSLog.log('email onSubmitted');
                        },
                        onChanged: function(args) {
                            MXJSLog.log('email onChanged');
                        }
                    }),
                ],
            }),
        });

        return widget;
    }

    // TextFormFields
    _buildTextFormFields() {
        let widget = new Container({
            padding: EdgeInsets.only({top: 10.0}),
            child: new Column({
                children:[
                    new Container({
                        padding: EdgeInsets.only({right: 15.0}),
                        child: new TextFormField({
                            decoration: new InputDecoration({
                                border: new UnderlineInputBorder(),
                                filled: true,
                                icon: new Icon(new IconData(0xe0be, {fontFamily: 'MaterialIcons'})),
                                hintText: 'Your email address',
                                labelText: 'E-mail',
                            }),
                            keyboardType: TextInputType.emailAddress(),
                            onFieldSubmitted: function (args) {
                                MXJSLog.log('email onFieldSubmitted');
                            },
                        }),
                    }),
                    new SizedBox({
                        height: 24.0,
                    }),
                    new Container({
                        padding: EdgeInsets.only({right: 15.0}),
                        child: new TextFormField({
                            decoration: new InputDecoration({
                                border: new UnderlineInputBorder(),
                                filled: true,
                                icon: new Icon(new IconData(0xe0cd, {fontFamily: 'MaterialIcons'})),
                                hintText: 'Where can we reach you?',
                                labelText: 'Phone Number *',
                                prefixText: '+1',
                            }),
                            keyboardType: TextInputType.phone(),
                            onFieldSubmitted: function (args) {
                                MXJSLog.log('phone onFieldSubmitted');
                            },
                        }),
                    }),
                ],
            }),
        });

        return widget;
    }

    // TextFormFields
    _buildSlider() {
        let widget = new Container({
            padding: EdgeInsets.only({top: 10.0}),
            child: new Column({
                children:[
                    new Container({
                        padding: EdgeInsets.only({right: 15.0}),
                        child: new Slider({
                            value: this.sliderValue,
                            min: 0.0,
                            max: 100.0,
                            onChanged:function (args) {
                                let value = args;
                                this.setState(function(){
                                    this.sliderValue = value;
                                });
                            }
                        }),
                    }),
                    new SizedBox({
                        height: 24.0,
                    }),
                    new Container({
                        padding: EdgeInsets.only({right: 15.0}),
                        child: new Slider({
                            value: this.sliderDiscreteValue,
                            min: 0.0,
                            max: 100.0,
                            divisions: 5,
                            label: this.sliderDiscreteValue.toString(),
                            onChanged:function (args) {
                                let value = args;
                                this.setState(function(){
                                    this.sliderDiscreteValue = value;
                                });
                            }
                        }),
                    }),
                ],
            }),
        });

        return widget;
    }

    build(context){
        let widget = new Scaffold({
            appBar: new AppBar({
                title: new Text('Easy UI'),
            }),
            body: new ListView({
                children: [
                    new Container({
                        padding: EdgeInsets.all(10.0),
                        child: new Column({
                            children: [
                                new Text('Button', {
                                    style: new TextStyle({
                                        fontSize: 20.0,
                                        color: Colors.indigo(),
                                        fontWeight: FontWeight.bold,
                                    })
                                }),
                                this._buildButtons(),
            
                                new Text('Text', {
                                    style: new TextStyle({
                                        fontSize: 20.0,
                                        color: Colors.indigo(),
                                        fontWeight: FontWeight.bold,
                                    })
                                }),
                                this._buildTexts(),

                                new Container({
                                    padding: EdgeInsets.only({top:15.0}),
                                    child: new Text('Icons', {
                                        style: new TextStyle({
                                            fontSize: 20.0,
                                            color: Colors.indigo(),
                                            fontWeight: FontWeight.bold,
                                        })
                                    }),
                                }),
                                this._buildIcons(),
        
                                new Container({
                                    padding: EdgeInsets.only({top:15.0}),
                                    child: new Text('TextField', {
                                        style: new TextStyle({
                                            fontSize: 20.0,
                                            color: Colors.indigo(),
                                            fontWeight: FontWeight.bold,
                                        })
                                    }),
                                }),
                                this._buildTextFields(),
        
                                new Container({
                                    padding: EdgeInsets.only({top:15.0}),
                                    child: new Text('TextFormField', {
                                        style: new TextStyle({
                                            fontSize: 20.0,
                                            color: Colors.indigo(),
                                            fontWeight: FontWeight.bold,
                                        })
                                    }),
                                }),
                                this._buildTextFormFields(),

                                new Container({
                                    padding: EdgeInsets.only({top:15.0}),
                                    child: new Text('Slider', {
                                        style: new TextStyle({
                                            fontSize: 20.0,
                                            color: Colors.indigo(),
                                            fontWeight: FontWeight.bold,
                                        })
                                    }),
                                }),
                                this._buildSlider(),
                            ]
                        }),
                    }),
                ]
            })
        });
        return widget;
    }
}

module.exports = { JSEasyUIDemo };


//测试代码，修改Widget name
//在VSCode 直接运行测试JS代码正确性,在app无任何效果
IDERunFileTestWidget(JSEasyUIDemo);

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