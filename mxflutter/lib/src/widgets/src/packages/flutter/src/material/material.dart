//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/elevation_overlay.dart';
import 'package:flutter/src/material/theme.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerMaterialSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_materialType.funName] = _materialType;
  m[_material.funName] = _material;
  m[_shapeBorderTween.funName] = _shapeBorderTween;
  return m;
}
var _materialType = MXFunctionInvoke(
    "MaterialType",
    ({String name, int index}) => MXMaterialType.parse(name, index),
  );
var _material = MXFunctionInvoke(
    "Material",
    (
      {
      Key key,
      MaterialType type = MaterialType.canvas,
      dynamic elevation = 0.0,
      Color color,
      Color shadowColor,
      TextStyle textStyle,
      BorderRadiusGeometry borderRadius,
      ShapeBorder shape,
      bool borderOnForeground = true,
      Clip clipBehavior = Clip.none,
      Duration animationDuration,
      Widget child,
      }
    ) =>
      Material(
      key: key,
      type: type,
      elevation: elevation?.toDouble(),
      color: color,
      shadowColor: shadowColor,
      textStyle: textStyle,
      borderRadius: borderRadius,
      shape: shape,
      borderOnForeground: borderOnForeground,
      clipBehavior: clipBehavior,
      animationDuration: animationDuration,
      child: child,
    ),
);
var _shapeBorderTween = MXFunctionInvoke(
    "ShapeBorderTween",
    (
      {
      ShapeBorder begin,
      ShapeBorder end,
      }
    ) =>
      ShapeBorderTween(
      begin: begin,
      end: end,
    ),
);
class MXMaterialType {
  static MaterialType parse(String name, int index) {
    switch(name) {
      case 'MaterialType.canvas': 
       return MaterialType.canvas;
      case 'MaterialType.card': 
       return MaterialType.card;
      case 'MaterialType.circle': 
       return MaterialType.circle;
      case 'MaterialType.button': 
       return MaterialType.button;
      case 'MaterialType.transparency': 
       return MaterialType.transparency;
    }
    return null;
  }
}
