//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'dart:ui';

import 'package:flutter/material.dart';
import 'mx_json_to_dart.dart';
import 'mx_build_owner.dart';
import 'mx_json_proxy_basic_types.dart';
import 'mx_json_proxy_text.dart';
import 'package:flutter/gestures.dart';
import 'dart:convert';

/******************TODO List****************************/
/*
    // 1. Matrix4
    //   Transform.transform
    
    2. Delegate
      CustomSingleChildLayout.delegate
    
    3. Delegate
      Flow.delegate

    4. Delegate
      CustomMultiChildLayout.delegate

    // 5. controller
    //   ListView.controller

    // 6. ScrollPhysics
    //   ListView.physics

    7. SliverChildDelegate
      ListView.childrenDelegate

    8.semanticIndexCallback: mxj2d(bo, jsonMap["semanticIndexCallback"]),
*/
/******************TODO List****************************/

///把Widget按分类注册，方便写代码，
///分类：Material/Layout/Text/(Assets.Images.icons)/input...
///参照了官网https://flutter.io/docs/development/ui/widgets，
class MXProxyRegisterHelperLayoutSeries {
  static Map<String, CreateJsonObjProxyFun> registerProxys() {
    Map<String, CreateJsonObjProxyFun> m = {};

    m.addAll(MXProxyContainer.registerProxy());
    m.addAll(MXProxyCenter.registerProxy());
    m.addAll(MXProxyPadding.registerProxy());
    m.addAll(MXProxyAlign.registerProxy());
    m.addAll(MXProxyFittedBox.registerProxy());
    m.addAll(MXProxyAspectRatio.registerProxy());
    m.addAll(MXProxyConstrainedBox.registerProxy());
    m.addAll(MXProxyBaseline.registerProxy());
    m.addAll(MXProxyFractionallySizedBox.registerProxy());
    m.addAll(MXProxyIntrinsicHeight.registerProxy());
    m.addAll(MXProxyIntrinsicWidth.registerProxy());
    m.addAll(MXProxyLimitedBox.registerProxy());
    m.addAll(MXProxyOffstage.registerProxy());
    m.addAll(MXProxyOverflowBox.registerProxy());
    m.addAll(MXProxySizedBox.registerProxy());
    m.addAll(MXProxySizedOverflowBox.registerProxy());
    m.addAll(MXProxyTransform.registerProxy());
    m.addAll(MXProxyCustomSingleChildLayout.registerProxy());
    m.addAll(MXProxyRow.registerProxy());
    m.addAll(MXProxyColumn.registerProxy());
    m.addAll(MXProxyStack.registerProxy());
    m.addAll(MXProxyIndexedStack.registerProxy());
    m.addAll(MXProxyFlow.registerProxy());
    m.addAll(MXProxyTable.registerProxy());
    m.addAll(MXProxyWrap.registerProxy());
    m.addAll(MXProxyListBody.registerProxy());
    m.addAll(MXProxyCustomMultiChildLayout.registerProxy());
    m.addAll(MXProxyListView.registerProxy());
    m.addAll(MXProxyLayoutBuilder.registerProxy());
    m.addAll(MXProxyListTile.registerProxy());
    m.addAll(MXProxyCustomScrollView.registerProxy());
    m.addAll(MXProxySliverAppBar.registerProxy());
    m.addAll(MXProxySliverPadding.registerProxy());
    m.addAll(MXProxySliverGrid.registerProxy());
    m.addAll(MXProxySliverGridDelegateWithMaxCrossAxisExtent.registerProxy());
    m.addAll(MXProxySliverChildBuilderDelegate.registerProxy());
    m.addAll(MXProxySliverChildListDelegate.registerProxy());
    m.addAll(MXProxyGestureDetector.registerProxy());
    m.addAll(MXProxyExpanded.registerProxy());
    m.addAll(MXProxyDecoratedBox.registerProxy());
    m.addAll(MXProxySliverList.registerProxy());
    m.addAll(MXProxySliverOverlapInjector.registerProxy());
    m.addAll(MXProxySliverFixedExtentList.registerProxy());
    m.addAll(MXProxyNestedScrollView.registerProxy());
    m.addAll(MXProxySliverOverlapAbsorber.registerProxy());
    m.addAll(MXProxySingleChildScrollView.registerProxy());
    m.addAll(MXProxySliverToBoxAdapter.registerProxy());
    m.addAll(MXProxyTableCell.registerProxy());
    m.addAll(MXProxyOffsetBase.registerProxy());

    return m;
  }
}

///Container
///
class MXProxyContainer extends MXJsonObjProxy {
//  ///Dart类名 用于注册到转换器中
//
//  static String regClassName = "Container";
//  ///工厂函数 用于延迟加载转换器
//  static MXJsonObjProxy createProxy(){
//
//
//    var p = MXProxyContainer();
//    p.className = regClassName;
//    return p;
//  }
//
//  ///把自己能处理的类注册到分发器中
//  static  Map<String, CreateJsonObjProxyFun> registerProxy(){
//    return {regClassName:createProxy};
//  }

  ///静态接口,子类重写*********************************************

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName1 = "Container";

    ///**@@@  3 替换类构造函数
    return {
      regClassName1: () => MXProxyContainer()..init(className: regClassName1)
    };
  }

  ///*********************************************************************

  // Container({
  //   Key key,
  //   this.alignment,
  //   this.padding,
  //   Color color,
  //   Decoration decoration,
  //   this.foregroundDecoration,
  //   double width,
  //   double height,
  //   BoxConstraints constraints,
  //   this.margin,
  //   this.transform,
  //   this.child,
  // })
  @override
  Container constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = Container(
        key: mxj2d(bo, jsonMap["key"]),
        alignment: mxj2d(bo, jsonMap["alignment"]),
        padding: mxj2d(bo, jsonMap["padding"]),
        color: mxj2d(bo, jsonMap["color"]),
        decoration: mxj2d(bo, jsonMap["decoration"]),
        foregroundDecoration: mxj2d(bo, jsonMap["foregroundDecoration"]),
        width: mxj2d(bo, jsonMap["width"])?.toDouble(),
        height: mxj2d(bo, jsonMap["height"])?.toDouble(),
        constraints: mxj2d(bo, jsonMap["constraints"]),
        margin: mxj2d(bo, jsonMap["margin"]),
        transform: mxj2d(bo, jsonMap["transform"]),
        child: mxj2d(bo, jsonMap["child"]));

    return widget;
  }
}

///Center
///
class MXProxyCenter extends MXJsonObjProxy {
  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "Center";

    ///**@@@  3 替换类构造函数
    return {regClassName: () => MXProxyCenter()..init(className: regClassName)};
  }

  ///Center({ Key key, double widthFactor, double heightFactor, Widget child })
  @override
  Center constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = Center(
      key: mxj2d(bo, jsonMap["key"]),
      widthFactor: mxj2d(bo, jsonMap["widthFactor"])?.toDouble(),
      heightFactor: mxj2d(bo, jsonMap["heightFactor"])?.toDouble(),
      child: mxj2d(bo, jsonMap["child"]),
    );

    return widget;
  }
}

///Padding
///
class MXProxyPadding extends MXJsonObjProxy {
  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "Padding";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyPadding()..init(className: regClassName)
    };
  }

  ///const Padding({
  ///    Key key,
  ///    @required this.padding,
  ///    Widget child,
  ///  })
  @override
  Padding constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = Padding(
      key: mxj2d(bo, jsonMap["key"]),
      padding: mxj2d(bo, jsonMap["padding"]),
      child: mxj2d(bo, jsonMap["child"]),
    );

    return widget;
  }
}

