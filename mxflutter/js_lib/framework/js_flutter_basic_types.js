//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

//-------------------------------------------
//TODO: class Paint

//-------------------------------------------
//不依赖任何文件的放这里
//dart widget 封装
const dart_sdk = require("dart_sdk");
const core = dart_sdk.core;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const ui = dart_sdk.ui;
const $clamp = dartx.clamp;


var $forEach = dartx.forEach;
var dynamicAnddynamicToNull = () => (dynamicAnddynamicToNull = dart.constFn(dart.fnType(core.Null, [dart.dynamic, dart.dynamic])))();
var dynamicToNull = () => (dynamicToNull = dart.constFn(dart.fnType(core.Null, [dart.dynamic])))();


class FlutterWidgetMirrorMgr {
  constructor() {
    this.mirrorIDFeed = 0;
    this.mirrorObjMap = new Map();
  }

  static getInstance() {
    if (!this.instance) {
      this.instance = new FlutterWidgetMirrorMgr();
    }
    return this.instance;
  }

  generateID(obj) {
    const d = ++this.mirrorIDFeed;
    const idString = String(d);
    this.mirrorObjMap[idString] = obj;
    return idString;
  }

  removeMirrorObjects(mirrorIDList) {
    for (let mirrorID in mirrorIDList) {
      this.mirrorObjMap.delete(mirrorID);
    }
  }

  getMirrorObj(mirrorID) {
    return this.mirrorObjMap[mirrorID];
  }
}

class FlutterCallArgs {
  constructor({
    widgetID,
    mirrorID,
    className,
    funcName,
    args
  } = {}) {
    this.widgetID = widgetID;
    this.mirrorID = mirrorID;
    this.className = className;
    this.funcName = funcName;
    this.args = args;
  }
}

//flutter 中 非widget继承 DartClass
class DartClass extends core.Object {
  constructor() {
    super();
    this.className = this.constructor.name;
  }

  createMirrorObjectID() {
    this.mirrorID = FlutterWidgetMirrorMgr.getInstance().generateID(this);
    core.print("createMirrorObjectID: mirrorID : " + this.mirrorID);
  }
}

//flutter Widget继承FlutterWidget
class FlutterWidget extends DartClass {
  constructor() {
    super();
  }

  //在生成json前调用
  //用于list delegate 等的items build
  //用于widget有类似onTab等响应函数变量，在此转换成callbackid,
  //但注意，delegate中确实需要funtion,要转不需ID的，不要调用super.preBuild
  preBuild(jsWidgetHelper, buildContext) {
    //把callback 换成callbackID
    for (let k in this) {
      let v = this[k];
      if (typeof v == "function") {
        this[k] = jsWidgetHelper.buildingCreateCallbackID(v);
      }
    }
  }
}

//包装类
class Key extends DartClass {
  constructor(value) {
    super("Key");
    this.value = value;
  }
}

Key.new = function (args) {
  return new Key(args);
};

class AlignmentDirectional extends DartClass {
  constructor({ start, y } = {}) {
    super();

    this.start = start;
    this.y = y;
  }
}

AlignmentDirectional.new = function (args) {
  return new AlignmentDirectional(args);
};

class EdgeInsetsDirectional extends DartClass {
  constructor(start, top, end, bottom) {
    super();

    this.start = start;
    this.top = top;
    this.end = end;
    this.bottom = bottom;
  }
}

EdgeInsetsDirectional.new = function (start, top, end, bottom) {
  return new EdgeInsetsDirectional(start, top, end, bottom);
};

EdgeInsetsDirectional.fromSTEB = function ({ start, top, end, bottom } = {}) {
  let v = new EdgeInsetsDirectional();
  v.constructorName = "fromSTEB";

  v.start = start;
  v.top = top;
  v.end = end;
  v.bottom = bottom;
  return v;
};

EdgeInsetsDirectional.only = function ({
  start = 0.0,
  top = 0.0,
  end = 0.0,
  bottom = 0.0
} = {}) {
  let v = new EdgeInsetsDirectional();
  v.constructorName = "only";
  v.start = start;
  v.top = top;
  v.end = end;
  v.bottom = bottom;
  return v;
};

class EdgeInsets extends DartClass {
  constructor(left, top, right, bottom) {
    super();

    this.left = left;
    this.top = top;
    this.right = right;
    this.bottom = bottom;
  }
}

EdgeInsets.new = function (left, top, right, bottom) {
  return new EdgeInsets(left, top, right, bottom);
};

EdgeInsets.fromLTRB = function (left, top, right, bottom) {
  let jsObj = new EdgeInsets();
  jsObj.constructorName = "fromLTRB";

  jsObj.left = left;
  jsObj.top = top;
  jsObj.right = right;
  jsObj.bottom = bottom;

  return jsObj;
};

EdgeInsets.all = function (value) {
  let jsObj = new EdgeInsets();
  jsObj.constructorName = "all";

  jsObj.value = value;

  return jsObj;
};

EdgeInsets.only = function ({ left, top, right, bottom } = {}) {
  let jsObj = new EdgeInsets();
  jsObj.constructorName = "only";

  jsObj.left = left;
  jsObj.top = top;
  jsObj.right = right;
  jsObj.bottom = bottom;

  return jsObj;
};

EdgeInsets.symmetric = function ({ vertical, horizontal } = {}) {
  let jsObj = new EdgeInsets();
  jsObj.constructorName = "symmetric";

  jsObj.vertical = vertical;
  jsObj.horizontal = horizontal;

  return jsObj;
};

EdgeInsets.fromJson = function (mapObj) {
  if (mapObj == null || mapObj == undefined) {
    return null;
  }

  let obj = new EdgeInsets();

  for (var p in mapObj) {
    if (mapObj.hasOwnProperty(p)) {
      let v = mapObj[p];
      obj[p] = v;
    }
  }

  return obj;
};

class Color extends DartClass {
  constructor(value) {
    super();
    this.value = value;
  }

  /// Construct a color from the lower 8 bits of four integers.
  ///
  /// * `a` is the alpha value, with 0 being transparent and 255 being fully
  ///   opaque.
  /// * `r` is [red], from 0 to 255.
  /// * `g` is [green], from 0 to 255.
  /// * `b` is [blue], from 0 to 255.
  ///
  /// Out of range values are brought into range using modulo 255.
  ///
  /// See also [fromRGBO], which takes the alpha value as a floating point
  /// value.
}

Color.new = function (args) {
  return new Color(args);
};

///const Color.fromARGB(int a, int r, int g, int b)
Color.fromARGB = function (a, r, g, b) {
  let c = new Color();
  c.constructorName = "fromARGB";

  c.a = a;
  c.r = r;
  c.g = g;
  c.b = b;
  return c;
};

Color.fromRGBO = function (r, g, b, opacity) {
  let c = new Color();
  c.constructorName = "fromRGBO";
  c.opacity = opacity;
  c.r = r;
  c.g = g;
  c.b = b;

  return c;
};

Color.fromJson = function (mapObj) {
  if (mapObj == null || mapObj == undefined) {
    return null;
  }

  let obj = new Color();

  for (var p in mapObj) {
    if (mapObj.hasOwnProperty(p)) {
      let v = mapObj[p];
      obj[p] = v;
    }
  }

  return obj;
};

// BlendMode = {
//   clear: "BlendMode.clear",
//   src: "BlendMode.src",
//   dst: "BlendMode.dst",
//   srcOver: "BlendMode.srcOver",
//   dstOver: "BlendMode.dstOver",
//   srcIn: "BlendMode.srcIn",
//   dstIn: "BlendMode.dstIn",
//   srcOut: "BlendMode.srcOut",
//   dstOut: "BlendMode.dstOut",
//   srcATop: "BlendMode.srcATop",
//   dstATop: "BlendMode.dstATop",
//   xor: "BlendMode.xor",
//   plus: "BlendMode.plus",
//   modulate: "BlendMode.modulate",
//   screen: "BlendMode.screen",
//   overlay: "BlendMode.overlay",
//   darken: "BlendMode.darken",
//   lighten: "BlendMode.lighten",
//   colorDodge: "BlendMode.colorDodge",
//   colorBurn: "BlendMode.colorBurn",
//   hardLight: "BlendMode.hardLight",
//   softLight: "BlendMode.softLight",
//   difference: "BlendMode.difference",
//   exclusion: "BlendMode.exclusion",
//   multiply: "BlendMode.multiply",
//   hue: "BlendMode.hue",
//   saturation: "BlendMode.saturation",
//   color: "BlendMode.color",
//   luminosity: "BlendMode.luminosity"
// };

// FilterQuality = {
//   none: "FilterQuality.none",
//   low: "FilterQuality.low",
//   medium: "FilterQuality.medium",
//   high: "FilterQuality.high"
// };

// BlurStyle = {
//   normal: "BlurStyle.normal",
//   solid: "BlurStyle.solid",
//   outer: "BlurStyle.outer",
//   inner: "BlurStyle.inner"
// };
BlendMode = {
  clear: { _name: "BlendMode.clear", index: 0 },
  src: { _name: "BlendMode.src", index: 1 },
  dst: { _name: "BlendMode.dst", index: 2 },
  srcOver: { _name: "BlendMode.srcOver", index: 3 },
  dstOver: { _name: "BlendMode.dstOver", index: 4 },
  srcIn: { _name: "BlendMode.srcIn", index: 5 },
  dstIn: { _name: "BlendMode.dstIn", index: 6 },
  srcOut: { _name: "BlendMode.srcOut", index: 7 },
  dstOut: { _name: "BlendMode.dstOut", index: 8 },
  srcATop: { _name: "BlendMode.srcATop", index: 9 },
  dstATop: { _name: "BlendMode.dstATop", index: 10 },
  xor: { _name: "BlendMode.xor", index: 11 },
  plus: { _name: "BlendMode.plus", index: 12 },
  modulate: { _name: "BlendMode.modulate", index: 13 },
  screen: { _name: "BlendMode.screen", index: 14 },
  overlay: { _name: "BlendMode.overlay", index: 15 },
  darken: { _name: "BlendMode.darken", index: 16 },
  lighten: { _name: "BlendMode.lighten", index: 17 },
  colorDodge: { _name: "BlendMode.colorDodge", index: 18 },
  colorBurn: { _name: "BlendMode.colorBurn", index: 19 },
  hardLight: { _name: "BlendMode.hardLight", index: 20 },
  softLight: { _name: "BlendMode.softLight", index: 21 },
  difference: { _name: "BlendMode.difference", index: 22 },
  exclusion: { _name: "BlendMode.exclusion", index: 23 },
  multiply: { _name: "BlendMode.multiply", index: 24 },
  hue: { _name: "BlendMode.hue", index: 25 },
  saturation: { _name: "BlendMode.saturation", index: 26 },
  color: { _name: "BlendMode.color", index: 27 },
  luminosity: { _name: "BlendMode.luminosity", index: 28 }
};

