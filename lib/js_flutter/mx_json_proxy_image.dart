import 'package:flutter/material.dart';
import 'mx_json_to_dart.dart';
import 'mx_build_owner.dart';
import 'mx_json_proxy_basic_types.dart';

class MXProxyRegisterHelperImageSeries {
  static Map<String, CreateJsonObjProxyFun> registerProxys() {
    Map<String, CreateJsonObjProxyFun> m = {};

    m.addAll(MXProxyImageProvider.registerProxy());
    m.addAll(MXProxyImage.registerProxy());

    return m;
  }
}

///ImageProvider
///**@@@ 拷贝生成其他类 1 替换类名
class MXProxyImageProvider extends MXJsonObjProxy {
  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName1 = "AssetImage";
    final String regClassName2 = "ExactAssetImage";
    final String regClassName3 = "FileImage";
    final String regClassName4 = "MemoryImage";
    final String regClassName5 = "NetworkImage";

    ///**@@@  3 替换类构造函数
    return {
      regClassName1: () =>
          MXProxyImageProvider()..init(className: regClassName1),
      regClassName2: () =>
          MXProxyImageProvider()..init(className: regClassName2),
      regClassName3: () =>
          MXProxyImageProvider()..init(className: regClassName3),
      regClassName4: () =>
          MXProxyImageProvider()..init(className: regClassName4),
      regClassName5: () =>
          MXProxyImageProvider()..init(className: regClassName5)
    };
  }

  ///*********************************************************************
  @override
  void init({String className}) {
    super.init(className: className);

    final String regClassName1 = "AssetImage";
    final String regClassName2 = "ExactAssetImage";
    final String regClassName3 = "FileImage";
    final String regClassName4 = "MemoryImage";
    final String regClassName5 = "NetworkImage";
    registerConstructor(
        className: regClassName1, constructor: constructorAssetImage);
    registerConstructor(
        className: regClassName2, constructor: constructorExactAssetImage);
    registerConstructor(
        className: regClassName3, constructor: constructorFileImage);
    registerConstructor(
        className: regClassName4, constructor: constructorMemoryImage);
    registerConstructor(
        className: regClassName5, constructor: constructorNetworkImage);
  }

  AssetImage constructorAssetImage(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = AssetImage(mxj2d(bo, jsonMap["assetName"]),
        bundle: mxj2d(bo, jsonMap["bundle"]),
        package: mxj2d(bo, jsonMap["package"]));
    return obj;
  }

  ExactAssetImage constructorExactAssetImage(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = ExactAssetImage(mxj2d(bo, jsonMap["assetName"]),
        bundle: mxj2d(bo, jsonMap["bundle"]),
        package: mxj2d(bo, jsonMap["package"]));
    return obj;
  }

  FileImage constructorFileImage(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = FileImage(mxj2d(bo, jsonMap["file"]),
        scale: mxj2d(bo, jsonMap["scale"], defaultValue: 1.0)?.toDouble());
    return obj;
  }

  MemoryImage constructorMemoryImage(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = MemoryImage(mxj2d(bo, jsonMap["bytes"]),
        scale: mxj2d(bo, jsonMap["scale"], defaultValue: 1.0)?.toDouble());
    return obj;
  }

  NetworkImage constructorNetworkImage(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var obj = NetworkImage(mxj2d(bo, jsonMap["url"]),
        scale: mxj2d(bo, jsonMap["scale"], defaultValue: 1.0)?.toDouble(),
        headers: toMapStringT(mxj2d(bo, jsonMap["headers"])));
    return obj;
  }
}

class MXImageRepeat {
  static ImageRepeat parse(String value,
      {ImageRepeat defaultValue = ImageRepeat.noRepeat}) {
    ImageRepeat retValut = defaultValue;
    switch (value) {
      case 'ImageRepeat.noRepeat':
        retValut = ImageRepeat.noRepeat;
        break;
      case 'ImageRepeat.repeat':
        retValut = ImageRepeat.repeat;
        break;
      case 'ImageRepeat.repeatX':
        retValut = ImageRepeat.repeatX;
        break;
      case 'ImageRepeat.repeatY':
        retValut = ImageRepeat.repeatY;
        break;
      default:
        retValut = defaultValue;
    }

    return retValut;
  }
}

class MXProxyImage extends MXJsonObjProxy {
  static String regClassName = "Image";

  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串