///Align
///
class MXProxyAlign extends MXJsonObjProxy {
  ///把自己能处理的���注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "Align";

    ///**@@@  3 替换类构造函数
    return {regClassName: () => MXProxyAlign()..init(className: regClassName)};
  }

  ///  const Align({
  ///     Key key,
  ///     this.alignment = Alignment.center,
  ///     this.widthFactor,
  ///     this.heightFactor,
  ///     Widget child
  ///   })
  @override
  Align constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = Align(
      key: mxj2d(bo, jsonMap["key"]),
      alignment:
          mxj2d(bo, jsonMap["alignment"], defaultValue: Alignment.center),
      widthFactor: mxj2d(bo, jsonMap["widthFactor"])?.toDouble(),
      heightFactor: mxj2d(bo, jsonMap["heightFactor"])?.toDouble(),
      child: mxj2d(bo, jsonMap["child"]),
    );

    return widget;
  }
}

///FittedBox
///
class MXProxyFittedBox extends MXJsonObjProxy {
  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "FittedBox";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyFittedBox()..init(className: regClassName)
    };
  }

  ///  const FittedBox({
  ///     Key key,
  ///     this.fit = BoxFit.contain,
  ///     this.alignment = Alignment.center,
  ///     Widget child,
  ///   })
  @override
  FittedBox constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = FittedBox(
      key: mxj2d(bo, jsonMap["key"]),
      fit: MXBoxFit.parse(mxj2d(bo, jsonMap["fit"]),
          defaultValue: BoxFit.contain),
      alignment:
          mxj2d(bo, jsonMap["alignment"], defaultValue: Alignment.center),
      child: mxj2d(bo, jsonMap["child"]),
    );

    return widget;
  }
}

///AspectRatio
///
class MXProxyAspectRatio extends MXJsonObjProxy {
  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "AspectRatio";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyAspectRatio()..init(className: regClassName)
    };
  }

  /// const AspectRatio({
  ///   Key key,
  ///   @required this.aspectRatio,
  ///   Widget child
  /// })
  @override
  AspectRatio constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = AspectRatio(
      key: mxj2d(bo, jsonMap["key"]),
      aspectRatio: mxj2d(bo, jsonMap["aspectRatio"])?.toDouble(),
      child: mxj2d(bo, jsonMap["child"]),
    );

    return widget;
  }
}

///ConstrainedBox
///
class MXProxyConstrainedBox extends MXJsonObjProxy {
  ///Dart类名 用于注册到转换器中

  static String regClassName = "ConstrainedBox";

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyConstrainedBox()..init(className: regClassName)
    };
  }

  /// ConstrainedBox({
  ///   Key key,
  ///   @required this.constraints,
  ///   Widget child
  /// })
  @override
  ConstrainedBox constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = ConstrainedBox(
      key: mxj2d(bo, jsonMap["key"]),
      constraints: mxj2d(bo, jsonMap["constraints"]),
      child: mxj2d(bo, jsonMap["child"]),
    );

    return widget;
  }
}

///Baseline
///
class MXProxyBaseline extends MXJsonObjProxy {
  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "Baseline";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyBaseline()..init(className: regClassName)
    };
  }

  /// const Baseline({
  ///   Key key,
  ///   @required this.baseline,
  ///   @required this.baselineType,
  ///   Widget child
  /// })
  @override
  Baseline constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = Baseline(
      key: mxj2d(bo, jsonMap["key"]),
      baseline: mxj2d(bo, jsonMap["baseline"])?.toDouble(),
      baselineType: MXTextBaseline.parse(mxj2d(bo, jsonMap["baselineType"])),
      child: mxj2d(bo, jsonMap["child"]),
    );

    return widget;
  }
}

///FractionallySizedBox
///
class MXProxyFractionallySizedBox extends MXJsonObjProxy {
  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "FractionallySizedBox";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyFractionallySizedBox()..init(className: regClassName)
    };
  }

  /// const FractionallySizedBox({
  ///   Key key,
  ///   this.alignment = Alignment.center,
  ///   this.widthFactor,
  ///   this.heightFactor,
  ///   Widget child,
  /// })
  @override
  FractionallySizedBox constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = FractionallySizedBox(
      key: mxj2d(bo, jsonMap["key"]),
      alignment: mxj2d(bo, jsonMap["alignment"]),
      widthFactor: mxj2d(bo, jsonMap["widthFactor"])?.toDouble(),
      heightFactor: mxj2d(bo, jsonMap["heightFactor"])?.toDouble(),
      child: mxj2d(bo, jsonMap["child"]),
    );

    return widget;
  }
}

///IntrinsicHeight
///
class MXProxyIntrinsicHeight extends MXJsonObjProxy {
  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "IntrinsicHeight";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyIntrinsicHeight()..init(className: regClassName)
    };
  }

  /// const IntrinsicHeight({ Key key, Widget child })
  @override
  IntrinsicHeight constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = IntrinsicHeight(
      key: mxj2d(bo, jsonMap["key"]),
      child: mxj2d(bo, jsonMap["child"]),
    );

    return widget;
  }
}

///IntrinsicWidth
///
class MXProxyIntrinsicWidth extends MXJsonObjProxy {
  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "IntrinsicWidth";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyIntrinsicWidth()..init(className: regClassName)
    };
  }

  /// const IntrinsicWidth({ Key key, this.stepWidth, this.stepHeight, Widget child })
  @override
  IntrinsicWidth constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = IntrinsicWidth(
      key: mxj2d(bo, jsonMap["key"]),
      stepWidth: mxj2d(bo, jsonMap["stepWidth"])?.toDouble(),
      stepHeight: mxj2d(bo, jsonMap["stepHeight"])?.toDouble(),
      child: mxj2d(bo, jsonMap["child"]),
    );

    return widget;
  }
}

///LimitedBox
///
class MXProxyLimitedBox extends MXJsonObjProxy {
  ///把自己能处���的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "LimitedBox";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyLimitedBox()..init(className: regClassName)
    };
  }

  /// const LimitedBox({
  ///   Key key,
  ///   this.maxWidth = double.infinity,
  ///   this.maxHeight = double.infinity,
  ///   Widget child,
  /// })
  @override
  LimitedBox constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = LimitedBox(
      key: mxj2d(bo, jsonMap["key"]),
      maxWidth: mxj2d(bo, jsonMap["maxWidth"], defaultValue: double.infinity)
          ?.toDouble(),
      maxHeight: mxj2d(bo, jsonMap["maxHeight"], defaultValue: double.infinity)
          ?.toDouble(),
      child: mxj2d(bo, jsonMap["child"]),
    );

    return widget;
  }
}

///Offstage
///
class MXProxyOffstage extends MXJsonObjProxy {
  ///把自己能处理的类注���到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "Offstage";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyOffstage()..init(className: regClassName)
    };
  }

  /// const Offstage({ Key key, this.offstage = true, Widget child })
  @override
  Offstage constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = Offstage(
      key: mxj2d(bo, jsonMap["key"]),
      offstage: mxj2d(bo, jsonMap["offstage"], defaultValue: true),
      child: mxj2d(bo, jsonMap["child"]),
    );

    return widget;
  }
}

