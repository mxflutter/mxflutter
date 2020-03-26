'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const ui = dart_sdk.ui;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const basic = packages__flutter__src__widgets__actions.src__widgets__basic;
const widget_inspector = packages__flutter__src__widgets__actions.src__widgets__widget_inspector;
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const container = packages__flutter__src__widgets__actions.src__widgets__container;
const icon = packages__flutter__src__widgets__actions.src__widgets__icon;
const icon_data = packages__flutter__src__widgets__actions.src__widgets__icon_data;
const packages__flutter__src__rendering__animated_size = require('packages/flutter/src/rendering/animated_size');
const flex = packages__flutter__src__rendering__animated_size.src__rendering__flex;
const packages__flutter__src__painting___network_image_web = require('packages/flutter/src/painting/_network_image_web');
const edge_insets = packages__flutter__src__painting___network_image_web.src__painting__edge_insets;
const packages__flutter__material = require('packages/flutter/material');
const button = packages__flutter__material.src__material__button;
const transformations_demo_color_picker = Object.create(dart.library);
const $map = dartx.map;
const $toList = dartx.toList;
let VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
let ColorTo_ColorPickerSwatch = () => (ColorTo_ColorPickerSwatch = dart.constFn(dart.fnType(transformations_demo_color_picker._ColorPickerSwatch, [ui.Color])))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C9() {
    return C9 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 2,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 2
    });
  },
  get C11() {
    return C11 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4294967295.0
    });
  },
  get C12() {
    return C12 = dart.const({
      __proto__: icon_data.IconData.prototype,
      [IconData_matchTextDirection]: false,
      [IconData_fontPackage]: null,
      [IconData_fontFamily]: "MaterialIcons",
      [IconData_codePoint]: 58826
    });
  },
  get C10() {
    return C10 = dart.const({
      __proto__: icon.Icon.prototype,
      [Widget_key]: null,
      [Icon_textDirection]: null,
      [Icon_semanticLabel]: null,
      [Icon_color]: C11 || CT.C11,
      [Icon_size]: null,
      [Icon_icon]: C12 || CT.C12
    });
  }
});
const _Location_parameterLocations = dart.privateName(widget_inspector, "_Location.parameterLocations");
const _Location_name = dart.privateName(widget_inspector, "_Location.name");
const _Location_column = dart.privateName(widget_inspector, "_Location.column");
const _Location_line = dart.privateName(widget_inspector, "_Location.line");
const _Location_file = dart.privateName(widget_inspector, "_Location.file");
const colors$ = dart.privateName(transformations_demo_color_picker, "ColorPicker.colors");
const selectedColor$ = dart.privateName(transformations_demo_color_picker, "ColorPicker.selectedColor");
const onColorSelection$ = dart.privateName(transformations_demo_color_picker, "ColorPicker.onColorSelection");
transformations_demo_color_picker.ColorPicker = class ColorPicker extends framework.StatelessWidget {
  get colors() {
    return this[colors$];
  }
  set colors(value) {
    super.colors = value;
  }
  get selectedColor() {
    return this[selectedColor$];
  }
  set selectedColor(value) {
    super.selectedColor = value;
  }
  get onColorSelection() {
    return this[onColorSelection$];
  }
  set onColorSelection(value) {
    super.onColorSelection = value;
  }
  build(context) {
    return new basic.Row.new({mainAxisAlignment: flex.MainAxisAlignment.center, children: this.colors[$map](transformations_demo_color_picker._ColorPickerSwatch, dart.fn(color => new transformations_demo_color_picker._ColorPickerSwatch.new({color: color, selected: dart.equals(color, this.selectedColor), onTap: dart.fn(() => {
          if (this.onColorSelection != null) {
            this.onColorSelection(color);
          }
        }, VoidToNull()), $creationLocationd_0dea112b090073317d4: C0 || CT.C0}), ColorTo_ColorPickerSwatch()))[$toList](), $creationLocationd_0dea112b090073317d4: C5 || CT.C5});
  }
};
(transformations_demo_color_picker.ColorPicker.new = function(opts) {
  let colors = opts && 'colors' in opts ? opts.colors : null;
  let selectedColor = opts && 'selectedColor' in opts ? opts.selectedColor : null;
  let onColorSelection = opts && 'onColorSelection' in opts ? opts.onColorSelection : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[colors$] = colors;
  this[selectedColor$] = selectedColor;
  this[onColorSelection$] = onColorSelection;
  if (!(colors != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/transformations/transformations_demo_color_picker.dart", 14, 15, "colors != null");
  if (!(selectedColor != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/transformations/transformations_demo_color_picker.dart", 15, 15, "selectedColor != null");
  transformations_demo_color_picker.ColorPicker.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = transformations_demo_color_picker.ColorPicker.prototype;
dart.addTypeTests(transformations_demo_color_picker.ColorPicker);
dart.setMethodSignature(transformations_demo_color_picker.ColorPicker, () => ({
  __proto__: dart.getMethods(transformations_demo_color_picker.ColorPicker.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(transformations_demo_color_picker.ColorPicker, "package:flutter_gallery/demo/transformations/transformations_demo_color_picker.dart");
dart.setFieldSignature(transformations_demo_color_picker.ColorPicker, () => ({
  __proto__: dart.getFields(transformations_demo_color_picker.ColorPicker.__proto__),
  colors: dart.finalFieldType(core.Set$(ui.Color)),
  selectedColor: dart.finalFieldType(ui.Color),
  onColorSelection: dart.finalFieldType(dart.fnType(dart.void, [ui.Color]))
}));
const EdgeInsets_bottom = dart.privateName(edge_insets, "EdgeInsets.bottom");
const EdgeInsets_right = dart.privateName(edge_insets, "EdgeInsets.right");
const EdgeInsets_top = dart.privateName(edge_insets, "EdgeInsets.top");
const EdgeInsets_left = dart.privateName(edge_insets, "EdgeInsets.left");
let C9;
const Widget_key = dart.privateName(framework, "Widget.key");
const Icon_textDirection = dart.privateName(icon, "Icon.textDirection");
const Icon_semanticLabel = dart.privateName(icon, "Icon.semanticLabel");
const Color_value = dart.privateName(ui, "Color.value");
let C11;
const Icon_color = dart.privateName(icon, "Icon.color");
const Icon_size = dart.privateName(icon, "Icon.size");
const IconData_matchTextDirection = dart.privateName(icon_data, "IconData.matchTextDirection");
const IconData_fontPackage = dart.privateName(icon_data, "IconData.fontPackage");
const IconData_fontFamily = dart.privateName(icon_data, "IconData.fontFamily");
const IconData_codePoint = dart.privateName(icon_data, "IconData.codePoint");
let C12;
const Icon_icon = dart.privateName(icon, "Icon.icon");
let C10;
const color$ = dart.privateName(transformations_demo_color_picker, "_ColorPickerSwatch.color");
const selected$ = dart.privateName(transformations_demo_color_picker, "_ColorPickerSwatch.selected");
const onTap$ = dart.privateName(transformations_demo_color_picker, "_ColorPickerSwatch.onTap");
transformations_demo_color_picker._ColorPickerSwatch = class _ColorPickerSwatch extends framework.StatelessWidget {
  get color() {
    return this[color$];
  }
  set color(value) {
    super.color = value;
  }
  get selected() {
    return this[selected$];
  }
  set selected(value) {
    super.selected = value;
  }
  get onTap() {
    return this[onTap$];
  }
  set onTap(value) {
    super.onTap = value;
  }
  build(context) {
    return new container.Container.new({width: 60.0, height: 60.0, padding: C9 || CT.C9, child: new button.RawMaterialButton.new({fillColor: this.color, onPressed: dart.fn(() => {
          if (this.onTap != null) {
            dart.dsend(this, 'onTap', []);
          }
        }, VoidToNull()), child: !dart.test(this.selected) ? null : C10 || CT.C10, $creationLocationd_0dea112b090073317d4: C13 || CT.C13}), $creationLocationd_0dea112b090073317d4: C18 || CT.C18});
  }
};
(transformations_demo_color_picker._ColorPickerSwatch.new = function(opts) {
  let color = opts && 'color' in opts ? opts.color : null;
  let selected = opts && 'selected' in opts ? opts.selected : null;
  let onTap = opts && 'onTap' in opts ? opts.onTap : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[color$] = color;
  this[selected$] = selected;
  this[onTap$] = onTap;
  if (!(color != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/transformations/transformations_demo_color_picker.dart", 47, 15, "color != null");
  if (!(selected != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/transformations/transformations_demo_color_picker.dart", 48, 15, "selected != null");
  transformations_demo_color_picker._ColorPickerSwatch.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = transformations_demo_color_picker._ColorPickerSwatch.prototype;
dart.addTypeTests(transformations_demo_color_picker._ColorPickerSwatch);
dart.setMethodSignature(transformations_demo_color_picker._ColorPickerSwatch, () => ({
  __proto__: dart.getMethods(transformations_demo_color_picker._ColorPickerSwatch.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(transformations_demo_color_picker._ColorPickerSwatch, "package:flutter_gallery/demo/transformations/transformations_demo_color_picker.dart");
dart.setFieldSignature(transformations_demo_color_picker._ColorPickerSwatch, () => ({
  __proto__: dart.getFields(transformations_demo_color_picker._ColorPickerSwatch.__proto__),
  color: dart.finalFieldType(ui.Color),
  selected: dart.finalFieldType(core.bool),
  onTap: dart.finalFieldType(core.Function)
}));
dart.trackLibraries("packages/flutter_gallery/demo/transformations/transformations_demo_color_picker", {
  "package:flutter_gallery/demo/transformations/transformations_demo_color_picker.dart": transformations_demo_color_picker
}, {
}, '{"version":3,"sourceRoot":"","sources":["transformations_demo_color_picker.dart"],"names":[],"mappings":";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;EAgBmB;;;;;;EACL;;;;;;EACc;;;;;;QAGC;AACzB,UAAO,uCACgC,yCAC3B,AAAO,AAUd,wEAVkB,QAAO,SACnB,qEACE,KAAK,YACI,YAAN,KAAK,EAAI,4BACZ;AACL,cAAI,yBAAoB;AACC,YAAvB,sBAAiB,KAAK;;;EAMlC;;;MA1BiB;MACA;MACV;;EAFU;EACA;EACV;QACK,AAAO,MAAD,IAAI;QACV,AAAc,aAAD,IAAI;AALvB;;AAK4B;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;EAmCtB;;;;;;EACD;;;;;;EACI;;;;;;QAGY;AACzB,UAAO,qCACE,cACC,mCAED,6CACM,uBACA;AACT,cAAI,cAAS;AACJ,uBAAP;;iCAGG,WAAC,iBAAW;EAMzB;;;MA7BiB;MACA;MACV;;EAFU;EACA;EACV;QACK,AAAM,KAAD,IAAI;QACT,AAAS,QAAD,IAAI;AALlB;;AAKuB","file":"transformations_demo_color_picker.ddc.js"}');
// Exports:
exports.demo__transformations__transformations_demo_color_picker = transformations_demo_color_picker;

//# sourceMappingURL=transformations_demo_color_picker.ddc.js.map