FilterQuality = {
  none: { _name: "FilterQuality.none", index: 0 },
  low: { _name: "FilterQuality.low", index: 1 },
  medium: { _name: "FilterQuality.medium", index: 2 },
  high: { _name: "FilterQuality.high", index: 3 }
};

BlurStyle = {
  normal: { _name: "BlurStyle.normal", index: 0 },
  solid: { _name: "BlurStyle.solid", index: 1 },
  outer: { _name: "BlurStyle.outer", index: 2 },
  inner: { _name: "BlurStyle.inner", index: 3 }
};

class Alignment extends DartClass {
  constructor(x, y) {
    super();

    this.x = x;
    this.y = y;
  }
}

Alignment.new = function (x, y) {
  return new Alignment(x, y);
};

/// The top left corner.
Alignment.topLeft = new Alignment(-1.0, -1.0);

/// The center point along the top edge.
Alignment.topCenter = new Alignment(0.0, -1.0);

/// The top right corner.
Alignment.topRight = new Alignment(1.0, -1.0);

/// The center point along the left edge.
Alignment.centerLeft = new Alignment(-1.0, 0.0);

/// The center point, both horizontally and vertically.
Alignment.center = new Alignment(0.0, 0.0);

/// The center point along the right edge.
Alignment.centerRight = new Alignment(1.0, 0.0);

/// The bottom left corner.
Alignment.bottomLeft = new Alignment(-1.0, 1.0);

/// The center point along the bottom edge.
Alignment.bottomCenter = new Alignment(0.0, 1.0);

/// The bottom right corner.
Alignment.bottomRight = new Alignment(1.0, 1.0);

// StrokeCap = {
//   butt: "StrokeCap.butt",
//   round: "StrokeCap.round",
//   square: "StrokeCap.square"
// };

// StrokeJoin = {
//   miter: "StrokeJoin.miter",
//   round: "StrokeJoin.round",
//   bevel: "StrokeJoin.bevel"
// };

// PaintingStyle = {
//   fill: "PaintingStyle.fill",
//   stroke: "PaintingStyle.stroke"
// };
StrokeCap = {
  butt: { _name: "StrokeCap.butt", index: 0 },
  round: { _name: "StrokeCap.round", index: 1 },
  square: { _name: "StrokeCap.square", index: 2 }
};

StrokeJoin = {
  miter: { _name: "StrokeJoin.miter", index: 0 },
  round: { _name: "StrokeJoin.round", index: 1 },
  bevel: { _name: "StrokeJoin.bevel", index: 2 }
};

PaintingStyle = {
  fill: { _name: "PaintingStyle.fill", index: 0 },
  stroke: { _name: "PaintingStyle.stroke", index: 1 }
};
class Paint {
  constructor(argsMap) {
    argsMap.forEach((k, v) => {
      this[k] = v;
    });
  }
}

Paint.new = function (args) {
  return new Paint(args);
};

class ColorFilter extends DartClass {
  constructor(color, blendMode) {
    super();

    this.color = color;
    this.blendMode = blendMode;
  }
}

ColorFilter.new = function (color, blendMode) {
  return new ColorFilter(color, blendMode);
};

ColorFilter.mode = function (color, blendMode) {
  let v = new ColorFilter(color, blendMode);
  v.constructorName = "mode";
  return v;
};

class MaskFilter extends DartClass {
  constructor(style, sigma) {
    super();

    this.style = style;
    this.sigma = sigma;
  }
}

MaskFilter.new = function (style, sigma) {
  return new MaskFilter(style, sigma);
};

MaskFilter.blur = function (style, sigma) {
  let v = new MaskFilter(style, sigma);
  v.constructorName = "blur";
  return v;
};

// TileMode = {
//   clamp: "TileMode.clamp",
//   repeated: "TileMode.repeated",
//   mirror: "TileMode.mirror"
// };
TileMode = {
  clamp: { _name: "TileMode.clamp", index: 0 },
  repeated: { _name: "TileMode.repeated", index: 1 },
  mirror: { _name: "TileMode.mirror", index: 2 }
};
class LinearGradient extends DartClass {
  constructor({ begin, end, colors, stops, tileMode } = {}) {
    super();

    this.begin = begin;
    this.end = end;
    this.colors = colors;
    this.stops = stops;
    this.tileMode = tileMode;
  }
}

LinearGradient.new = function (args) {
  return new LinearGradient(args);
};

class RadialGradient extends DartClass {
  constructor({
    center,
    radius,
    colors,
    stops,
    tileMode,
    focal,
    focalRadius
  } = {}) {
    super();

    this.center = center;
    this.radius = radius;
    this.colors = colors;
    this.stops = stops;
    this.tileMode = tileMode;
    this.focal = focal;
    this.focalRadius = focalRadius;
  }
}

RadialGradient.new = function (args) {
  return new RadialGradient(args);
};

class SweepGradient extends DartClass {
  constructor({ center, startAngle, endAngle, colors, stops, tileMode } = {}) {
    super();

    this.center = center;
    this.startAngle = startAngle;
    this.endAngle = endAngle;
    this.colors = colors;
    this.stops = stops;
    this.tileMode = tileMode;
  }
}

SweepGradient.new = function (args) {
  return new SweepGradient(args);
};

class ImageShader extends DartClass {
  constructor({ image, tmx, tmy, matrix4 } = {}) {
    super();

    this.image = image;
    this.tmx = tmx;
    this.tmy = tmy;
    this.matrix4 = matrix4;
  }
}

ImageShader.new = function (args) {
  return new ImageShader(args);
};

class BoxDecoration extends DartClass {
  constructor({
    color,
    image,
    border,
    borderRadius,
    boxShadow,
    gradient,
    backgroundBlendMode,
    shape
  } = {}) {
    super();

    this.color = color;
    this.image = image;
    this.border = border;
    this.borderRadius = borderRadius;
    this.boxShadow = boxShadow;
    this.gradient = gradient;
    this.backgroundBlendMode = backgroundBlendMode;
    this.shape = shape;
  }
}

BoxDecoration.new = function (args) {
  return new BoxDecoration(args);
};

class Locale extends DartClass {
  constructor(languageCode, countryCode) {
    super();

    this.languageCode = languageCode;
    this.countryCode = countryCode;
  }
}

Locale.new = function (args) {
  return new Locale(args);
};

Locale.fromJson = function (mapObj) {
  if (mapObj == null || mapObj == undefined) {
    return null;
  }

  let obj = new Locale({
    languageCode: mapObj["languageCode"],
    countryCode: mapObj["countryCode"]
  });

  return obj;
};

// MainAxisAlignment = {
//   start: "MainAxisAlignment.start",
//   end: "MainAxisAlignment.end",
//   center: "MainAxisAlignment.center",
//   spaceBetween: "MainAxisAlignment.spaceBetween",
//   spaceAround: "MainAxisAlignment.spaceAround",
//   spaceEvenly: "MainAxisAlignment.spaceEvenly"
// };

// MainAxisSize = {
//   min: "MainAxisSize.min",
//   max: "MainAxisSize.max"
// };

// CrossAxisAlignment = {
//   start: "CrossAxisAlignment.start",
//   end: "CrossAxisAlignment.end",
//   center: "CrossAxisAlignment.center",
//   stretch: "CrossAxisAlignment.stretch",
//   baseline: "CrossAxisAlignment.baseline"
// };

// VerticalDirection = {
//   up: "VerticalDirection.up",
//   down: "VerticalDirection.down"
// };
MainAxisAlignment = {
  start: { _name: "MainAxisAlignment.start", index: 0 },
  end: { _name: "MainAxisAlignment.end", index: 1 },
  center: { _name: "MainAxisAlignment.center", index: 2 },
  spaceBetween: { _name: "MainAxisAlignment.spaceBetween", index: 3 },
  spaceAround: { _name: "MainAxisAlignment.spaceAround", index: 4 },
  spaceEvenly: { _name: "MainAxisAlignment.spaceEvenly", index: 5 }
};

MainAxisSize = {
  min: { _name: "MainAxisSize.min", index: 0 },
  max: { _name: "MainAxisSize.max", index: 1 }
};

CrossAxisAlignment = {
  start: { _name: "CrossAxisAlignment.start", index: 0 },
  end: { _name: "CrossAxisAlignment.end", index: 1 },
  center: { _name: "CrossAxisAlignment.center", index: 2 },
  stretch: { _name: "CrossAxisAlignment.stretch", index: 3 },
  baseline: { _name: "CrossAxisAlignment.baseline", index: 4 }
};

VerticalDirection = {
  up: { _name: "VerticalDirection.up", index: 0 },
  down: { _name: "VerticalDirection.down", index: 1 }
};

class BoxConstraints extends DartClass {
  constructor({ minWidth, maxWidth, minHeight, maxHeight } = {}) {
    super();

    this.minWidth = minWidth;
    this.maxWidth = maxWidth;
    this.minHeight = minHeight;
    this.maxHeight = maxHeight;
  }

