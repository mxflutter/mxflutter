

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
} = require("js_flutter.js");

const { SectionTitle } = require("./component/section_title.js");

let { PageExampleAppBar } = require("examples/example_app_bar.js");
let { PageExampleText } = require("examples/example_text.js");
let { PageExampleButton } = require("examples/example_button.js");

let { PageExampleSnakeBar } = require("examples/example_snake_bar.js");
let { PageExampleColumn } = require("examples/example_column.js");
let { PageExampleRow } = require("examples/example_row.js");
let { PageExampleContainer } = require("examples/example_container.js");
let { PageExampleFlutterLogo } = require("examples/example_flutter_logo.js");
let { PageExampleColor } = require("examples/example_flutter_color.js");
let { PageExampleIcon } = require("examples/example_flutter_icon.js");
let { PageExampleImage } = require("examples/example_image.js");
let { PageExamplePlaceholder } = require("examples/example_placeholder.js");
let { PageExampleScaffold } = require("examples/example_scaffold.js");


//Animated
const { PageExampleAnimatedBuilder } = require("./examples/animation/example_animated_builder.js");
const { PageExampleAnimatedBuilderV2 } = require("./examples/animation/example_animated_builder_v2.js");
const { PageExampleAnimatedContainer } = require("./examples/animation/example_animated_container.js");
const { PageExampleAnimatedCrossFade } = require("./examples/animation/example_animated_cross_fade.js");
const { PageExampleAnimatedDefaultTextStyle } = require("./examples/animation/example_animated_default_text_style.js");
const { PageExampleAnimatedListState } = require("./examples/animation/example_animated_list_state.js");
const { PageExampleAnimatedModalBarrier } = require("./examples/animation/example_animated_modal_barrier.js");
const { PageExampleAnimatedOpacity } = require("./examples/animation/example_animated_opacity.js");
const { PageExampleAnimatedPhysicalModel } = require("./examples/animation/example_animated_physical_model.js");
const { PageExampleAnimatedPositioned } = require("./examples/animation/example_animated_positioned.js");
const { PageExampleAnimatedSize } = require("./examples/animation/example_animated_size.js");

const { PageExampleAnimatedWidget } = require("./examples/animation/example_animated_widget.js");
const { PageExampleAnimatedWidgetBaseState } = require("./examples/animation/example_animated_widget_base_state.js");
const { PageExampleDecoratedBoxTransition } = require("./examples/animation/example_decorated_box_transition.js");
const { PageExampleFadeTransition } = require("./examples/animation/example_fade_transition.js");
const { PageExampleHero } = require("./examples/animation/example_hero.js");
const { PageExamplePositionedTransition } = require("./examples/animation/example_positioned_transition.js");
const { PageExampleRotationTransition } = require("./examples/animation/example_rotation_transition.js");
const { PageExampleScaleTransition } = require("./examples/animation/example_scale_transition.js");
const { PageExampleSizeTransition } = require("./examples/animation/example_size_transition.js");
const { PageExampleSlideTransition } = require("./examples/animation/example_slide_transition.js");

class ExamplesPage extends MXJSStatelessWidget {
  constructor() {
    super("ExamplesPage");
  }

