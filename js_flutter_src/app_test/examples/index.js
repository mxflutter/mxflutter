

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
  Key
} = require("js_flutter_ui.js");

let { PageExampleButton }  = require("examples/example_button.js");
let { PageExampleAppBar } = require("examples/example_app_bar.js");
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
let { PageExampleText } = require("examples/example_text.js");
const { SectionTitle } = require("./component/section_title.js");
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

class ExamplesPage extends MXJSWidget {
  constructor(){
    super("ExamplesPage");
  }

  genSectionTitle(context,title){
    return new Container({
      padding: EdgeInsets.all(10.0),
      color: Theme.of(context).primaryColor,
      child: new Row({
        children: [
          new Icon(new IconData(0xe80e, { fontFamily: 'MaterialIcons' }), { size: 20, color: new Color(0xFFFFFFFF) }),
          new Padding({ padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0) }),
          new Text(title, {
            textAlign: TextAlign.start,
            style:new TextStyle({
              fontSize: 16,
              fontWeight: Theme.of(context).textTheme.title.fontWeight,
              color:Colors.white()
            })
          })
        ]
      })
    });
  }

  build(context){
    let widget = new Scaffold({
      appBar: new AppBar({
        title: new Text('Flutter Examples',),
      }),
      body: new Scrollbar({
        child:new ListView({
          children:[
            new SectionTitle("基础组件",{key: new Key("1")}),
            // this.genSectionTitle(context,"基础组件"),
            new ListTile({
              title:new Text("AppBar"),
              onTap: this.createCallbackID(function () {
                this.navigatorPush(new PageExampleAppBar());
              }),
            }),
            new ListTile({
              title:new Text("Text"),
              onTap: this.createCallbackID(function () {
                this.navigatorPush(new PageExampleText());
              }),
            }),
            new ListTile({
              title:new Text("Button"),
              onTap: this.createCallbackID(function () {
                this.navigatorPush(new PageExampleButton());
              }),
            }),
            new ListTile({
              title:new Text("Image"),
              onTap: this.createCallbackID(function () {
                this.navigatorPush(new PageExampleImage());
              }),
            }),
            new ListTile({
              title:new Text("Placeholder"),
              onTap: this.createCallbackID(function () {
                this.navigatorPush(new PageExamplePlaceholder());
              }),
            }),
            new ListTile({
              title:new Text("Icon"),
              onTap: this.createCallbackID(function () {
                this.navigatorPush(new PageExampleIcon());
              }),
            }),
            new ListTile({
              title:new Text("Color"),
              onTap: this.createCallbackID(function () {
                this.navigatorPush(new PageExampleColor());
              }),
            }),
            new SectionTitle("布局组件",{key:new Key("2")}),
            // this.genSectionTitle(context,"布局组件"),
            new ListTile({
              title:new Text("Column"),
              onTap: this.createCallbackID(function () {
                this.navigatorPush(new PageExampleColumn());
              }),
            }),
            new ListTile({
              title:new Text("Row"),
              onTap: this.createCallbackID(function () {
                this.navigatorPush(new PageExampleRow());
              }),
            }),
            new ListTile({
              title:new Text("Container"),
              onTap: this.createCallbackID(function () {
                this.navigatorPush(new PageExampleContainer());
              }),
            }),
            new SectionTitle("动画组件",{key:new Key("3")}),
            // this.genSectionTitle(context,"动画组件"),
            new ListTile({
              title:new Text("AnimatedBuilder"),
              onTap: this.createCallbackID(function () {
                this.navigatorPush(new PageExampleAnimatedBuilder());
              }),
            }),
            new ListTile({
              title:new Text("AnimatedBuilder v2"),
              onTap: this.createCallbackID(function () {
                this.navigatorPush(new PageExampleAnimatedBuilderV2());
              }),
            }),
            new ListTile({
              title:new Text("AnimatedContainer"),
              onTap: this.createCallbackID(function () {
                this.navigatorPush(new PageExampleAnimatedContainer());
              }),
            }),
            new ListTile({
              title:new Text("AnimatedCrossFade"),
              onTap: this.createCallbackID(function () {
                this.navigatorPush(new PageExampleAnimatedCrossFade());
              }),
            }),
            new ListTile({
              title:new Text("AnimatedDefaultTextStyle"),
              onTap: this.createCallbackID(function () {
                this.navigatorPush(new PageExampleAnimatedDefaultTextStyle());
              }),
            }),
            new ListTile({
              title:new Text("AnimatedListState"),
              onTap: this.createCallbackID(function () {
                this.navigatorPush(new PageExampleAnimatedListState());
              }),
            }),
            new ListTile({
              title:new Text("AnimatedModalBarrier"),
              onTap: this.createCallbackID(function () {
                this.navigatorPush(new PageExampleAnimatedModalBarrier());
              }),
            }),
            new ListTile({
              title:new Text("AnimatedOpacity"),
              onTap: this.createCallbackID(function () {
                this.navigatorPush(new PageExampleAnimatedOpacity());
              }),
            }),
            new ListTile({
              title:new Text("AnimatedPhysicalModel"),
              onTap: this.createCallbackID(function () {
                this.navigatorPush(new PageExampleAnimatedPhysicalModel());
              }),
            }),
            new ListTile({
              title:new Text("AnimatedPositioned"),
              onTap: this.createCallbackID(function () {
                this.navigatorPush(new PageExampleAnimatedPositioned());
              }),
            }),
            new ListTile({
              title:new Text("AnimatedSize"),
              onTap: this.createCallbackID(function () {
                this.navigatorPush(new PageExampleAnimatedSize());
              }),
            }),
            new ListTile({
              title:new Text("AnimatedWidget"),
              onTap: this.createCallbackID(function () {
                this.navigatorPush(new PageExampleAnimatedWidget());
              }),
            }),
            new ListTile({
              title:new Text("AnimatedWidgetBaseState"),
              onTap: this.createCallbackID(function () {
                this.navigatorPush(new PageExampleAnimatedWidgetBaseState());
              }),
            }),
            new ListTile({
              title:new Text("DecoratedBoxTransition"),
              onTap: this.createCallbackID(function () {
                this.navigatorPush(new PageExampleDecoratedBoxTransition());
              }),
            }),
            new ListTile({
              title:new Text("FadeTransition"),
              onTap: this.createCallbackID(function () {
                this.navigatorPush(new PageExampleFadeTransition());
              }),
            }),
            new ListTile({
              title:new Text("Hero"),
              onTap: this.createCallbackID(function () {
                this.navigatorPush(new PageExampleHero());
              }),
            }),
            new ListTile({
              title:new Text("PositionedTransition"),
              onTap: this.createCallbackID(function () {
                this.navigatorPush(new PageExamplePositionedTransition());
              }),
            }),
            new ListTile({
              title:new Text("RotationTransition"),
              onTap: this.createCallbackID(function () {
                this.navigatorPush(new PageExampleRotationTransition());
              }),
            }),
            new ListTile({
              title:new Text("ScaleTransition"),
              onTap: this.createCallbackID(function () {
                this.navigatorPush(new PageExampleScaleTransition());
              }),
            }),
            new ListTile({
              title:new Text("SizeTransition"),
              onTap: this.createCallbackID(function () {
                this.navigatorPush(new PageExampleSizeTransition());
              }),
            }),
            new ListTile({
              title:new Text("SlideTransition"),
              onTap: this.createCallbackID(function () {
                this.navigatorPush(new PageExampleSlideTransition());
              }),
            }),
            new SectionTitle("其他组件",{key:new Key("4")}),
            // this.genSectionTitle(context,"其他组件"),
            new ListTile({
              title:new Text("FlutterLogo"),
              onTap: this.createCallbackID(function () {
                this.navigatorPush(new PageExampleFlutterLogo());
              }),
            }),
            new ListTile({
              title:new Text("Scaffold"),
              onTap: this.createCallbackID(function () {
                this.navigatorPush(new PageExampleScaffold());
              }),
            }),
            new ListTile({
              title:new Text("SnackBar"),
              onTap: this.createCallbackID(function () {
                this.navigatorPush(new PageExampleSnakeBar());
              }),
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