  constrainWidth(width) {
    if (width === void 0) width = 1 / 0;
    return width[$clamp](this.minWidth, this.maxWidth);
  }
  constrainHeight(height) {
    if (height === void 0) height = 1 / 0;
    return height[$clamp](this.minHeight, this.maxHeight);
  }
  get biggest() {
    return new ui.Size.new(this.constrainWidth(), this.constrainHeight());
  }
  get smallest() {
    return new ui.Size.new(this.constrainWidth(0.0), this.constrainHeight(0.0));
  }
}

BoxConstraints.new = function (args) {
  return new BoxConstraints(args);
};

class Size extends DartClass {
  constructor(width, height) {
    super();

    this.width = width;
    this.height = height;
  }
}

Size.new = function (width, height) {
  return new Size(width, height);
};

Size.fromJson = function (mapObj) {
  if (mapObj == null || mapObj == undefined) {
    return null;
  }

  let obj = new EdgeInsets();

  for (var p in mapObj) {
    if (mapObj.hasOwnProperty(p)) {
      let v = mapObj[p];
      obj[p] = v;
    }
  }

  return obj;
};

class Offset extends DartClass {
  constructor(dx, dy) {
    super();

    this.dx = dx;
    this.dy = dy;
  }
}

Offset.new = function (dx, dy) {
  return new Offset(dx, dy);
};

class TableRow extends DartClass {
  constructor({ key, decoration, children } = {}) {
    super();

    this.key = key;
    this.decoration = decoration;
    this.children = children;
  }
}

TableRow.new = function (args) {
  return new TableRow(args);
};

// BoxFit = {
//   fill: "BoxFit.fill",
//   contain: "BoxFit.contain",
//   cover: "BoxFit.cover",
//   fitWidth: "BoxFit.fitWidth",
//   fitHeight: "BoxFit.fitHeight",
//   none: "BoxFit.none",
//   scaleDown: "BoxFit.scaleDown"
// };

// Overflow = {
//   visible: "Overflow.visible",
//   clip: "Overflow.clip"
// };

// StackFit = {
//   loose: "StackFit.loose",
//   expand: "StackFit.expand",
//   passthrough: "StackFit.passthrough"
// };

// Axis = {
//   horizontal: "Axis.horizontal",
//   vertical: "Axis.vertical"
// };

// TableCellVerticalAlignment = {
//   top: "TableCellVerticalAlignment.top",
//   middle: "TableCellVerticalAlignment.middle",
//   bottom: "TableCellVerticalAlignment.bottom",
//   baseline: "TableCellVerticalAlignment.baseline",
//   fill: "TableCellVerticalAlignment.fill"
// };

BoxFit = {
  fill: { _name: "BoxFit.fill", index: 0 },
  contain: { _name: "BoxFit.contain", index: 1 },
  cover: { _name: "BoxFit.cover", index: 2 },
  fitWidth: { _name: "BoxFit.fitWidth", index: 3 },
  fitHeight: { _name: "BoxFit.fitHeight", index: 4 },
  none: { _name: "BoxFit.none", index: 5 },
  scaleDown: { _name: "BoxFit.scaleDown", index: 6 }
};

Overflow = {
  visible: { _name: "Overflow.visible", index: 0 },
  clip: { _name: "Overflow.clip", index: 1 }
};

StackFit = {
  loose: { _name: "StackFit.loose", index: 0 },
  expand: { _name: "StackFit.expand", index: 1 },
  passthrough: { _name: "StackFit.passthrough", index: 2 }
};

Axis = {
  horizontal: { _name: "Axis.horizontal", index: 0 },
  vertical: { _name: "Axis.vertical", index: 1 }
};

TableCellVerticalAlignment = {
  top: { _name: "TableCellVerticalAlignment.top", index: 0 },
  middle: { _name: "TableCellVerticalAlignment.middle", index: 1 },
  bottom: { _name: "TableCellVerticalAlignment.bottom", index: 2 },
  baseline: { _name: "TableCellVerticalAlignment.baseline", index: 3 },
  fill: { _name: "TableCellVerticalAlignment.fill", index: 4 }
};
class TableBorder extends DartClass {
  constructor({
    top,
    right,
    bottom,
    left,
    horizontalInside,
    verticalInside
  } = {}) {
    super();

    this.top = top;
    this.right = right;
    this.bottom = bottom;
    this.left = left;
    this.horizontalInside = horizontalInside;
    this.verticalInside = verticalInside;
  }
}

TableBorder.new = function (args) {
  return new TableBorder(args);
};

class BorderSide extends DartClass {
  constructor({ color, width, style } = {}) {
    super();

    this.color = color;
    this.width = width;
    this.style = style;
  }
}

BorderSide.new = function (args) {
  return new BorderSide(args);
};

// BorderStyle = {
//   none: "BorderStyle.none",
//   solid: "BorderStyle.solid"
// };
BorderStyle = {
  none: { _name: "BorderStyle.none", index: 0 },
  solid: { _name: "BorderStyle.solid", index: 1 }
};
class FlexColumnWidth extends DartClass {
  constructor(value) {
    super();

    this.value = value;
  }
}

FlexColumnWidth.new = function (args) {
  return new FlexColumnWidth(args);
};

class FixedColumnWidth extends FlutterWidget {
  constructor(value) {
    super();

    this.value = value;
  }
}

FixedColumnWidth.new = function (args) {
  return new FixedColumnWidth(args);
};


// WrapAlignment = {
//   start: "WrapAlignment.start",
//   end: "WrapAlignment.end",
//   center: "WrapAlignment.center",
//   spaceBetween: "WrapAlignment.spaceBetween",
//   spaceAround: "WrapAlignment.spaceAround",
//   spaceEvenly: "WrapAlignment.spaceEvenly"
// };

// WrapCrossAlignment = {
//   start: "WrapCrossAlignment.start",
//   end: "WrapCrossAlignment.end",
//   center: "WrapCrossAlignment.center"
// };

WrapAlignment = {
  start: { _name: "WrapAlignment.start", index: 0 },
  end: { _name: "WrapAlignment.end", index: 1 },
  center: { _name: "WrapAlignment.center", index: 2 },
  spaceBetween: { _name: "WrapAlignment.spaceBetween", index: 3 },
  spaceAround: { _name: "WrapAlignment.spaceAround", index: 4 },
  spaceEvenly: { _name: "WrapAlignment.spaceEvenly", index: 5 }
};

WrapCrossAlignment = {
  start: { _name: "WrapCrossAlignment.start", index: 0 },
  end: { _name: "WrapCrossAlignment.end", index: 1 },
  center: { _name: "WrapCrossAlignment.center", index: 2 }
};

class Matrix4 extends DartClass {
  constructor({
    arg0,
    arg1,
    arg2,
    arg3,
    arg4,
    arg5,
    arg6,
    arg7,
    arg8,
    arg9,
    arg10,
    arg11,
    arg12,
    arg13,
    arg14,
    arg15
  } = {}) {
    super();

    this.arg0 = arg0;
    this.arg1 = arg1;
    this.arg2 = arg2;
    this.arg3 = arg3;
    this.arg4 = arg4;
    this.arg5 = arg5;
    this.arg6 = arg6;
    this.arg7 = arg7;
    this.arg8 = arg8;
    this.arg9 = arg9;
    this.arg10 = arg10;
    this.arg11 = arg11;
    this.arg12 = arg12;
    this.arg13 = arg13;
    this.arg14 = arg14;
    this.arg15 = arg15;
  }

  scale(x, y, z) {
    let sx = null;
    let sy = null;
    let sz = null;
    let sw = x instanceof Vector4 ? x.w : 1.0;
    if (x instanceof Vector3) {
      sx = x.x;
      sy = x.y;
      sz = x.z;
    } else if (x instanceof Vector4) {
      sx = x.x;
      sy = x.y;
      sz = x.z;
    } else if (typeof x == "number") {
      sx = x;
      sy = y == null ? x : y;
      sz = z == null ? x : z;
    }

    this.arg0 *= sx;
    this.arg1 *= sx;
    this.arg2 *= sx;
    this.arg3 *= sx;
    this.arg4 *= sy;
    this.arg5 *= sy;
    this.arg6 *= sy;
    this.arg7 *= sy;
    this.arg8 *= sz;
    this.arg9 *= sz;
    this.arg10 *= sz;
    this.arg11 *= sz;
    this.arg12 *= sw;
    this.arg13 *= sw;
    this.arg14 *= sw;
    this.arg15 *= sw;
  }
}

Matrix4.new = function (args) {
  return new Matrix4(args);
};

Matrix4.identity = function () {
  let v = new Matrix4();
  v.arg0 = 1.0;
  v.arg1 = 0.0;
  v.arg2 = 0.0;
  v.arg3 = 0.0;
  v.arg4 = 0.0;
  v.arg5 = 1.0;
  v.arg6 = 0.0;
  v.arg7 = 0.0;
  v.arg8 = 0.0;
  v.arg9 = 0.0;
  v.arg10 = 1.0;
  v.arg11 = 0.0;
  v.arg12 = 0.0;
  v.arg13 = 0.0;
  v.arg14 = 0.0;
  v.arg15 = 1.0;
  return v;
};

//factory Matrix4.fromList(List<double> values)
Matrix4.fromList = function (values) {
  let v = new Matrix4();
  v.constructorName = "fromList";
  v.values = List_double_values;
  return v;
};

/// Zero matrix.
Matrix4.zero = function () {
  let v = new Matrix4();
  v.constructorName = "zero";
  return v;
};

/// Identity matrix.
///factory Matrix4.identity() => new Matrix4.zero()..setIdentity();
// Matrix4.identity = function() {
//   let v = new Matrix4();
//   v.constructorName = "identity";
//   return v;
// };

/// Constructs a new mat4 from columns.
Matrix4.columns = function (arg0, arg1, arg2, arg3) {
  let v = new Matrix4();
  v.constructorName = "columns";

  v.arg0 = arg0;
  v.arg1 = arg1;
  v.arg2 = arg2;
  v.arg3 = arg3;

  return v;
};

/// Outer product of [u] and [v].
Matrix4.outer = function (u, v) {
  let jsObj = new Matrix4();
  jsObj.constructorName = "outer";

  jsObj.u = u;
  jsObj.v = v;

  return jsObj;
};

