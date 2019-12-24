'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const _interceptors = dart_sdk._interceptors;
const ui = dart_sdk.ui;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__material = require('packages/flutter/material');
const colors = packages__flutter__material.src__material__colors;
const theme = packages__flutter__material.src__material__theme;
const scrollbar = packages__flutter__material.src__material__scrollbar;
const tab_controller = packages__flutter__material.src__material__tab_controller;
const scaffold = packages__flutter__material.src__material__scaffold;
const app_bar = packages__flutter__material.src__material__app_bar;
const tabs = packages__flutter__material.src__material__tabs;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const basic = packages__flutter__src__widgets__actions.src__widgets__basic;
const container = packages__flutter__src__widgets__actions.src__widgets__container;
const safe_area = packages__flutter__src__widgets__actions.src__widgets__safe_area;
const text = packages__flutter__src__widgets__actions.src__widgets__text;
const widget_inspector = packages__flutter__src__widgets__actions.src__widgets__widget_inspector;
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const scroll_view = packages__flutter__src__widgets__actions.src__widgets__scroll_view;
const packages__flutter__src__painting___network_image_web = require('packages/flutter/src/painting/_network_image_web');
const edge_insets = packages__flutter__src__painting___network_image_web.src__painting__edge_insets;
const packages__flutter__src__rendering__animated_size = require('packages/flutter/src/rendering/animated_size');
const flex = packages__flutter__src__rendering__animated_size.src__rendering__flex;
const colors_demo = Object.create(dart.library);
const $toRadixString = dartx.toRadixString;
const $padLeft = dartx.padLeft;
const $toUpperCase = dartx.toUpperCase;
const $map = dartx.map;
const $add = dartx.add;
const $length = dartx.length;
const $toList = dartx.toList;
let JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
let intToDefaultTextStyle = () => (intToDefaultTextStyle = dart.constFn(dart.fnType(text.DefaultTextStyle, [core.int])))();
let PaletteToTab = () => (PaletteToTab = dart.constFn(dart.fnType(tabs.Tab, [colors_demo.Palette])))();
let PaletteToPaletteTabView = () => (PaletteToPaletteTabView = dart.constFn(dart.fnType(colors_demo.PaletteTabView, [colors_demo.Palette])))();
let JSArrayOfPalette = () => (JSArrayOfPalette = dart.constFn(_interceptors.JSArray$(colors_demo.Palette)))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C0() {
    return C0 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 16,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 16
    });
  },
  get C51() {
    return C51 = dart.constList([50, 100, 200, 300, 400, 500, 600, 700, 800, 900], core.int);
  },
  get C52() {
    return C52 = dart.constList([100, 200, 400, 700], core.int);
  },
  get C53() {
    return C53 = dart.const({
      __proto__: text.Text.prototype,
      [Widget_key]: null,
      [Text_textWidthBasis]: null,
      [Text_semanticsLabel]: null,
      [Text_maxLines]: null,
      [Text_textScaleFactor]: null,
      [Text_overflow]: null,
      [Text_softWrap]: null,
      [Text_locale]: null,
      [Text_textDirection]: null,
      [Text_textAlign]: null,
      [Text_strutStyle]: null,
      [Text_style]: null,
      [Text_textSpan]: null,
      [Text_data]: "Colors"
    });
  }
});
const name$ = dart.privateName(colors_demo, "Palette.name");
const primary$ = dart.privateName(colors_demo, "Palette.primary");
const accent$ = dart.privateName(colors_demo, "Palette.accent");
const threshold$ = dart.privateName(colors_demo, "Palette.threshold");
colors_demo.Palette = class Palette extends core.Object {
  get name() {
    return this[name$];
  }
  set name(value) {
    super.name = value;
  }
  get primary() {
    return this[primary$];
  }
  set primary(value) {
    super.primary = value;
  }
  get accent() {
    return this[accent$];
  }
  set accent(value) {
    super.accent = value;
  }
  get threshold() {
    return this[threshold$];
  }
  set threshold(value) {
    super.threshold = value;
  }
  get isValid() {
    return this.name != null && this.primary != null && this.threshold != null;
  }
};
(colors_demo.Palette.new = function(opts) {
  let name = opts && 'name' in opts ? opts.name : null;
  let primary = opts && 'primary' in opts ? opts.primary : null;
  let accent = opts && 'accent' in opts ? opts.accent : null;
  let threshold = opts && 'threshold' in opts ? opts.threshold : 900;
  this[name$] = name;
  this[primary$] = primary;
  this[accent$] = accent;
  this[threshold$] = threshold;
  ;
}).prototype = colors_demo.Palette.prototype;
dart.addTypeTests(colors_demo.Palette);
dart.setGetterSignature(colors_demo.Palette, () => ({
  __proto__: dart.getGetters(colors_demo.Palette.__proto__),
  isValid: core.bool
}));
dart.setLibraryUri(colors_demo.Palette, "package:flutter_gallery/demo/colors_demo.dart");
dart.setFieldSignature(colors_demo.Palette, () => ({
  __proto__: dart.getFields(colors_demo.Palette.__proto__),
  name: dart.finalFieldType(core.String),
  primary: dart.finalFieldType(colors.MaterialColor),
  accent: dart.finalFieldType(colors.MaterialAccentColor),
  threshold: dart.finalFieldType(core.int)
}));
const EdgeInsets_bottom = dart.privateName(edge_insets, "EdgeInsets.bottom");
const EdgeInsets_right = dart.privateName(edge_insets, "EdgeInsets.right");
const EdgeInsets_top = dart.privateName(edge_insets, "EdgeInsets.top");
const EdgeInsets_left = dart.privateName(edge_insets, "EdgeInsets.left");
let C0;
const _Location_parameterLocations = dart.privateName(widget_inspector, "_Location.parameterLocations");
const _Location_name = dart.privateName(widget_inspector, "_Location.name");
const _Location_column = dart.privateName(widget_inspector, "_Location.column");
const _Location_line = dart.privateName(widget_inspector, "_Location.line");
const _Location_file = dart.privateName(widget_inspector, "_Location.file");
const index$ = dart.privateName(colors_demo, "ColorItem.index");
const color$ = dart.privateName(colors_demo, "ColorItem.color");
const prefix$ = dart.privateName(colors_demo, "ColorItem.prefix");
colors_demo.ColorItem = class ColorItem extends framework.StatelessWidget {
  get index() {
    return this[index$];
  }
  set index(value) {
    super.index = value;
  }
  get color() {
    return this[color$];
  }
  set color(value) {
    super.color = value;
  }
  get prefix() {
    return this[prefix$];
  }
  set prefix(value) {
    super.prefix = value;
  }
  colorString() {
    return "#" + this.color.value[$toRadixString](16)[$padLeft](8, "0")[$toUpperCase]();
  }
  build(context) {
    return new basic.Semantics.new({container: true, child: new container.Container.new({height: 48, padding: C0 || CT.C0, color: this.color, child: new safe_area.SafeArea.new({top: false, bottom: false, child: new basic.Row.new({mainAxisAlignment: flex.MainAxisAlignment.spaceBetween, crossAxisAlignment: flex.CrossAxisAlignment.center, children: JSArrayOfWidget().of([new text.Text.new(dart.str(this.prefix) + dart.str(this.index), {$creationLocationd_0dea112b090073317d4: C1 || CT.C1}), new text.Text.new(this.colorString(), {$creationLocationd_0dea112b090073317d4: C4 || CT.C4})]), $creationLocationd_0dea112b090073317d4: C7 || CT.C7}), $creationLocationd_0dea112b090073317d4: C12 || CT.C12}), $creationLocationd_0dea112b090073317d4: C17 || CT.C17}), $creationLocationd_0dea112b090073317d4: C23 || CT.C23});
  }
};
(colors_demo.ColorItem.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let index = opts && 'index' in opts ? opts.index : null;
  let color = opts && 'color' in opts ? opts.color : null;
  let prefix = opts && 'prefix' in opts ? opts.prefix : "";
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[index$] = index;
  this[color$] = color;
  this[prefix$] = prefix;
  if (!(index != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/colors_demo.dart", 49, 15, "index != null");
  if (!(color != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/colors_demo.dart", 50, 15, "color != null");
  if (!(prefix != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/colors_demo.dart", 51, 15, "prefix != null");
  colors_demo.ColorItem.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = colors_demo.ColorItem.prototype;
dart.addTypeTests(colors_demo.ColorItem);
dart.setMethodSignature(colors_demo.ColorItem, () => ({
  __proto__: dart.getMethods(colors_demo.ColorItem.__proto__),
  colorString: dart.fnType(core.String, []),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(colors_demo.ColorItem, "package:flutter_gallery/demo/colors_demo.dart");
dart.setFieldSignature(colors_demo.ColorItem, () => ({
  __proto__: dart.getFields(colors_demo.ColorItem.__proto__),
  index: dart.finalFieldType(core.int),
  color: dart.finalFieldType(ui.Color),
  prefix: dart.finalFieldType(core.String)
}));
const colors$ = dart.privateName(colors_demo, "PaletteTabView.colors");
let C51;
let C52;
colors_demo.PaletteTabView = class PaletteTabView extends framework.StatelessWidget {
  get colors() {
    return this[colors$];
  }
  set colors(value) {
    super.colors = value;
  }
  build(context) {
    let textTheme = theme.Theme.of(context).textTheme;
    let whiteTextStyle = textTheme.body1.copyWith({color: colors.Colors.white});
    let blackTextStyle = textTheme.body1.copyWith({color: colors.Colors.black});
    return new scrollbar.Scrollbar.new({child: new scroll_view.ListView.new({itemExtent: 48, children: (() => {
          let t0 = JSArrayOfWidget().of([]);
          for (let t1 of colors_demo.PaletteTabView.primaryKeys[$map](framework.Widget, dart.fn(index => new text.DefaultTextStyle.new({style: dart.notNull(index) > dart.notNull(this.colors.threshold) ? whiteTextStyle : blackTextStyle, child: new colors_demo.ColorItem.new({index: index, color: this.colors.primary._get(index), $creationLocationd_0dea112b090073317d4: C27 || CT.C27}), $creationLocationd_0dea112b090073317d4: C31 || CT.C31}), intToDefaultTextStyle())))
            t0[$add](t1);
          if (this.colors.accent != null) for (let t2 of colors_demo.PaletteTabView.accentKeys[$map](framework.Widget, dart.fn(index => new text.DefaultTextStyle.new({style: dart.notNull(index) > dart.notNull(this.colors.threshold) ? whiteTextStyle : blackTextStyle, child: new colors_demo.ColorItem.new({index: index, color: this.colors.accent._get(index), prefix: "A", $creationLocationd_0dea112b090073317d4: C35 || CT.C35}), $creationLocationd_0dea112b090073317d4: C40 || CT.C40}), intToDefaultTextStyle())))
            t0[$add](t2);
          return t0;
        })(), $creationLocationd_0dea112b090073317d4: C44 || CT.C44}), $creationLocationd_0dea112b090073317d4: C48 || CT.C48});
  }
};
(colors_demo.PaletteTabView.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let colors = opts && 'colors' in opts ? opts.colors : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[colors$] = colors;
  if (!(colors != null && dart.test(colors.isValid))) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/colors_demo.dart", 89, 15, "colors != null && colors.isValid");
  colors_demo.PaletteTabView.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = colors_demo.PaletteTabView.prototype;
dart.addTypeTests(colors_demo.PaletteTabView);
dart.setMethodSignature(colors_demo.PaletteTabView, () => ({
  __proto__: dart.getMethods(colors_demo.PaletteTabView.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(colors_demo.PaletteTabView, "package:flutter_gallery/demo/colors_demo.dart");
dart.setFieldSignature(colors_demo.PaletteTabView, () => ({
  __proto__: dart.getFields(colors_demo.PaletteTabView.__proto__),
  colors: dart.finalFieldType(colors_demo.Palette)
}));
dart.defineLazy(colors_demo.PaletteTabView, {
  /*colors_demo.PaletteTabView.primaryKeys*/get primaryKeys() {
    return C51 || CT.C51;
  },
  /*colors_demo.PaletteTabView.accentKeys*/get accentKeys() {
    return C52 || CT.C52;
  }
});
const Widget_key = dart.privateName(framework, "Widget.key");
const Text_textWidthBasis = dart.privateName(text, "Text.textWidthBasis");
const Text_semanticsLabel = dart.privateName(text, "Text.semanticsLabel");
const Text_maxLines = dart.privateName(text, "Text.maxLines");
const Text_textScaleFactor = dart.privateName(text, "Text.textScaleFactor");
const Text_overflow = dart.privateName(text, "Text.overflow");
const Text_softWrap = dart.privateName(text, "Text.softWrap");
const Text_locale = dart.privateName(text, "Text.locale");
const Text_textDirection = dart.privateName(text, "Text.textDirection");
const Text_textAlign = dart.privateName(text, "Text.textAlign");
const Text_strutStyle = dart.privateName(text, "Text.strutStyle");
const Text_style = dart.privateName(text, "Text.style");
const Text_textSpan = dart.privateName(text, "Text.textSpan");
const Text_data = dart.privateName(text, "Text.data");
let C53;
colors_demo.ColorsDemo = class ColorsDemo extends framework.StatelessWidget {
  build(context) {
    return new tab_controller.DefaultTabController.new({length: colors_demo.allPalettes[$length], child: new scaffold.Scaffold.new({appBar: new app_bar.AppBar.new({elevation: 0.0, title: C53 || CT.C53, bottom: new tabs.TabBar.new({isScrollable: true, tabs: colors_demo.allPalettes[$map](framework.Widget, dart.fn(swatch => new tabs.Tab.new({text: swatch.name, $creationLocationd_0dea112b090073317d4: C54 || CT.C54}), PaletteToTab()))[$toList](), $creationLocationd_0dea112b090073317d4: C57 || CT.C57}), $creationLocationd_0dea112b090073317d4: C61 || CT.C61}), body: new tabs.TabBarView.new({children: colors_demo.allPalettes[$map](framework.Widget, dart.fn(colors => new colors_demo.PaletteTabView.new({colors: colors, $creationLocationd_0dea112b090073317d4: C66 || CT.C66}), PaletteToPaletteTabView()))[$toList](), $creationLocationd_0dea112b090073317d4: C69 || CT.C69}), $creationLocationd_0dea112b090073317d4: C72 || CT.C72}), $creationLocationd_0dea112b090073317d4: C76 || CT.C76});
  }
};
(colors_demo.ColorsDemo.new = function(opts) {
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  colors_demo.ColorsDemo.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = colors_demo.ColorsDemo.prototype;
dart.addTypeTests(colors_demo.ColorsDemo);
dart.setMethodSignature(colors_demo.ColorsDemo, () => ({
  __proto__: dart.getMethods(colors_demo.ColorsDemo.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(colors_demo.ColorsDemo, "package:flutter_gallery/demo/colors_demo.dart");
dart.defineLazy(colors_demo.ColorsDemo, {
  /*colors_demo.ColorsDemo.routeName*/get routeName() {
    return "/colors";
  }
});
dart.defineLazy(colors_demo, {
  /*colors_demo.kColorItemHeight*/get kColorItemHeight() {
    return 48;
  },
  /*colors_demo.allPalettes*/get allPalettes() {
    return JSArrayOfPalette().of([new colors_demo.Palette.new({name: "RED", primary: colors.Colors.red, accent: colors.Colors.redAccent, threshold: 300}), new colors_demo.Palette.new({name: "PINK", primary: colors.Colors.pink, accent: colors.Colors.pinkAccent, threshold: 200}), new colors_demo.Palette.new({name: "PURPLE", primary: colors.Colors.purple, accent: colors.Colors.purpleAccent, threshold: 200}), new colors_demo.Palette.new({name: "DEEP PURPLE", primary: colors.Colors.deepPurple, accent: colors.Colors.deepPurpleAccent, threshold: 200}), new colors_demo.Palette.new({name: "INDIGO", primary: colors.Colors.indigo, accent: colors.Colors.indigoAccent, threshold: 200}), new colors_demo.Palette.new({name: "BLUE", primary: colors.Colors.blue, accent: colors.Colors.blueAccent, threshold: 400}), new colors_demo.Palette.new({name: "LIGHT BLUE", primary: colors.Colors.lightBlue, accent: colors.Colors.lightBlueAccent, threshold: 500}), new colors_demo.Palette.new({name: "CYAN", primary: colors.Colors.cyan, accent: colors.Colors.cyanAccent, threshold: 600}), new colors_demo.Palette.new({name: "TEAL", primary: colors.Colors.teal, accent: colors.Colors.tealAccent, threshold: 400}), new colors_demo.Palette.new({name: "GREEN", primary: colors.Colors.green, accent: colors.Colors.greenAccent, threshold: 500}), new colors_demo.Palette.new({name: "LIGHT GREEN", primary: colors.Colors.lightGreen, accent: colors.Colors.lightGreenAccent, threshold: 600}), new colors_demo.Palette.new({name: "LIME", primary: colors.Colors.lime, accent: colors.Colors.limeAccent, threshold: 800}), new colors_demo.Palette.new({name: "YELLOW", primary: colors.Colors.yellow, accent: colors.Colors.yellowAccent}), new colors_demo.Palette.new({name: "AMBER", primary: colors.Colors.amber, accent: colors.Colors.amberAccent}), new colors_demo.Palette.new({name: "ORANGE", primary: colors.Colors.orange, accent: colors.Colors.orangeAccent, threshold: 700}), new colors_demo.Palette.new({name: "DEEP ORANGE", primary: colors.Colors.deepOrange, accent: colors.Colors.deepOrangeAccent, threshold: 400}), new colors_demo.Palette.new({name: "BROWN", primary: colors.Colors.brown, threshold: 200}), new colors_demo.Palette.new({name: "GREY", primary: colors.Colors.grey, threshold: 500}), new colors_demo.Palette.new({name: "BLUE GREY", primary: colors.Colors.blueGrey, threshold: 500})]);
  }
});
dart.trackLibraries("packages/flutter_gallery/demo/colors_demo", {
  "package:flutter_gallery/demo/colors_demo.dart": colors_demo
}, {
}, '{"version":3,"sourceRoot":"","sources":["colors_demo.dart"],"names":[],"mappings":";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;EAWe;;;;;;EACO;;;;;;EACM;;;;;;EAChB;;;;;;;AAEU,UAAA,AAAgC,cAAxB,QAAQ,gBAAW,QAAQ,kBAAa;EAAI;;;MAPzD;MAAW;MAAc;MAAa;EAAtC;EAAW;EAAc;EAAa;;AAAiB;;;;;;;;;;;;;;;;;;;;;;;;;;;;EA4C5D;;;;;;EACE;;;;;;EACC;;;;;;;AAEW,UAAA,AAAiE,OAA7D,AAAM,AAAM,AAAkB,AAAgB,iCAApB,cAAY,GAAG;EAAoB;QAG/D;AACxB,UAAO,qCACM,aACJ,sEAGE,mBACA,iCACA,eACG,cACD,sCACgC,yDACE,0CACrB,sBAChB,kBAAoB,SAAb,wBAAO,qEACd,kBAAK;EAMjB;;;MArCM;MACW;MACA;MACV;;EAFU;EACA;EACV;QACK,AAAM,KAAD,IAAI;QACT,AAAM,KAAD,IAAI;QACT,AAAO,MAAD,IAAI;AACjB,uDAAW,GAAG;;AAAC;;;;;;;;;;;;;;;;;;EAwCN;;;;;;QAMY;AACR,oBAAkB,AAAY,eAAT,OAAO;AAC5B,yBAAiB,AAAU,AAAM,SAAP,wBAA8B;AACxD,yBAAiB,AAAU,AAAM,SAAP,wBAA8B;AACxE,UAAO,qCACE;;wBAGA,AAAY,gEAAY,QAAK,SACvB,sCACQ,aAAN,KAAK,iBAAG,AAAO,yBAAY,cAAc,GAAG,cAAc,SAC1D,sCAAiB,KAAK,SAAS,AAAO,AAAO,yBAAC,KAAK;;AAG9D,cAAI,AAAO,sBAAU,oBAChB,AAAW,+DAAY,QAAK,SACtB,sCACQ,aAAN,KAAK,iBAAG,AAAO,yBAAY,cAAc,GAAG,cAAc,SAC1D,sCAAiB,KAAK,SAAS,AAAO,AAAM,wBAAC,KAAK,WAAW;;;;EAMlF;;;MAnCM;MACW;;;QACL,AAAe,MAAT,IAAI,kBAAQ,AAAO,MAAD;AAC/B,4DAAW,GAAG;;AAAC;;;;;;;;;;;;IAIG,sCAAW;;;IACX,qCAAU;;;;;;;;;;;;;;;;;;;;QAkCP;AACxB,UAAO,sDACG,AAAY,yCACb,mCACG,mCACK,mCAEH,mCACQ,YACR,AAAY,AAAwD,gDAA5C,QAAS,UAAW,wBAAU,AAAO,MAAD,qNAGhE,mCACM,AAAY,AAEnB,gDAF+B,QAAS,UAClC,4CAAuB,MAAM;EAK9C;;;;;;AACF;;;;;;;;IAvBsB,gCAAS;;;;;IAvHlB,4BAAgB;;;IAaT,uBAAW;UAAY,wBACzC,mCAAc,gBAAuB,2BAAoB,oCAAsB,OAC/E,mCAAc,iBAAwB,4BAAqB,qCAAuB,OAClF,mCAAc,mBAA0B,8BAAuB,uCAAyB,OACxF,mCAAc,wBAA+B,kCAA2B,2CAA6B,OACrG,mCAAc,mBAA0B,8BAAuB,uCAAyB,OACxF,mCAAc,iBAAwB,4BAAqB,qCAAuB,OAClF,mCAAc,uBAA8B,iCAA0B,0CAA4B,OAClG,mCAAc,iBAAwB,4BAAqB,qCAAuB,OAClF,mCAAc,iBAAwB,4BAAqB,qCAAuB,OAClF,mCAAc,kBAAyB,6BAAsB,sCAAwB,OACrF,mCAAc,wBAA+B,kCAA2B,2CAA6B,OACrG,mCAAc,iBAAwB,4BAAqB,qCAAuB,OAClF,mCAAc,mBAA0B,8BAAuB,8BAC/D,mCAAc,kBAAyB,6BAAsB,6BAC7D,mCAAc,mBAA0B,8BAAuB,uCAAyB,OACxF,mCAAc,wBAA+B,kCAA2B,2CAA6B,OACrG,mCAAc,kBAAyB,gCAAkB,OACzD,mCAAc,iBAAwB,+BAAiB,OACvD,mCAAc,sBAA6B,mCAAqB","file":"colors_demo.ddc.js"}');
// Exports:
exports.demo__colors_demo = colors_demo;

//# sourceMappingURL=colors_demo.ddc.js.map
