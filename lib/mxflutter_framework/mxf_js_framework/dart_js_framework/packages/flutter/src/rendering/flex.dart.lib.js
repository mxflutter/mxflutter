//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

'use strict';

let frameworkExports = require("./js_flutter_framework.js");
let basicExports = require("./js_flutter_basic_types.js");
let materialExports = require("./js_flutter_material.js");
let layoutExports = require("./js_flutter_layout.js");
let textExports = require("./js_flutter_text.js");
let imageExports = require("./js_flutter_image.js");
let animationExports = require("./js_flutter_animation.js");

let src__rendering__flex = Object.create(null);
src__rendering__flex.MainAxisAlignment = basicExports.MainAxisAlignment;
src__rendering__flex.MainAxisSize = basicExports.MainAxisSize;
src__rendering__flex.CrossAxisAlignment = basicExports.CrossAxisAlignment;
src__rendering__flex.VerticalDirection = basicExports.VerticalDirection;
exports.src__rendering__flex = src__rendering__flex;