Matrix4.rotationX = function (radians) {
  let v = new Matrix4();
  v.constructorName = "rotationX";

  v.radians = radians;

  return v;
};
Matrix4.rotationY = function (radians) {
  let v = new Matrix4();
  v.constructorName = "rotationY";

  v.radians = radians;
  return v;
};
Matrix4.rotationZ = function (radians) {
  let v = new Matrix4();
  v.constructorName = "rotationZ";

  v.radians = radians;

  return v;
};
Matrix4.translation = function (translation) {
  let v = new Matrix4();
  v.constructorName = "translation";

  v.translation = translation;

  return v;
};
Matrix4.translationValues = function (x, y, z) {
  let v = new Matrix4();
  v.constructorName = "translationValues";

  v.x = x;
  v.y = y;
  v.z = z;

  return v;
};
Matrix4.diagonal3 = function (scale) {
  let v = new Matrix4();
  v.constructorName = "diagonal3";

  v.scale = scale;

  return v;
};
Matrix4.diagonal3Values = function (x, y, z) {
  let v = new Matrix4();
  v.constructorName = "diagonal3Values";

  v.x = x;
  v.y = y;
  v.z = z;

  return v;
};
Matrix4.skewX = function (alpha) {
  let v = new Matrix4();
  v.constructorName = "skewX";

  v.alpha = alpha;

  return v;
};
Matrix4.skewY = function (beta) {
  let v = new Matrix4();
  v.constructorName = "skewY";

  v.beta = beta;
  return v;
};
Matrix4.skew = function (alpha, beta) {
  let v = new Matrix4();
  v.constructorName = "skew";

  v.alpha = alpha;
  v.beta = beta;

  return v;
};
Matrix4.compose = function (translation, rotation, scale) {
  let v = new Matrix4();
  v.constructorName = "compose";

  v.translation = translation;
  v.rotation = rotation;
  v.scale = scale;

  return v;
};

class Vector4 extends DartClass {
  constructor(x, y, z, w) {
    super();

    this.x = x;
    this.y = y;
    this.z = z;
    this.w = w;
  }
}

Vector4.new = function (x, y, z, w) {
  return new Vector4(x, y, z, w);
};

Vector4.array = function (array, offset) {
  let v = new Vector4();
  v.constructorName = "array";

  v.array = array;
  v.offset = offset;

  return v;
};

Vector4.identity = function () {
  let v = new Vector4();
  v.constructorName = "identity";

  return v;
};

Vector4.random = function (rng) {
  let v = new Vector4();
  v.constructorName = "random";

  v.rng = rng;

  return v;
};

class Vector3 extends DartClass {
  constructor(x, y, z) {
    super();

    this.x = x;
    this.y = y;
    this.z = z;
  }
}

Vector3.new = function (x, y, z) {
  return new Vector3(x, y, z);
};

Vector3.zero = function () {
  let v = new Vector3();
  v.constructorName = "zero";

  return v;
};

Vector3.all = function (value) {
  let v = new Vector3();
  v.constructorName = "all";

  v.value = value;

  return v;
};

Vector3.random = function (rng) {
  let v = new Vector3();
  v.constructorName = "random";

  v.rng = rng;

  return v;
};



// Clip = {
//   none: "Clip.none",
//   hardEdge: "Clip.hardEdge",
//   antiAlias: "Clip.antiAlias",
//   antiAliasWithSaveLayer: "Clip.antiAliasWithSaveLayer"
// };
Clip = {
  none: { _name: "Clip.none", index: 0 },
  hardEdge: { _name: "Clip.hardEdge", index: 1 },
  antiAlias: { _name: "Clip.antiAlias", index: 2 },
  antiAliasWithSaveLayer: { _name: "Clip.antiAliasWithSaveLayer", index: 3 }
};

class Rect extends DartClass {
  constructor() {
    super();
  }
}

Rect.new = function (args) {
  return new Rect(args);
};

Rect.fromLTRB = function (left, top, right, bottom) {
  let v = new Rect();
  v.constructorName = "fromLTRB";

  v.left = left;
  v.top = top;
  v.right = right;
  v.bottom = bottom;

  return v;
};

Rect.fromLTWH = function (left, top, width, height) {
  let v = new Rect();
  v.constructorName = "fromLTWH";

  v.left = left;
  v.top = top;
  v.width = width;
  v.height = height;

  return v;
};

Rect.fromCircle = function ({ center, radius } = {}) {
  let v = new Rect();
  v.constructorName = "fromCircle";

  v.center = center;
  v.radius = radius;

  return v;
};

Rect.fromPoints = function (a, b) {
  let v = new Rect();
  v.constructorName = "fromPoints";

  v.a = a;
  v.b = b;

  return v;
};

class PlatformAssetBundle extends DartClass {
  constructor() {
    super();
  }
}

PlatformAssetBundle.new = function (args) {
  return new PlatformAssetBundle(args);
};

class NetworkAssetBundle extends DartClass {
  constructor(baseUrl) {
    super();

    this.baseUrl = baseUrl;
  }
}

NetworkAssetBundle.new = function (args) {
  return new NetworkAssetBundle(args);
};

class File extends DartClass {
  constructor(path) {
    super();

    this.path = path;
  }
}

File.new = function (args) {
  return new File(args);
};

File.fromUri = function (uri) {
  let v = new File();
  v.constructorName = "fromUri";

  v.uri = uri;

  return v;
};
File.fromRawPath = function (Uint8List, rawPath) {
  let v = new File();
  v.constructorName = "fromRawPath";

  v.Uint8List = Uint8List;
  v.rawPath = rawPath;

  return v;
};

class Uint8List extends DartClass {
  constructor(length) {
    super();

    this.length = length;
  }
}

Uint8List.new = function (args) {
  return new Uint8List(args);
};

Uint8List.fromList = function (elements) {
  let v = new Uint8List();
  v.constructorName = "fromList";

  v.elements = elements;

  return v;
};
Uint8List.view = function (buffer, offsetInBytes, length) {
  let v = new Uint8List();
  v.constructorName = "view";

  v.buffer = buffer;
  v.offsetInBytes = offsetInBytes;
  v.length = length;

  return v;
};

class Radius extends DartClass {
  constructor() {
    super();
  }
}

Radius.new = function (args) {
  return new Radius(args);
};

Radius.circular = function (radius) {
  let v = new Radius();
  v.constructorName = "circular";

  v.radius = radius;

  return v;
};
Radius.elliptical = function (x, y) {
  let v = new Radius();
  v.constructorName = "elliptical";

  v.x = x;
  v.y = y;

  return v;
};
class BorderRadius extends DartClass {
  constructor() {
    super();
  }
}

BorderRadius.new = function (args) {
  return new BorderRadius(args);
};

BorderRadius.all = function (radius) {
  let v = new BorderRadius();
  v.constructorName = "all";

  v.radius = radius;

  return v;
};

BorderRadius.circular = function (radius) {
  let v = new BorderRadius();
  v.constructorName = "circular";

  v.radius = radius;

  return v;
};

BorderRadius.vertical = function ({ top, bottom } = {}) {
  let v = new BorderRadius();
  v.constructorName = "vertical";

  v.top = top;
  v.bottom = bottom;

  return v;
};

BorderRadius.horizontal = function ({ left, right } = {}) {
  let v = new BorderRadius();
  v.constructorName = "horizontal";

  v.left = left;
  v.right = right;

  return v;
};
BorderRadius.only = function ({
  topLeft,
  topRight,
  bottomLeft,
  bottomRight
} = {}) {
  let v = new BorderRadius();
  v.constructorName = "only";

  v.topLeft = topLeft;
  v.topRight = topRight;
  v.bottomLeft = bottomLeft;
  v.bottomRight = bottomRight;

  return v;
};
class BottomNavigationBarItem extends DartClass {
  constructor({ icon, title, activeIcon, backgroundColor } = {}) {
    super();

    this.icon = icon;
    this.title = title;
    this.activeIcon = activeIcon;
    this.backgroundColor = backgroundColor;
  }
}

BottomNavigationBarItem.new = function (args) {
  return new BottomNavigationBarItem(args);
};

// BottomNavigationBarType = {
//   fixed: "BottomNavigationBarType.fixed",
//   shifting: "BottomNavigationBarType.shifting"
// };
BottomNavigationBarType = {
  fixed: { _name: "BottomNavigationBarType.fixed", index: 0 },
  shifting: { _name: "BottomNavigationBarType.shifting", index: 1 }
};
class IconData extends DartClass {
  constructor(codePoint, { fontFamily, fontPackage, matchTextDirection } = {}) {
    super();

    this.codePoint = codePoint;
    this.fontFamily = fontFamily;
    this.fontPackage = fontPackage;
    this.matchTextDirection = matchTextDirection;
  }
}

IconData.new = function (codePoint, args) {
  return new IconData(codePoint, args);
};

// TabBarIndicatorSize = {
//   tab: "TabBarIndicatorSize.tab",
//   label: "TabBarIndicatorSize.label"
// };
TabBarIndicatorSize = {
  tab: { _name: "TabBarIndicatorSize.tab", index: 0 },
  label: { _name: "TabBarIndicatorSize.label", index: 1 }
};

class Border extends FlutterWidget {
  constructor({ top, right, bottom, left } = {}) {
    super();

    this.top = top;
    this.right = right;
    this.bottom = bottom;
    this.left = left;
  }
}

Border.new = function (args) {
  return new Border(args);
};

Border.all = function ({ color, width, style }) {
  let side = new BorderSide({
    color: color,
    width: width,
    style: style
  });
  return new Border({
    top: side,
    right: side,
    bottom: side,
    left: side
  });
};

class AnnotatedRegion extends DartClass {
  constructor({ key, child, value, sized } = {}) {
    super();

    this.key = key;
    this.child = child;
    this.value = value;
    this.sized = sized;
  }
}

AnnotatedRegion.new = function (args) {
  return new AnnotatedRegion(args);
};

// Brightness = {
//     dark: "Brightness.dark",
//     light: "Brightness.light"
// };

