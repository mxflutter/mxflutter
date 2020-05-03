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
let cupertinoExports = require("./js_flutter_cupertino.js");

let vector_math_64 = Object.create(null);
vector_math_64.Matrix4 = basicExports.Matrix4;
vector_math_64.Vector4 = basicExports.Vector4;
vector_math_64.Vector3 = basicExports.Vector3;
vector_math_64.Colors = basicExports.Colors;
vector_math_64.Quaternion = basicExports.Quaternion;
exports.vector_math_64 = vector_math_64;
