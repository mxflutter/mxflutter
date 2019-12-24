let { DartClass, FlutterWidget } = require("./js_flutter_basic_types.js");

class AssetImage extends FlutterWidget {
  constructor({ assetName, bundle, packageJS } = {}) {
    super();

    this.assetName = assetName;
    this.bundle = bundle;
    this.package = packageJS;
  }
}

AssetImage.new = function({ assetName, bundle, packageJS } = {}) {
  this.className = "AssetImage";

  this.assetName = assetName;
  this.bundle = bundle;
  this.package = packageJS;

  return this;
};

class ExactAssetImage extends FlutterWidget {
  constructor({ assetName, scale, bundle, packageJS } = {}) {
    super();

    this.assetName = assetName;
    this.scale = scale;
    this.bundle = bundle;
    this.package = packageJS;
  }
}

ExactAssetImage.new = function({ assetName, scale, bundle, packageJS } = {}) {
  this.className = "ExactAssetImage";

  this.assetName = assetName;
  this.scale = scale;
  this.bundle = bundle;
  this.package = packageJS;

  return this;
};

class FileImage extends FlutterWidget {
  constructor({ file, scale } = {}) {
    super();

    this.file = file;
    this.scale = scale;
  }
}

FileImage.new = function({ file, scale } = {}) {
  this.className = "FileImage";

  this.file = file;
  this.scale = scale;

  return this;
};

class MemoryImage extends FlutterWidget {
  constructor({ bytes, scale } = {}) {
    super();

    this.bytes = bytes;
    this.scale = scale;
  }
}

MemoryImage.new = function({ bytes, scale } = {}) {
  this.className = "MemoryImage";

  this.bytes = bytes;
  this.scale = scale;

  return this;
};

class NetworkImage extends FlutterWidget {
  constructor(url, { scale, headers } = {}) {
    super();

    this.url = url;
    this.scale = scale;
    this.headers = headers;
  }
}

NetworkImage.new = function(url, { scale, headers } = {}) {
  this.className = "NetworkImage";

  this.url = url;
  this.scale = scale;
  this.headers = headers;

  return this;
};

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
    filterQuality
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
}

Image.new = function({
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
  filterQuality
} = {}) {
  this.className = "Image";

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

  return this;
};

Image.network = function(
  src,
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
    headers
  } = {}
) {
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
};
Image.file = function(
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
    filterQuality
  } = {}
) {
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
};
Image.asset = function(
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
    filterQuality
  } = {}
) {
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
};
Image.memory = function(
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
    filterQuality
  } = {}
) {
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
};
// ImageRepeat = {
//   repeat: "ImageRepeat.repeat",
//   repeatX: "ImageRepeat.repeatX",
//   repeatY: "ImageRepeat.repeatY",
//   noRepeat: "ImageRepeat.noRepeat"
// };

ImageRepeat = {
  repeat: { _name: "ImageRepeat.repeat", index: 0 },
  repeatX: { _name: "ImageRepeat.repeatX", index: 1 },
  repeatY: { _name: "ImageRepeat.repeatY", index: 2 },
  noRepeat: { _name: "ImageRepeat.noRepeat", index: 3 }
};

class DecorationImage extends FlutterWidget {
  constructor({
    image,
    colorFilter,
    fit,
    alignment,
    centerSlice,
    repeat,
    matchTextDirection
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

DecorationImage.new = function({
  image,
  colorFilter,
  fit,
  alignment,
  centerSlice,
  repeat,
  matchTextDirection
} = {}) {
  this.className = "DecorationImage";

  this.image = image;
  this.colorFilter = colorFilter;
  this.fit = fit;
  this.alignment = alignment;
  this.centerSlice = centerSlice;
  this.repeat = repeat;
  this.matchTextDirection = matchTextDirection;

  return this;
};

module.exports = {
  AssetImage,
  ExactAssetImage,
  FileImage,
  MemoryImage,
  NetworkImage,
  Image,
  ImageRepeat,
  DecorationImage
};