Brightness = {
  dark: { _name: "Brightness.dark", index: 0 },
  light: { _name: "Brightness.light", index: 1 }
};

class SystemUiOverlayStyle extends DartClass {
  constructor({
    systemNavigationBarColor,
    systemNavigationBarDividerColor,
    systemNavigationBarIconBrightness,
    statusBarColor,
    statusBarBrightness,
    statusBarIconBrightness
  } = {}) {
    super();

    this.systemNavigationBarColor = systemNavigationBarColor;
    this.systemNavigationBarDividerColor = systemNavigationBarDividerColor;
    this.systemNavigationBarIconBrightness = systemNavigationBarIconBrightness;
    this.statusBarColor = statusBarColor;
    this.statusBarBrightness = statusBarBrightness;
    this.statusBarIconBrightness = statusBarIconBrightness;
  }

  // static light() {
  //     let w = new SystemUiOverlayStyle({
  //         systemNavigationBarColor: new Color(0xFF000000),
  //         systemNavigationBarDividerColor: null,
  //         statusBarColor: null,
  //         systemNavigationBarIconBrightness: Brightness.light,
  //         statusBarIconBrightness: Brightness.light,
  //         statusBarBrightness:Brightness.dark
  //     });
  //     return w;
  // }

  // static dark() {
  //     let w = new SystemUiOverlayStyle({
  //         systemNavigationBarColor: new Color(0xFF000000),
  //         systemNavigationBarDividerColor: null,
  //         statusBarColor: null,
  //         systemNavigationBarIconBrightness: Brightness.light,
  //         statusBarIconBrightness: Brightness.dark,
  //         statusBarBrightness:Brightness.light
  //     });
  //     return w;
  // }
}

SystemUiOverlayStyle.new = function (args) {
  return new SystemUiOverlayStyle(args);
};

SystemUiOverlayStyle.light = new SystemUiOverlayStyle({
  systemNavigationBarColor: new Color(0xff000000),
  systemNavigationBarDividerColor: null,
  statusBarColor: null,
  systemNavigationBarIconBrightness: Brightness.light,
  statusBarIconBrightness: Brightness.light,
  statusBarBrightness: Brightness.dark
});

SystemUiOverlayStyle.dark = new SystemUiOverlayStyle({
  systemNavigationBarColor: new Color(0xff000000),
  systemNavigationBarDividerColor: null,
  statusBarColor: null,
  systemNavigationBarIconBrightness: Brightness.light,
  statusBarIconBrightness: Brightness.dark,
  statusBarBrightness: Brightness.light
});

class MaterialColor extends DartClass {
  constructor(primary, swatch) {
    super();

    this.primary = primary;
    this.swatch = swatch;
  }
}

MaterialColor.new = function (primary, swatch) {
  return new MaterialColor(primary, swatch);
};

class MaterialAccentColor extends DartClass {
  constructor(
    primary,
    swatch,
  ) {
    super();

    this.primary = primary;
    this.swatch = swatch;
  }
}

MaterialAccentColor.new = function (primary, swatch) {
  return new MaterialAccentColor(primary, swatch);
};

class InputDecorationTheme extends DartClass {
  constructor({
    labelStyle,
    helperStyle,
    hintStyle,
    errorStyle,
    errorMaxLines,
    hasFloatingPlaceholder,
    isDense,
    contentPadding,
    isCollapsed,
    prefixStyle,
    suffixStyle,
    counterStyle,
    filled,
    fillColor,
    errorBorder,
    focusedBorder,
    focusedErrorBorder,
    disabledBorder,
    enabledBorder,
    border
  } = {}) {
    super();

    this.labelStyle = labelStyle;
    this.helperStyle = helperStyle;
    this.hintStyle = hintStyle;
    this.errorStyle = errorStyle;
    this.errorMaxLines = errorMaxLines;
    this.hasFloatingPlaceholder = hasFloatingPlaceholder;
    this.isDense = isDense;
    this.contentPadding = contentPadding;
    this.isCollapsed = isCollapsed;
    this.prefixStyle = prefixStyle;
    this.suffixStyle = suffixStyle;
    this.counterStyle = counterStyle;
    this.filled = filled;
    this.fillColor = fillColor;
    this.errorBorder = errorBorder;
    this.focusedBorder = focusedBorder;
    this.focusedErrorBorder = focusedErrorBorder;
    this.disabledBorder = disabledBorder;
    this.enabledBorder = enabledBorder;
    this.border = border;
  }
}

InputDecorationTheme.new = function (args) {
  return new InputDecorationTheme(args);
};

InputDecorationTheme.fromJson = function (mapObj) {
  if (mapObj == null || mapObj == undefined) {
    return null;
  }

  let obj = new InputDecorationTheme({
    labelStyle: mapObj["labelStyle"],
    helperStyle: mapObj["helperStyle"],
    hintStyle: mapObj["hintStyle"],
    errorStyle: mapObj["errorStyle"],
    errorMaxLines: mapObj["errorMaxLines"],
    hasFloatingPlaceholder: mapObj["hasFloatingPlaceholder"],
    isDense: mapObj["isDense"],
    contentPadding: mapObj["contentPadding"],
    isCollapsed: mapObj["isCollapsed"],
    prefixStyle: mapObj["prefixStyle"],
    suffixStyle: mapObj["suffixStyle"],
    counterStyle: mapObj["counterStyle"],
    filled: mapObj["filled"],
    fillColor: mapObj["fillColor"],
    errorBorder: mapObj["errorBorder"],
    focusedBorder: mapObj["focusedBorder"],
    focusedErrorBorder: mapObj["focusedErrorBorder"],
    disabledBorder: mapObj["disabledBorder"],
    enabledBorder: mapObj["enabledBorder"],
    border: mapObj["border"]
  });

  return obj;
};
// TargetPlatform = {
//   android: "TargetPlatform.android",
//   fuchsia: "TargetPlatform.fuchsia",
//   iOS: "TargetPlatform.iOS"
// };

TargetPlatform = {
  android: { _name: "TargetPlatform.android", index: 0 },
  fuchsia: { _name: "TargetPlatform.fuchsia", index: 1 },
  iOS: { _name: "TargetPlatform.iOS", index: 2 }
};

// FloatingActionButtonLocation = {
//   endDocked: { className: "FloatingActionButtonLocation.endDocked" },
//   centerDocked: { className: "FloatingActionButtonLocation.centerDocked" },
//   endFloat: { className: "FloatingActionButtonLocation.endFloat" },
//   centerFloat: { className: "FloatingActionButtonLocation.centerFloat" }
// };

FloatingActionButtonLocation = {
  endDocked: { _name: "FloatingActionButtonLocation.endDocked", index: 0 },
  centerDocked: {
    _name: "FloatingActionButtonLocation.centerDocked",
    index: 1
  },
  endFloat: { _name: "FloatingActionButtonLocation.endFloat", index: 2 },
  centerFloat: { _name: "FloatingActionButtonLocation.centerFloat", index: 3 },
  startTop: { _name: "FloatingActionButtonLocation.startTop", index: 4 },
  miniStartTop: { _name: "FloatingActionButtonLocation.miniStartTop", index: 5 },
  endTop: { _name: "FloatingActionButtonLocation.endTop", index: 6 },
};

class Colors {
  get transparent() {
    return new Color(0x00000000);
  }

  get black() {
    return new Color(0xff000000);
  }

  get black87() {
    return new Color(0xdd000000);
  }

  get black54() {
    return new Color(0x8a000000);
  }

  get black45() {
    return new Color(0x73000000);
  }

  get black38() {
    return new Color(0x61000000);
  }

  get black26() {
    return new Color(0x42000000);
  }

  get black12() {
    return new Color(0x1f000000);
  }

  get white() {
    return new Color(0xffffffff);
  }

  get white70() {
    return new Color(0xb3ffffff);
  }

  get white54() {
    return new Color(0x8affffff);
  }

  get white30() {
    return new Color(0x4dffffff);
  }

  get white24() {
    return new Color(0x3dffffff);
  }

  get white12() {
    return new Color(0x1fffffff);
  }

  get white10() {
    return new Color(0x1affffff);
  }

  get orange() {
    return new Color(0xffff9800);
  }

  get red() {
    return new Color(0xfff44336);
  }

  get purple() {
    return new Color(0xff9c27b0);
  }

  get pink() {
    return new Color(0xffe91e63);
  }

  get indigo() {
    return new Color(0xff3f51b5);
  }

  get deepPurple() {
    return new Color(0xff673ab7);
  }

  get blue() {
    return new Color(0xff2196f3);
  }

  get lightBlue() {
    return new Color(0xff03a9f4);
  }

  get cyan() {
    return new Color(0xff00bcd4);
  }

  get green() {
    return new Color(0xff4caf50);
  }

  get lightGreen() {
    return new Color(0xff8bc34a);
  }

  get lime() {
    return new Color(0xffcddc39);
  }

  get yellow() {
    return new Color(0xffffeb3b);
  }

  get deepOrange() {
    return new Color(0xffff5722);
  }

  get teal() {
    return new Color(0xff009688);
  }

  get indigo() {
    return new Color(0xff3f51b5);
  }

  get amber() {
    return new Color(0xffffc107);
  }

  get brown() {
    return new Color(0xff795548);
  }

  get grey() {
    return new Color(0xff9e9e9e);
  }

  get blueGrey() {
    return new Color(0xff607d8b);
  }
}

Colors.transparent = new Color(0x00000000);
Colors.black = new Color(0xff000000);
Colors.black87 = new Color(0xdd000000);
Colors.black54 = new Color(0x8a000000);
Colors.black45 = new Color(0x73000000);
Colors.black38 = new Color(0x61000000);
Colors.black26 = new Color(0x42000000);
Colors.black12 = new Color(0x1f000000);
Colors.white = new Color(0xffffffff);
Colors.white70 = new Color(0xb3ffffff);
Colors.white54 = new Color(0x8affffff);
Colors.white30 = new Color(0x4dffffff);
Colors.white24 = new Color(0x3dffffff);
Colors.white12 = new Color(0x1fffffff);
Colors.white10 = new Color(0x1affffff);