  build(context) {
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('Flutter Examples'),
      }),
      body: new Scrollbar({
        child: new ListView({
          children: [
            new SectionTitle("基础组件", { key: new Key("1") }),

            new ListTile({
              title: new Text("AppBar"),
              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleAppBar;
                  }
                }))
              }
            }),
            new ListTile({
              title: new Text("Text"),

              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleText;
                  }
                }))
              }
            }),
            new ListTile({
              title: new Text("Button"),
              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleButton;
                  }
                }))
              }
            }),
            new ListTile({
              title: new Text("Image"),
              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleImage;
                  }
                }))
              }
            }),
            new ListTile({
              title: new Text("Placeholder"),
              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExamplePlaceholder;
                  }
                }))
              }
            }),
            new ListTile({
              title: new Text("Icon"),

              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleIcon;
                  }
                }))
              }
            }),
            new ListTile({
              title: new Text("Color"),
              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleColor;
                  }
                }))
              }
            }),
            new SectionTitle("布局组件", { key: new Key("2") }),
            // this.genSectionTitle(context,"布局组件"),
            new ListTile({
              title: new Text("Column"),
              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleColumn;
                  }
                }))
              }
            }),
            new ListTile({
              title: new Text("Row"),
              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleRow;
                  }
                }))
              }
            }),
            new ListTile({
              title: new Text("Container"),
              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleContainer;
                  }
                }))
              }
            }),
            new SectionTitle("动画组件", { key: new Key("3") }),
            // this.genSectionTitle(context,"动画组件"),
            new ListTile({
              title: new Text("AnimatedBuilder"),

              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleAnimatedBuilder;
                  }
                }))
              }
            }),
            new ListTile({
              title: new Text("AnimatedBuilder v2"),
              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleAnimatedBuilderV2;
                  }
                }))
              }
            }),
            new ListTile({
              title: new Text("AnimatedContainer"),
              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleAnimatedContainer;
                  }
                }))
              }
            }),
            new ListTile({
              title: new Text("AnimatedCrossFade"),
              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleAnimatedCrossFade;
                  }
                }))
              }
            }),
            new ListTile({
              title: new Text("AnimatedDefaultTextStyle"),
 
              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleAnimatedDefaultTextStyle;
                  }
                }))
              }
            }),
            new ListTile({
              title: new Text("AnimatedListState"),
              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleAnimatedListState;
                  }
                }))
              }
            }),
            new ListTile({
              title: new Text("AnimatedModalBarrier"),
              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleAnimatedModalBarrier;
                  }
                }))
              }
            }),
            new ListTile({
              title: new Text("AnimatedOpacity"),
              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleAnimatedOpacity;
                  }
                }))
              }
            }),
            new ListTile({
              title: new Text("AnimatedPhysicalModel"),
              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleAnimatedPhysicalModel;
                  }
                }))
              }
            }),
            new ListTile({
              title: new Text("AnimatedPositioned"),
              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleAnimatedPositioned;
                  }
                }))
              }
            }),
            new ListTile({
              title: new Text("AnimatedSize"),
              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleAnimatedSize;
                  }
                }))
              }
            }),
            new ListTile({
              title: new Text("AnimatedWidget"),
              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleAnimatedWidget;
                  }
                }))
              }
            }),
            new ListTile({
              title: new Text("AnimatedWidgetBaseState"),
              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleAnimatedWidgetBaseState;
                  }
                }))
              }
            }),
            new ListTile({
              title: new Text("DecoratedBoxTransition"),

              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleDecoratedBoxTransition;
                  }
                }))
              }
            }),
            new ListTile({
              title: new Text("FadeTransition"),

              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleFadeTransition;
                  }
                }))
              }
            }),
            new ListTile({
              title: new Text("Hero"),
              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleHero;
                  }
                }))
              }
            }),
            new ListTile({
              title: new Text("PositionedTransition"),
              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExamplePositionedTransition;
                  }
                }))
              }
            }),
            new ListTile({
              title: new Text("RotationTransition"),
              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleRotationTransition;
                  }
                }))
              }
            }),
            new ListTile({
              title: new Text("ScaleTransition"),

              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleScaleTransition;
                  }
                }))
              }
            }),
            new ListTile({
              title: new Text("SizeTransition"),
              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleSizeTransition;
                  }
                }))
              }
            }),
            new ListTile({
              title: new Text("SlideTransition"),
              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleSlideTransition;
                  }
                }))
              }
            }),
            new SectionTitle("其他组件", { key: new Key("4") }),
            // this.genSectionTitle(context,"其他组件"),
            new ListTile({
              title: new Text("FlutterLogo"),
              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleFlutterLogo;
                  }
                }))
              }
            }),
            new ListTile({
              title: new Text("Scaffold"),
              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleScaffold;
                  }
                }))
              }
            }),
            new ListTile({
              title: new Text("SnackBar"),
              onTap: function () {
                Navigator.push(context, new MaterialPageRoute({
                  builder: function (context) {
                    return new PageExampleSnakeBar;
                  }
                }))
              }
            }),
          ],
        })
      })
    });
    return widget;
  }
}

module.exports = {
  ExamplesPage,
};