///OverflowBox
///
class MXProxyOverflowBox extends MXJsonObjProxy {
  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "OverflowBox";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyOverflowBox()..init(className: regClassName)
    };
  }

  /// const OverflowBox({
  ///   Key key,
  ///   this.alignment = Alignment.center,
  ///   this.minWidth,
  ///   this.maxWidth,
  ///   this.minHeight,
  ///   this.maxHeight,
  ///   Widget child,
  /// })
  @override
  OverflowBox constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = OverflowBox(
      key: mxj2d(bo, jsonMap["key"]),
      alignment:
          mxj2d(bo, jsonMap["alignment"], defaultValue: Alignment.center),
      minWidth: mxj2d(bo, jsonMap["minWidth"])?.toDouble(),
      maxWidth: mxj2d(bo, jsonMap["maxWidth"])?.toDouble(),
      minHeight: mxj2d(bo, jsonMap["minHeight"])?.toDouble(),
      maxHeight: mxj2d(bo, jsonMap["maxHeight"])?.toDouble(),
      child: mxj2d(bo, jsonMap["child"]),
    );

    return widget;
  }
}

///SizedBox
///
class MXProxySizedBox extends MXJsonObjProxy {
  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "SizedBox";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxySizedBox()..init(className: regClassName)
    };
  }

  /// const SizedBox({ Key key, this.width, this.height, Widget child })
  @override
  SizedBox constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = SizedBox(
      key: mxj2d(bo, jsonMap["key"]),
      width: mxj2d(bo, jsonMap["width"])?.toDouble(),
      height: mxj2d(bo, jsonMap["height"])?.toDouble(),
      child: mxj2d(bo, jsonMap["child"]),
    );

    return widget;
  }
}

///SizedOverflowBox
///
class MXProxySizedOverflowBox extends MXJsonObjProxy {
  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "SizedOverflowBox";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxySizedOverflowBox()..init(className: regClassName)
    };
  }

  /// const SizedOverflowBox({
  ///   Key key,
  ///   @required this.size,
  ///   this.alignment = Alignment.center,
  ///   Widget child,
  /// })
  @override
  SizedOverflowBox constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = SizedOverflowBox(
      key: mxj2d(bo, jsonMap["key"]),
      size: mxj2d(bo, jsonMap["size"]),
      alignment:
          mxj2d(bo, jsonMap["alignment"], defaultValue: Alignment.center),
      child: mxj2d(bo, jsonMap["child"]),
    );

    return widget;
  }
}

///Transform
///
class MXProxyTransform extends MXJsonObjProxy {
  ///Dart类名 用于注册到转换器中

  static String regClassName = "Transform";

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyTransform()..init(className: regClassName)
    };
  }

  /// const Transform({
  ///   Key key,
  ///   @required this.transform,
  ///   this.origin,
  ///   this.alignment,
  ///   this.transformHitTests = true,
  ///   Widget child,
  /// })
  @override
  Transform constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = Transform(
      key: mxj2d(bo, jsonMap["key"]),
      transform: mxj2d(bo, jsonMap["transform"]),
      origin: mxj2d(bo, jsonMap["origin"]),
      alignment: mxj2d(bo, jsonMap["alignment"]),
      transformHitTests:
          mxj2d(bo, jsonMap["transformHitTests"], defaultValue: true),
      child: mxj2d(bo, jsonMap["child"]),
    );

    return widget;
  }
}

///CustomSingleChildLayout
///
class MXProxyCustomSingleChildLayout extends MXJsonObjProxy {
  ///Dart类名 用于注册到转换器中

  static String regClassName = "CustomSingleChildLayout";

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyCustomSingleChildLayout()..init(className: regClassName)
    };
  }

  /// const CustomSingleChildLayout({
  ///   Key key,
  ///   @required this.delegate,
  ///   Widget child
  /// })
  @override
  CustomSingleChildLayout constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = CustomSingleChildLayout(
      key: mxj2d(bo, jsonMap["key"]),
      //TODO:delegate
      delegate: null,
      child: mxj2d(bo, jsonMap["child"]),
    );

    return widget;
  }
}

///Row
///
class MXProxyRow extends MXJsonObjProxy {
  ///Dart类名 用于注册到转换器中

  static String regClassName = "Row";

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  3 替换类构造函数
    return {regClassName: () => MXProxyRow()..init(className: regClassName)};
  }

  /// Row({
  ///   Key key,
  ///   MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
  ///   MainAxisSize mainAxisSize = MainAxisSize.max,
  ///   CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  ///   TextDirection textDirection,
  ///   VerticalDirection verticalDirection = VerticalDirection.down,
  ///   TextBaseline textBaseline,
  ///   List<Widget> children = const <Widget>[],
  /// })
  @override
  Row constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = Row(
      key: mxj2d(bo, jsonMap["key"]),
      mainAxisAlignment: MXMainAxisAlignment.parse(
          mxj2d(bo, jsonMap["mainAxisAlignment"]),
          defaultValue: MainAxisAlignment.start),
      mainAxisSize: MXMainAxisSize.parse(mxj2d(bo, jsonMap["mainAxisSize"]),
          defaultValue: MainAxisSize.max),
      crossAxisAlignment: MXCrossAxisAlignment.parse(
          mxj2d(bo, jsonMap["crossAxisAlignment"]),
          defaultValue: CrossAxisAlignment.center),
      textDirection: MXTextDirection.parse(mxj2d(bo, jsonMap["textDirection"])),
      verticalDirection: MXVerticalDirection.parse(
          mxj2d(bo, jsonMap["verticalDirection"]),
          defaultValue: VerticalDirection.down),
      textBaseline: MXTextBaseline.parse(mxj2d(bo, jsonMap["textBaseline"])),
      children: toListT<Widget>(mxj2d(bo, jsonMap["children"])),
    );

    return widget;
  }
}

///Column
///
class MXProxyColumn extends MXJsonObjProxy {
  ///Dart类名 用于注册到转换器中

  static String regClassName = "Column";

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  3 替换类构造函数
    return {regClassName: () => MXProxyColumn()..init(className: regClassName)};
  }

  /// Column({
  ///   Key key,
  ///   MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
  ///   MainAxisSize mainAxisSize = MainAxisSize.max,
  ///   CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
  ///   TextDirection textDirection,
  ///   VerticalDirection verticalDirection = VerticalDirection.down,
  ///   TextBaseline textBaseline,
  ///   List<Widget> children = const <Widget>[],
  /// })
  @override
  Column constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = Column(
      key: mxj2d(bo, jsonMap["key"]),
      mainAxisAlignment: MXMainAxisAlignment.parse(
          mxj2d(bo, jsonMap["mainAxisAlignment"]),
          defaultValue: MainAxisAlignment.start),
      mainAxisSize: MXMainAxisSize.parse(mxj2d(bo, jsonMap["mainAxisSize"]),
          defaultValue: MainAxisSize.max),
      crossAxisAlignment: MXCrossAxisAlignment.parse(
          mxj2d(bo, jsonMap["crossAxisAlignment"]),
          defaultValue: CrossAxisAlignment.center),
      textDirection: MXTextDirection.parse(mxj2d(bo, jsonMap["textDirection"])),
      verticalDirection: MXVerticalDirection.parse(
          mxj2d(bo, jsonMap["verticalDirection"]),
          defaultValue: VerticalDirection.down),
      textBaseline: MXTextBaseline.parse(mxj2d(bo, jsonMap["textBaseline"])),
      children: toListT<Widget>(mxj2d(bo, jsonMap["children"])),
    );

    return widget;
  }
}

///Stack
///
class MXProxyStack extends MXJsonObjProxy {
  ///Dart类名 用于注册到转换器中