Colors.red = new MaterialColor(0xFFF44336, {
  50: new Color(0xFFFFEBEE),
  100: new Color(0xFFFFCDD2),
  200: new Color(0xFFEF9A9A),
  300: new Color(0xFFE57373),
  400: new Color(0xFFEF5350),
  500: new Color(0xFFF44336),
  600: new Color(0xFFE53935),
  700: new Color(0xFFD32F2F),
  800: new Color(0xFFC62828),
  900: new Color(0xFFB71C1C),
});

Colors.redAccent = new MaterialAccentColor(0xFFFF5252, {
  100: new Color(0xFFFF8A80),
  200: new Color(0xFFFF5252),
  400: new Color(0xFFFF1744),
  700: new Color(0xFFD50000),
});

Colors.pink = new MaterialAccentColor(0xFFE91E63, {
  50: new Color(0xFFFCE4EC),
  100: new Color(0xFFF8BBD0),
  200: new Color(0xFFF48FB1),
  300: new Color(0xFFF06292),
  400: new Color(0xFFEC407A),
  500: new Color(0xFFE91E63),
  600: new Color(0xFFD81B60),
  700: new Color(0xFFC2185B),
  800: new Color(0xFFAD1457),
  900: new Color(0xFF880E4F),
});

Colors.pinkAccent = new MaterialAccentColor(0xFFFF4081, {
  100: new Color(0xFFFF80AB),
  200: new Color(0xFFFF4081),
  400: new Color(0xFFF50057),
  700: new Color(0xFFC51162),
});

Colors.purple = new MaterialAccentColor(0xFF9C27B0, {
  50: new Color(0xFFF3E5F5),
  100: new Color(0xFFE1BEE7),
  200: new Color(0xFFCE93D8),
  300: new Color(0xFFBA68C8),
  400: new Color(0xFFAB47BC),
  500: new Color(0xFF9C27B0),
  600: new Color(0xFF8E24AA),
  700: new Color(0xFF7B1FA2),
  800: new Color(0xFF6A1B9A),
  900: new Color(0xFF4A148C),
});

Colors.purpleAccent = new MaterialAccentColor(0xFFE040FB, {
  100: new Color(0xFFEA80FC),
  200: new Color(0xFFE040FB),
  400: new Color(0xFFD500F9),
  700: new Color(0xFFAA00FF),
});

Colors.deepPurple = new MaterialAccentColor(0xFF673AB7, {
  50: new Color(0xFFEDE7F6),
  100: new Color(0xFFD1C4E9),
  200: new Color(0xFFB39DDB),
  300: new Color(0xFF9575CD),
  400: new Color(0xFF7E57C2),
  500: new Color(0xFF673AB7),
  600: new Color(0xFF5E35B1),
  700: new Color(0xFF512DA8),
  800: new Color(0xFF4527A0),
  900: new Color(0xFF311B92),
});

Colors.deepPurpleAccent = new MaterialAccentColor(0xFF7C4DFF, {
  100: new Color(0xFFB388FF),
  200: new Color(0xFF7C4DFF),
  400: new Color(0xFF651FFF),
  700: new Color(0xFF6200EA),
});

Colors.indigo = new MaterialColor(0xFF3F51B5, {
  50: new Color(0xFFE8EAF6),
  100: new Color(0xFFC5CAE9),
  200: new Color(0xFF9FA8DA),
  300: new Color(0xFF7986CB),
  400: new Color(0xFF5C6BC0),
  500: new Color(0xFF3F51B5),
  600: new Color(0xFF3949AB),
  700: new Color(0xFF303F9F),
  800: new Color(0xFF283593),
  900: new Color(0xFF1A237E)
});

Colors.indigoAccent = new MaterialAccentColor(0xFF536DFE, {
  100: new Color(0xFF8C9EFF),
  200: new Color(0xFF536DFE),
  400: new Color(0xFF3D5AFE),
  700: new Color(0xFF304FFE),
});

Colors.blue = new MaterialColor(0xFF2196F3, {
  50: new Color(0xFFE3F2FD),
  100: new Color(0xFFBBDEFB),
  200: new Color(0xFF90CAF9),
  300: new Color(0xFF64B5F6),
  400: new Color(0xFF42A5F5),
  500: new Color(0xFF2196F3),
  600: new Color(0xFF1E88E5),
  700: new Color(0xFF1976D2),
  800: new Color(0xFF1565C0),
  900: new Color(0xFF0D47A1),
});

Colors.blueAccent = new MaterialAccentColor(0xFF448AFF, {
  100: new Color(0xFF82B1FF),
  200: new Color(0xFF448AFF),
  400: new Color(0xFF2979FF),
  700: new Color(0xFF2962FF),
});

Colors.lightBlue = new MaterialColor(0xFF03A9F4, {
  50: new Color(0xFFE1F5FE),
  100: new Color(0xFFB3E5FC),
  200: new Color(0xFF81D4FA),
  300: new Color(0xFF4FC3F7),
  400: new Color(0xFF29B6F6),
  500: new Color(0xFF03A9F4),
  600: new Color(0xFF039BE5),
  700: new Color(0xFF0288D1),
  800: new Color(0xFF0277BD),
  900: new Color(0xFF01579B),
});

Colors.lightBlueAccent = new MaterialAccentColor(0xFF40C4FF, {
  100: new Color(0xFF80D8FF),
  200: new Color(0xFF40C4FF),
  400: new Color(0xFF00B0FF),
  700: new Color(0xFF0091EA),
});

Colors.cyan = new MaterialColor(0xFF00BCD4, {
  50: new Color(0xFFE0F7FA),
  100: new Color(0xFFB2EBF2),
  200: new Color(0xFF80DEEA),
  300: new Color(0xFF4DD0E1),
  400: new Color(0xFF26C6DA),
  500: new Color(0xFF00BCD4),
  600: new Color(0xFF00ACC1),
  700: new Color(0xFF0097A7),
  800: new Color(0xFF00838F),
  900: new Color(0xFF006064),
});

Colors.cyanAccent = new MaterialAccentColor(0xFF18FFFF, {
  100: new Color(0xFF84FFFF),
  200: new Color(0xFF18FFFF),
  400: new Color(0xFF00E5FF),
  700: new Color(0xFF00B8D4),
});

Colors.teal = new MaterialColor(0xff009688, {
  50: new Color(0xffe0f2f1),
  100: new Color(0xffb2dfdb),
  200: new Color(0xff80cbc4),
  300: new Color(0xff4db6ac),
  400: new Color(0xff26a69a),
  500: new Color(0xff009688),
  600: new Color(0xff00897b),
  700: new Color(0xff00796b),
  800: new Color(0xff00695c),
  900: new Color(0xff004d40)
});

Colors.tealAccent = new MaterialAccentColor(0xFF64FFDA, {
  100: new Color(0xFF84FFFF),
  200: new Color(0xFF64FFDA),
  400: new Color(0xFF00E5FF),
  700: new Color(0xFF00B8D4),
});

Colors.green = new MaterialColor(0xFF4CAF50, {
  50: new Color(0xFFE8F5E9),
  100: new Color(0xFFC8E6C9),
  200: new Color(0xFFA5D6A7),
  300: new Color(0xFF81C784),
  400: new Color(0xFF66BB6A),
  500: new Color(0xFF4CAF50),
  600: new Color(0xFF43A047),
  700: new Color(0xFF388E3C),
  800: new Color(0xFF2E7D32),
  900: new Color(0xFF1B5E20),
});

Colors.greenAccent = new MaterialAccentColor(0xFF69F0AE, {
  100: new Color(0xFFB9F6CA),
  200: new Color(0xFF69F0AE),
  400: new Color(0xFF00E676),
  700: new Color(0xFF00C853),
});

Colors.lightGreen = new MaterialColor(0xFF8BC34A, {
  50: new Color(0xFFF1F8E9),
  100: new Color(0xFFDCEDC8),
  200: new Color(0xFFC5E1A5),
  300: new Color(0xFFAED581),
  400: new Color(0xFF9CCC65),
  500: new Color(0xFF8BC34A),
  600: new Color(0xFF7CB342),
  700: new Color(0xFF689F38),
  800: new Color(0xFF558B2F),
  900: new Color(0xFF33691E),
});

Colors.lightGreenAccent = new MaterialAccentColor(0xFFB2FF59, {
  100: new Color(0xFFCCFF90),
  200: new Color(0xFFB2FF59),
  400: new Color(0xFF76FF03),
  700: new Color(0xFF64DD17),
});

Colors.lime = new MaterialColor(0xFFCDDC39, {
  50: new Color(0xFFF9FBE7),
  100: new Color(0xFFF0F4C3),
  200: new Color(0xFFE6EE9C),
  300: new Color(0xFFDCE775),
  400: new Color(0xFFD4E157),
  500: new Color(0xFFCDDC39),
  600: new Color(0xFFC0CA33),
  700: new Color(0xFFAFB42B),
  800: new Color(0xFF9E9D24),
  900: new Color(0xFF827717),
});

Colors.limeAccent = new MaterialAccentColor(0xFFEEFF41, {
  100: new Color(0xFFF4FF81),
  200: new Color(0xFFEEFF41),
  400: new Color(0xFFC6FF00),
  700: new Color(0xFFAEEA00),
});

Colors.yellow = new MaterialColor(0xFFFFEB3B, {
  50: new Color(0xFFFFFDE7),
  100: new Color(0xFFFFF9C4),
  200: new Color(0xFFFFF59D),
  300: new Color(0xFFFFF176),
  400: new Color(0xFFFFEE58),
  500: new Color(0xFFFFEB3B),
  600: new Color(0xFFFDD835),
  700: new Color(0xFFFBC02D),
  800: new Color(0xFFF9A825),
  900: new Color(0xFFF57F17),
});

Colors.yellowAccent = new MaterialAccentColor(0xFFFFFF00, {
  100: new Color(0xFFFFFF8D),
  200: new Color(0xFFFFFF00),
  400: new Color(0xFFFFEA00),
  700: new Color(0xFFFFD600),
});

