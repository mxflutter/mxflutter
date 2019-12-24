'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const _interceptors = dart_sdk._interceptors;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__material = require('packages/flutter/material');
const theme$ = packages__flutter__material.src__material__theme;
const scaffold = packages__flutter__material.src__material__scaffold;
const app_bar = packages__flutter__material.src__material__app_bar;
const scrollbar = packages__flutter__material.src__material__scrollbar;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const basic = packages__flutter__src__widgets__actions.src__widgets__basic;
const text = packages__flutter__src__widgets__actions.src__widgets__text;
const widget_inspector = packages__flutter__src__widgets__actions.src__widgets__widget_inspector;
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const media_query = packages__flutter__src__widgets__actions.src__widgets__media_query;
const safe_area = packages__flutter__src__widgets__actions.src__widgets__safe_area;
const scroll_view = packages__flutter__src__widgets__actions.src__widgets__scroll_view;
const packages__flutter__src__painting___network_image_web = require('packages/flutter/src/painting/_network_image_web');
const edge_insets = packages__flutter__src__painting___network_image_web.src__painting__edge_insets;
const text_style = packages__flutter__src__painting___network_image_web.src__painting__text_style;
const packages__flutter__src__rendering__animated_size = require('packages/flutter/src/rendering/animated_size');
const flex = packages__flutter__src__rendering__animated_size.src__rendering__flex;
const typography_demo = Object.create(dart.library);
const $add = dartx.add;
let JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C0() {
    return C0 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 16,
      [EdgeInsets_right]: 8,
      [EdgeInsets_top]: 16,
      [EdgeInsets_left]: 8
    });
  },
  get C79() {
    return C79 = dart.const({
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
      [Text_data]: "Typography"
    });
  }
});
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
const name$ = dart.privateName(typography_demo, "TextStyleItem.name");
const style$ = dart.privateName(typography_demo, "TextStyleItem.style");
const text$ = dart.privateName(typography_demo, "TextStyleItem.text");
typography_demo.TextStyleItem = class TextStyleItem extends framework.StatelessWidget {
  get name() {
    return this[name$];
  }
  set name(value) {
    super.name = value;
  }
  get style() {
    return this[style$];
  }
  set style(value) {
    super.style = value;
  }
  get text() {
    return this[text$];
  }
  set text(value) {
    super.text = value;
  }
  build(context) {
    let theme = theme$.Theme.of(context);
    let nameStyle = theme.textTheme.caption.copyWith({color: theme.textTheme.caption.color});
    return new basic.Padding.new({padding: C0 || CT.C0, child: new basic.Row.new({crossAxisAlignment: flex.CrossAxisAlignment.start, children: JSArrayOfWidget().of([new basic.SizedBox.new({width: 72.0, child: new text.Text.new(this.name, {style: nameStyle, $creationLocationd_0dea112b090073317d4: C1 || CT.C1}), $creationLocationd_0dea112b090073317d4: C5 || CT.C5}), new basic.Expanded.new({child: new text.Text.new(this.text, {style: this.style.copyWith({height: 1.0}), $creationLocationd_0dea112b090073317d4: C9 || CT.C9}), $creationLocationd_0dea112b090073317d4: C13 || CT.C13})]), $creationLocationd_0dea112b090073317d4: C16 || CT.C16}), $creationLocationd_0dea112b090073317d4: C20 || CT.C20});
  }
};
(typography_demo.TextStyleItem.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let name = opts && 'name' in opts ? opts.name : null;
  let style = opts && 'style' in opts ? opts.style : null;
  let text = opts && 'text' in opts ? opts.text : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[name$] = name;
  this[style$] = style;
  this[text$] = text;
  if (!(name != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/typography_demo.dart", 13, 15, "name != null");
  if (!(style != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/typography_demo.dart", 14, 15, "style != null");
  if (!(text != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/typography_demo.dart", 15, 15, "text != null");
  typography_demo.TextStyleItem.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = typography_demo.TextStyleItem.prototype;
dart.addTypeTests(typography_demo.TextStyleItem);
dart.setMethodSignature(typography_demo.TextStyleItem, () => ({
  __proto__: dart.getMethods(typography_demo.TextStyleItem.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(typography_demo.TextStyleItem, "package:flutter_gallery/demo/typography_demo.dart");
dart.setFieldSignature(typography_demo.TextStyleItem, () => ({
  __proto__: dart.getFields(typography_demo.TextStyleItem.__proto__),
  name: dart.finalFieldType(core.String),
  style: dart.finalFieldType(text_style.TextStyle),
  text: dart.finalFieldType(core.String)
}));
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
let C79;
typography_demo.TypographyDemo = class TypographyDemo extends framework.StatelessWidget {
  build(context) {
    let textTheme = theme$.Theme.of(context).textTheme;
    let styleItems = (() => {
      let t0 = JSArrayOfWidget().of([]);
      if (dart.notNull(media_query.MediaQuery.of(context).size.width) > 500.0) t0[$add](new typography_demo.TextStyleItem.new({name: "Display 4", style: textTheme.display4, text: "Light 112sp", $creationLocationd_0dea112b090073317d4: C24 || CT.C24}));
      t0[$add](new typography_demo.TextStyleItem.new({name: "Display 3", style: textTheme.display3, text: "Regular 56sp", $creationLocationd_0dea112b090073317d4: C29 || CT.C29}));
      t0[$add](new typography_demo.TextStyleItem.new({name: "Display 2", style: textTheme.display2, text: "Regular 45sp", $creationLocationd_0dea112b090073317d4: C34 || CT.C34}));
      t0[$add](new typography_demo.TextStyleItem.new({name: "Display 1", style: textTheme.display1, text: "Regular 34sp", $creationLocationd_0dea112b090073317d4: C39 || CT.C39}));
      t0[$add](new typography_demo.TextStyleItem.new({name: "Headline", style: textTheme.headline, text: "Regular 24sp", $creationLocationd_0dea112b090073317d4: C44 || CT.C44}));
      t0[$add](new typography_demo.TextStyleItem.new({name: "Title", style: textTheme.title, text: "Medium 20sp", $creationLocationd_0dea112b090073317d4: C49 || CT.C49}));
      t0[$add](new typography_demo.TextStyleItem.new({name: "Subheading", style: textTheme.subhead, text: "Regular 16sp", $creationLocationd_0dea112b090073317d4: C54 || CT.C54}));
      t0[$add](new typography_demo.TextStyleItem.new({name: "Body 2", style: textTheme.body2, text: "Medium 14sp", $creationLocationd_0dea112b090073317d4: C59 || CT.C59}));
      t0[$add](new typography_demo.TextStyleItem.new({name: "Body 1", style: textTheme.body1, text: "Regular 14sp", $creationLocationd_0dea112b090073317d4: C64 || CT.C64}));
      t0[$add](new typography_demo.TextStyleItem.new({name: "Caption", style: textTheme.caption, text: "Regular 12sp", $creationLocationd_0dea112b090073317d4: C69 || CT.C69}));
      t0[$add](new typography_demo.TextStyleItem.new({name: "Button", style: textTheme.button, text: "MEDIUM (ALL CAPS) 14sp", $creationLocationd_0dea112b090073317d4: C74 || CT.C74}));
      return t0;
    })();
    return new scaffold.Scaffold.new({appBar: new app_bar.AppBar.new({title: C79 || CT.C79, $creationLocationd_0dea112b090073317d4: C80 || CT.C80}), body: new safe_area.SafeArea.new({top: false, bottom: false, child: new scrollbar.Scrollbar.new({child: new scroll_view.ListView.new({children: styleItems, $creationLocationd_0dea112b090073317d4: C83 || CT.C83}), $creationLocationd_0dea112b090073317d4: C86 || CT.C86}), $creationLocationd_0dea112b090073317d4: C89 || CT.C89}), $creationLocationd_0dea112b090073317d4: C94 || CT.C94});
  }
};
(typography_demo.TypographyDemo.new = function(opts) {
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  typography_demo.TypographyDemo.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = typography_demo.TypographyDemo.prototype;
dart.addTypeTests(typography_demo.TypographyDemo);
dart.setMethodSignature(typography_demo.TypographyDemo, () => ({
  __proto__: dart.getMethods(typography_demo.TypographyDemo.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(typography_demo.TypographyDemo, "package:flutter_gallery/demo/typography_demo.dart");
dart.defineLazy(typography_demo.TypographyDemo, {
  /*typography_demo.TypographyDemo.routeName*/get routeName() {
    return "/typography";
  }
});
dart.trackLibraries("packages/flutter_gallery/demo/typography_demo", {
  "package:flutter_gallery/demo/typography_demo.dart": typography_demo
}, {
}, '{"version":3,"sourceRoot":"","sources":["typography_demo.dart"],"names":[],"mappings":";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;EAiBe;;;;;;EACG;;;;;;EACH;;;;;;QAGa;AACR,gBAAc,gBAAG,OAAO;AACxB,oBAAY,AAAM,AAAU,AAAQ,KAAnB,oCAAmC,AAAM,AAAU,AAAQ,KAAnB;AACzE,UAAO,qDAEE,uCACkC,yCACrB,sBAChB,+BACS,aACA,kBAAK,mBAAa,SAAS,gHAEpC,+BACS,kBAAK,mBAAa,AAAM,6BAAiB;EAK1D;;;MAhCM;MACW;MACA;MACA;;EAFA;EACA;EACA;QACL,AAAK,IAAD,IAAI;QACR,AAAM,KAAD,IAAI;QACT,AAAK,IAAD,IAAI;AACf,+DAAW,GAAG;;AAAC;;;;;;;;;;;;;;;;;;;;;;;;;;;;;QAgCM;AACR,oBAAkB,AAAY,gBAAT,OAAO;AACzB;;AACjB,UAAsC,aAAvB,AAAY,AAAK,0BAAd,OAAO,gBAAe,gBACtC,6CAAoB,oBAAoB,AAAU,SAAD,iBAAiB;eACpE,6CAAoB,oBAAoB,AAAU,SAAD,iBAAiB;eAClE,6CAAoB,oBAAoB,AAAU,SAAD,iBAAiB;eAClE,6CAAoB,oBAAoB,AAAU,SAAD,iBAAiB;eAClE,6CAAoB,mBAAmB,AAAU,SAAD,iBAAiB;eACjE,6CAAoB,gBAAgB,AAAU,SAAD,cAAc;eAC3D,6CAAoB,qBAAqB,AAAU,SAAD,gBAAgB;eAClE,6CAAoB,iBAAiB,AAAU,SAAD,cAAc;eAC5D,6CAAoB,iBAAiB,AAAU,SAAD,cAAc;eAC5D,6CAAoB,kBAAkB,AAAU,SAAD,gBAAgB;eAC/D,6CAAoB,iBAAiB,AAAU,SAAD,eAAe;;;AAG/D,UAAO,oCACG,6GACF,iCACC,eACG,cACD,oCAAiB,wCAAmB,UAAU;EAG3D;;;;;;AACF;;;;;;;;IA7BsB,wCAAS","file":"typography_demo.ddc.js"}');
// Exports:
exports.demo__typography_demo = typography_demo;

//# sourceMappingURL=typography_demo.ddc.js.map
