//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

let frameworkExports = require("./js_flutter_framework.js");
let basicExports = require("./js_flutter_basic_types.js");
let materialExports = require("./js_flutter_material.js");
let layoutExports = require("./js_flutter_layout.js");

let textExports = require("./js_flutter_text.js");
let imageExports = require("./js_flutter_image.js");
let animationExports = require("./js_flutter_animation.js");
let widgetExports = require("./js_flutter_widget.js");
let iconsExports = require("./material/js_flutter_icons.js");
let messageChannelExports = require("message_channel/js_flutter_message_channel.js");


module.exports = Object.assign(
  frameworkExports,
  basicExports,
  materialExports,
  layoutExports,
  textExports,
  imageExports,
  animationExports,
  widgetExports,
  iconsExports,
  messageChannelExports,
);