Colors.amber = new MaterialColor(0xFFFFC107, {
  50: new Color(0xFFFFF8E1),
  100: new Color(0xFFFFECB3),
  200: new Color(0xFFFFE082),
  300: new Color(0xFFFFD54F),
  400: new Color(0xFFFFCA28),
  500: new Color(0xFFFFC107),
  600: new Color(0xFFFFB300),
  700: new Color(0xFFFFA000),
  800: new Color(0xFFFF8F00),
  900: new Color(0xFFFF6F00),
});

Colors.amberAccent = new MaterialAccentColor(0xFFFFD740, {
  100: new Color(0xFFFFE57F),
  200: new Color(0xFFFFD740),
  400: new Color(0xFFFFC400),
  700: new Color(0xFFFFAB00),
});

Colors.orange = new MaterialColor(0xFFFF9800, {
  50: new Color(0xFFFFF3E0),
  100: new Color(0xFFFFE0B2),
  200: new Color(0xFFFFCC80),
  300: new Color(0xFFFFB74D),
  400: new Color(0xFFFFA726),
  500: new Color(0xFFFF9800),
  600: new Color(0xFFFB8C00),
  700: new Color(0xFFF57C00),
  800: new Color(0xFFEF6C00),
  900: new Color(0xFFE65100),
});

Colors.orangeAccent = new MaterialAccentColor(0xFFFFAB40, {
  100: new Color(0xFFFFD180),
  200: new Color(0xFFFFAB40),
  400: new Color(0xFFFF9100),
  700: new Color(0xFFFF6D00),
});

Colors.deepOrange = new MaterialColor(0xFFFF5722, {
  50: new Color(0xFFFBE9E7),
  100: new Color(0xFFFFCCBC),
  200: new Color(0xFFFFAB91),
  300: new Color(0xFFFF8A65),
  400: new Color(0xFFFF7043),
  500: new Color(0xFFFF5722),
  600: new Color(0xFFF4511E),
  700: new Color(0xFFE64A19),
  800: new Color(0xFFD84315),
  900: new Color(0xFFBF360C),
});

Colors.deepOrangeAccent = new MaterialAccentColor(0xFFFF6E40, {
  100: new Color(0xFFFF9E80),
  200: new Color(0xFFFF6E40),
  400: new Color(0xFFFF3D00),
  700: new Color(0xFFDD2C00),
});


Colors.brown = new MaterialColor(0xFF795548, {
  50: new Color(0xFFEFEBE9),
  100: new Color(0xFFD7CCC8),
  200: new Color(0xFFBCAAA4),
  300: new Color(0xFFA1887F),
  400: new Color(0xFF8D6E63),
  500: new Color(0xFF795548),
  600: new Color(0xFF6D4C41),
  700: new Color(0xFF5D4037),
  800: new Color(0xFF4E342E),
  900: new Color(0xFF3E2723),
});

Colors.grey = new MaterialColor(0xFF9E9E9E, {
  50: new Color(0xFFFAFAFA),
  100: new Color(0xFFF5F5F5),
  200: new Color(0xFFEEEEEE),
  300: new Color(0xFFE0E0E0),
  350: new Color(0xFFD6D6D6), // only for raised button while pressed in light theme
  400: new Color(0xFFBDBDBD),
  500: new Color(0xFF9E9E9E),
  600: new Color(0xFF757575),
  700: new Color(0xFF616161),
  800: new Color(0xFF424242),
  850: new Color(0xFF303030), // only for background color in dark theme
  900: new Color(0xFF212121),
});

Colors.blueGrey = new MaterialColor(0xFF607D8B, {
  50: new Color(0xFFECEFF1),
  100: new Color(0xFFCFD8DC),
  200: new Color(0xFFB0BEC5),
  300: new Color(0xFF90A4AE),
  400: new Color(0xFF78909C),
  500: new Color(0xFF607D8B),
  600: new Color(0xFF546E7A),
  700: new Color(0xFF455A64),
  800: new Color(0xFF37474F),
  900: new Color(0xFF263238),
});

Colors.primaries = [
  Colors.red,
  Colors.pink,
  Colors.purple,
  Colors.deepPurple,
  Colors.indigo,
  Colors.blue,
  Colors.lightBlue,
  Colors.cyan,
  Colors.teal,
  Colors.green,
  Colors.lightGreen,
  Colors.lime,
  Colors.yellow,
  Colors.amber,
  Colors.orange,
  Colors.deepOrange,
  Colors.brown,
  // The grey swatch is intentionally omitted because when picking a color
  // randomly from this list to colorize an application, picking grey suddenly
  // makes the app look disabled.
  Colors.blueGrey,
];

Colors.accents = [
  Colors.redAccent,
  Colors.pinkAccent,
  Colors.purpleAccent,
  Colors.deepPurpleAccent,
  Colors.indigoAccent,
  Colors.blueAccent,
  Colors.lightBlueAccent,
  Colors.cyanAccent,
  Colors.tealAccent,
  Colors.greenAccent,
  Colors.lightGreenAccent,
  Colors.limeAccent,
  Colors.yellowAccent,
  Colors.amberAccent,
  Colors.orangeAccent,
  Colors.deepOrangeAccent,
  Colors.brownAccent,
  // The grey swatch is intentionally omitted because when picking a color
  // randomly from this list to colorize an application, picking grey suddenly
  // makes the app look disabled.
  Colors.blueGrey,
];



class CircularNotchedRectangle extends DartClass {
  constructor({ } = {}) {
    super();
  }
}

CircularNotchedRectangle.new = function (args) {
  return new CircularNotchedRectangle(args);
};

class IconTheme extends DartClass {
  constructor({ key, data, child } = {}) {
    super();

    this.key = key;
    this.data = data;
    this.child = child;
  }
}

IconTheme.new = function (args) {
  return new IconTheme(args);
};

IconTheme.of = function (context) {
  return context.iconThemeData;
};

class IconThemeData extends DartClass {
  constructor({ color, opacity, size } = {}) {
    super();

    this.color = color;
    this.opacity = opacity;
    this.size = size;
  }
}

IconThemeData.new = function (args) {
  return new IconThemeData(args);
};

//TODO
IconThemeData.fromJson = function (mapObj) {
  if (mapObj == null || mapObj == undefined) {
    return null;
  }

  let obj = new IconThemeData();

  for (var p in mapObj) {
    if (mapObj.hasOwnProperty(p)) {
      let v = mapObj[p];
      switch (p) {
        case "color":
          obj[p] = new Color(v);
          break;

        default:
          obj[p] = v;
          break;
      }
    }
  }

  return obj;
};

class DropdownMenuItem extends DartClass {
  constructor({ key, value, child } = {}) {
    super();

    this.key = key;
    this.value = value;
    this.child = child;
  }
}

DropdownMenuItem.new = function (args) {
  return new DropdownMenuItem(args);
};

function assert(condition, message) {
  if (!condition) {
    message = message || "Assertion failed";
    if (typeof Error !== "undefined") {
      throw new Error(message);
    }
    throw message; // Fallback
  }
}

class BoxShadow extends DartClass {
  constructor({ color, offset, blurRadius, spreadRadius } = {}) {
    super();

    this.color = color;
    this.offset = offset;
    this.blurRadius = blurRadius;
    this.spreadRadius = spreadRadius;
  }
}

BoxShadow.new = function (args) {
  return new BoxShadow(args);
};

// BoxShape = {
//   circle: "BoxShape.circle",
//   rectangle: "BoxShape.rectangle"
// };

BoxShape = {
  circle: { _name: "BoxShape.circle", index: 0 },
  rectangle: { _name: "BoxShape.rectangle", index: 1 }
};

class Quaternion extends DartClass {
  constructor(x, y, z, w) {
    super();

    this.x = x;
    this.y = y;
    this.z = z;
    this.w = w;
  }
}

Quaternion.new = function (x, y, z, w) {
  return new Quaternion(x, y, z, w);
};

class Slider extends FlutterWidget {
  constructor({
    key,
    value,
    onChanged,
    onChangeStart,
    onChangeEnd,
    min,
    max,
    divisions,
    label,
    activeColor,
    inactiveColor,
    semanticFormatterCallback
  } = {}) {
    super();

    this.key = key;
    this.value = value;
    this.onChanged = onChanged;
    this.onChangeStart = onChangeStart;
    this.onChangeEnd = onChangeEnd;
    this.min = min;
    this.max = max;
    this.divisions = divisions;
    this.label = label;
    this.activeColor = activeColor;
    this.inactiveColor = inactiveColor;
    this.semanticFormatterCallback = semanticFormatterCallback;
  }
}

Slider.new = function (arg) {
  return new Slider(arg);
};

class CircleAvatar extends DartClass {
  constructor({
    key,
    child,
    backgroundColor,
    backgroundImage,
    foregroundColor,
    radius,
    minRadius,
    maxRadius
  } = {}) {
    super();

    this.key = key;
    this.child = child;
    this.backgroundColor = backgroundColor;
    this.backgroundImage = backgroundImage;
    this.foregroundColor = foregroundColor;
    this.radius = radius;
    this.minRadius = minRadius;
    this.maxRadius = maxRadius;
  }
}

CircleAvatar.new = function (args) {
  return new CircleAvatar(args);
};

class BorderDirectional extends DartClass {
  constructor({ top, start, end, bottom } = {}) {
    super();

    this.top = top;
    this.start = start;
    this.end = end;
    this.bottom = bottom;
  }
}

BorderDirectional.new = function (args) {
  return new BorderDirectional(args);
};

// ButtonTextTheme = {
//   normal: "ButtonTextTheme.normal",
//   accent: "ButtonTextTheme.accent",
//   primary: "ButtonTextTheme.primary"
// };

ButtonTextTheme = {
  normal: { _name: "ButtonTextTheme.normal", index: 0 },
  accent: { _name: "ButtonTextTheme.accent", index: 1 },
  primary: { _name: "ButtonTextTheme.primary", index: 2 }
};

