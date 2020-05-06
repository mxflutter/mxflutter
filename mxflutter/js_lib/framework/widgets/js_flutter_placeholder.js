
//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

let {
  DartClass,
  FlutterWidget,
  FlutterCallArgs,
  Color,
} = require("./js_flutter_basic_types.js");

let {
  invokeFlutterFunction,
  invokeCommonFlutterFunction,
} = require("./js_flutter_framework.js");

let {
  Duration,
} = require("./js_flutter_animation.js");



class Placeholder extends FlutterWidget {
  constructor({
    key,
    color,
    strokeWidth,
    fallbackWidth,
    fallbackHeight,
  }={
    color: new Color(0xFF455A64),
    strokeWidth : 2.0,
    fallbackWidth : 400.0,
    fallbackHeight : 400.0,
  }){
    super();
    this.key = key;
    this.color = color;
    this.strokeWidth = strokeWidth;
    this.fallbackWidth = fallbackWidth;
    this.fallbackHeight = fallbackHeight;
  }
}

module.exports = {
  Placeholder,
};