  static String regClassName = "Stack";

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  3 替换类构造函数
    return {regClassName: () => MXProxyStack()..init(className: regClassName)};
  }

  /// Stack({
  ///   Key key,
  ///   this.alignment = AlignmentDirectional.topStart,
  ///   this.textDirection,
  ///   this.fit = StackFit.loose,
  ///   this.overflow = Overflow.clip,
  ///   List<Widget> children = const <Widget>[],
  /// })
  @override
  Stack constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = Stack(
      key: mxj2d(bo, jsonMap["key"]),
      alignment: mxj2d(bo, jsonMap["alignment"],
          defaultValue: AlignmentDirectional.topStart),
      textDirection: MXTextDirection.parse(mxj2d(bo, jsonMap["textDirection"])),
      fit: MXStackFit.parse(mxj2d(bo, jsonMap["fit"]),
          defaultValue: StackFit.loose),
      overflow: MXOverflow.parse(mxj2d(bo, jsonMap["overflow"]),
          defaultValue: Overflow.clip),
      children: toListT<Widget>(mxj2d(bo, jsonMap["children"])),
    );

    return widget;
  }
}

///IndexedStack
///
class MXProxyIndexedStack extends MXJsonObjProxy {
  ///Dart类名 用于注册到转换器中

  static String regClassName = "IndexedStack";

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyIndexedStack()..init(className: regClassName)
    };
  }

  /// IndexedStack({
  ///   Key key,
  ///   AlignmentGeometry alignment = AlignmentDirectional.topStart,
  ///   TextDirection textDirection,
  ///   StackFit sizing = StackFit.loose,
  ///   this.index = 0,
  ///   List<Widget> children = const <Widget>[],
  /// })
  @override
  IndexedStack constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = IndexedStack(
      key: mxj2d(bo, jsonMap["key"]),
      alignment: mxj2d(bo, jsonMap["alignment"],
          defaultValue: AlignmentDirectional.topStart),
      textDirection: MXTextDirection.parse(mxj2d(bo, jsonMap["textDirection"])),
      sizing: MXStackFit.parse(mxj2d(bo, jsonMap["sizing"]),
          defaultValue: StackFit.loose),
      index: mxj2d(bo, jsonMap["index"], defaultValue: 0),
      children: toListT<Widget>(mxj2d(bo, jsonMap["children"])),
    );

    return widget;
  }
}

///Flow
///
class MXProxyFlow extends MXJsonObjProxy {
  ///Dart类名 用于注册到转换器中

  static String regClassName = "Flow";

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  3 替换类构造函数
    return {regClassName: () => MXProxyFlow()..init(className: regClassName)};
  }

  @override
  void init({String className}) {
    super.init(className: className);

    registerConstructor(
        className: regClassName,
        constructorName: "unwrapped",
        constructor: constructorUnwrapped);
  }

  ///

  /// Flow({
  ///   Key key,
  ///   @required this.delegate,
  ///   List<Widget> children = const <Widget>[],
  /// })
  @override
  Flow constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = Flow(
      key: mxj2d(bo, jsonMap["key"]),
      //TODO:delegate
      delegate: null,
      children: toListT<Widget>(mxj2d(bo, jsonMap["children"])),
    );

    return widget;
  }

  Flow constructorUnwrapped(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var obj = Flow.unwrapped(
      key: mxj2d(bo, jsonMap["key"]),
      //TODO:delegate
      delegate: null,
      children: toListT<Widget>(mxj2d(bo, jsonMap["children"])),
    );

    return obj;
  }
}

///Table
///
class MXProxyTable extends MXJsonObjProxy {
  ///Dart类名 用于注册到转换器中

  static String regClassName = "Table";

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  3 替换类构造函数
    return {regClassName: () => MXProxyTable()..init(className: regClassName)};
  }

  ///*********************************************************************

  /// Table({
  ///   Key key,
  ///   this.children = const <TableRow>[],
  ///   this.columnWidths,
  ///   this.defaultColumnWidth = const FlexColumnWidth(1.0),
  ///   this.textDirection,
  ///   this.border,
  ///   this.defaultVerticalAlignment = TableCellVerticalAlignment.top,
  ///   this.textBaseline,
  /// })
  @override
  Table constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    // 单独处理columnWidths
    Map newColumnWidthsMap = <int, TableColumnWidth>{};
    Map columnWidthsMap = jsonMap["columnWidths"];
    if (columnWidthsMap != null) {
      columnWidthsMap.forEach((key, value) {
        var intKey = int.parse(key);
        newColumnWidthsMap[intKey] = mxj2d(bo, value);
      });
    }

    var widget = Table(
      key: mxj2d(bo, jsonMap["key"]),
      children: toListT<TableRow>(mxj2d(bo, jsonMap["children"])),
      columnWidths: newColumnWidthsMap,
      defaultColumnWidth: mxj2d(bo, jsonMap["defaultColumnWidth"],
          defaultValue: const FlexColumnWidth(1.0)),
      textDirection: MXTextDirection.parse(mxj2d(bo, jsonMap["textDirection"])),
      border: mxj2d(bo, jsonMap["border"]),
      defaultVerticalAlignment: MXTableCellVerticalAlignment.parse(
          mxj2d(bo, jsonMap["defaultVerticalAlignment"]),
          defaultValue: TableCellVerticalAlignment.top),
      textBaseline: MXTextBaseline.parse(mxj2d(bo, jsonMap["textBaseline"])),
    );

    return widget;
  }
}

///Wrap
///
class MXProxyWrap extends MXJsonObjProxy {
  ///Dart类名 用于注册到转换器中

  static String regClassName = "Wrap";

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  3 替换类构造函数
    return {regClassName: () => MXProxyWrap()..init(className: regClassName)};
  }

  ///*********************************************************************

  /// Wrap({
  ///   Key key,
  ///   this.direction = Axis.horizontal,
  ///   this.alignment = WrapAlignment.start,
  ///   this.spacing = 0.0,
  ///   this.runAlignment = WrapAlignment.start,
  ///   this.runSpacing = 0.0,
  ///   this.crossAxisAlignment = WrapCrossAlignment.start,
  ///   this.textDirection,
  ///   this.verticalDirection = VerticalDirection.down,
  ///   List<Widget> children = const <Widget>[],
  /// })
  @override
  Wrap constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = Wrap(
      key: mxj2d(bo, jsonMap["key"]),
      direction: MXAxis.parse(mxj2d(bo, jsonMap["direction"]),
          defaultValue: Axis.horizontal),
      alignment: MXWrapAlignment.parse(mxj2d(bo, jsonMap["alignment"]),
          defaultValue: WrapAlignment.start),
      spacing: mxj2d(bo, jsonMap["spacing"], defaultValue: 0.0)?.toDouble(),
      runAlignment: MXWrapAlignment.parse(mxj2d(bo, jsonMap["runAlignment"]),
          defaultValue: WrapAlignment.start),
      runSpacing:
          mxj2d(bo, jsonMap["runSpacing"], defaultValue: 0.0)?.toDouble(),
      crossAxisAlignment: MXWrapCrossAlignment.parse(
          mxj2d(bo, jsonMap["crossAxisAlignment"]),
          defaultValue: WrapCrossAlignment.start),
      textDirection: MXTextDirection.parse(mxj2d(bo, jsonMap["textDirection"])),
      verticalDirection: MXVerticalDirection.parse(
          mxj2d(bo, jsonMap["verticalDirection"]),
          defaultValue: VerticalDirection.down),
      children: toListT<Widget>(mxj2d(bo, jsonMap["children"])),
    );

    return widget;
  }
}

///ListBody
///
class MXProxyListBody extends MXJsonObjProxy {
  ///Dart类名 用于注册到转换器中

  static String regClassName = "ListBody";

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyListBody()..init(className: regClassName)
    };
  }

  ///*********************************************************************

  /// ListBody({
  ///   Key key,
  ///   this.mainAxis = Axis.vertical,
  ///   this.reverse = false,
  ///   List<Widget> children = const <Widget>[],
  /// })
  @override
  ListBody constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = ListBody(
      key: mxj2d(bo, jsonMap["key"]),
      mainAxis: MXAxis.parse(mxj2d(bo, jsonMap["mainAxis"]),
          defaultValue: Axis.vertical),
      reverse: mxj2d(bo, jsonMap["reverse"], defaultValue: false),
      children: toListT<Widget>(mxj2d(bo, jsonMap["children"])),
    );

    return widget;
  }
}

