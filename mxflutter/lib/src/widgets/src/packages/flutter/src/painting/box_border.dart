//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/box_border.dart';


class MXProxyBoxBorder {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[boxShape.funName] = boxShape;
    m[border.funName] = border;
    m[border_all.funName] = border_all;
    m[border_fromBorderSide.funName] = border_fromBorderSide;
    m[border_symmetric.funName] = border_symmetric;
    m[borderDirectional.funName] = borderDirectional;
    return m;
  }
  static var boxShape = MXFunctionInvoke(
      "BoxShape",
      ({Map args}) => MXBoxShape.parse(args),
  );
  static var border = MXFunctionInvoke(
      "Border",
      ({
        BorderSide top,
        BorderSide right,
        BorderSide bottom,
        BorderSide left,
      }) =>
        Border(
        top: top,
        right: right,
        bottom: bottom,
        left: left,
      ),
    );
  static var border_all = MXFunctionInvoke(
    "border.all",
      ({
        Color color,
        dynamic width = 1.0,
        BorderStyle style = BorderStyle.solid,
      }) =>
        Border.all(
        color: color,
        width: width?.toDouble(),
        style: style,
      ),
    );
  static var border_fromBorderSide = MXFunctionInvoke(
    "border.fromBorderSide",
      ({
        BorderSide side,
      }) =>
        Border.fromBorderSide(
        side,
      ),
    );
  static var border_symmetric = MXFunctionInvoke(
    "border.symmetric",
      ({
        BorderSide vertical,
        BorderSide horizontal,
      }) =>
        Border.symmetric(
        vertical: vertical,
        horizontal: horizontal,
      ),
    );
  static var borderDirectional = MXFunctionInvoke(
      "BorderDirectional",
      ({
        BorderSide top,
        BorderSide start,
        BorderSide end,
        BorderSide bottom,
      }) =>
        BorderDirectional(
        top: top,
        start: start,
        end: end,
        bottom: bottom,
      ),
    );
}
class MXBoxShape {
  static Map str2VMap = {
    'BoxShape.rectangle': BoxShape.rectangle,
    'BoxShape.circle': BoxShape.circle,
  };
  static BoxShape parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
