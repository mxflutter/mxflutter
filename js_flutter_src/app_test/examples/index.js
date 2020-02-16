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
} = jsFlutterRequire("js_flutter_ui.js");

let { PageExampleButton }  = jsFlutterRequire("examples/example_button.js");
let { PageExampleAppBar } = jsFlutterRequire("examples/example_app_bar.js");
let { PageExampleSnakeBar } = jsFlutterRequire("examples/example_snake_bar.js");
let { PageExampleColumn } = jsFlutterRequire("examples/example_column.js");
let { PageExampleRow } = jsFlutterRequire("examples/example_row.js");
let { PageExampleContainer } = jsFlutterRequire("examples/example_container.js");
let { PageExampleFlutterLogo } = jsFlutterRequire("examples/example_flutter_logo.js");
let { PageExampleColor } = jsFlutterRequire("examples/example_flutter_color.js");
let { PageExampleIcon } = jsFlutterRequire("examples/example_flutter_icon.js");
let { PageExampleImage } = jsFlutterRequire("examples/example_image.js");
let { PageExamplePlaceholder } = jsFlutterRequire("examples/example_placeholder.js");
let { PageExampleScaffold } = jsFlutterRequire("examples/example_scaffold.js");
let { PageExampleText } = jsFlutterRequire("examples/example_text.js");
const { SectionTitle } = jsFlutterRequire("./component/section_title.js");
//Animated
const { PageExampleAnimatedBuilder } = jsFlutterRequire("./examples/animation/example_animated_builder.js");
const { PageExampleAnimatedBuilderV2 } = jsFlutterRequire("./examples/animation/example_animated_builder_v2.js");
const { PageExampleAnimatedContainer } = jsFlutterRequire("./examples/animation/example_animated_container.js");
const { PageExampleAnimatedCrossFade } = jsFlutterRequire("./examples/animation/example_animated_cross_fade.js");
const { PageExampleAnimatedDefaultTextStyle } = jsFlutterRequire("./examples/animation/example_animated_default_text_style.js");
const { PageExampleAnimatedListState } = jsFlutterRequire("./examples/animation/example_animated_list_state.js");
const { PageExampleAnimatedModalBarrier } = jsFlutterRequire("./examples/animation/example_animated_modal_barrier.js");
const { PageExampleAnimatedOpacity } = jsFlutterRequire("./examples/animation/example_animated_opacity.js");
const { PageExampleAnimatedPhysicalModel } = jsFlutterRequire("./examples/animation/example_animated_physical_model.js");
const { PageExampleAnimatedPositioned } = jsFlutterRequire("./examples/animation/example_animated_positioned.js");
const { PageExampleAnimatedSize } = jsFlutterRequire("./examples/animation/example_animated_size.js");

const { PageExampleAnimatedWidget } = jsFlutterRequire("./examples/animation/example_animated_widget.js");
const { PageExampleAnimatedWidgetBaseState } = jsFlutterRequire("./examples/animation/example_animated_widget_base_state.js");
const { PageExampleDecoratedBoxTransition } = jsFlutterRequire("./examples/animation/example_decorated_box_transition.js");
const { PageExampleFadeTransition } = jsFlutterRequire("./examples/animation/example_fade_transition.js");
const { PageExampleHero } = jsFlutterRequire("./examples/animation/example_hero.js");
const { PageExamplePositionedTransition } = jsFlutterRequire("./examples/animation/example_positioned_transition.js");
const { PageExampleRotationTransition } = jsFlutterRequire("./examples/animation/example_rotation_transition.js");
const { PageExampleScaleTransition } = jsFlutterRequire("./examples/animation/example_scale_transition.js");
const { PageExampleSizeTransition } = jsFlutterRequire("./examples/animation/example_size_transition.js");
const { PageExampleSlideTransition } = jsFlutterRequire("./examples/animation/example_slide_transition.js");

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