///CustomMultiChildLayout
///
class MXProxyCustomMultiChildLayout extends MXJsonObjProxy {
  ///Dart类名 用于注册到转换器中

  static String regClassName = "CustomMultiChildLayout";

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyCustomMultiChildLayout()..init(className: regClassName)
    };
  }

  ///*********************************************************************

  /// CustomMultiChildLayout({
  ///   Key key,
  ///   @required this.delegate,
  ///   List<Widget> children = const <Widget>[],
  /// })
  @override
  CustomMultiChildLayout constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = CustomMultiChildLayout(
      key: mxj2d(bo, jsonMap["key"]),
      //TODO:delegate
      delegate: null,
      children: toListT<Widget>(mxj2d(bo, jsonMap["children"])),
    );

    return widget;
  }
}

///ListView
///
class MXProxyListView extends MXJsonObjProxy {
  ///Dart类名 用于注册到转换器中

  static String regClassName = "ListView";

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyListView()..init(className: regClassName)
    };
  }

  ///*********************************************************************

  @override
  void init({String className}) {
    super.init(className: className);

    registerConstructor(
        className: regClassName,
        constructorName: "builder",
        constructor: constructorBuilder);
    registerConstructor(
        className: regClassName,
        constructorName: "separated",
        constructor: constructorSeparated);
    registerConstructor(
        className: regClassName,
        constructorName: "custom",
        constructor: constructorCustom);
  }

  ///

  ///*********************************************************************

  /// ListView({
  ///   Key key,
  ///   Axis scrollDirection = Axis.vertical,
  ///   bool reverse = false,
  ///   ScrollController controller,
  ///   bool primary,
  ///   ScrollPhysics physics,
  ///   bool shrinkWrap = false,
  ///   EdgeInsetsGeometry padding,
  ///   this.itemExtent,
  ///   bool addAutomaticKeepAlives = true,
  ///   bool addRepaintBoundaries = true,
  ///   bool addSemanticIndexes = true,
  ///   double cacheExtent,
  ///   List<Widget> children = const <Widget>[],
  ///   int semanticChildCount,
  /// })

  @override
  ListView constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = ListView(
      key: mxj2d(bo, jsonMap["key"]),
      scrollDirection: MXAxis.parse(mxj2d(bo, jsonMap["scrollDirection"]),
          defaultValue: Axis.vertical),
      reverse: mxj2d(bo, jsonMap["reverse"], defaultValue: false),
      controller: mxj2d(bo, jsonMap["controller"]),
      primary: mxj2d(bo, jsonMap["primary"]),
      physics: mxj2d(bo, jsonMap["physics"]),
      shrinkWrap: mxj2d(bo, jsonMap["shrinkWrap"], defaultValue: false),
      padding: mxj2d(bo, jsonMap["padding"]),
      itemExtent: mxj2d(bo, jsonMap["itemExtent"])?.toDouble(),
      addAutomaticKeepAlives:
          mxj2d(bo, jsonMap["addAutomaticKeepAlives"], defaultValue: true),
      addRepaintBoundaries:
          mxj2d(bo, jsonMap["addRepaintBoundaries"], defaultValue: true),
      addSemanticIndexes:
          mxj2d(bo, jsonMap["addSemanticIndexes"], defaultValue: true),
      cacheExtent: mxj2d(bo, jsonMap["cacheExtent"])?.toDouble(),
      children: toListT<Widget>(mxj2d(bo, jsonMap["children"])),
      semanticChildCount: mxj2d(bo, jsonMap["semanticChildCount"]),
    );

    return widget;
  }

  /// ListView.builder({
  ///   Key key,
  ///   Axis scrollDirection = Axis.vertical,
  ///   bool reverse = false,
  ///   ScrollController controller,
  ///   bool primary,
  ///   ScrollPhysics physics,
  ///   bool shrinkWrap = false,
  ///   EdgeInsetsGeometry padding,
  ///   this.itemExtent,
  ///   @required IndexedWidgetBuilder itemBuilder,
  ///   int itemCount,
  ///   bool addAutomaticKeepAlives = true,
  ///   bool addRepaintBoundaries = true,
  ///   bool addSemanticIndexes = true,
  ///   double cacheExtent,
  ///   int semanticChildCount,
  /// })
  ListView constructorBuilder(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = ListView.builder(
      key: mxj2d(bo, jsonMap["key"]),
      scrollDirection: MXAxis.parse(mxj2d(bo, jsonMap["scrollDirection"]),
          defaultValue: Axis.vertical),
      reverse: mxj2d(bo, jsonMap["reverse"], defaultValue: false),
      controller: mxj2d(bo, jsonMap["controller"]),
      primary: mxj2d(bo, jsonMap["primary"]),
      physics: mxj2d(bo, jsonMap["physics"]),
      shrinkWrap: mxj2d(bo, jsonMap["shrinkWrap"], defaultValue: false),
      padding: mxj2d(bo, jsonMap["padding"]),
      itemExtent: mxj2d(bo, jsonMap["itemExtent"])?.toDouble(),
      addAutomaticKeepAlives:
          mxj2d(bo, jsonMap["addAutomaticKeepAlives"], defaultValue: true),
      addRepaintBoundaries:
          mxj2d(bo, jsonMap["addRepaintBoundaries"], defaultValue: true),
      addSemanticIndexes:
          mxj2d(bo, jsonMap["addSemanticIndexes"], defaultValue: true),
      cacheExtent: mxj2d(bo, jsonMap["cacheExtent"])?.toDouble(),
      semanticChildCount: mxj2d(bo, jsonMap["semanticChildCount"]),
      itemCount: mxj2d(bo, jsonMap["itemCount"]),
      itemBuilder: (BuildContext context, int index) {
        return mxj2d(bo, jsonMap["children"][index]);
      },
    );

    return widget;
  }

  /// ListView.separated({
  ///   Key key,
  ///   Axis scrollDirection = Axis.vertical,
  ///   bool reverse = false,
  ///   ScrollController controller,
  ///   bool primary,
  ///   ScrollPhysics physics,
  ///   bool shrinkWrap = false,
  ///   EdgeInsetsGeometry padding,
  ///   @required IndexedWidgetBuilder itemBuilder,
  ///   @required IndexedWidgetBuilder separatorBuilder,
  ///   @required int itemCount,
  ///   bool addAutomaticKeepAlives = true,
  ///   bool addRepaintBoundaries = true,
  ///   bool addSemanticIndexes = true,
  ///   double cacheExtent,
  /// })
  ListView constructorSeparated(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = ListView.separated(
      key: mxj2d(bo, jsonMap["key"]),
      scrollDirection: MXAxis.parse(mxj2d(bo, jsonMap["scrollDirection"]),
          defaultValue: Axis.vertical),
      reverse: mxj2d(bo, jsonMap["reverse"], defaultValue: false),
      controller: mxj2d(bo, jsonMap["controller"]),
      primary: mxj2d(bo, jsonMap["primary"]),
      physics: mxj2d(bo, jsonMap["physics"]),
      shrinkWrap: mxj2d(bo, jsonMap["shrinkWrap"], defaultValue: false),
      padding: mxj2d(bo, jsonMap["padding"]),
      addAutomaticKeepAlives:
          mxj2d(bo, jsonMap["addAutomaticKeepAlives"], defaultValue: true),
      addRepaintBoundaries:
          mxj2d(bo, jsonMap["addRepaintBoundaries"], defaultValue: true),
      addSemanticIndexes:
          mxj2d(bo, jsonMap["addSemanticIndexes"], defaultValue: true),
      cacheExtent: mxj2d(bo, jsonMap["cacheExtent"])?.toDouble(),
      itemCount: mxj2d(bo, jsonMap["itemCount"]),
      itemBuilder: (BuildContext context, int index) {
        return mxj2d(bo, jsonMap["children"][index]);
      },
      separatorBuilder: (BuildContext context, int index) {
        return mxj2d(bo, jsonMap["children"][index]);
      },
    );

    return widget;
  }

  /// const ListView.custom({
  ///   Key key,
  ///   Axis scrollDirection = Axis.vertical,
  ///   bool reverse = false,
  ///   ScrollController controller,
  ///   bool primary,
  ///   ScrollPhysics physics,
  ///   bool shrinkWrap = false,
  ///   EdgeInsetsGeometry padding,
  ///   this.itemExtent,
  ///   @required this.childrenDelegate,
  ///   double cacheExtent,
  ///   int semanticChildCount,
  /// })
  ListView constructorCustom(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = ListView.custom(
      key: mxj2d(bo, jsonMap["key"]),
      scrollDirection: MXAxis.parse(mxj2d(bo, jsonMap["scrollDirection"]),
          defaultValue: Axis.vertical),
      reverse: mxj2d(bo, jsonMap["reverse"], defaultValue: false),
      controller: mxj2d(bo, jsonMap["controller"]),
      primary: mxj2d(bo, jsonMap["primary"]),
      physics: mxj2d(bo, jsonMap["physics"]),
      shrinkWrap: mxj2d(bo, jsonMap["shrinkWrap"], defaultValue: false),
      padding: mxj2d(bo, jsonMap["padding"]),
      itemExtent: mxj2d(bo, jsonMap["itemExtent"])?.toDouble(),
      semanticChildCount: mxj2d(bo, jsonMap["semanticChildCount"]),
      cacheExtent: mxj2d(bo, jsonMap["cacheExtent"])?.toDouble(),
      childrenDelegate: mxj2d(bo, jsonMap["childrenDelegate"]),
    );

    return widget;
  }
}

