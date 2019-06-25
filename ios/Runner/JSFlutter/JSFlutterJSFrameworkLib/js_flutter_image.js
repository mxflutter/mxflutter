//VSCode Run support=====================================================================================
//为便于在JS IDE如VSCode，webStorm里脱离APP环境执行JS，以快速验证JS代码正确性
//如果不在App环境，Native接口重定向到JS同名函数打印调用
//jsFlutterRequire 转调Node运行环境中的require
//只有JSFlutterJSFrameworkLib中的文件，才能用这个头
let jsFlutterRequire = typeof mxRequire != "undefined" ? mxRequire : require;
//VSCode Run support end ================================================================================

//js_flutter_image.js 正式开始，😝

let {
    DartClass,
    FlutterWidget,
} = jsFlutterRequire("./js_flutter_basic_types.js");


class AssetImage extends FlutterWidget {
    constructor({
        assetName,
        bundle,
        packageJS,
    } = {}) {
        super();

        this.assetName = assetName;
        this.bundle = bundle;
        this.package = packageJS;
    }
}

class ExactAssetImage extends FlutterWidget {
    constructor({
        assetName,
        scale,
        bundle,
        packageJS,
    } = {}) {
        super();

        this.assetName = assetName;
        this.scale = scale;
        this.bundle = bundle;
        this.package = packageJS;
    }
}

class FileImage extends FlutterWidget {
    constructor({
        file,
        scale,
    } = {}) {
        super();

        this.file = file;
        this.scale = scale;
    }
}

class MemoryImage extends FlutterWidget {
    constructor({
        bytes,
        scale,
    } = {}) {
        super();

        this.bytes = bytes;
        this.scale = scale;
    }
}

class NetworkImage extends FlutterWidget {
    constructor (
        url,
{			scale,
        headers,
    } = {}) {
        super();

        this.url = url;
        this.scale = scale;
        this.headers = headers;
    }
}

class Image extends FlutterWidget {
    constructor({
        key,
        image,
        semanticLabel,
        excludeFromSemantics,
        width,
        height,
        color,
        colorBlendMode,
        fit,
        alignment,
        repeat,
        centerSlice,
        matchTextDirection,
        gaplessPlayback,
        filterQuality,
    } = {}) {
        super();

        this.key = key;
        this.image = image;
        this.semanticLabel = semanticLabel;
        this.excludeFromSemantics = excludeFromSemantics;
        this.width = width;
        this.height = height;
        this.color = color;
        this.colorBlendMode = colorBlendMode;
        this.fit = fit;
        this.alignment = alignment;
        this.repeat = repeat;
        this.centerSlice = centerSlice;
        this.matchTextDirection = matchTextDirection;
        this.gaplessPlayback = gaplessPlayback;
        this.filterQuality = filterQuality;
    }


