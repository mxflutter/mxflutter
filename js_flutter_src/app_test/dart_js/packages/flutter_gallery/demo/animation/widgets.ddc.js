'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const _interceptors = dart_sdk._interceptors;
const ui = dart_sdk.ui;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const basic = packages__flutter__src__widgets__actions.src__widgets__basic;
const container = packages__flutter__src__widgets__actions.src__widgets__container;
const image = packages__flutter__src__widgets__actions.src__widgets__image;
const widget_inspector = packages__flutter__src__widgets__actions.src__widgets__widget_inspector;
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const text = packages__flutter__src__widgets__actions.src__widgets__text;
const safe_area = packages__flutter__src__widgets__actions.src__widgets__safe_area;
const packages__flutter__src__painting___network_image_web = require('packages/flutter/src/painting/_network_image_web');
const box_decoration = packages__flutter__src__painting___network_image_web.src__painting__box_decoration;
const gradient = packages__flutter__src__painting___network_image_web.src__painting__gradient;
const alignment = packages__flutter__src__painting___network_image_web.src__painting__alignment;
const box_fit = packages__flutter__src__painting___network_image_web.src__painting__box_fit;
const text_style = packages__flutter__src__painting___network_image_web.src__painting__text_style;
const border_radius = packages__flutter__src__painting___network_image_web.src__painting__border_radius;
const decoration_image = packages__flutter__src__painting___network_image_web.src__painting__decoration_image;
const image_resolution = packages__flutter__src__painting___network_image_web.src__painting__image_resolution;
const edge_insets = packages__flutter__src__painting___network_image_web.src__painting__edge_insets;
const packages__flutter_gallery__demo__animation__sections = require('packages/flutter_gallery/demo/animation/sections');
const sections = packages__flutter_gallery__demo__animation__sections.demo__animation__sections;
const packages__vector_math__vector_math_64 = require('packages/vector_math/vector_math_64');
const vector_math_64 = packages__vector_math__vector_math_64.vector_math_64;
const packages__flutter__material = require('packages/flutter/material');
const colors = packages__flutter__material.src__material__colors;
const list_tile = packages__flutter__material.src__material__list_tile;
const widgets = Object.create(dart.library);
let JSArrayOfColor = () => (JSArrayOfColor = dart.constFn(_interceptors.JSArray$(ui.Color)))();
let JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C0() {
    return C0 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 335544319
    });
  },
  get C45() {
    return C45 = dart.const({
      __proto__: ui.TextBaseline.prototype,
      [_name]: "TextBaseline.alphabetic",
      index: 0
    });
  },
  get C46() {
    return C46 = dart.const({
      __proto__: ui.FontWeight.prototype,
      [FontWeight_index]: 4
    });
  },
  get C47() {
    return C47 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4294967295.0
    });
  },
  get C44() {
    return C44 = dart.const({
      __proto__: text_style.TextStyle.prototype,
      [TextStyle_fontFeatures]: null,
      [TextStyle_shadows]: null,
      [TextStyle_debugLabel]: null,
      [TextStyle_decorationThickness]: null,
      [TextStyle_decorationStyle]: null,
      [TextStyle_decorationColor]: null,
      [TextStyle_decoration]: null,
      [TextStyle_background]: null,
      [TextStyle_foreground]: null,
      [TextStyle_locale]: null,
      [TextStyle_height]: null,
      [TextStyle_textBaseline]: C45 || CT.C45,
      [TextStyle_wordSpacing]: null,
      [TextStyle_letterSpacing]: null,
      [TextStyle_fontStyle]: null,
      [TextStyle_fontWeight]: C46 || CT.C46,
      [TextStyle_fontSize]: 24,
      [TextStyle__package]: null,
      [TextStyle__fontFamilyFallback]: null,
      [TextStyle_fontFamily]: "Raleway",
      [TextStyle_backgroundColor]: null,
      [TextStyle_color]: C47 || CT.C47,
      [TextStyle_inherit]: false
    });
  },
  get C48() {
    return C48 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 419430400
    });
  },
  get C60() {
    return C60 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 16,
      [EdgeInsets_right]: 16,
      [EdgeInsets_top]: 16,
      [EdgeInsets_left]: 16
    });
  }
});
const Color_value = dart.privateName(ui, "Color.value");
let C0;
const _Location_parameterLocations = dart.privateName(widget_inspector, "_Location.parameterLocations");
const _Location_name = dart.privateName(widget_inspector, "_Location.name");
const _Location_column = dart.privateName(widget_inspector, "_Location.column");
const _Location_line = dart.privateName(widget_inspector, "_Location.line");
const _Location_file = dart.privateName(widget_inspector, "_Location.file");
const section$ = dart.privateName(widgets, "SectionCard.section");
widgets.SectionCard = class SectionCard extends framework.StatelessWidget {
  get section() {
    return this[section$];
  }
  set section(value) {
    super.section = value;
  }
  build(context) {
    return new basic.Semantics.new({label: this.section.title, button: true, child: new container.DecoratedBox.new({decoration: new box_decoration.BoxDecoration.new({gradient: new gradient.LinearGradient.new({begin: alignment.Alignment.centerLeft, end: alignment.Alignment.centerRight, colors: JSArrayOfColor().of([this.section.leftColor, this.section.rightColor])})}), child: new image.Image.asset(this.section.backgroundAsset, {package: this.section.backgroundAssetPackage, color: C0 || CT.C0, colorBlendMode: ui.BlendMode.modulate, fit: box_fit.BoxFit.cover, $creationLocationd_0dea112b090073317d4: C1 || CT.C1}), $creationLocationd_0dea112b090073317d4: C8 || CT.C8}), $creationLocationd_0dea112b090073317d4: C12 || CT.C12});
  }
};
(widgets.SectionCard.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let section = opts && 'section' in opts ? opts.section : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[section$] = section;
  if (!(section != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/animation/widgets.dart", 14, 14, "section != null");
  widgets.SectionCard.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = widgets.SectionCard.prototype;
dart.addTypeTests(widgets.SectionCard);
dart.setMethodSignature(widgets.SectionCard, () => ({
  __proto__: dart.getMethods(widgets.SectionCard.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(widgets.SectionCard, "package:flutter_gallery/demo/animation/widgets.dart");
dart.setFieldSignature(widgets.SectionCard, () => ({
  __proto__: dart.getFields(widgets.SectionCard.__proto__),
  section: dart.finalFieldType(sections.Section)
}));
const section$0 = dart.privateName(widgets, "SectionTitle.section");
const scale$ = dart.privateName(widgets, "SectionTitle.scale");
const opacity$ = dart.privateName(widgets, "SectionTitle.opacity");
const TextStyle_fontFeatures = dart.privateName(text_style, "TextStyle.fontFeatures");
const TextStyle_shadows = dart.privateName(text_style, "TextStyle.shadows");
const TextStyle_debugLabel = dart.privateName(text_style, "TextStyle.debugLabel");
const TextStyle_decorationThickness = dart.privateName(text_style, "TextStyle.decorationThickness");
const TextStyle_decorationStyle = dart.privateName(text_style, "TextStyle.decorationStyle");
const TextStyle_decorationColor = dart.privateName(text_style, "TextStyle.decorationColor");
const TextStyle_decoration = dart.privateName(text_style, "TextStyle.decoration");
const TextStyle_background = dart.privateName(text_style, "TextStyle.background");
const TextStyle_foreground = dart.privateName(text_style, "TextStyle.foreground");
const TextStyle_locale = dart.privateName(text_style, "TextStyle.locale");
const TextStyle_height = dart.privateName(text_style, "TextStyle.height");
const _name = dart.privateName(ui, "_name");
let C45;
const TextStyle_textBaseline = dart.privateName(text_style, "TextStyle.textBaseline");
const TextStyle_wordSpacing = dart.privateName(text_style, "TextStyle.wordSpacing");
const TextStyle_letterSpacing = dart.privateName(text_style, "TextStyle.letterSpacing");
const TextStyle_fontStyle = dart.privateName(text_style, "TextStyle.fontStyle");
const FontWeight_index = dart.privateName(ui, "FontWeight.index");
let C46;
const TextStyle_fontWeight = dart.privateName(text_style, "TextStyle.fontWeight");
const TextStyle_fontSize = dart.privateName(text_style, "TextStyle.fontSize");
const TextStyle__package = dart.privateName(text_style, "TextStyle._package");
const TextStyle__fontFamilyFallback = dart.privateName(text_style, "TextStyle._fontFamilyFallback");
const TextStyle_fontFamily = dart.privateName(text_style, "TextStyle.fontFamily");
const TextStyle_backgroundColor = dart.privateName(text_style, "TextStyle.backgroundColor");
let C47;
const TextStyle_color = dart.privateName(text_style, "TextStyle.color");
const TextStyle_inherit = dart.privateName(text_style, "TextStyle.inherit");
let C44;
let C48;
widgets.SectionTitle = class SectionTitle extends framework.StatelessWidget {
  get section() {
    return this[section$0];
  }
  set section(value) {
    super.section = value;
  }
  get scale() {
    return this[scale$];
  }
  set scale(value) {
    super.scale = value;
  }
  get opacity() {
    return this[opacity$];
  }
  set opacity(value) {
    super.opacity = value;
  }
  build(context) {
    let t0;
    return new basic.IgnorePointer.new({child: new basic.Opacity.new({opacity: this.opacity, child: new basic.Transform.new({transform: (t0 = vector_math_64.Matrix4.identity(), t0.scale(this.scale), t0), alignment: alignment.Alignment.center, child: new basic.Stack.new({children: JSArrayOfWidget().of([new basic.Positioned.new({top: 4.0, child: new text.Text.new(this.section.title, {style: widgets.SectionTitle.sectionTitleShadowStyle, $creationLocationd_0dea112b090073317d4: C17 || CT.C17}), $creationLocationd_0dea112b090073317d4: C21 || CT.C21}), new text.Text.new(this.section.title, {style: widgets.SectionTitle.sectionTitleStyle, $creationLocationd_0dea112b090073317d4: C25 || CT.C25})]), $creationLocationd_0dea112b090073317d4: C29 || CT.C29}), $creationLocationd_0dea112b090073317d4: C32 || CT.C32}), $creationLocationd_0dea112b090073317d4: C37 || CT.C37}), $creationLocationd_0dea112b090073317d4: C41 || CT.C41});
  }
};
(widgets.SectionTitle.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let section = opts && 'section' in opts ? opts.section : null;
  let scale = opts && 'scale' in opts ? opts.scale : null;
  let opacity = opts && 'opacity' in opts ? opts.opacity : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[section$0] = section;
  this[scale$] = scale;
  this[opacity$] = opacity;
  if (!(section != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/animation/widgets.dart", 55, 15, "section != null");
  if (!(scale != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/animation/widgets.dart", 56, 15, "scale != null");
  if (!(opacity != null && dart.notNull(opacity) >= 0.0 && dart.notNull(opacity) <= 1.0)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/animation/widgets.dart", 57, 15, "opacity != null && opacity >= 0.0 && opacity <= 1.0");
  widgets.SectionTitle.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = widgets.SectionTitle.prototype;
dart.addTypeTests(widgets.SectionTitle);
dart.setMethodSignature(widgets.SectionTitle, () => ({
  __proto__: dart.getMethods(widgets.SectionTitle.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(widgets.SectionTitle, "package:flutter_gallery/demo/animation/widgets.dart");
dart.setFieldSignature(widgets.SectionTitle, () => ({
  __proto__: dart.getFields(widgets.SectionTitle.__proto__),
  section: dart.finalFieldType(sections.Section),
  scale: dart.finalFieldType(core.double),
  opacity: dart.finalFieldType(core.double)
}));
dart.defineLazy(widgets.SectionTitle, {
  /*widgets.SectionTitle.sectionTitleStyle*/get sectionTitleStyle() {
    return C44 || CT.C44;
  },
  /*widgets.SectionTitle.sectionTitleShadowStyle*/get sectionTitleShadowStyle() {
    return widgets.SectionTitle.sectionTitleStyle.copyWith({color: C48 || CT.C48});
  }
});
const opacity$0 = dart.privateName(widgets, "SectionIndicator.opacity");
widgets.SectionIndicator = class SectionIndicator extends framework.StatelessWidget {
  get opacity() {
    return this[opacity$0];
  }
  set opacity(value) {
    super.opacity = value;
  }
  build(context) {
    return new basic.IgnorePointer.new({child: new container.Container.new({width: 32, height: 3.0, color: colors.Colors.white.withOpacity(this.opacity), $creationLocationd_0dea112b090073317d4: C49 || CT.C49}), $creationLocationd_0dea112b090073317d4: C54 || CT.C54});
  }
};
(widgets.SectionIndicator.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let opacity = opts && 'opacity' in opts ? opts.opacity : 1;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[opacity$0] = opacity;
  widgets.SectionIndicator.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = widgets.SectionIndicator.prototype;
dart.addTypeTests(widgets.SectionIndicator);
dart.setMethodSignature(widgets.SectionIndicator, () => ({
  __proto__: dart.getMethods(widgets.SectionIndicator.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(widgets.SectionIndicator, "package:flutter_gallery/demo/animation/widgets.dart");
dart.setFieldSignature(widgets.SectionIndicator, () => ({
  __proto__: dart.getFields(widgets.SectionIndicator.__proto__),
  opacity: dart.finalFieldType(core.double)
}));
const EdgeInsets_bottom = dart.privateName(edge_insets, "EdgeInsets.bottom");
const EdgeInsets_right = dart.privateName(edge_insets, "EdgeInsets.right");
const EdgeInsets_top = dart.privateName(edge_insets, "EdgeInsets.top");
const EdgeInsets_left = dart.privateName(edge_insets, "EdgeInsets.left");
let C60;
const detail$ = dart.privateName(widgets, "SectionDetailView.detail");
widgets.SectionDetailView = class SectionDetailView extends framework.StatelessWidget {
  get detail() {
    return this[detail$];
  }
  set detail(value) {
    super.detail = value;
  }
  build(context) {
    let image = new container.DecoratedBox.new({decoration: new box_decoration.BoxDecoration.new({borderRadius: new border_radius.BorderRadius.circular(6.0), image: new decoration_image.DecorationImage.new({image: new image_resolution.AssetImage.new(this.detail.imageAsset, {package: this.detail.imageAssetPackage}), fit: box_fit.BoxFit.cover, alignment: alignment.Alignment.center})}), $creationLocationd_0dea112b090073317d4: C57 || CT.C57});
    let item = null;
    if (this.detail.title == null && this.detail.subtitle == null) {
      item = new container.Container.new({height: 240.0, padding: C60 || CT.C60, child: new safe_area.SafeArea.new({top: false, bottom: false, child: image, $creationLocationd_0dea112b090073317d4: C61 || CT.C61}), $creationLocationd_0dea112b090073317d4: C66 || CT.C66});
    } else {
      item = new list_tile.ListTile.new({title: new text.Text.new(this.detail.title, {$creationLocationd_0dea112b090073317d4: C71 || CT.C71}), subtitle: new text.Text.new(this.detail.subtitle, {$creationLocationd_0dea112b090073317d4: C74 || CT.C74}), leading: new basic.SizedBox.new({width: 32.0, height: 32.0, child: image, $creationLocationd_0dea112b090073317d4: C77 || CT.C77}), $creationLocationd_0dea112b090073317d4: C82 || CT.C82});
    }
    return new container.DecoratedBox.new({decoration: new box_decoration.BoxDecoration.new({color: colors.Colors.grey.shade200}), child: item, $creationLocationd_0dea112b090073317d4: C87 || CT.C87});
  }
};
(widgets.SectionDetailView.new = function(opts) {
  let t0;
  let key = opts && 'key' in opts ? opts.key : null;
  let detail = opts && 'detail' in opts ? opts.detail : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[detail$] = detail;
  if (!(detail != null && detail.imageAsset != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/animation/widgets.dart", 121, 14, "detail != null && detail.imageAsset != null");
  if (!((t0 = detail.imageAsset, t0 == null ? detail.title : t0) != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/animation/widgets.dart", 122, 14, "(detail.imageAsset ?? detail.title) != null");
  widgets.SectionDetailView.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = widgets.SectionDetailView.prototype;
dart.addTypeTests(widgets.SectionDetailView);
dart.setMethodSignature(widgets.SectionDetailView, () => ({
  __proto__: dart.getMethods(widgets.SectionDetailView.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(widgets.SectionDetailView, "package:flutter_gallery/demo/animation/widgets.dart");
dart.setFieldSignature(widgets.SectionDetailView, () => ({
  __proto__: dart.getFields(widgets.SectionDetailView.__proto__),
  detail: dart.finalFieldType(sections.SectionDetail)
}));
dart.defineLazy(widgets, {
  /*widgets.kSectionIndicatorWidth*/get kSectionIndicatorWidth() {
    return 32;
  }
});
dart.trackLibraries("packages/flutter_gallery/demo/animation/widgets", {
  "package:flutter_gallery/demo/animation/widgets.dart": widgets
}, {
}, '{"version":3,"sourceRoot":"","sources":["widgets.dart"],"names":[],"mappings":";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;EAgBgB;;;;;;QAGY;AACxB,UAAO,iCACE,AAAQ,4BACP,aACD,4CACO,gDACA,wCACS,qCACF,yCACA,qBACb,AAAQ,wBACR,AAAQ,sCAID,sBACX,AAAQ,wCACC,AAAQ,yEAES,4BACd;EAIpB;;;MA/BwB;MAAoB;;;QACjC,AAAQ,OAAD,IAAI;AAClB,qDAAW,GAAG;;AAAC;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;EA6CL;;;;;;EACD;;;;;;EACA;;;;;;QAgBa;;AACxB,UAAO,qCACE,gCACI,qBACF,0CACc,mCAAY,SAAM,6BAChB,mCACd,+BACa,sBAChB,+BACO,YACE,kBAAK,AAAQ,4BAAc,gKAEpC,kBAAK,AAAQ,4BAAc;EAMvC;;;MA9CM;MACW;MACA;MACA;;EAFA;EACA;EACA;QACL,AAAQ,OAAD,IAAI;QACX,AAAM,KAAD,IAAI;QACT,AAAkC,OAA3B,IAAI,QAAgB,aAAR,OAAO,KAAI,OAAe,aAAR,OAAO,KAAI;AACvD,sDAAW,GAAG;;AAAC;;;;;;;;;;;;;;IAMG,sCAAiB;;;IASjB,4CAAuB;UAAG,AAAkB;;;;;EA+BtD;;;;;;QAGa;AACxB,UAAO,qCACE,gDAEG,YACM,AAAM,gCAAY;EAGtC;;;MAb6B;MAAU;;;AAAmB,0DAAW,GAAG;;AAAC;;;;;;;;;;;;;;;;;;EAuBrD;;;;;;QAGM;AACX,gBAAQ,4CACP,oDACiB,wCAAS,aAC7B,iDACE,oCACL,AAAO,kCACE,AAAO,sCAEN,iCACS;AAKpB;AACP,QAAI,AAAO,AAAM,qBAAG,QAAQ,AAAO,AAAS,wBAAG;AAS5C,MARD,OAAO,qCACG,sCAED,iCACA,eACG,cACD,KAAK;;AAQf,MAJD,OAAO,mCACE,kBAAK,AAAO,uFACT,kBAAK,AAAO,yFACb,+BAAgB,cAAc,aAAa,KAAK;;AAI7D,UAAO,6CACO,6CAA4B,AAAK,sCACtC,IAAI;EAEf;;;;MA9CwB;MAAoB;;;QACjC,AAAe,MAAT,IAAI,QAAQ,AAAO,MAAD,eAAe;QACH,CAAjB,KAAlB,AAAO,MAAD,mBAAC,OAAc,AAAO,MAAD,gBAAW;AAC9C,2DAAW,GAAG;;AAAC;;;;;;;;;;;;IAlHR,8BAAsB","file":"widgets.ddc.js"}');
// Exports:
exports.demo__animation__widgets = widgets;

//# sourceMappingURL=widgets.ddc.js.map