///LayoutBuilder
///
class MXProxyLayoutBuilder extends MXJsonObjProxy {
  ///Dart类名 用于注册到转换器中

  static String regClassName = "LayoutBuilder";

  ///把自己能处理的类注册到分发器中
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyLayoutBuilder()..init(className: regClassName)
    };
  }

  ///*********************************************************************

  /// CustomMultiChildLayout({
  ///   Key key,
  ///   @required this.delegate,
  ///   List<Widget> children = const <Widget>[],
  /// })
  @override
  LayoutBuilder constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = LayoutBuilder(
      key: mxj2d(bo, jsonMap["key"]),
      builder: (BuildContext context, BoxConstraints constraints) {
        //TODO: 此处异步要改成同步实现。否则会报错。另外，js framework的invokeCallback也要单独处理下
        var widget = getBuilderWidget(bo, jsonMap, constraints);
        return widget;
      },
    );

    return widget;
  }

  dynamic getBuilderWidget(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      BoxConstraints constraints) async {
    var widgetDataStr = await createLayoutWidgetBuilder(
        bo, mxj2d(bo, jsonMap["builder"]), constraints);
    Map widgetMap = json.decode(widgetDataStr);
    var widget = mxj2d(bo, widgetMap);
    return widget;
  }
}

class MXProxyListTile extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "ListTile";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyListTile()..init(className: regClassName)
    };
  }

  @override
  ListTile constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = ListTile(
      key: mxj2d(bo, jsonMap["key"]),
      leading: mxj2d(bo, jsonMap["leading"]),
      title: mxj2d(bo, jsonMap["title"]),
      subtitle: mxj2d(bo, jsonMap["subtitle"]),
      trailing: mxj2d(bo, jsonMap["trailing"]),
      isThreeLine: mxj2d(bo, jsonMap["isThreeLine"], defaultValue: false),
      dense: mxj2d(bo, jsonMap["dense"]),
      contentPadding: mxj2d(bo, jsonMap["contentPadding"]),
      enabled: mxj2d(bo, jsonMap["enabled"], defaultValue: true),
      onTap: createVoidCallbackHandle(bo, mxj2d(bo, jsonMap["onTap"])),
      onLongPress:
          createVoidCallbackHandle(bo, mxj2d(bo, jsonMap["onLongPress"])),
      selected: mxj2d(bo, jsonMap["selected"], defaultValue: false),
    );
    return widget;
  }
}

class MXProxyCustomScrollView extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "CustomScrollView";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyCustomScrollView()..init(className: regClassName)
    };
  }

  @override
  CustomScrollView constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = CustomScrollView(
      key: mxj2d(bo, jsonMap["key"]),
      scrollDirection:
          mxj2d(bo, jsonMap["scrollDirection"], defaultValue: Axis.vertical),
      reverse: mxj2d(bo, jsonMap["reverse"], defaultValue: false),
      controller: mxj2d(bo, jsonMap["controller"]),
      primary: mxj2d(bo, jsonMap["primary"]),
      physics: mxj2d(bo, jsonMap["physics"]),
      shrinkWrap: mxj2d(bo, jsonMap["shrinkWrap"], defaultValue: false),
      center: mxj2d(bo, jsonMap["center"]),
      anchor: mxj2d(bo, jsonMap["anchor"], defaultValue: 0.0)?.toDouble(),
      cacheExtent: mxj2d(bo, jsonMap["cacheExtent"])?.toDouble(),
      slivers: toListT<Widget>(mxj2d(bo, jsonMap["slivers"],
          defaultValue: const <Widget>[], context: context)),
      semanticChildCount: mxj2d(bo, jsonMap["semanticChildCount"]),
      // dragStartBehavior: MXDragStartBehavior.parse(mxj2d(bo, jsonMap["dragStartBehavior"]), defaultValue:DragStartBehavior.down),
    );
    return widget;
  }
}

class MXProxySliverAppBar extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "SliverAppBar";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxySliverAppBar()..init(className: regClassName)
    };
  }

  @override
  SliverAppBar constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = SliverAppBar(
      key: mxj2d(bo, jsonMap["key"]),
      leading: mxj2d(bo, jsonMap["leading"]),
      automaticallyImplyLeading:
          mxj2d(bo, jsonMap["automaticallyImplyLeading"], defaultValue: true),
      title: mxj2d(bo, jsonMap["title"]),
      actions: toListT<Widget>(mxj2d(bo, jsonMap["actions"])),
      flexibleSpace: mxj2d(bo, jsonMap["flexibleSpace"]),
      bottom: mxj2d(bo, jsonMap["bottom"]),
      elevation: mxj2d(bo, jsonMap["elevation"])?.toDouble(),
      forceElevated: mxj2d(bo, jsonMap["forceElevated"], defaultValue: false),
      backgroundColor: mxj2d(bo, jsonMap["backgroundColor"]),
      brightness: MXBrightness.parse(mxj2d(bo, jsonMap["brightness"])),
      iconTheme: mxj2d(bo, jsonMap["iconTheme"]),
      textTheme: mxj2d(bo, jsonMap["textTheme"]),
      primary: mxj2d(bo, jsonMap["primary"], defaultValue: true),
      centerTitle: mxj2d(bo, jsonMap["centerTitle"]),
      titleSpacing: mxj2d(bo, jsonMap["titleSpacing"],
              defaultValue: NavigationToolbar.kMiddleSpacing)
          ?.toDouble(),
      expandedHeight: mxj2d(bo, jsonMap["expandedHeight"])?.toDouble(),
      floating: mxj2d(bo, jsonMap["floating"], defaultValue: false),
      pinned: mxj2d(bo, jsonMap["pinned"], defaultValue: false),
      snap: mxj2d(bo, jsonMap["snap"], defaultValue: false),
    );
    return widget;
  }
}