class Chip extends DartClass {
  constructor({
    key,
    avatar,
    label,
    labelStyle,
    labelPadding,
    deleteIcon,
    onDeleted,
    deleteIconColor,
    deleteButtonTooltipMessage,
    shape,
    clipBehavior,
    backgroundColor,
    padding,
    materialTapTargetSize,
    elevation
  } = {}) {
    super();

    this.key = key;
    this.avatar = avatar;
    this.label = label;
    this.labelStyle = labelStyle;
    this.labelPadding = labelPadding;
    this.deleteIcon = deleteIcon;
    this.onDeleted = onDeleted;
    this.deleteIconColor = deleteIconColor;
    this.deleteButtonTooltipMessage = deleteButtonTooltipMessage;
    this.shape = shape;
    this.clipBehavior = clipBehavior;
    this.backgroundColor = backgroundColor;
    this.padding = padding;
    this.materialTapTargetSize = materialTapTargetSize;
    this.elevation = elevation;
  }
}

Chip.new = function (arg) {
  return new Chip(arg);
};

class InputBorder extends DartClass {
  constructor({
    // borderSide,
  } = {}) {
    super();

    // this.borderSide = borderSide;
  }
}

InputBorder.new = function (args) {
  return new InputBorder(args);
};

InputBorder.none = function () {
  let v = new InputBorder();
  v.staticFunctionName = "none";

  return v;
};

class Positioned extends DartClass {
  constructor({ key, left, top, right, bottom, width, height, child } = {}) {
    super();

    this.key = key;
    this.left = left;
    this.top = top;
    this.right = right;
    this.bottom = bottom;
    this.width = width;
    this.height = height;
    this.child = child;
  }
}

Positioned.new = function (args) {
  return new Positioned(args);
};

Positioned.fromRect = function ({ key, rect, child } = {}) {
  let positioned = new Positioned();
  positioned.key = key;
  (positioned.left = rect.left),
    (positioned.top = rect.top),
    (positioned.width = rect.width),
    (positioned.height = rect.height),
    (positioned.child = child);
  return positioned;
};

class Opacity extends DartClass {
  constructor({ key, opacity, alwaysIncludeSemantics, child } = {}) {
    super();

    this.key = key;
    this.opacity = opacity;
    this.alwaysIncludeSemantics = alwaysIncludeSemantics;
    this.child = child;
  }
}

Opacity.new = function (args) {
  return new Opacity(args);
};

class TableColumnWidth extends DartClass {
  constructor() {
    super();
  }
}

TableColumnWidth.new = function (args) {
  return new TableColumnWidth(args);
};

class ColorScheme extends DartClass {
  constructor({
    primary,
    primaryVariant,
    secondary,
    secondaryVariant,
    surface,
    background,
    error,
    onPrimary,
    onSecondary,
    onSurface,
    onBackground,
    onError,
    brightness,
  } = {}) {
    super();

    this.primary = primary;
    this.primaryVariant = primaryVariant;
    this.secondary = secondary;
    this.secondaryVariant = secondaryVariant;
    this.surface = surface;
    this.background = background;
    this.error = error;
    this.onPrimary = onPrimary;
    this.onSecondary = onSecondary;
    this.onSurface = onSurface;
    this.onBackground = onBackground;
    this.onError = onError;
    this.brightness = brightness;
  }

  static fromSwatch({
    primarySwatch,
    accentColor,
    cardColor,
    backgroundColor,
    errorColor,
    brightness,
  } = {}) {
    let jsObj = new ColorScheme();
    jsObj.constructorName = "fromSwatch";

    jsObj.primarySwatch = primarySwatch;
    jsObj.accentColor = accentColor;
    jsObj.cardColor = cardColor;
    jsObj.backgroundColor = backgroundColor;
    jsObj.errorColor = errorColor;
    jsObj.brightness = brightness;

    return jsObj;
  }
}

ColorScheme.new = function (args) {
  return new ColorScheme(args);
};

ButtonBarLayoutBehavior = {
  constrained: { _name: "ButtonBarLayoutBehavior.constrained", index: 0 },
  padded: { _name: "ButtonBarLayoutBehavior.padded", index: 1 },
};

class ButtonThemeData extends DartClass {
  constructor({
    textTheme,
    minWidth,
    height,
    padding,
    shape,
    layoutBehavior,
    alignedDropdown,
    buttonColor,
    disabledColor,
    focusColor,
    hoverColor,
    highlightColor,
    splashColor,
    colorScheme,
    materialTapTargetSize,
  } = {}) {
    super();

    this.textTheme = textTheme;
    this.minWidth = minWidth;
    this.height = height;
    this.padding = padding;
    this.shape = shape;
    this.layoutBehavior = layoutBehavior;
    this.alignedDropdown = alignedDropdown;
    this.buttonColor = buttonColor;
    this.disabledColor = disabledColor;
    this.focusColor = focusColor;
    this.hoverColor = hoverColor;
    this.highlightColor = highlightColor;
    this.splashColor = splashColor;
    this.colorScheme = colorScheme;
    this.materialTapTargetSize = materialTapTargetSize;
  }
}

ButtonThemeData.new = function (args) {
  return new ButtonThemeData(args);
};

class NotificationListener extends DartClass {
  constructor({
    key,
    child,
    onNotification,
  } = {}) {
    super();

    this.key = key;
    this.child = child;
    this.onNotification = onNotification;
  }
}

NotificationListener.new = function (arg) {
  return new NotificationListener(arg);
};

class PreferredSize extends DartClass {
  constructor({
    key,
    child,
    preferredSize,
  } = {}) {
    super();

    this.key = key;
    this.child = child;
    this.preferredSize = preferredSize;
  }
}

PreferredSize.new = function (arg) {
  return new PreferredSize(arg);
};

class PreferredSizeWidget extends DartClass {
  constructor(

  ) {
    super();
  }
}

PreferredSizeWidget.new = function (args) {
  return PreferredSizeWidget(args);
};

class Notification extends DartClass {
  constructor(

  ) {
    super();
  }
}

Notification.new = function (arg) {
  return new Notification(arg);
};

class ClipRRect extends DartClass {
  constructor({
    key,
    borderRadius,
    clipper,
    clipBehavior,
    child,
  } = {}) {
    super();

    this.key = key;
    this.borderRadius = borderRadius;
    this.clipper = clipper;
    this.clipBehavior = clipBehavior;
    this.child = child;
  }
}

ClipRRect.new = function (arg) {
  return new ClipRRect(arg);
};

class SpringDescription extends DartClass {
  constructor({
    mass,
    stiffness,
    damping,
  } = {}) {
    super();

    this.mass = mass;
    this.stiffness = stiffness;
    this.damping = damping;
  }
}

SpringDescription.new = function (arg) {
  return new SpringDescription(arg);
};


class UniqueKey extends DartClass {
  constructor(

  ) {
    super();
  }
}

UniqueKey.new = function (arg) {
  return new UniqueKey(arg);
};

class MXEncodeParam {
  static encodeParam(param) {
    if (param === null || param == undefined) {
      return param;
    }

    if (param.innerValue) {
      param = param.innerValue();
    }

    if (core.Map.is(param)) {
      param = this.mapToObj(param);
    }
    return param;
  }

  static mapToObj(map) {
    let obj = Object.create(null);
    map[$forEach](dart.fn((key, value) => {
      if (core.Map.is(value)) {
        obj[key] = this.mapToObj(value);
      } else if (core.List.is(value)) {
        obj[key] = this.arrayMapToObj(value);
      } else {
        obj[key] = value;
      }
    }, dynamicAnddynamicToNull()));
    return obj;
  }

  static arrayMapToObj(list) {
    let array = new Array();
    list[$forEach](dart.fn(element => {
      array.push(this.encodeParam(element));
    }, dynamicToNull()));
    return array;
  }

}

module.exports = {
  DartClass,
  FlutterWidget,
  Key,
  AlignmentDirectional,
  EdgeInsetsDirectional,
  EdgeInsets,
  Color,
  BlendMode,
  FilterQuality,
  BlurStyle,
  Alignment,
  StrokeCap,
  StrokeJoin,
  PaintingStyle,
  Paint,
  ColorFilter,
  MaskFilter,
  TileMode,
  LinearGradient,
  RadialGradient,
  SweepGradient,
  ImageShader,
  BoxDecoration,
  Locale,
  MainAxisAlignment,
  MainAxisSize,
  CrossAxisAlignment,
  VerticalDirection,
  BoxConstraints,
  Size,
  Offset,
  TableRow,
  BoxFit,
  Overflow,
  StackFit,
  Axis,
  TableCellVerticalAlignment,
  TableBorder,
  BorderSide,
  BorderStyle,
  FlexColumnWidth,
  FixedColumnWidth,
  WrapAlignment,
  WrapCrossAlignment,
  Matrix4,
  Vector4,
  Vector3,
  Clip,
  Rect,
  PlatformAssetBundle,
  NetworkAssetBundle,
  File,
  Uint8List,
  Radius,
  BorderRadius,
  BottomNavigationBarItem,
  BottomNavigationBarType,
  IconData,
  TabBarIndicatorSize,
  Border,
  AnnotatedRegion,
  SystemUiOverlayStyle,
  Brightness,
  MaterialColor,
  MaterialAccentColor,
  InputDecorationTheme,
  TargetPlatform,
  FloatingActionButtonLocation,
  Colors,
  CircularNotchedRectangle,
  FlutterCallArgs,
  FlutterWidgetMirrorMgr,
  IconTheme,
  IconThemeData,
  DropdownMenuItem,
  BoxShadow,
  BoxShape,
  Quaternion,
  Slider,
  CircleAvatar,
  BorderDirectional,
  ButtonTextTheme,
  Chip,
  InputBorder,
  Positioned,
  Opacity,
  TableColumnWidth,
  ColorScheme,
  ButtonThemeData,
  ButtonBarLayoutBehavior,
  NotificationListener,
  PreferredSize,
  PreferredSizeWidget,
  Notification,
  ClipRRect,
  SpringDescription,
  UniqueKey,
  assert,
  MXEncodeParam
};
