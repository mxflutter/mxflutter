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

let src__animation__animation = Object.create(null);
src__animation__animation.Animation = animationExports.Animation;
src__animation__animation.AnimationStatus = animationExports.AnimationStatus;
exports.src__animation__animation = src__animation__animation;

let src__animation__tween = Object.create(null);
src__animation__tween.Tween = animationExports.Tween;
src__animation__tween.Tween$ = function() {
    return animationExports.Tween;
};
src__animation__tween.CurveTween = animationExports.CurveTween;
src__animation__tween.RectTween = animationExports.RectTween;
exports.src__animation__tween = src__animation__tween;