class MXProxySliverPadding extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "SliverPadding";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxySliverPadding()..init(className: regClassName)
    };
  }

  @override
  SliverPadding constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = SliverPadding(
      key: mxj2d(bo, jsonMap["key"]),
      padding: mxj2d(bo, jsonMap["padding"]),
      sliver: mxj2d(bo, jsonMap["sliver"]),
    );
    return widget;
  }
}

class MXProxySliverGrid extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "SliverGrid";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxySliverGrid()..init(className: regClassName)
    };
  }

  @override
  SliverGrid constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = SliverGrid(
      key: mxj2d(bo, jsonMap["key"]),
      delegate: mxj2d(bo, jsonMap["delegate"]),
      gridDelegate: mxj2d(bo, jsonMap["gridDelegate"]),
    );
    return widget;
  }
}

class MXProxySliverGridDelegateWithMaxCrossAxisExtent extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "SliverGridDelegateWithMaxCrossAxisExtent";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxySliverGridDelegateWithMaxCrossAxisExtent()
        ..init(className: regClassName)
    };
  }

  @override
  SliverGridDelegateWithMaxCrossAxisExtent constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = SliverGridDelegateWithMaxCrossAxisExtent(
      maxCrossAxisExtent: mxj2d(bo, jsonMap["maxCrossAxisExtent"])?.toDouble(),
      mainAxisSpacing:
          mxj2d(bo, jsonMap["mainAxisSpacing"], defaultValue: 0.0)?.toDouble(),
      crossAxisSpacing:
          mxj2d(bo, jsonMap["crossAxisSpacing"], defaultValue: 0.0)?.toDouble(),
      childAspectRatio:
          mxj2d(bo, jsonMap["childAspectRatio"], defaultValue: 1.0)?.toDouble(),
    );
    return widget;
  }
}

///SliverChildListDelegate
class MXProxySliverChildListDelegate extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "SliverChildListDelegate";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxySliverChildListDelegate()..init(className: regClassName)
    };
  }

//暂时不支持 semanticIndexCallback
  @override
  SliverChildListDelegate constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = SliverChildListDelegate(
      toListT<Widget>(mxj2d(bo, jsonMap["children"])),
      addAutomaticKeepAlives:
          mxj2d(bo, jsonMap["addAutomaticKeepAlives"], defaultValue: true),
      addRepaintBoundaries:
          mxj2d(bo, jsonMap["addRepaintBoundaries"], defaultValue: true),
      addSemanticIndexes:
          mxj2d(bo, jsonMap["addSemanticIndexes"], defaultValue: true),
      // semanticIndexCallback: mxj2d(bo,
      //     jsonMap[
      //         "semanticIndexCallback"]), //defaultValue: _kDefaultSemanticIndexCallback),
      semanticIndexOffset:
          mxj2d(bo, jsonMap["semanticIndexOffset"], defaultValue: 0),
    );
    return widget;
  }
}

class MXProxySliverChildBuilderDelegate extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "SliverChildBuilderDelegate";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxySliverChildBuilderDelegate()..init(className: regClassName)
    };
  }

//暂时不支持 semanticIndexCallback
  @override
  SliverChildBuilderDelegate constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = SliverChildBuilderDelegate(
      (BuildContext context, int index) {
        List<Widget> children = toListT<Widget>(mxj2d(bo, jsonMap["children"]));
        return children[index];
      },
      childCount: mxj2d(bo, jsonMap["childCount"]),
      addAutomaticKeepAlives:
          mxj2d(bo, jsonMap["addAutomaticKeepAlives"], defaultValue: true),
      addRepaintBoundaries:
          mxj2d(bo, jsonMap["addRepaintBoundaries"], defaultValue: true),
      addSemanticIndexes:
          mxj2d(bo, jsonMap["addSemanticIndexes"], defaultValue: true),
      //semanticIndexCallback: mxj2d(bo, jsonMap["semanticIndexCallback"]),
      semanticIndexOffset:
          mxj2d(bo, jsonMap["semanticIndexOffset"], defaultValue: 0),
    );
    return widget;
  }
}

class MXProxyGestureDetector extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "GestureDetector";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyGestureDetector()..init(className: regClassName)
    };
  }

  @override
  GestureDetector constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = GestureDetector(
      key: mxj2d(bo, jsonMap["key"]),
      child: mxj2d(bo, jsonMap["child"]),
      onTapDown: createValueGenericHandle<TapDownDetails>(
          bo, mxj2d(bo, jsonMap["onTapDown"])),
      onTapUp: createValueGenericHandle<TapUpDetails>(
          bo, mxj2d(bo, jsonMap["onTapUp"])),
      onTap: createVoidCallbackHandle(bo, mxj2d(bo, jsonMap["onTap"])),
      onTapCancel: mxj2d(bo, jsonMap["onTapCancel"]), //TODO:.... left
      onDoubleTap: mxj2d(bo, jsonMap["onDoubleTap"]),
      onLongPress: mxj2d(bo, jsonMap["onLongPress"]),
      onLongPressUp: mxj2d(bo, jsonMap["onLongPressUp"]),
      onVerticalDragDown: mxj2d(bo, jsonMap["onVerticalDragDown"]),
      onVerticalDragStart: mxj2d(bo, jsonMap["onVerticalDragStart"]),
      onVerticalDragUpdate: mxj2d(bo, jsonMap["onVerticalDragUpdate"]),
      onVerticalDragEnd: mxj2d(bo, jsonMap["onVerticalDragEnd"]),
      onVerticalDragCancel: mxj2d(bo, jsonMap["onVerticalDragCancel"]),
      onHorizontalDragDown: mxj2d(bo, jsonMap["onHorizontalDragDown"]),
      onHorizontalDragStart: mxj2d(bo, jsonMap["onHorizontalDragStart"]),
      onHorizontalDragUpdate: mxj2d(bo, jsonMap["onHorizontalDragUpdate"]),
      onHorizontalDragEnd: mxj2d(bo, jsonMap["onHorizontalDragEnd"]),
      onHorizontalDragCancel: mxj2d(bo, jsonMap["onHorizontalDragCancel"]),
      onPanDown: mxj2d(bo, jsonMap["onPanDown"]),
      onPanStart: mxj2d(bo, jsonMap["onPanStart"]),
      onPanUpdate: mxj2d(bo, jsonMap["onPanUpdate"]),
      onPanEnd: mxj2d(bo, jsonMap["onPanEnd"]),
      onPanCancel: mxj2d(bo, jsonMap["onPanCancel"]),
      onScaleStart: mxj2d(bo, jsonMap["onScaleStart"]),
      onScaleUpdate: mxj2d(bo, jsonMap["onScaleUpdate"]),
      onScaleEnd: mxj2d(bo, jsonMap["onScaleEnd"]),
      behavior: MXHitTestBehavior.parse(mxj2d(bo, jsonMap["behavior"])),
      excludeFromSemantics:
          mxj2d(bo, jsonMap["excludeFromSemantics"], defaultValue: false),
    );
    return widget;
  }
}

class MXHitTestBehavior {
  static Map str2VMap = {
    "HitTestBehavior.deferToChild": HitTestBehavior.deferToChild,
    "HitTestBehavior.opaque": HitTestBehavior.opaque,
    "HitTestBehavior.translucent": HitTestBehavior.translucent,
  };

