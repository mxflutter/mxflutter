'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const _interceptors = dart_sdk._interceptors;
const ui = dart_sdk.ui;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const text = packages__flutter__src__widgets__actions.src__widgets__text;
const icon = packages__flutter__src__widgets__actions.src__widgets__icon;
const icon_data = packages__flutter__src__widgets__actions.src__widgets__icon_data;
const basic = packages__flutter__src__widgets__actions.src__widgets__basic;
const widget_inspector = packages__flutter__src__widgets__actions.src__widgets__widget_inspector;
const layout_builder = packages__flutter__src__widgets__actions.src__widgets__layout_builder;
const navigator = packages__flutter__src__widgets__actions.src__widgets__navigator;
const container = packages__flutter__src__widgets__actions.src__widgets__container;
const packages__flutter_gallery__demo__transformations__transformations_demo_board = require('packages/flutter_gallery/demo/transformations/transformations_demo_board');
const transformations_demo_board = packages__flutter_gallery__demo__transformations__transformations_demo_board.demo__transformations__transformations_demo_board;
const packages__flutter__material = require('packages/flutter/material');
const scaffold = packages__flutter__material.src__material__scaffold;
const app_bar = packages__flutter__material.src__material__app_bar;
const icon_button = packages__flutter__material.src__material__icon_button;
const dialog = packages__flutter__material.src__material__dialog;
const flat_button = packages__flutter__material.src__material__flat_button;
const floating_action_button = packages__flutter__material.src__material__floating_action_button;
const theme = packages__flutter__material.src__material__theme;
const bottom_sheet = packages__flutter__material.src__material__bottom_sheet;
const packages__flutter_gallery__demo__transformations__transformations_demo_gesture_transformable = require('packages/flutter_gallery/demo/transformations/transformations_demo_gesture_transformable');
const transformations_demo_gesture_transformable = packages__flutter_gallery__demo__transformations__transformations_demo_gesture_transformable.demo__transformations__transformations_demo_gesture_transformable;
const packages__flutter__src__rendering__animated_size = require('packages/flutter/src/rendering/animated_size');
const box = packages__flutter__src__rendering__animated_size.src__rendering__box;
const flex = packages__flutter__src__rendering__animated_size.src__rendering__flex;
const custom_paint = packages__flutter__src__rendering__animated_size.src__rendering__custom_paint;
const packages__flutter__src__painting___network_image_web = require('packages/flutter/src/painting/_network_image_web');
const edge_insets = packages__flutter__src__painting___network_image_web.src__painting__edge_insets;
const packages__flutter_gallery__demo__transformations__transformations_demo_edit_board_point = require('packages/flutter_gallery/demo/transformations/transformations_demo_edit_board_point');
const transformations_demo_edit_board_point = packages__flutter_gallery__demo__transformations__transformations_demo_edit_board_point.demo__transformations__transformations_demo_edit_board_point;
const packages__flutter__src__gestures__arena = require('packages/flutter/src/gestures/arena');
const tap = packages__flutter__src__gestures__arena.src__gestures__tap;
const transformations_demo = Object.create(dart.library);
let BuildContextToWidget = () => (BuildContextToWidget = dart.constFn(dart.fnType(framework.Widget, [framework.BuildContext])))();
let VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
let JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
let BuildContextAndBoxConstraintsToGestureTransformable = () => (BuildContextAndBoxConstraintsToGestureTransformable = dart.constFn(dart.fnType(transformations_demo_gesture_transformable.GestureTransformable, [framework.BuildContext, box.BoxConstraints])))();
let ColorToNull = () => (ColorToNull = dart.constFn(dart.fnType(core.Null, [ui.Color])))();
let BuildContextToContainer = () => (BuildContextToContainer = dart.constFn(dart.fnType(container.Container, [framework.BuildContext])))();
let BoardPointTovoid = () => (BoardPointTovoid = dart.constFn(dart.fnType(dart.void, [transformations_demo_board.BoardPoint])))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C0() {
    return C0 = dart.const({
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
      [Text_data]: "2D Transformations"
    });
  },
  get C2() {
    return C2 = dart.const({
      __proto__: icon_data.IconData.prototype,
      [IconData_matchTextDirection]: true,
      [IconData_fontPackage]: null,
      [IconData_fontFamily]: "MaterialIcons",
      [IconData_codePoint]: 59527
    });
  },
  get C1() {
    return C1 = dart.const({
      __proto__: icon.Icon.prototype,
      [Widget_key]: null,
      [Icon_textDirection]: null,
      [Icon_semanticLabel]: null,
      [Icon_color]: null,
      [Icon_size]: null,
      [Icon_icon]: C2 || CT.C2
    });
  },
  get C33() {
    return C33 = dart.const({
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
      [Text_data]: "Tap to edit hex tiles, and use gestures to move around the scene:\n"
    });
  },
  get C34() {
    return C34 = dart.const({
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
      [Text_data]: "- Drag to pan."
    });
  },
  get C35() {
    return C35 = dart.const({
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
      [Text_data]: "- Pinch to zoom."
    });
  },
  get C36() {
    return C36 = dart.const({
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
      [Text_data]: "- Rotate with two fingers."
    });
  },
  get C37() {
    return C37 = dart.const({
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
      [Text_data]: "\nYou can always press the home button to return to the starting orientation!"
    });
  },
  get C32() {
    return C32 = dart.constList([C33 || CT.C33, C34 || CT.C34, C35 || CT.C35, C36 || CT.C36, C37 || CT.C37], framework.Widget);
  },
  get C43() {
    return C43 = dart.const({
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
      [Text_data]: "OK"
    });
  },
  get C54() {
    return C54 = dart.const({
      __proto__: icon_data.IconData.prototype,
      [IconData_matchTextDirection]: false,
      [IconData_fontPackage]: null,
      [IconData_fontFamily]: "MaterialIcons",
      [IconData_codePoint]: 59530
    });
  },
  get C53() {
    return C53 = dart.const({
      __proto__: icon.Icon.prototype,
      [Widget_key]: null,
      [Icon_textDirection]: null,
      [Icon_semanticLabel]: null,
      [Icon_color]: null,
      [Icon_size]: null,
      [Icon_icon]: C54 || CT.C54
    });
  },
  get C61() {
    return C61 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 12,
      [EdgeInsets_right]: 12,
      [EdgeInsets_top]: 12,
      [EdgeInsets_left]: 12
    });
  },
  get C73() {
    return C73 = dart.const({
      __proto__: icon_data.IconData.prototype,
      [IconData_matchTextDirection]: false,
      [IconData_fontPackage]: null,
      [IconData_fontFamily]: "MaterialIcons",
      [IconData_codePoint]: 58313
    });
  },
  get C72() {
    return C72 = dart.const({
      __proto__: icon.Icon.prototype,
      [Widget_key]: null,
      [Icon_textDirection]: null,
      [Icon_semanticLabel]: null,
      [Icon_color]: null,
      [Icon_size]: null,
      [Icon_icon]: C73 || CT.C73
    });
  }
});
transformations_demo.TransformationsDemo = class TransformationsDemo extends framework.StatefulWidget {
  createState() {
    return new transformations_demo._TransformationsDemoState.new();
  }
};
(transformations_demo.TransformationsDemo.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  transformations_demo.TransformationsDemo.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = transformations_demo.TransformationsDemo.prototype;
dart.addTypeTests(transformations_demo.TransformationsDemo);
dart.setMethodSignature(transformations_demo.TransformationsDemo, () => ({
  __proto__: dart.getMethods(transformations_demo.TransformationsDemo.__proto__),
  createState: dart.fnType(transformations_demo._TransformationsDemoState, [])
}));
dart.setLibraryUri(transformations_demo.TransformationsDemo, "package:flutter_gallery/demo/transformations/transformations_demo.dart");
dart.defineLazy(transformations_demo.TransformationsDemo, {
  /*transformations_demo.TransformationsDemo.routeName*/get routeName() {
    return "/transformations";
  }
});
const _reset = dart.privateName(transformations_demo, "_reset");
const _board = dart.privateName(transformations_demo, "_board");
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
let C0;
const Icon_textDirection = dart.privateName(icon, "Icon.textDirection");
const Icon_semanticLabel = dart.privateName(icon, "Icon.semanticLabel");
const Icon_color = dart.privateName(icon, "Icon.color");
const Icon_size = dart.privateName(icon, "Icon.size");
const IconData_matchTextDirection = dart.privateName(icon_data, "IconData.matchTextDirection");
const IconData_fontPackage = dart.privateName(icon_data, "IconData.fontPackage");
const IconData_fontFamily = dart.privateName(icon_data, "IconData.fontFamily");
const IconData_codePoint = dart.privateName(icon_data, "IconData.codePoint");
let C2;
const Icon_icon = dart.privateName(icon, "Icon.icon");
let C1;
const _Location_parameterLocations = dart.privateName(widget_inspector, "_Location.parameterLocations");
const _Location_name = dart.privateName(widget_inspector, "_Location.name");
const _Location_column = dart.privateName(widget_inspector, "_Location.column");
const _Location_line = dart.privateName(widget_inspector, "_Location.line");
const _Location_file = dart.privateName(widget_inspector, "_Location.file");
const _onTapUp = dart.privateName(transformations_demo, "_onTapUp");
let C33;
let C34;
let C35;
let C36;
let C37;
let C32;
let C43;
let C54;
let C53;
const EdgeInsets_bottom = dart.privateName(edge_insets, "EdgeInsets.bottom");
const EdgeInsets_right = dart.privateName(edge_insets, "EdgeInsets.right");
const EdgeInsets_top = dart.privateName(edge_insets, "EdgeInsets.top");
const EdgeInsets_left = dart.privateName(edge_insets, "EdgeInsets.left");
let C61;
let C73;
let C72;
transformations_demo._TransformationsDemoState = class _TransformationsDemoState extends framework.State$(transformations_demo.TransformationsDemo) {
  build(context) {
    let painter = new transformations_demo.BoardPainter.new({board: this[_board]});
    return new scaffold.Scaffold.new({appBar: new app_bar.AppBar.new({title: C0 || CT.C0, actions: JSArrayOfWidget().of([new icon_button.IconButton.new({icon: C1 || CT.C1, tooltip: "Help", onPressed: dart.fn(() => {
              dialog.showDialog(basic.Column, {context: context, builder: dart.fn(context => this.instructionDialog, BuildContextToWidget())});
            }, VoidToNull()), $creationLocationd_0dea112b090073317d4: C3 || CT.C3})]), $creationLocationd_0dea112b090073317d4: C8 || CT.C8}), body: new layout_builder.LayoutBuilder.new({builder: dart.fn((context, constraints) => {
          let size = new ui.Size.new(constraints.maxWidth, constraints.maxHeight);
          let visibleSize = new ui.Size.new(dart.notNull(size.width) * 3, dart.notNull(size.height) * 2);
          return new transformations_demo_gesture_transformable.GestureTransformable.new({reset: this[_reset], onResetEnd: dart.fn(() => {
              this.setState(dart.fn(() => {
                this[_reset] = false;
              }, VoidToNull()));
            }, VoidToNull()), child: new basic.CustomPaint.new({painter: painter, $creationLocationd_0dea112b090073317d4: C12 || CT.C12}), boundaryRect: new ui.Rect.fromLTWH(-dart.notNull(visibleSize.width) / 2, -dart.notNull(visibleSize.height) / 2, visibleSize.width, visibleSize.height), initialTranslation: new ui.Offset.new(dart.notNull(size.width) / 2, dart.notNull(size.height) / 2), onTapUp: dart.bind(this, _onTapUp), size: size, $creationLocationd_0dea112b090073317d4: C15 || CT.C15});
        }, BuildContextAndBoxConstraintsToGestureTransformable()), $creationLocationd_0dea112b090073317d4: C24 || CT.C24}), floatingActionButton: this[_board].selected == null ? this.resetButton : this.editButton, $creationLocationd_0dea112b090073317d4: C27 || CT.C27});
  }
  get instructionDialog() {
    return new dialog.AlertDialog.new({title: C0 || CT.C0, content: new basic.Column.new({crossAxisAlignment: flex.CrossAxisAlignment.start, mainAxisSize: flex.MainAxisSize.min, children: C32 || CT.C32, $creationLocationd_0dea112b090073317d4: C38 || CT.C38}), actions: JSArrayOfWidget().of([new flat_button.FlatButton.new({child: C43 || CT.C43, onPressed: dart.fn(() => {
            navigator.Navigator.of(this.context).pop(core.Object);
          }, VoidToNull()), $creationLocationd_0dea112b090073317d4: C44 || CT.C44})]), $creationLocationd_0dea112b090073317d4: C48 || CT.C48});
  }
  get resetButton() {
    return new floating_action_button.FloatingActionButton.new({onPressed: dart.fn(() => {
        this.setState(dart.fn(() => {
          this[_reset] = true;
        }, VoidToNull()));
      }, VoidToNull()), tooltip: "Reset Transform", backgroundColor: theme.Theme.of(this.context).primaryColor, child: C53 || CT.C53, $creationLocationd_0dea112b090073317d4: C55 || CT.C55});
  }
  get editButton() {
    return new floating_action_button.FloatingActionButton.new({onPressed: dart.fn(() => {
        if (this[_board].selected == null) {
          return;
        }
        bottom_sheet.showModalBottomSheet(framework.Widget, {context: this.context, builder: dart.fn(context => new container.Container.new({width: 1 / 0, height: 150.0, padding: C61 || CT.C61, child: new transformations_demo_edit_board_point.EditBoardPoint.new({boardPoint: this[_board].selected, onColorSelection: dart.fn(color => {
                this.setState(dart.fn(() => {
                  this[_board] = this[_board].copyWithBoardPointColor(this[_board].selected, color);
                  navigator.Navigator.pop(core.Object, context);
                }, VoidToNull()));
              }, ColorToNull()), $creationLocationd_0dea112b090073317d4: C62 || CT.C62}), $creationLocationd_0dea112b090073317d4: C66 || CT.C66}), BuildContextToContainer())});
      }, VoidToNull()), tooltip: "Edit Tile", child: C72 || CT.C72, $creationLocationd_0dea112b090073317d4: C74 || CT.C74});
  }
  [_onTapUp](details) {
    let scenePoint = details.globalPosition;
    let boardPoint = this[_board].pointToBoardPoint(scenePoint);
    this.setState(dart.fn(() => {
      this[_board] = this[_board].copyWithSelected(boardPoint);
    }, VoidToNull()));
  }
};
(transformations_demo._TransformationsDemoState.new = function() {
  this[_reset] = false;
  this[_board] = new transformations_demo_board.Board.new({boardRadius: 8, hexagonRadius: 32, hexagonMargin: 1});
  transformations_demo._TransformationsDemoState.__proto__.new.call(this);
  ;
}).prototype = transformations_demo._TransformationsDemoState.prototype;
dart.addTypeTests(transformations_demo._TransformationsDemoState);
dart.setMethodSignature(transformations_demo._TransformationsDemoState, () => ({
  __proto__: dart.getMethods(transformations_demo._TransformationsDemoState.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext]),
  [_onTapUp]: dart.fnType(dart.void, [tap.TapUpDetails])
}));
dart.setGetterSignature(transformations_demo._TransformationsDemoState, () => ({
  __proto__: dart.getGetters(transformations_demo._TransformationsDemoState.__proto__),
  instructionDialog: framework.Widget,
  resetButton: floating_action_button.FloatingActionButton,
  editButton: floating_action_button.FloatingActionButton
}));
dart.setLibraryUri(transformations_demo._TransformationsDemoState, "package:flutter_gallery/demo/transformations/transformations_demo.dart");
dart.setFieldSignature(transformations_demo._TransformationsDemoState, () => ({
  __proto__: dart.getFields(transformations_demo._TransformationsDemoState.__proto__),
  [_reset]: dart.fieldType(core.bool),
  [_board]: dart.fieldType(transformations_demo_board.Board)
}));
dart.defineLazy(transformations_demo._TransformationsDemoState, {
  /*transformations_demo._TransformationsDemoState._kHexagonRadius*/get _kHexagonRadius() {
    return 32;
  },
  /*transformations_demo._TransformationsDemoState._kHexagonMargin*/get _kHexagonMargin() {
    return 1;
  },
  /*transformations_demo._TransformationsDemoState._kBoardRadius*/get _kBoardRadius() {
    return 8;
  }
});
const board$ = dart.privateName(transformations_demo, "BoardPainter.board");
transformations_demo.BoardPainter = class BoardPainter extends custom_paint.CustomPainter {
  get board() {
    return this[board$];
  }
  set board(value) {
    super.board = value;
  }
  paint(canvas, size) {
    const drawBoardPoint = boardPoint => {
      let color = boardPoint.color.withOpacity(dart.equals(this.board.selected, boardPoint) ? 0.2 : 1.0);
      let vertices = this.board.getVerticesForBoardPoint(boardPoint, color);
      canvas.drawVertices(vertices, ui.BlendMode.color, new ui.Paint.new());
    };
    dart.fn(drawBoardPoint, BoardPointTovoid());
    this.board.forEach(drawBoardPoint);
  }
  shouldRepaint(oldDelegate) {
    transformations_demo.BoardPainter._check(oldDelegate);
    return !dart.equals(oldDelegate.board, this.board);
  }
};
(transformations_demo.BoardPainter.new = function(opts) {
  let board = opts && 'board' in opts ? opts.board : null;
  this[board$] = board;
  transformations_demo.BoardPainter.__proto__.new.call(this);
  ;
}).prototype = transformations_demo.BoardPainter.prototype;
dart.addTypeTests(transformations_demo.BoardPainter);
dart.setMethodSignature(transformations_demo.BoardPainter, () => ({
  __proto__: dart.getMethods(transformations_demo.BoardPainter.__proto__),
  paint: dart.fnType(dart.void, [ui.Canvas, ui.Size]),
  shouldRepaint: dart.fnType(core.bool, [core.Object])
}));
dart.setLibraryUri(transformations_demo.BoardPainter, "package:flutter_gallery/demo/transformations/transformations_demo.dart");
dart.setFieldSignature(transformations_demo.BoardPainter, () => ({
  __proto__: dart.getFields(transformations_demo.BoardPainter.__proto__),
  board: dart.finalFieldType(transformations_demo_board.Board)
}));
dart.trackLibraries("packages/flutter_gallery/demo/transformations/transformations_demo", {
  "package:flutter_gallery/demo/transformations/transformations_demo.dart": transformations_demo
}, {
}, '{"version":3,"sourceRoot":"","sources":["transformations_demo.dart"],"names":[],"mappings":";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;AAeuD;EAA2B;;;MAJhD;;AAAS,0EAAW,GAAG;;AAAC;;;;;;;;IAEpC,kDAAS;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;QAoBF;AACN,kBAAU,kDACpB;AAKT,UAAO,oCACG,qDAEW,sBACf,4DAEW,mBACE;AAIR,cAHD,0CACW,OAAO,WACP,QAAc,WAAY;oJAMvC,+CACK,SAAc,SAAwB;AAGlC,qBAAO,gBAAK,AAAY,WAAD,WAAW,AAAY,WAAD;AAC7C,4BAAc,gBAAgB,aAAX,AAAK,IAAD,UAAS,GAAe,aAAZ,AAAK,IAAD,WAAU;AAC5D,gBAAO,iFACE,0BACK;AAGR,cAFF,cAAS;AACO,gBAAd,eAAS;;qCAGN,oCACI,OAAO,yEAEC,qBACjB,AAAmB,cAAlB,AAAY,WAAD,UAAS,GACrB,AAAoB,cAAnB,AAAY,WAAD,WAAU,GACtB,AAAY,WAAD,QACX,AAAY,WAAD,8BAKO,kBAAkB,aAAX,AAAK,IAAD,UAAS,GAAe,aAAZ,AAAK,IAAD,WAAU,uBAChD,uBACH,IAAI;kJAIM,AAAO,AAAS,yBAAG,OAAO,mBAAc;EAElE;;AAGE,UAAO,0DAEI,0CACgC,6CACZ,kHASZ,sBACf,iEAEa;AACkB,YAAjB,AAAY,uBAAT;;EAKvB;;AAGE,UAAO,iEACM;AAGP,QAFF,cAAS;AACM,UAAb,eAAS;;iCAGJ,oCACc,AAAY,eAAT;EAG9B;;AAGE,UAAO,iEACM;AACT,YAAI,AAAO,AAAS,yBAAG;AACrB;;AAiBA,QAfF,8DAAsC,uBAAkB,QAAc,WAC7D,mDAEG,sCAED,0EACO,AAAO,yCACD,QAAO;AAIrB,gBAHF,cAAS;AACwD,kBAA/D,eAAS,AAAO,qCAAwB,AAAO,uBAAU,KAAK;AACxC,kBAAZ,qCAAI,OAAO;;;iCAOxB;EAGb;aAE2B;AACZ,qBAAa,AAAQ,OAAD;AAChB,qBAAa,AAAO,+BAAkB,UAAU;AAG/D,IAFF,cAAS;AACqC,MAA5C,eAAS,AAAO,8BAAiB,UAAU;;EAE/C;;;EA1IK,eAAS;EACR,eAAS;;;AA0IjB;;;;;;;;;;;;;;;;;;;;IAjJsB,8DAAe;;;IAEf,8DAAe;;;IAElB,4DAAa;;;;;;EAsJlB;;;;;;QAGM,QAAa;AAC7B,UAAK,iBAA0B;AACjB,kBAAQ,AAAW,AAAM,UAAP,mBACb,YAAf,AAAM,qBAAY,UAAU,IAAG,MAAM;AAExB,qBAAW,AAAM,oCAAyB,UAAU,EAAE,KAAK;AACnB,MAAvD,AAAO,MAAD,cAAc,QAAQ,EAAY,oBAAO;;;AAGpB,IAA7B,AAAM,mBAAQ,cAAc;EAC9B;gBAIgC;;AAC9B,UAAyB,cAAlB,AAAY,WAAD,QAAU;EAC9B;;;MAtBO;;AADD;;AAEJ","file":"transformations_demo.ddc.js"}');
// Exports:
exports.demo__transformations__transformations_demo = transformations_demo;

//# sourceMappingURL=transformations_demo.ddc.js.map