    static network(
        src,
        { key,
            scale,
            semanticLabel,
            excludeFromSemantics,
            width,
            height,
            color,
            colorBlendMode,
            fit,
            alignment,
            repeat,
            centerSlice,
            matchTextDirection,
            gaplessPlayback,
            filterQuality,
            headers
        } = {}) {
        let jsObj = new Image();
        jsObj.constructorName = "network";

        jsObj.src = src;
        jsObj.key = key;
        jsObj.scale = scale;
        jsObj.semanticLabel = semanticLabel;
        jsObj.excludeFromSemantics = excludeFromSemantics;
        jsObj.width = width;
        jsObj.height = height;
        jsObj.color = color;
        jsObj.colorBlendMode = colorBlendMode;
        jsObj.fit = fit;
        jsObj.alignment = alignment;
        jsObj.repeat = repeat;
        jsObj.centerSlice = centerSlice;
        jsObj.matchTextDirection = matchTextDirection;
        jsObj.gaplessPlayback = gaplessPlayback;
        jsObj.filterQuality = filterQuality;
        jsObj.headers = headers;
        return jsObj;
    }
    static file(
        file,
        {
            key,
            scale,
            semanticLabel,
            excludeFromSemantics,
            width,
            height,
            color,
            colorBlendMode,
            fit,
            alignment,
            repeat,
            centerSlice,
            matchTextDirection,
            gaplessPlayback,
            filterQuality,
        } = {}) {
        let jsObj = new Image();
        jsObj.constructorName = "file";

        jsObj.file = file;
        jsObj.key = key;
        jsObj.scale = scale;
        jsObj.semanticLabel = semanticLabel;
        jsObj.excludeFromSemantics = excludeFromSemantics;
        jsObj.width = width;
        jsObj.height = height;
        jsObj.color = color;
        jsObj.colorBlendMode = colorBlendMode;
        jsObj.fit = fit;
        jsObj.alignment = alignment;
        jsObj.repeat = repeat;
        jsObj.centerSlice = centerSlice;
        jsObj.matchTextDirection = matchTextDirection;
        jsObj.gaplessPlayback = gaplessPlayback;
        jsObj.filterQuality = filterQuality;
        return jsObj;
    }
    static asset(
        name,
        {
            key,
            bundle,
            semanticLabel,
            excludeFromSemantics,
            scale,
            width,
            height,
            color,
            colorBlendMode,
            fit,
            alignment,
            repeat,
            centerSlice,
            matchTextDirection,
            gaplessPlayback,
            packageJS,
            filterQuality,
        } = {}) {
        let jsObj = new Image();
        jsObj.constructorName = "asset";

        jsObj.name = name;
        jsObj.key = key;
        jsObj.bundle = bundle;
        jsObj.semanticLabel = semanticLabel;
        jsObj.excludeFromSemantics = excludeFromSemantics;
        jsObj.scale = scale;
        jsObj.width = width;
        jsObj.height = height;
        jsObj.color = color;
        jsObj.colorBlendMode = colorBlendMode;
        jsObj.fit = fit;
        jsObj.alignment = alignment;
        jsObj.repeat = repeat;
        jsObj.centerSlice = centerSlice;
        jsObj.matchTextDirection = matchTextDirection;
        jsObj.gaplessPlayback = gaplessPlayback;
        jsObj.package = packageJS;
        jsObj.filterQuality = filterQuality;
        return jsObj;
    }
    static memory(
        bytes,
        {
            key,
            scale,
            semanticLabel,
            excludeFromSemantics,
            width,
            height,
            color,
            colorBlendMode,
            fit,
            alignment,
            repeat,
            centerSlice,
            matchTextDirection,
            gaplessPlayback,
            filterQuality,
        } = {}) {
        let jsObj = new Image();
        jsObj.constructorName = "memory";

        jsObj.bytes = bytes;
        jsObj.key = key;
        jsObj.scale = scale;
        jsObj.semanticLabel = semanticLabel;
        jsObj.excludeFromSemantics = excludeFromSemantics;
        jsObj.width = width;
        jsObj.height = height;
        jsObj.color = color;
        jsObj.colorBlendMode = colorBlendMode;
        jsObj.fit = fit;
        jsObj.alignment = alignment;
        jsObj.repeat = repeat;
        jsObj.centerSlice = centerSlice;
        jsObj.matchTextDirection = matchTextDirection;
        jsObj.gaplessPlayback = gaplessPlayback;
        jsObj.filterQuality = filterQuality;
        return jsObj;
    }

}

ImageRepeat = {
    repeat: "ImageRepeat.repeat",
    repeatX: "ImageRepeat.repeatX",
    repeatY: "ImageRepeat.repeatY",
    noRepeat: "ImageRepeat.noRepeat",
};

class DecorationImage extends FlutterWidget {
    constructor ({
        image,
        colorFilter,
        fit,
        alignment,
        centerSlice,
        repeat,
        matchTextDirection,
    } = {}) {
        super();

        this.image = image;
        this.colorFilter = colorFilter;
        this.fit = fit;
        this.alignment = alignment;
        this.centerSlice = centerSlice;
        this.repeat = repeat;
        this.matchTextDirection = matchTextDirection;
    }
}



module.exports = {
    AssetImage,
    ExactAssetImage,
    FileImage,
    MemoryImage,
    NetworkImage,
    Image,
    ImageRepeat,
    DecorationImage,
};