  static HitTestBehavior parse(Map valueMap, {HitTestBehavior defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

class MXProxyExpanded extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "Expanded";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyExpanded()..init(className: regClassName)
    };
  }

  @override
  Expanded constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = Expanded(
      key: mxj2d(bo, jsonMap["key"]),
      flex: mxj2d(bo, jsonMap["flex"], defaultValue: 1),
      child: mxj2d(bo, jsonMap["child"]),
    );
    return widget;
  }
}

class MXProxyDecoratedBox extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "DecoratedBox";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyDecoratedBox()..init(className: regClassName)
    };
  }

  @override
  DecoratedBox constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = DecoratedBox(
      key: mxj2d(bo, jsonMap["key"]),
      decoration: mxj2d(bo, jsonMap["decoration"]),
      position: MXDecorationPosition.parse(mxj2d(bo, jsonMap["position"]),
          defaultValue: DecorationPosition.background),
      child: mxj2d(bo, jsonMap["child"]),
    );
    return widget;
  }
}

class MXProxySliverList extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "SliverList";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxySliverList()..init(className: regClassName)
    };
  }

  @override
  SliverList constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = SliverList(
      key: mxj2d(bo, jsonMap["key"]),
      delegate: mxj2d(bo, jsonMap["delegate"]),
    );
    return widget;
  }
}

class MXDragStartBehavior {
  static Map str2VMap = {
    "DragStartBehavior.down": DragStartBehavior.down,
    "DragStartBehavior.start": DragStartBehavior.start,
  };

  static DragStartBehavior parse(Map valueMap,
      {DragStartBehavior defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

class MXDecorationPosition {
  static Map str2VMap = {
    "DecorationPosition.background": DecorationPosition.background,
    "DecorationPosition.foreground": DecorationPosition.foreground,
  };

  static DecorationPosition parse(Map valueMap,
      {DecorationPosition defaultValue}) {
    if (valueMap == null) return defaultValue;
    var valueStr = valueMap["_name"].trim();
    var v = str2VMap[valueStr];
    return v ?? defaultValue;
  }
}

class MXProxySliverOverlapInjector extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "SliverOverlapInjector";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxySliverOverlapInjector()..init(className: regClassName)
    };
  }

  @override
  SliverOverlapInjector constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = SliverOverlapInjector(
      key: mxj2d(bo, jsonMap["key"]),
      handle: mxj2d(bo, jsonMap["handle"], context: context),
      // ignore: deprecated_member_use
      child: mxj2d(bo, jsonMap["child"]),
    );
    return widget;
  }
}

class MXProxySliverFixedExtentList extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "SliverFixedExtentList";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxySliverFixedExtentList()..init(className: regClassName)
    };
  }

  @override
  SliverFixedExtentList constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = SliverFixedExtentList(
      key: mxj2d(bo, jsonMap["key"]),
      delegate: mxj2d(bo, jsonMap["delegate"]),
      itemExtent: mxj2d(bo, jsonMap["itemExtent"])?.toDouble(),
    );
    return widget;
  }
}

class MXProxyNestedScrollView extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "NestedScrollView";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxyNestedScrollView()..init(className: regClassName)
    };
  }

  @override
  void init({String className}) {
    super.init(className: className);

    final String regClassName = "NestedScrollView";

    registerStaticFunction(
        className: regClassName,
        staticFunctionName: "sliverOverlapAbsorberHandleFor",
        staticFunction: functionSliverOverlapAbsorberHandleFor);
  }

  @override
  NestedScrollView constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = NestedScrollView(
      key: mxj2d(bo, jsonMap["key"]),
      controller: mxj2d(bo, jsonMap["controller"]),
      scrollDirection:
          mxj2d(bo, jsonMap["scrollDirection"], defaultValue: Axis.vertical),
      reverse: mxj2d(bo, jsonMap["reverse"], defaultValue: false),
      physics: mxj2d(bo, jsonMap["physics"]),
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return toListT<Widget>(
            mxj2d(bo, jsonMap["children"], context: context));
      },
      body: mxj2d(bo, jsonMap["body"]),
      // dragStartBehavior: MXDragStartBehavior.parse(mxj2d(bo, jsonMap["dragStartBehavior"]), defaultValue:DragStartBehavior.down),
    );
    return widget;
  }

  SliverOverlapAbsorberHandle functionSliverOverlapAbsorberHandleFor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    return NestedScrollView.sliverOverlapAbsorberHandleFor(context);
  }
}

class MXProxySliverOverlapAbsorber extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "SliverOverlapAbsorber";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxySliverOverlapAbsorber()..init(className: regClassName)
    };
  }

  @override
  SliverOverlapAbsorber constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = SliverOverlapAbsorber(
      key: mxj2d(bo, jsonMap["key"]),
      handle: mxj2d(bo, jsonMap["handle"], context: context),
      // ignore: deprecated_member_use
      child: mxj2d(bo, jsonMap["child"]),
    );
    return widget;
  }
}

class MXProxySingleChildScrollView extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "SingleChildScrollView";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxySingleChildScrollView()..init(className: regClassName)
    };
  }

  @override
  SingleChildScrollView constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = SingleChildScrollView(
      key: mxj2d(bo, jsonMap["key"]),
      scrollDirection: MXAxis.parse(mxj2d(bo, jsonMap["scrollDirection"]),
          defaultValue: Axis.vertical),
      reverse: mxj2d(bo, jsonMap["reverse"], defaultValue: false),
      padding: mxj2d(bo, jsonMap["padding"]),
      primary: mxj2d(bo, jsonMap["primary"]),
      physics: mxj2d(bo, jsonMap["physics"]),
      controller: mxj2d(bo, jsonMap["controller"]),
      child: mxj2d(bo, jsonMap["child"]),
      // dragStartBehavior: MXDragStartBehavior.parse(mxj2d(bo, jsonMap["dragStartBehavior"]), defaultValue:DragStartBehavior.down),
    );
    return widget;
  }
}

class MXProxySliverToBoxAdapter extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "SliverToBoxAdapter";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () =>
          MXProxySliverToBoxAdapter()..init(className: regClassName)
    };
  }

  @override
  SliverToBoxAdapter constructor(
      MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = SliverToBoxAdapter(
      key: mxj2d(bo, jsonMap["key"]),
      child: mxj2d(bo, jsonMap["child"]),
    );
    return widget;
  }
}

class MXProxyTableCell extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "TableCell";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyTableCell()..init(className: regClassName)
    };
  }

  @override
  TableCell constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    var widget = TableCell(
      key: mxj2d(bo, jsonMap["key"]),
      verticalAlignment: MXTableCellVerticalAlignment.parse(
          mxj2d(bo, jsonMap["verticalAlignment"])),
      child: mxj2d(bo, jsonMap["child"]),
    );
    return widget;
  }
}

class MXProxyOffsetBase extends MXJsonObjProxy {
  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    ///**@@@  2 替换类名字符串
    final String regClassName = "OffsetBase";

    ///**@@@  3 替换类构造函数
    return {
      regClassName: () => MXProxyOffsetBase()..init(className: regClassName)
    };
  }

  @override
  OffsetBase constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,
      {BuildContext context}) {
    //TODO: 因为是抽象类，无法给实例化，暂用子类Size。可以考虑从js framework生成的json入手，加入子类的名称。
    var widget = Size(
      mxj2d(bo, jsonMap["_dx"])?.toDouble(),
      mxj2d(bo, jsonMap["_dy"])?.toDouble(),
    );
    return widget;
  }
}
