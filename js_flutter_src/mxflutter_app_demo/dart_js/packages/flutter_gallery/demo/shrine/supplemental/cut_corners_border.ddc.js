'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const ui = dart_sdk.ui;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__painting___network_image_web = require('packages/flutter/src/painting/_network_image_web');
const borders = packages__flutter__src__painting___network_image_web.src__painting__borders;
const border_radius = packages__flutter__src__painting___network_image_web.src__painting__border_radius;
const packages__flutter__material = require('packages/flutter/material');
const input_border = packages__flutter__material.src__material__input_border;
const cut_corners_border = Object.create(dart.library);
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C1() {
    return C1 = dart.const({
      __proto__: borders.BorderStyle.prototype,
      [_name]: "BorderStyle.none",
      index: 0
    });
  },
  get C2() {
    return C2 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4278190080.0
    });
  },
  get C0() {
    return C0 = dart.const({
      __proto__: borders.BorderSide.prototype,
      [BorderSide_style]: C1 || CT.C1,
      [BorderSide_width]: 0,
      [BorderSide_color]: C2 || CT.C2
    });
  },
  get C4() {
    return C4 = dart.const({
      __proto__: ui.Radius.prototype,
      [Radius_y]: 2,
      [Radius_x]: 2
    });
  },
  get C3() {
    return C3 = dart.const({
      __proto__: border_radius.BorderRadius.prototype,
      [BorderRadius_bottomRight]: C4 || CT.C4,
      [BorderRadius_bottomLeft]: C4 || CT.C4,
      [BorderRadius_topRight]: C4 || CT.C4,
      [BorderRadius_topLeft]: C4 || CT.C4
    });
  },
  get C5() {
    return C5 = dart.const({
      __proto__: ui.TextDirection.prototype,
      [_name$]: "TextDirection.rtl",
      index: 0
    });
  },
  get C6() {
    return C6 = dart.const({
      __proto__: ui.TextDirection.prototype,
      [_name$]: "TextDirection.ltr",
      index: 1
    });
  }
});
const _name = dart.privateName(borders, "_name");
let C1;
const BorderSide_style = dart.privateName(borders, "BorderSide.style");
const BorderSide_width = dart.privateName(borders, "BorderSide.width");
const Color_value = dart.privateName(ui, "Color.value");
let C2;
const BorderSide_color = dart.privateName(borders, "BorderSide.color");
let C0;
const Radius_y = dart.privateName(ui, "Radius.y");
const Radius_x = dart.privateName(ui, "Radius.x");
let C4;
const BorderRadius_bottomRight = dart.privateName(border_radius, "BorderRadius.bottomRight");
const BorderRadius_bottomLeft = dart.privateName(border_radius, "BorderRadius.bottomLeft");
const BorderRadius_topRight = dart.privateName(border_radius, "BorderRadius.topRight");
const BorderRadius_topLeft = dart.privateName(border_radius, "BorderRadius.topLeft");
let C3;
const _notchedSidesAndBottom = dart.privateName(cut_corners_border, "_notchedSidesAndBottom");
const _notchedCornerPath = dart.privateName(cut_corners_border, "_notchedCornerPath");
const _name$ = dart.privateName(ui, "_name");
let C5;
let C6;
const cut$ = dart.privateName(cut_corners_border, "CutCornersBorder.cut");
cut_corners_border.CutCornersBorder = class CutCornersBorder extends input_border.OutlineInputBorder {
  get cut() {
    return this[cut$];
  }
  set cut(value) {
    super.cut = value;
  }
  copyWith(opts) {
    let t0, t0$, t0$0, t0$1;
    let borderSide = opts && 'borderSide' in opts ? opts.borderSide : null;
    let borderRadius = opts && 'borderRadius' in opts ? opts.borderRadius : null;
    let gapPadding = opts && 'gapPadding' in opts ? opts.gapPadding : null;
    let cut = opts && 'cut' in opts ? opts.cut : null;
    return new cut_corners_border.CutCornersBorder.new({borderSide: (t0 = borderSide, t0 == null ? this.borderSide : t0), borderRadius: (t0$ = borderRadius, t0$ == null ? this.borderRadius : t0$), gapPadding: (t0$0 = gapPadding, t0$0 == null ? this.gapPadding : t0$0), cut: (t0$1 = cut, t0$1 == null ? this.cut : t0$1)});
  }
  lerpFrom(a, t) {
    if (cut_corners_border.CutCornersBorder.is(a)) {
      let outline = a;
      return new cut_corners_border.CutCornersBorder.new({borderRadius: border_radius.BorderRadius.lerp(outline.borderRadius, this.borderRadius, t), borderSide: borders.BorderSide.lerp(outline.borderSide, this.borderSide, t), cut: this.cut, gapPadding: outline.gapPadding});
    }
    return super.lerpFrom(a, t);
  }
  lerpTo(b, t) {
    if (cut_corners_border.CutCornersBorder.is(b)) {
      let outline = b;
      return new cut_corners_border.CutCornersBorder.new({borderRadius: border_radius.BorderRadius.lerp(this.borderRadius, outline.borderRadius, t), borderSide: borders.BorderSide.lerp(this.borderSide, outline.borderSide, t), cut: this.cut, gapPadding: outline.gapPadding});
    }
    return super.lerpTo(b, t);
  }
  [_notchedCornerPath](center, start, extent) {
    let t0;
    if (start === void 0) start = 0;
    if (extent === void 0) extent = 0;
    let path = ui.Path.new();
    if (dart.notNull(start) > 0.0 || dart.notNull(extent) > 0.0) {
      path.relativeMoveTo(dart.notNull(extent) + dart.notNull(start), center.top);
      this[_notchedSidesAndBottom](center, path);
      t0 = path;
      t0.lineTo(dart.notNull(center.left) + dart.notNull(this.cut), center.top);
      t0.lineTo(start, center.top);
      t0;
    } else {
      path.moveTo(dart.notNull(center.left) + dart.notNull(this.cut), center.top);
      this[_notchedSidesAndBottom](center, path);
      path.lineTo(dart.notNull(center.left) + dart.notNull(this.cut), center.top);
    }
    return path;
  }
  [_notchedSidesAndBottom](center, path) {
    let t0;
    t0 = path;
    t0.lineTo(dart.notNull(center.right) - dart.notNull(this.cut), center.top);
    t0.lineTo(center.right, dart.notNull(center.top) + dart.notNull(this.cut));
    t0.lineTo(center.right, dart.notNull(center.top) + dart.notNull(center.height) - dart.notNull(this.cut));
    t0.lineTo(dart.notNull(center.right) - dart.notNull(this.cut), dart.notNull(center.top) + dart.notNull(center.height));
    t0.lineTo(dart.notNull(center.left) + dart.notNull(this.cut), dart.notNull(center.top) + dart.notNull(center.height));
    t0.lineTo(center.left, dart.notNull(center.top) + dart.notNull(center.height) - dart.notNull(this.cut));
    t0.lineTo(center.left, dart.notNull(center.top) + dart.notNull(this.cut));
    return t0;
  }
  paint(canvas, rect, opts) {
    let gapStart = opts && 'gapStart' in opts ? opts.gapStart : null;
    let gapExtent = opts && 'gapExtent' in opts ? opts.gapExtent : 0;
    let gapPercentage = opts && 'gapPercentage' in opts ? opts.gapPercentage : 0;
    let textDirection = opts && 'textDirection' in opts ? opts.textDirection : null;
    if (!(gapExtent != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/shrine/supplemental/cut_corners_border.dart", 101, 12, "gapExtent != null");
    if (!(dart.notNull(gapPercentage) >= 0.0 && dart.notNull(gapPercentage) <= 1.0)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/shrine/supplemental/cut_corners_border.dart", 102, 12, "gapPercentage >= 0.0 && gapPercentage <= 1.0");
    let paint = this.borderSide.toPaint();
    let outer = this.borderRadius.toRRect(rect);
    if (gapStart == null || dart.notNull(gapExtent) <= 0.0 || gapPercentage === 0.0) {
      canvas.drawPath(this[_notchedCornerPath](outer.middleRect), paint);
    } else {
      let extent = ui.lerpDouble(0.0, dart.notNull(gapExtent) + dart.notNull(this.gapPadding) * 2.0, gapPercentage);
      switch (textDirection) {
        case C5 || CT.C5:
        {
          {
            let path = this[_notchedCornerPath](outer.middleRect, dart.notNull(gapStart) + dart.notNull(this.gapPadding) - dart.notNull(extent), extent);
            canvas.drawPath(path, paint);
            break;
          }
        }
        case C6 || CT.C6:
        {
          {
            let path = this[_notchedCornerPath](outer.middleRect, dart.notNull(gapStart) - dart.notNull(this.gapPadding), extent);
            canvas.drawPath(path, paint);
            break;
          }
        }
      }
    }
  }
};
(cut_corners_border.CutCornersBorder.new = function(opts) {
  let borderSide = opts && 'borderSide' in opts ? opts.borderSide : C0 || CT.C0;
  let borderRadius = opts && 'borderRadius' in opts ? opts.borderRadius : C3 || CT.C3;
  let cut = opts && 'cut' in opts ? opts.cut : 7;
  let gapPadding = opts && 'gapPadding' in opts ? opts.gapPadding : 2;
  this[cut$] = cut;
  cut_corners_border.CutCornersBorder.__proto__.new.call(this, {borderSide: borderSide, borderRadius: borderRadius, gapPadding: gapPadding});
  ;
}).prototype = cut_corners_border.CutCornersBorder.prototype;
dart.addTypeTests(cut_corners_border.CutCornersBorder);
dart.setMethodSignature(cut_corners_border.CutCornersBorder, () => ({
  __proto__: dart.getMethods(cut_corners_border.CutCornersBorder.__proto__),
  copyWith: dart.fnType(cut_corners_border.CutCornersBorder, [], {borderRadius: border_radius.BorderRadius, borderSide: borders.BorderSide, cut: core.double, gapPadding: core.double}, {}),
  [_notchedCornerPath]: dart.fnType(ui.Path, [ui.Rect], [core.double, core.double]),
  [_notchedSidesAndBottom]: dart.fnType(ui.Path, [ui.Rect, ui.Path])
}));
dart.setLibraryUri(cut_corners_border.CutCornersBorder, "package:flutter_gallery/demo/shrine/supplemental/cut_corners_border.dart");
dart.setFieldSignature(cut_corners_border.CutCornersBorder, () => ({
  __proto__: dart.getFields(cut_corners_border.CutCornersBorder.__proto__),
  cut: dart.finalFieldType(core.double)
}));
dart.trackLibraries("packages/flutter_gallery/demo/shrine/supplemental/cut_corners_border", {
  "package:flutter_gallery/demo/shrine/supplemental/cut_corners_border.dart": cut_corners_border
}, {
}, '{"version":3,"sourceRoot":"","sources":["cut_corners_border.dart"],"names":[],"mappings":"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","file":"cut_corners_border.ddc.js"}');
// Exports:
exports.demo__shrine__supplemental__cut_corners_border = cut_corners_border;

//# sourceMappingURL=cut_corners_border.ddc.js.map
