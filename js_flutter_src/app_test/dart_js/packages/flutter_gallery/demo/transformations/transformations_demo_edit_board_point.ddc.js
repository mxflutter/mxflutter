'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const ui = dart_sdk.ui;
const _interceptors = dart_sdk._interceptors;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const basic = packages__flutter__src__widgets__actions.src__widgets__basic;
const text = packages__flutter__src__widgets__actions.src__widgets__text;
const widget_inspector = packages__flutter__src__widgets__actions.src__widgets__widget_inspector;
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const packages__flutter__src__rendering__animated_size = require('packages/flutter/src/rendering/animated_size');
const flex = packages__flutter__src__rendering__animated_size.src__rendering__flex;
const packages__flutter__src__painting___network_image_web = require('packages/flutter/src/painting/_network_image_web');
const text_style = packages__flutter__src__painting___network_image_web.src__painting__text_style;
const packages__flutter_gallery__demo__transformations__transformations_demo_color_picker = require('packages/flutter_gallery/demo/transformations/transformations_demo_color_picker');
const transformations_demo_color_picker = packages__flutter_gallery__demo__transformations__transformations_demo_color_picker.demo__transformations__transformations_demo_color_picker;
const packages__flutter_gallery__demo__transformations__transformations_demo_board = require('packages/flutter_gallery/demo/transformations/transformations_demo_board');
const transformations_demo_board = packages__flutter_gallery__demo__transformations__transformations_demo_board.demo__transformations__transformations_demo_board;
const transformations_demo_edit_board_point = Object.create(dart.library);
let JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C1() {
    return C1 = dart.const({
      __proto__: ui.FontWeight.prototype,
      [FontWeight_index]: 6
    });
  },
  get C0() {
    return C0 = dart.const({
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
      [TextStyle_textBaseline]: null,
      [TextStyle_wordSpacing]: null,
      [TextStyle_letterSpacing]: null,
      [TextStyle_fontStyle]: null,
      [TextStyle_fontWeight]: C1 || CT.C1,
      [TextStyle_fontSize]: null,
      [TextStyle__package]: null,
      [TextStyle__fontFamilyFallback]: null,
      [TextStyle_fontFamily]: null,
      [TextStyle_backgroundColor]: null,
      [TextStyle_color]: null,
      [TextStyle_inherit]: true
    });
  }
});
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
const TextStyle_textBaseline = dart.privateName(text_style, "TextStyle.textBaseline");
const TextStyle_wordSpacing = dart.privateName(text_style, "TextStyle.wordSpacing");
const TextStyle_letterSpacing = dart.privateName(text_style, "TextStyle.letterSpacing");
const TextStyle_fontStyle = dart.privateName(text_style, "TextStyle.fontStyle");
const FontWeight_index = dart.privateName(ui, "FontWeight.index");
let C1;
const TextStyle_fontWeight = dart.privateName(text_style, "TextStyle.fontWeight");
const TextStyle_fontSize = dart.privateName(text_style, "TextStyle.fontSize");
const TextStyle__package = dart.privateName(text_style, "TextStyle._package");
const TextStyle__fontFamilyFallback = dart.privateName(text_style, "TextStyle._fontFamilyFallback");
const TextStyle_fontFamily = dart.privateName(text_style, "TextStyle.fontFamily");
const TextStyle_backgroundColor = dart.privateName(text_style, "TextStyle.backgroundColor");
const TextStyle_color = dart.privateName(text_style, "TextStyle.color");
const TextStyle_inherit = dart.privateName(text_style, "TextStyle.inherit");
let C0;
const _Location_parameterLocations = dart.privateName(widget_inspector, "_Location.parameterLocations");
const _Location_name = dart.privateName(widget_inspector, "_Location.name");
const _Location_column = dart.privateName(widget_inspector, "_Location.column");
const _Location_line = dart.privateName(widget_inspector, "_Location.line");
const _Location_file = dart.privateName(widget_inspector, "_Location.file");
const boardPoint$ = dart.privateName(transformations_demo_edit_board_point, "EditBoardPoint.boardPoint");
const onColorSelection$ = dart.privateName(transformations_demo_edit_board_point, "EditBoardPoint.onColorSelection");
transformations_demo_edit_board_point.EditBoardPoint = class EditBoardPoint extends framework.StatelessWidget {
  get boardPoint() {
    return this[boardPoint$];
  }
  set boardPoint(value) {
    super.boardPoint = value;
  }
  get onColorSelection() {
    return this[onColorSelection$];
  }
  set onColorSelection(value) {
    super.onColorSelection = value;
  }
  build(context) {
    return new basic.Column.new({crossAxisAlignment: flex.CrossAxisAlignment.stretch, children: JSArrayOfWidget().of([new text.Text.new(dart.str(this.boardPoint.q) + ", " + dart.str(this.boardPoint.r), {textAlign: ui.TextAlign.right, style: C0 || CT.C0, $creationLocationd_0dea112b090073317d4: C2 || CT.C2}), new transformations_demo_color_picker.ColorPicker.new({colors: transformations_demo_board.boardPointColors, selectedColor: this.boardPoint.color, onColorSelection: this.onColorSelection, $creationLocationd_0dea112b090073317d4: C7 || CT.C7})]), $creationLocationd_0dea112b090073317d4: C12 || CT.C12});
  }
};
(transformations_demo_edit_board_point.EditBoardPoint.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let boardPoint = opts && 'boardPoint' in opts ? opts.boardPoint : null;
  let onColorSelection = opts && 'onColorSelection' in opts ? opts.onColorSelection : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[boardPoint$] = boardPoint;
  this[onColorSelection$] = onColorSelection;
  if (!(boardPoint != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/transformations/transformations_demo_edit_board_point.dart", 16, 15, "boardPoint != null");
  transformations_demo_edit_board_point.EditBoardPoint.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = transformations_demo_edit_board_point.EditBoardPoint.prototype;
dart.addTypeTests(transformations_demo_edit_board_point.EditBoardPoint);
dart.setMethodSignature(transformations_demo_edit_board_point.EditBoardPoint, () => ({
  __proto__: dart.getMethods(transformations_demo_edit_board_point.EditBoardPoint.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(transformations_demo_edit_board_point.EditBoardPoint, "package:flutter_gallery/demo/transformations/transformations_demo_edit_board_point.dart");
dart.setFieldSignature(transformations_demo_edit_board_point.EditBoardPoint, () => ({
  __proto__: dart.getFields(transformations_demo_edit_board_point.EditBoardPoint.__proto__),
  boardPoint: dart.finalFieldType(transformations_demo_board.BoardPoint),
  onColorSelection: dart.finalFieldType(dart.fnType(dart.void, [ui.Color]))
}));
dart.trackLibraries("packages/flutter_gallery/demo/transformations/transformations_demo_edit_board_point", {
  "package:flutter_gallery/demo/transformations/transformations_demo_edit_board_point.dart": transformations_demo_edit_board_point
}, {
}, '{"version":3,"sourceRoot":"","sources":["transformations_demo_edit_board_point.dart"],"names":[],"mappings":";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;EAkBmB;;;;;;EACS;;;;;;QAGC;AACzB,UAAO,2CACkC,2CACrB,sBAChB,kBACoC,SAA/B,AAAW,qBAAE,gBAAI,AAAW,gCACV,+FAGvB,+DACU,4DACO,AAAW,yCACR;EAI1B;;;MA1BM;MACW;MACV;;EADU;EACV;QACK,AAAW,UAAD,IAAI;AACrB,sFAAW,GAAG;;AAAC","file":"transformations_demo_edit_board_point.ddc.js"}');
// Exports:
exports.demo__transformations__transformations_demo_edit_board_point = transformations_demo_edit_board_point;

//# sourceMappingURL=transformations_demo_edit_board_point.ddc.js.map
