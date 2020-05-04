//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

const dart_sdk = require('dart_sdk');
const dart = dart_sdk.dart;

let frameworkExports = require("./js_flutter_framework.js");
let basicExports = require("./js_flutter_basic_types.js");
let materialExports = require("./js_flutter_material.js");
let layoutExports = require("./js_flutter_layout.js");

let textExports = require("./js_flutter_text.js");
let imageExports = require("./js_flutter_image.js");
let animationExports = require("./js_flutter_animation.js");


let src__material__popup_menu = Object.create(null);
src__material__popup_menu.PopupMenuButton$ = function(opt) {
  return materialExports.PopupMenuButton;
};
src__material__popup_menu.PopupMenuButton = materialExports.PopupMenuButton;
src__material__popup_menu.PopupMenuItem$ = function(opt) {
  return materialExports.PopupMenuItem;
};
src__material__popup_menu.PopupMenuItem = materialExports.PopupMenuItem;
exports.src__material__popup_menu = src__material__popup_menu;