    ///**@@@  3 替换类构造函数
    return {regClassName: () => MXProxyImage()..init(className: regClassName)};
  }

  @override
  void init({String className}) {
    super.init(className: className);

    registerConstructor(
        className: regClassName,
        constructorName: "network",
        constructor: constructorNetwork);
    registerConstructor(
        className: regClassName,
        constructorName: "file",
        constructor: constructorFile);

    registerConstructor(
        className: regClassName,
        constructorName: "asset",
        constructor: constructorAsset);

    registerConstructor(
        className: regClassName,
        constructorName: "memory",
        constructor: constructorMemory);
  }

  @override
  Image constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var widget = Image(
      key: mxj2d(bo, jsonMap["key"]),
      image: mxj2d(bo, jsonMap["image"]),
      semanticLabel: mxj2d(bo, jsonMap["semanticLabel"]),
      excludeFromSemantics:
          mxj2d(bo, jsonMap["excludeFromSemantics"], defaultValue: false),
      width: mxj2d(bo, jsonMap["width"])?.toDouble(),
      height: mxj2d(bo, jsonMap["height"])?.toDouble(),
      color: mxj2d(bo, jsonMap["color"]),
      colorBlendMode: MXBlendMode.parse(mxj2d(bo, jsonMap["colorBlendMode"])),
      fit: MXBoxFit.parse(mxj2d(bo, jsonMap["fit"])),
      alignment:
          mxj2d(bo, jsonMap["alignment"], defaultValue: Alignment.center),
      repeat: MXImageRepeat.parse(mxj2d(bo, jsonMap["repeat"], defaultValue: ImageRepeat.noRepeat)),
      centerSlice: mxj2d(bo, jsonMap["centerSlice"]),
      matchTextDirection:
          mxj2d(bo, jsonMap["matchTextDirection"], defaultValue: false),
      gaplessPlayback:
          mxj2d(bo, jsonMap["gaplessPlayback"], defaultValue: false),
      filterQuality:
          MXFilterQuality.parse(mxj2d(bo, jsonMap["filterQuality"], defaultValue: FilterQuality.low)),
    );
    return widget;
  }

  Image constructorNetwork(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var widget = Image.network(
      mxj2d(bo, jsonMap["src"]),
      key: mxj2d(bo, jsonMap["key"]),
      scale: mxj2d(bo, jsonMap["scale"], defaultValue: 1.0)?.toDouble(),
      semanticLabel: mxj2d(bo, jsonMap["semanticLabel"]),
      excludeFromSemantics:
          mxj2d(bo, jsonMap["excludeFromSemantics"], defaultValue: false),
      width: mxj2d(bo, jsonMap["width"])?.toDouble(),
      height: mxj2d(bo, jsonMap["height"])?.toDouble(),
      color: mxj2d(bo, jsonMap["color"]),
      colorBlendMode: MXBlendMode.parse(mxj2d(bo, jsonMap["colorBlendMode"])),
      fit: MXBoxFit.parse(mxj2d(bo, jsonMap["fit"])),
      alignment:
          mxj2d(bo, jsonMap["alignment"], defaultValue: Alignment.center),
      repeat: MXImageRepeat.parse(mxj2d(bo, jsonMap["repeat"], defaultValue: ImageRepeat.noRepeat)),
      centerSlice: mxj2d(bo, jsonMap["centerSlice"]),
      matchTextDirection:
          mxj2d(bo, jsonMap["matchTextDirection"], defaultValue: false),
      gaplessPlayback:
          mxj2d(bo, jsonMap["gaplessPlayback"], defaultValue: false),
      filterQuality:
          MXFilterQuality.parse(mxj2d(bo, jsonMap["filterQuality"], defaultValue: FilterQuality.low)),
      headers: toMapStringT(mxj2d(bo, jsonMap["headers"])),
    );
    return widget;
  }

  Image constructorFile(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var widget = Image.file(
      mxj2d(bo, jsonMap["file"]),
      key: mxj2d(bo, jsonMap["key"]),
      scale: mxj2d(bo, jsonMap["scale"], defaultValue: 1.0)?.toDouble(),
      semanticLabel: mxj2d(bo, jsonMap["semanticLabel"]),
      excludeFromSemantics:
          mxj2d(bo, jsonMap["excludeFromSemantics"], defaultValue: false),
      width: mxj2d(bo, jsonMap["width"])?.toDouble(),
      height: mxj2d(bo, jsonMap["height"])?.toDouble(),
      color: mxj2d(bo, jsonMap["color"]),
      colorBlendMode: MXBlendMode.parse(mxj2d(bo, jsonMap["colorBlendMode"])),
      fit: MXBoxFit.parse(mxj2d(bo, jsonMap["fit"])),
      alignment:
          mxj2d(bo, jsonMap["alignment"], defaultValue: Alignment.center),
      repeat: MXImageRepeat.parse(mxj2d(bo, jsonMap["repeat"], defaultValue: ImageRepeat.noRepeat)),
      centerSlice: mxj2d(bo, jsonMap["centerSlice"]),
      matchTextDirection:
          mxj2d(bo, jsonMap["matchTextDirection"], defaultValue: false),
      gaplessPlayback:
          mxj2d(bo, jsonMap["gaplessPlayback"], defaultValue: false),
      filterQuality:
          MXFilterQuality.parse(mxj2d(bo, jsonMap["filterQuality"], defaultValue: FilterQuality.low)),
    );
    return widget;
  }

  Image constructorAsset(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var widget = Image.asset(
      mxj2d(bo, jsonMap["name"]),
      key: mxj2d(bo, jsonMap["key"]),
      bundle: mxj2d(bo, jsonMap["bundle"]),
      semanticLabel: mxj2d(bo, jsonMap["semanticLabel"]),
      excludeFromSemantics:
          mxj2d(bo, jsonMap["excludeFromSemantics"], defaultValue: false),
      scale: mxj2d(bo, jsonMap["scale"]),
      width: mxj2d(bo, jsonMap["width"])?.toDouble(),
      height: mxj2d(bo, jsonMap["height"])?.toDouble(),
      color: mxj2d(bo, jsonMap["color"]),
      colorBlendMode: MXBlendMode.parse(mxj2d(bo, jsonMap["colorBlendMode"])),
      fit: MXBoxFit.parse(mxj2d(bo, jsonMap["fit"])),
      alignment:
          mxj2d(bo, jsonMap["alignment"], defaultValue: Alignment.center),
      repeat: MXImageRepeat.parse(mxj2d(bo, jsonMap["repeat"], defaultValue: ImageRepeat.noRepeat)),
      centerSlice: mxj2d(bo, jsonMap["centerSlice"]),
      matchTextDirection:
          mxj2d(bo, jsonMap["matchTextDirection"], defaultValue: false),
      gaplessPlayback:
          mxj2d(bo, jsonMap["gaplessPlayback"], defaultValue: false),
      package: mxj2d(bo, jsonMap["package"]),
      filterQuality:
          MXFilterQuality.parse(mxj2d(bo, jsonMap["filterQuality"], defaultValue: FilterQuality.low)),
    );
    return widget;
  }

  Image constructorMemory(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap) {
    var widget = Image.memory(
      mxj2d(bo, jsonMap["bytes"]),
      key: mxj2d(bo, jsonMap["key"]),
      scale: mxj2d(bo, jsonMap["scale"], defaultValue: 1.0)?.toDouble(),
      semanticLabel: mxj2d(bo, jsonMap["semanticLabel"]),
      excludeFromSemantics:
          mxj2d(bo, jsonMap["excludeFromSemantics"], defaultValue: false),
      width: mxj2d(bo, jsonMap["width"])?.toDouble(),
      height: mxj2d(bo, jsonMap["height"])?.toDouble(),
      color: mxj2d(bo, jsonMap["color"]),
      colorBlendMode: mxj2d(bo, jsonMap["colorBlendMode"]),
      fit: MXBoxFit.parse(mxj2d(bo, jsonMap["fit"])),
      alignment:
          mxj2d(bo, jsonMap["alignment"], defaultValue: Alignment.center),
      repeat: MXImageRepeat.parse(mxj2d(bo, jsonMap["repeat"], defaultValue: ImageRepeat.noRepeat)),
      centerSlice: mxj2d(bo, jsonMap["centerSlice"]),
      matchTextDirection:
          mxj2d(bo, jsonMap["matchTextDirection"], defaultValue: false),
      gaplessPlayback:
          mxj2d(bo, jsonMap["gaplessPlayback"], defaultValue: false),
      filterQuality:
          MXFilterQuality.parse(mxj2d(bo, jsonMap["filterQuality"], defaultValue: FilterQuality.low)),
    );
    return widget;
  }
}
