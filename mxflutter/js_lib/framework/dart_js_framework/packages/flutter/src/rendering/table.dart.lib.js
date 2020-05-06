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

let src__rendering__table = Object.create(null);
src__rendering__table.TableCellVerticalAlignment = basicExports.TableCellVerticalAlignment;
src__rendering__table.FlexColumnWidth = basicExports.FlexColumnWidth;
src__rendering__table.FixedColumnWidth = basicExports.FixedColumnWidth;
src__rendering__table.TableColumnWidth = basicExports.TableColumnWidth;
exports.src__rendering__table = src__rendering__table;