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

let src__painting__image_provider = Object.create(null);
src__painting__image_provider.ExactAssetImage = imageExports.ExactAssetImage;
src__painting__image_provider.FileImage = imageExports.FileImage;
src__painting__image_provider.MemoryImage = imageExports.MemoryImage;
src__painting__image_provider.NetworkImage = imageExports.NetworkImage;
exports.src__painting__image_provider = src__painting__image_provider;

let src__painting___network_image_web = Object.create(null);
src__painting___network_image_web.NetworkImage = imageExports.NetworkImage;
exports.src__painting___network_image_web = src__painting___network_image_web;