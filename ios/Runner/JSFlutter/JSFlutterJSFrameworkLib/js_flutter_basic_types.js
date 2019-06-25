//VSCode Run support=====================================================================================
//为便于在JS IDE如VSCode，webStorm里脱离APP环境执行JS，以快速验证JS代码正确性
//如果不在App环境，Native接口重定向到JS同名函数打印调用
//jsFlutterRequire 转调Node运行环境中的require
//只有JSFlutterJSFrameworkLib中的文件，才能用这个头
let jsFlutterRequire = typeof mxRequire != "undefined" ? mxRequire : require;
//VSCode Run support end ================================================================================

//js_flutter_basic_types.js 正式开始，😝

//-------------------------------------------
//TODO: class Paint

//-------------------------------------------
//不依赖任何文件的放这里
//dart widget 封装

//全局callbak管理器
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
        var d = ++this.mirrorIDFeed;
        var idString = String(d);
        this.mirrorObjMap[idString] = obj;
        return idString;
    }

    removeMirrorObjects(mirrorIDList){
        for (var mirrorID in mirrorIDList){
            this.mirrorObjMap.delete(mirrorID);
        }
    }

    getMirrorObj(mirrorID){
        return this.mirrorObjMap[mirrorID];
    }
}

class FlutterCallArgs{
    constructor({
        mirrorID,
        className,
        funcName,
        args,
    } = {}) {
        this.mirrorID = mirrorID;
        this.className = className;
        this.funcName = funcName;
        this.args = args;
    }
}

//flutter 中 非widget继承 DartClass
class DartClass {
    constructor() {
        this.className = this.constructor.name;
    }


    // build() {
    //     let m = JSON.stringify(this);
    //     return m;
    // }

