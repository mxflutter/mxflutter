import 'dart_flutter_basic_types.dart';

class AssetImage extends FlutterWidget {
  AssetImage({
    this.assetName,
    this.bundle,
    this.package,
  });
  final dynamic assetName;
  final dynamic bundle;
  final dynamic package;

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
    jsonMap['className'] = 'AssetImage';
    if (this.assetName != null) {
      jsonMap['assetName'] = this.assetName;
    }
    if (this.bundle != null) {
      jsonMap['bundle'] = this.bundle;
    }
    if (this.package != null) {
      jsonMap['package'] = this.package;
    }
    return jsonMap;
  }

  toJson() {
    return toMap();
  }
}

class ExactAssetImage extends FlutterWidget {
  ExactAssetImage({
    this.assetName,
    this.scale,
    this.bundle,
    this.package,
  });
  final dynamic assetName;
  final dynamic scale;
  final dynamic bundle;
  final dynamic package;

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
    jsonMap['className'] = 'ExactAssetImage';
    if (this.assetName != null) {
      jsonMap['assetName'] = this.assetName;
    }
    if (this.scale != null) {
      jsonMap['scale'] = this.scale;
    }
    if (this.bundle != null) {
      jsonMap['bundle'] = this.bundle;
    }
    if (this.package != null) {
      jsonMap['package'] = this.package;
    }
    return jsonMap;
  }

  toJson() {
    return toMap();
  }
}

class FileImage extends FlutterWidget {
  FileImage({
    this.file,
    this.scale,
  });
  final dynamic file;
  final dynamic scale;

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
    jsonMap['className'] = 'FileImage';
    if (this.file != null) {
      jsonMap['file'] = this.file;
    }
    if (this.scale != null) {
      jsonMap['scale'] = this.scale;
    }
    return jsonMap;
  }

  toJson() {
    return toMap();
  }
}

class MemoryImage extends FlutterWidget {
  MemoryImage({
    this.bytes,
    this.scale,
  });
  final dynamic bytes;
  final dynamic scale;

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
    jsonMap['className'] = 'MemoryImage';
    if (this.bytes != null) {
      jsonMap['bytes'] = this.bytes;
    }
    if (this.scale != null) {
      jsonMap['scale'] = this.scale;
    }
    return jsonMap;
  }

  toJson() {
    return toMap();
  }
}

class NetworkImage extends FlutterWidget {
  NetworkImage({
    this.url,
    this.scale,
    this.headers,
  });
  final dynamic url;
  final dynamic scale;
  final dynamic headers;

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
    jsonMap['className'] = 'NetworkImage';
    if (this.url != null) {
      jsonMap['url'] = this.url;
    }
    if (this.scale != null) {
      jsonMap['scale'] = this.scale;
    }
    if (this.headers != null) {
      jsonMap['headers'] = this.headers;
    }
    return jsonMap;
  }

  toJson() {
    return toMap();
  }
}

class Image extends FlutterWidget {
  Image({
    this.key,
    this.image,
    this.semanticLabel,
    this.excludeFromSemantics,
    this.width,
    this.height,
    this.color,
    this.colorBlendMode,
    this.fit,
    this.alignment,
    this.repeat,
    this.centerSlice,
    this.matchTextDirection,
    this.gaplessPlayback,
    this.filterQuality,
  });

  dynamic constructorName;
  dynamic key;
  dynamic image;
  dynamic semanticLabel;
  dynamic excludeFromSemantics;
  dynamic width;
  dynamic height;
  dynamic color;
  dynamic colorBlendMode;
  dynamic fit;
  dynamic alignment;
  dynamic repeat;
  dynamic centerSlice;
  dynamic matchTextDirection;
  dynamic gaplessPlayback;
  dynamic filterQuality;

  dynamic src;
  dynamic scale;
  dynamic headers;
  dynamic fileValue;
  dynamic name;
  dynamic bundle;
  dynamic package;
  dynamic bytes;

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
      }) {
      var jsObj = new Image();
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
      }) {
      var jsObj = new Image();
      jsObj.constructorName = "file";

      jsObj.fileValue = file;
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
      }) {
      var jsObj = new Image();
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
      }) {
      var jsObj = new Image();
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

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
    jsonMap['className'] = 'Image';
    jsonMap['constructorName'] = this.constructorName;
    if (this.key != null) {
      jsonMap['key'] = this.key;
    }
    if (this.image != null) {
      jsonMap['image'] = this.image;
    }
    if (this.semanticLabel != null) {
      jsonMap['semanticLabel'] = this.semanticLabel;
    }
    if (this.excludeFromSemantics != null) {
      jsonMap['excludeFromSemantics'] = this.excludeFromSemantics;
    }
    if (this.width != null) {
      jsonMap['width'] = this.width;
    }
    if (this.height != null) {
      jsonMap['height'] = this.height;
    }
    if (this.color != null) {
      jsonMap['color'] = this.color;
    }
    if (this.colorBlendMode != null) {
      jsonMap['colorBlendMode'] = this.colorBlendMode;
    }
    if (this.fit != null) {
      jsonMap['fit'] = this.fit;
    }
    if (this.alignment != null) {
      jsonMap['alignment'] = this.alignment;
    }
    if (this.repeat != null) {
      jsonMap['repeat'] = this.repeat;
    }
    if (this.centerSlice != null) {
      jsonMap['centerSlice'] = this.centerSlice;
    }
    if (this.matchTextDirection != null) {
      jsonMap['matchTextDirection'] = this.matchTextDirection;
    }
    if (this.gaplessPlayback != null) {
      jsonMap['gaplessPlayback'] = this.gaplessPlayback;
    }
    if (this.filterQuality != null) {
      jsonMap['filterQuality'] = this.filterQuality;
    }
    if (this.src != null) {
      jsonMap['src'] = this.src;
    }
    if (this.scale != null) {
      jsonMap['scale'] = this.scale;
    }
    if (this.headers != null) {
      jsonMap['headers'] = this.headers;
    }
    if (this.fileValue != null) {
      jsonMap['file'] = this.fileValue;
    }
    if (this.name != null) {
      jsonMap['name'] = this.name;
    }
    if (this.bundle != null) {
      jsonMap['bundle'] = this.bundle;
    }
    if (this.package != null) {
      jsonMap['package'] = this.package;
    }
    if (this.bytes != null) {
      jsonMap['bytes'] = this.bytes;
    }

    return jsonMap;
  }

  toJson() {
    return toMap();
  }
}