    createMirrorObjectID() {
        this.mirrorID = FlutterWidgetMirrorMgr.getInstance().generateID(this);
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
    preBuild(jsWidget,buildContext){
        //把callback 换成callbackID
        for (let k in this) {
            let v = this[k];
            if (typeof v == 'function') {
                this[k] = jsWidget.createCallbackID(v);
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

class AlignmentDirectional extends DartClass {
    constructor({
        start,
        y,
    } = {}) {
        super();

        this.start = start;
        this.y = y;
    }
}

class EdgeInsetsDirectional extends DartClass {
    constructor(
        start,
        top,
        end,
        bottom,
    ) {
        super();

        this.start = start;
        this.top = top;
        this.end = end;
        this.bottom = bottom;
    }

    static fromSTEB({
        start,
        top,
        end,
        bottom,
    } = {}) {

        let v = new EdgeInsetsDirectional();
        v.constructorName = "fromSTEB";

        v.start = start;
        v.top = top;
        v.end = end;
        v.bottom = bottom;
        return v;
    }

    static only({
        start = 0.0,
        top = 0.0,
        end = 0.0,
        bottom = 0.0,
    } = {}) {
        let v = new EdgeInsetsDirectional();
        v.constructorName = "only";
        v.start = start;
        v.top = top;
        v.end = end;
        v.bottom = bottom;
        return v;
    }
}

class EdgeInsets extends DartClass {
    constructor(
        left,
        top,
        right,
        bottom,
    ) {
        super();

        this.left = left;
        this.top = top;
        this.right = right;
        this.bottom = bottom;
    }


    static fromLTRB(
        left,
        top,
        right,
        bottom,
    ) {
        let jsObj = new EdgeInsets();
        jsObj.constructorName = "fromLTRB";

        jsObj.left = left;
        jsObj.top = top;
        jsObj.right = right;
        jsObj.bottom = bottom;

        return jsObj;
    }
    static all(
        value,
    ) {
        let jsObj = new EdgeInsets();
        jsObj.constructorName = "all";

        jsObj.value = value;

        return jsObj;
    }
    static only({
        left,
        top,
        right,
        bottom,
    } = {}) {
        let jsObj = new EdgeInsets();
        jsObj.constructorName = "only";

        jsObj.left = left;
        jsObj.top = top;
        jsObj.right = right;
        jsObj.bottom = bottom;

        return jsObj;
    }
    static symmetric({
        vertical,
        horizontal,
    } = {}) {
        let jsObj = new EdgeInsets();
        jsObj.constructorName = "symmetric";

        jsObj.vertical = vertical;
        jsObj.horizontal = horizontal;

        return jsObj;
    }

    static fromJson(mapObj) {

        if (mapObj == null || mapObj == undefined) {
            return null;
        }

        let obj = new EdgeInsets();

        for (var p in mapObj) {
            if (mapObj.hasOwnProperty(p)) {
                let v = mapObj[p];;
                obj[p] = v;
            }
        }

        return obj;
    }

}

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

    ///const Color.fromARGB(int a, int r, int g, int b)
    static fromARGB(a, r, g, b) {
        let c = new Color();
        c.constructorName = "fromARGB";

        c.a = a;
        c.r = r;
        c.g = g;
        c.b = b;
        return c;

    }

    static fromRGBO(r, g, b, opacity) {
        let c = new Color();
        c.constructorName = "fromRGBO";
        c.opacity = opacity;
        c.r = r;
        c.g = g;
        c.b = b;

        return c;
    }

    static fromJson(mapObj) {

        if (mapObj == null || mapObj == undefined) {
            return null;
        }

        let obj = new Color();

        for (var p in mapObj) {
            if (mapObj.hasOwnProperty(p)) {
                let v = mapObj[p];;
                obj[p] = v;
            }
        }

        return obj;
    }

}

BlendMode = {
    clear: "BlendMode.clear",
    src: "BlendMode.src",
    dst: "BlendMode.dst",
    srcOver: "BlendMode.srcOver",
    dstOver: "BlendMode.dstOver",
    srcIn: "BlendMode.srcIn",
    dstIn: "BlendMode.dstIn",
    srcOut: "BlendMode.srcOut",
    dstOut: "BlendMode.dstOut",
    srcATop: "BlendMode.srcATop",
    dstATop: "BlendMode.dstATop",
    xor: "BlendMode.xor",
    plus: "BlendMode.plus",
    modulate: "BlendMode.modulate",
    screen: "BlendMode.screen",
    overlay: "BlendMode.overlay",
    darken: "BlendMode.darken",
    lighten: "BlendMode.lighten",
    colorDodge: "BlendMode.colorDodge",
    colorBurn: "BlendMode.colorBurn",
    hardLight: "BlendMode.hardLight",
    softLight: "BlendMode.softLight",
    difference: "BlendMode.difference",
    exclusion: "BlendMode.exclusion",
    multiply: "BlendMode.multiply",
    hue: "BlendMode.hue",
    saturation: "BlendMode.saturation",
    color: "BlendMode.color",
    luminosity: "BlendMode.luminosity",
};

FilterQuality = {
    none: "FilterQuality.none",
    low: "FilterQuality.low",
    medium: "FilterQuality.medium",
    high: "FilterQuality.high",
};

BlurStyle = {
    normal: "BlurStyle.normal",
    solid: "BlurStyle.solid",
    outer: "BlurStyle.outer",
    inner: "BlurStyle.inner",
};

class Alignment extends DartClass {
    constructor(
        x,
        y,
    ) {
        super();

        this.x = x;
        this.y = y;
    }

}

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




StrokeCap = {
    butt: "StrokeCap.butt",
    round: "StrokeCap.round",
    square: "StrokeCap.square",
};

StrokeJoin = {
    miter: "StrokeJoin.miter",
    round: "StrokeJoin.round",
    bevel: "StrokeJoin.bevel",
};

PaintingStyle = {
    fill: "PaintingStyle.fill",
    stroke: "PaintingStyle.stroke",
};

class Paint {

    constructor(argsMap) {
        argsMap.forEach((k, v) => {
            this[k] = v;
        });
    }
}

class ColorFilter extends DartClass {
    constructor(
        color,
        blendMode) {
        super();

        this.color = color;
        this.blendMode = blendMode;
    }

    static mode(color,
        blendMode) {
        let v = new ColorFilter(color, blendMode);
        v.constructorName = "mode";
        return v;
    }
}


class MaskFilter extends DartClass {
    constructor(
        style,
        sigma,
    ) {
        super();

        this.style = style;
        this.sigma = sigma;
    }

    static blur(
        style,
        sigma,
    ) {
        let v = new MaskFilter(style, sigma);
        v.constructorName = "blur";
        return v;
    }
}

TileMode = {
    clamp: "TileMode.clamp",
    repeated: "TileMode.repeated",
    mirror: "TileMode.mirror",
};

class LinearGradient extends DartClass {
    constructor({
        begin,
        end,
        colors,
        stops,
        tileMode,
    } = {}) {
        super();

        this.begin = begin;
        this.end = end;
        this.colors = colors;
        this.stops = stops;
        this.tileMode = tileMode;
    }
}

class RadialGradient extends DartClass {
    constructor({
        center,
        radius,
        colors,
        stops,
        tileMode,
        focal,
        focalRadius,
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

class SweepGradient extends DartClass {
    constructor({
        center,
        startAngle,
        endAngle,
        colors,
        stops,
        tileMode,
    } = {}) {
        super();

        this.center = center;
        this.startAngle = startAngle;
        this.endAngle = endAngle;
        this.colors = colors;
        this.stops = stops;
        this.tileMode = tileMode;
    }
}

class ImageShader extends DartClass {
    constructor({
        image,
        tmx,
        tmy,
        matrix4,
    } = {}) {
        super();

        this.image = image;
        this.tmx = tmx;
        this.tmy = tmy;
        this.matrix4 = matrix4;
    }
}

class BoxDecoration extends DartClass {
    constructor({
        color,
        image,
        border,
        borderRadius,
        boxShadow,
        gradient,
        backgroundBlendMode,
        shape,
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

class Locale extends DartClass {
    constructor(
        languageCode,
        countryCode,
    ) {
        super();

        this.languageCode = languageCode;
        this.countryCode = countryCode;
    }

    static fromJson(mapObj) {
        if (mapObj == null || mapObj == undefined) {
            return null;
        }

        let obj = new Locale({
            languageCode: mapObj['languageCode'],
            countryCode: mapObj['countryCode'],
        });

        return obj;
    }
}

MainAxisAlignment = {
    start: "MainAxisAlignment.start",
    end: "MainAxisAlignment.end",
    center: "MainAxisAlignment.center",
    spaceBetween: "MainAxisAlignment.spaceBetween",
    spaceAround: "MainAxisAlignment.spaceAround",
    spaceEvenly: "MainAxisAlignment.spaceEvenly",
};

MainAxisSize = {
    min: "MainAxisSize.min",
    max: "MainAxisSize.max",
};

CrossAxisAlignment = {
    start: "CrossAxisAlignment.start",
    end: "CrossAxisAlignment.end",
    center: "CrossAxisAlignment.center",
    stretch: "CrossAxisAlignment.stretch",
    baseline: "CrossAxisAlignment.baseline",
};

VerticalDirection = {
    up: "VerticalDirection.up",
    down: "VerticalDirection.down",
};

class BoxConstraints extends DartClass {
    constructor({
        minWidth,
        maxWidth,
        minHeight,
        maxHeight,
    } = {}) {
        super();

        this.minWidth = minWidth;
        this.maxWidth = maxWidth;
        this.minHeight = minHeight;
        this.maxHeight = maxHeight;
    }
}

class Size extends DartClass {
    constructor(
        width,
        height,
    ) {
        super();

        this.width = width;
        this.height = height;
    }

    static fromJson(mapObj) {

        if (mapObj == null || mapObj == undefined) {
            return null;
        }

        let obj = new EdgeInsets();

        for (var p in mapObj) {
            if (mapObj.hasOwnProperty(p)) {
                let v = mapObj[p];;
                obj[p] = v;
            }
        }

        return obj;
    }
}

class Offset extends DartClass {
    constructor(
        dx,
        dy, ) {
        super();

        this.dx = dx;
        this.dy = dy;
    }
}

class TableRow extends DartClass {
    constructor({
        key,
        decoration,
        children,
    } = {}) {
        super();

        this.key = key;
        this.decoration = decoration;
        this.children = children;
    }
}

BoxFit = {
    fill: "BoxFit.fill",
    contain: "BoxFit.contain",
    cover: "BoxFit.cover",
    fitWidth: "BoxFit.fitWidth",
    fitHeight: "BoxFit.fitHeight",
    none: "BoxFit.none",
    scaleDown: "BoxFit.scaleDown",
};

Overflow = {
    visible: "Overflow.visible",
    clip: "Overflow.clip",
};

StackFit = {
    loose: "StackFit.loose",
    expand: "StackFit.expand",
    passthrough: "StackFit.passthrough",
};

Axis = {
    horizontal: "Axis.horizontal",
    vertical: "Axis.vertical",
};


TableCellVerticalAlignment = {
    top: "TableCellVerticalAlignment.top",
    middle: "TableCellVerticalAlignment.middle",
    bottom: "TableCellVerticalAlignment.bottom",
    baseline: "TableCellVerticalAlignment.baseline",
    fill: "TableCellVerticalAlignment.fill",
};

class TableBorder extends DartClass {
    constructor({
        top,
        right,
        bottom,
        left,
        horizontalInside,
        verticalInside,
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

class BorderSide extends DartClass {
    constructor({
        color,
        width,
        style,
    } = {}) {
        super();

        this.color = color;
        this.width = width;
        this.style = style;
    }
}

BorderStyle = {
    none: "BorderStyle.none",
    solid: "BorderStyle.solid",

};

class FlexColumnWidth extends DartClass {
    constructor(value) {
        super();

        this.value = value;
    }
}

WrapAlignment = {
    start: "WrapAlignment.start",
    end: "WrapAlignment.end",
    center: "WrapAlignment.center",
    spaceBetween: "WrapAlignment.spaceBetween",
    spaceAround: "WrapAlignment.spaceAround",
    spaceEvenly: "WrapAlignment.spaceEvenly",
};


WrapCrossAlignment = {
    start: "WrapCrossAlignment.start",
    end: "WrapCrossAlignment.end",
    center: "WrapCrossAlignment.center",

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
        arg15,
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

    //factory Matrix4.fromList(List<double> values)
    static fromList(values) {
        let v = new Matrix4();
        v.constructorName = "fromList";
        v.values = List_double_values
        return v;
    }

    /// Zero matrix.
    static zero() {
        let v = new Matrix4();
        v.constructorName = "zero";
        return v;
    }

    /// Identity matrix.
    ///factory Matrix4.identity() => new Matrix4.zero()..setIdentity();
    static identity() {
        let v = new Matrix4();
        v.constructorName = "identity";
        return v;
    }

    /// Constructs a new mat4 from columns.
    static columns(
        arg0,
        arg1,
        arg2,
        arg3,
    ) {
        let v = new Matrix4();
        v.constructorName = "columns";

        v.arg0 = arg0;
        v.arg1 = arg1;
        v.arg2 = arg2;
        v.arg3 = arg3;

        return v;
    }

    /// Outer product of [u] and [v].
    static outer(
        u,
        v,
    ) {
        let jsObj = new Matrix4();
        jsObj.constructorName = "outer";

        jsObj.u = u;
        jsObj.v = v;

        return jsObj;
    }

    static rotationX(
        radians,
    ) {
        let v = new Matrix4();
        v.constructorName = "rotationX";

        v.radians = radians;

        return v;
    }
    static rotationY(
        radians,
    ) {
        let v = new Matrix4();
        v.constructorName = "rotationY";

        v.radians = radians;
        return v;
    }
    static rotationZ(
        radians,
    ) {
        let v = new Matrix4();
        v.constructorName = "rotationZ";

        v.radians = radians;

        return v;
    }
    static translation(
        translation,
    ) {
        let v = new Matrix4();
        v.constructorName = "translation";

        v.translation = translation;

        return v;
    }
    static translationValues(
        x,
        y,
        z,
    ) {
        let v = new Matrix4();
        v.constructorName = "translationValues";

        v.x = x;
        v.y = y;
        v.z = z;

        return v;
    }
    static diagonal3(
        scale,
    ) {
        let v = new Matrix4();
        v.constructorName = "diagonal3";

        v.scale = scale;

        return v;
    }
    static diagonal3Values(
        x,
        y,
        z,
    ) {
        let v = new Matrix4();
        v.constructorName = "diagonal3Values";

        v.x = x;
        v.y = y;
        v.z = z;

        return v;
    }
    static skewX(
        alpha,
    ) {
        let v = new Matrix4();
        v.constructorName = "skewX";

        v.alpha = alpha;

        return v;
    }
    static skewY(
        beta,
    ) {
        let v = new Matrix4();
        v.constructorName = "skewY";

        v.beta = beta;
        return v;
    }
    static skew(
        alpha,
        beta,
    ) {
        let v = new Matrix4();
        v.constructorName = "skew";

        v.alpha = alpha;
        v.beta = beta;

        return v;
    }
    static compose(
        translation,
        rotation,
        scale,
    ) {
        let v = new Matrix4();
        v.constructorName = "compose";

        v.translation = translation;
        v.rotation = rotation;
        v.scale = scale;

        return v;
    }

}

class Vector4 extends DartClass {
    constructor(
        x,
        y,
        z,
        w,
    ) {
        super();

        this.x = x;
        this.y = y;
        this.z = z;
        this.w = w;
    }

    static array(
        array,
        offset,
    ) {
        let v = new Vector4();
        v.constructorName = "array";

        v.array = array;
        v.offset = offset;

        return v;
    }
    static identity() {
        let v = new Vector4();
        v.constructorName = "identity";

        return v;
    }

    static random(
        rng,
    ) {
        let v = new Vector4();
        v.constructorName = "random";

        v.rng = rng;

        return v;
    }

}

class Vector3 extends DartClass {
    constructor(
        x,
        y,
        z,
    ) {
        super();

        this.x = x;
        this.y = y;
        this.z = z;
    }


    static zero(

    ) {
        let v = new Vector3();
        v.constructorName = "zero";

        return v;


    }
    static all(
        value,
    ) {
        let v = new Vector3();
        v.constructorName = "all";

        v.value = value;

        return v;
    }
    static random(
        rng,
    ) {
        let v = new Vector3();
        v.constructorName = "random";

        v.rng = rng;

        return v;
    }
}

class ScrollController extends DartClass {
    constructor({
        initialScrollOffset,
        keepScrollOffset,
        debugLabel,
    } = {}) {
        super();

        this.initialScrollOffset = initialScrollOffset;
        this.keepScrollOffset = keepScrollOffset;
        this.debugLabel = debugLabel;
    }
}

class ScrollPhysics extends DartClass {
    constructor({
        parent,
    } = {}) {
        super();

        this.parent = parent;
    }
}

class ClampingScrollPhysics extends DartClass {
    constructor({
        parent,
    } = {}) {
        super();

        this.parent = parent;
    }
}

class AlwaysScrollableScrollPhysics extends DartClass {
    constructor({
        parent,
    } = {}) {
        super();

        this.parent = parent;
    }
}

class NeverScrollableScrollPhysics extends DartClass {
    constructor({
        parent,
    } = {}) {
        super();

        this.parent = parent;
    }
}

class SliverChildBuilderDelegate extends FlutterWidget {
    constructor(
        builder,
        {
            childCount,
            addAutomaticKeepAlives,
            addRepaintBoundaries,
            addSemanticIndexes,
            semanticIndexCallback,
            semanticIndexOffset,
        }
    ) {
        super();

        this.builder = builder;
        this.childCount = childCount;
        this.addAutomaticKeepAlives = addAutomaticKeepAlives;
        this.addRepaintBoundaries = addRepaintBoundaries;
        this.addSemanticIndexes = addSemanticIndexes;
        this.semanticIndexCallback = semanticIndexCallback;
        this.semanticIndexOffset = semanticIndexOffset;

        // 本地创建的，供flutter使用
        this.children = [];
    }

    preBuild(jsWidget, buildContext) {

        if(this.builder){
            for (let i = 0; i < this.childCount; ++i) {
                let w = this.builder(buildContext, i);
                this.children.push(w);
            }
            delete this.builder;
        }

        super.preBuild(jsWidget, buildContext);
    }
}

class SliverChildListDelegate extends DartClass {
    constructor(
        children,
        addAutomaticKeepAlives,
        addRepaintBoundaries,
        addSemanticIndexes,
        semanticIndexCallback,
        semanticIndexOffset,
    ) {
        super();

        this.children = children;
        this.addAutomaticKeepAlives = addAutomaticKeepAlives;
        this.addRepaintBoundaries = addRepaintBoundaries;
        this.addSemanticIndexes = addSemanticIndexes;
        this.semanticIndexCallback = semanticIndexCallback;
        this.semanticIndexOffset = semanticIndexOffset;
    }
}

Clip = {
    none: "Clip.none",
    hardEdge: "Clip.hardEdge",
    antiAlias: "Clip.antiAlias",
    antiAliasWithSaveLayer: "Clip.antiAliasWithSaveLayer",
};

class Rect extends DartClass {
    constructor(

    ) {
        super();


    }


    static fromLTRB(
        left,
        top,
        right,
        bottom,
    ) {
        let v = new Rect();
        v.constructorName = "fromLTRB";

        v.left = left;
        v.top = top;
        v.right = right;
        v.bottom = bottom;

        return v;
    }
    static fromLTWH(
        left,
        top,
        width,
        height,
    ) {
        let v = new Rect();
        v.constructorName = "fromLTWH";

        v.left = left;
        v.top = top;
        v.width = width;
        v.height = height;

        return v;
    }
    static fromCircle({
        center,
        radius,
    } = {}) {
        let v = new Rect();
        v.constructorName = "fromCircle";

        v.center = center;
        v.radius = radius;

        return v;
    }
    static fromPoints(
        a,
        b,
    ) {
        let v = new Rect();
        v.constructorName = "fromPoints";

        v.a = a;
        v.b = b;

        return v;
    }
}

class PlatformAssetBundle extends DartClass {
    constructor(

    ) {
        super();


    }
}

class NetworkAssetBundle extends DartClass {
    constructor(
        baseUrl,
    ) {
        super();

        this.baseUrl = baseUrl;
    }
}

class File extends DartClass {
    constructor(
        path,
    ) {
        super();

        this.path = path;
    }


    static fromUri(
        uri,
    ) {
        let v = new File();
        v.constructorName = "fromUri";

        v.uri = uri;

        return v;
    }
    static fromRawPath(
        Uint8List,
        rawPath,
    ) {
        let v = new File();
        v.constructorName = "fromRawPath";

        v.Uint8List = Uint8List;
        v.rawPath = rawPath;

        return v;
    }
}

class Uint8List extends DartClass {
    constructor(
        length,
    ) {
        super();

        this.length = length;
    }


    static fromList(
        elements,
    ) {
        let v = new Uint8List();
        v.constructorName = "fromList";

        v.elements = elements;

        return v;
    }
    static view(
        buffer,
        offsetInBytes,
        length
    ) {
        let v = new Uint8List();
        v.constructorName = "view";

        v.buffer = buffer;
        v.offsetInBytes = offsetInBytes;
        v.length = length;

        return v;
    }
}

class Radius extends DartClass {
    constructor(

    ) {
        super();


    }


    static circular(
        radius,
    ) {
        let v = new Radius();
        v.constructorName = "circular";

        v.radius = radius;

        return v;
    }
    static elliptical(
        x,
        y,
    ) {
        let v = new Radius();
        v.constructorName = "elliptical";

        v.x = x;
        v.y = y;

        return v;
    }

}

class BorderRadius extends DartClass {
    constructor(

    ) {
        super();


    }


    static all(
        radius,
    ) {
        let v = new BorderRadius();
        v.constructorName = "all";

        v.radius = radius;

        return v;
    }
    static circular(
        radius,
    ) {
        let v = new BorderRadius();
        v.constructorName = "circular";

        v.radius = radius;

        return v;
    }
    static vertical({
        top,
        bottom,
    } = {}) {
        let v = new BorderRadius();
        v.constructorName = "vertical";

        v.top = top;
        v.bottom = bottom;

        return v;
    }

    static horizontal({
        left,
        right,
    } = {}) {
        let v = new BorderRadius();
        v.constructorName = "horizontal";

        v.left = left;
        v.right = right;

        return v;
    }
    static only({
        topLeft,
        topRight,
        bottomLeft,
        bottomRight,
    } = {}) {
        let v = new BorderRadius();
        v.constructorName = "only";

        v.topLeft = topLeft;
        v.topRight = topRight;
        v.bottomLeft = bottomLeft;
        v.bottomRight = bottomRight;

        return v;
    }
}

class BottomNavigationBarItem extends DartClass {
    constructor({
        icon,
        title,
        activeIcon,
        backgroundColor,
    } = {}) {
        super();

        this.icon = icon;
        this.title = title;
        this.activeIcon = activeIcon;
        this.backgroundColor = backgroundColor;
    }
}

BottomNavigationBarType = {
    fixed: "BottomNavigationBarType.fixed",
    shifting: "BottomNavigationBarType.shifting",
};

class IconData extends DartClass {
    constructor(
        codePoint, {
            fontFamily,
            fontPackage,
            matchTextDirection,
        } = {}) {
        super();

        this.codePoint = codePoint;
        this.fontFamily = fontFamily;
        this.fontPackage = fontPackage;
        this.matchTextDirection = matchTextDirection;
    }
}

TabBarIndicatorSize = {
    tab: "TabBarIndicatorSize.tab",
    label: "TabBarIndicatorSize.label",
};

class Border extends FlutterWidget {
    constructor ({
        top,
        right,
        bottom,
        left,
    } = {}) {
        super();

        this.top = top;
        this.right = right;
        this.bottom = bottom;
        this.left = left;
    }
    
    static all({color, width, style}) {
        let side = new BorderSide({
            color: color,
            width: width,
            style: style
        });
        return new Border({
            top: side,
            right: side,
            bottom: side,
            left: side,
        });
    }
}

class AnnotatedRegion extends DartClass {
    constructor ({
        key,
        child,
        value,
        sized,
    } = {}) {
        super();

        this.key = key;
        this.child = child;
        this.value = value;
        this.sized = sized;
    }
}

class SystemUiOverlayStyle extends DartClass {
    constructor ({
        systemNavigationBarColor,
        systemNavigationBarDividerColor,
        systemNavigationBarIconBrightness,
        statusBarColor,
        statusBarBrightness,
        statusBarIconBrightness,
    } = {}) {
        super();

        this.systemNavigationBarColor = systemNavigationBarColor;
        this.systemNavigationBarDividerColor = systemNavigationBarDividerColor;
        this.systemNavigationBarIconBrightness = systemNavigationBarIconBrightness;
        this.statusBarColor = statusBarColor;
        this.statusBarBrightness = statusBarBrightness;
        this.statusBarIconBrightness = statusBarIconBrightness;
    }

    static light() {
        let w = new SystemUiOverlayStyle({
            systemNavigationBarColor: new Color(0xFF000000),
            systemNavigationBarDividerColor: null,
            statusBarColor: null,
            systemNavigationBarIconBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness:Brightness.dark,
        });
        return w;
    }

    static dark() {
        let w = new SystemUiOverlayStyle({
            systemNavigationBarColor: new Color(0xFF000000),
            systemNavigationBarDividerColor: null,
            statusBarColor: null,
            systemNavigationBarIconBrightness: Brightness.light,
            statusBarIconBrightness: Brightness.dark,
            statusBarBrightness:Brightness.light,
        });
        return w;
    }
}

Brightness = {
    dark: "Brightness.dark",
    light: "Brightness.light",
};

class MaterialColor extends DartClass {
    constructor (
        primary,
        swatch,
    ) {
        super();

        this.primary = primary;
        this.swatch = swatch;
    }
}

class InputDecorationTheme extends DartClass {
    constructor ({
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
        border,
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

    static fromJson(mapObj) {
        if (mapObj == null || mapObj == undefined) {
            return null;
        }

        let obj = new InputDecorationTheme({
            labelStyle: mapObj['labelStyle'],
            helperStyle: mapObj['helperStyle'],
            hintStyle: mapObj['hintStyle'],
            errorStyle: mapObj['errorStyle'],
            errorMaxLines: mapObj['errorMaxLines'],
            hasFloatingPlaceholder: mapObj['hasFloatingPlaceholder'],
            isDense: mapObj['isDense'],
            contentPadding: mapObj['contentPadding'],
            isCollapsed: mapObj['isCollapsed'],
            prefixStyle: mapObj['prefixStyle'],
            suffixStyle: mapObj['suffixStyle'],
            counterStyle: mapObj['counterStyle'],
            filled: mapObj['filled'],
            fillColor: mapObj['fillColor'],
            errorBorder: mapObj['errorBorder'],
            focusedBorder: mapObj['focusedBorder'],
            focusedErrorBorder: mapObj['focusedErrorBorder'],
            disabledBorder: mapObj['disabledBorder'],
            enabledBorder: mapObj['enabledBorder'],
            border: mapObj['border'],
        });

        return obj;
    }
}

TargetPlatform = {
    android: "TargetPlatform.android",
    fuchsia: "TargetPlatform.fuchsia",
    iOS: "TargetPlatform.iOS",
};

FloatingActionButtonLocation = {
    endDocked: {className:"FloatingActionButtonLocation.endDocked"},
    centerDocked: {className:"FloatingActionButtonLocation.centerDocked"},
    endFloat: {className:"FloatingActionButtonLocation.endFloat"},
    centerFloat: {className:"FloatingActionButtonLocation.centerFloat"},
};

class Colors {
    static transparent(){
        return new Color(0x00000000);
    }

    static black(){
        return new Color(0xFF000000);
    }

    static black87(){
        return new Color(0xDD000000);
    }

    static black54(){
        return new Color(0x8A000000);
    }

    static black45(){
        return new Color(0x73000000);
    }

    static black38(){
        return new Color(0x61000000);
    }

    static black26(){
        return new Color(0x42000000);
    }

    static black12(){
        return new Color(0x1F000000);
    }

    static white(){
        return new Color(0xFFFFFFFF);
    }

    static white70(){
        return new Color(0xB3FFFFFF);
    }

    static white54(){
        return new Color(0x8AFFFFFF);
    }

    static white30(){
        return new Color(0x4DFFFFFF);
    }

    static white24(){
        return new Color(0x3DFFFFFF);
    }

    static white12(){
        return new Color(0x1FFFFFFF);
    }

    static white10(){
        return new Color(0x1AFFFFFF);
    }

    static orange(){
        return new Color(0xFFFF9800);
    }

    static red(){
        return new Color(0xFFF44336);
    }

    static purple(){
        return new Color(0xFF9C27B0);
    }

    static pink(){
        return new Color(0xFFE91E63);
    }

    static indigo(){
        return new Color(0xFF3F51B5);
    }

    static deepPurple(){
        return new Color(0xFF673AB7);
    }

    static blue(){
        return new Color(0xFF2196F3);
    }

    static lightBlue(){
        return new Color(0xFF03A9F4);
    }

    static cyan(){
        return new Color(0xFF00BCD4);
    }

    static green(){
        return new Color(0xFF4CAF50);
    }

    static lightGreen(){
        return new Color(0xFF8BC34A);
    }

    static lime(){
        return new Color(0xFFCDDC39);
    }

    static yellow(){
        return new Color(0xFFFFEB3B);
    }

    static deepOrange(){
        return new Color(0xFFFF5722);
    }

    static teal(){
        return new Color(0xFF009688);
    }

    static indigo(){
        return new Color(0xFF3F51B5);
    }

    static amber(){
        return new Color(0xFFFFC107);
    }

    static brown(){
        return new Color(0xFF795548);
    }

    static grey(){
        return new Color(0xFF9E9E9E);
    }

    static blueGrey(){
        return new Color(0xFF607D8B);
    }
}

class CircularNotchedRectangle extends DartClass {
    constructor ({
    } = {}) {
        super();
    }
}

class IconTheme extends DartClass {
    constructor ({
        key,
        data,
        child,
    } = {}) {
        super();

        this.key = key;
        this.data = data;
        this.child = child;
    }

    static of(context) {
        return context.iconThemeData;
    }
}

class IconThemeData extends DartClass {
    constructor ({
        color,
        opacity,
        size,
    } = {}) {
        super();

        this.color = color;
        this.opacity = opacity;
        this.size = size;
    }

    //TODO
    static fromJson(mapObj) {

        if (mapObj == null || mapObj == undefined) {
            return null;
        }

        let obj = new IconThemeData();

        for (var p in mapObj) {
            if (mapObj.hasOwnProperty(p)) {
                let v = mapObj[p];;
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

    }
}

class DropdownMenuItem extends DartClass {
    constructor ({
        key,
        value,
        child,
    } = {}) {
        super();

        this.key = key;
        this.value = value;
        this.child = child;
    }
}


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
    constructor ({
        color,
        offset,
        blurRadius,
        spreadRadius,
    } = {}) {
        super();

        this.color = color;
        this.offset = offset;
        this.blurRadius = blurRadius;
        this.spreadRadius = spreadRadius;
    }
}

BoxShape = {
    circle: "BoxShape.circle",
    rectangle: "BoxShape.rectangle",
};


class Quaternion extends DartClass {
    constructor (
        x,
        y,
        z,
        w,
    ) {
        super();

        this.x = x;
        this.y = y;
        this.z = z;
        this.w = w;
    }
}

class Slider extends FlutterWidget {
    constructor ({
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
        semanticFormatterCallback,
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


class CircleAvatar extends DartClass {
    constructor ({
        key,
        child,
        backgroundColor,
        backgroundImage,
        foregroundColor,
        radius,
        minRadius,
        maxRadius,
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

class BorderDirectional extends DartClass {
    constructor({
        top,
        start,
        end,
        bottom,
    } = {}) {
        super();

        this.top = top;
        this.start = start;
        this.end = end;
        this.bottom = bottom;
    }
}

ButtonTextTheme = {
    normal: "ButtonTextTheme.normal",
    accent: "ButtonTextTheme.accent",
    primary: "ButtonTextTheme.primary",
};

class Chip extends DartClass {
    constructor ({
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
        elevation,
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

class InputBorder extends DartClass {
    constructor ({
        // borderSide,
    } = {}) {
        super();

        // this.borderSide = borderSide;
    }

    static get none(){
        let v = new InputBorder();
        v.staticFunctionName = "none";
        
        return v;
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
    WrapAlignment,
    WrapCrossAlignment,
    Matrix4,
    Vector4,
    Vector3,
    ScrollController,
    ScrollPhysics,
    ClampingScrollPhysics,
    AlwaysScrollableScrollPhysics,
    NeverScrollableScrollPhysics,
    SliverChildBuilderDelegate,
    SliverChildListDelegate,
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
    assert,
};