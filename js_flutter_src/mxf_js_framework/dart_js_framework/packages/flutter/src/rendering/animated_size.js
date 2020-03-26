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

let src__rendering__stack = Object.create(null);
src__rendering__stack.StackFit = basicExports.StackFit;
src__rendering__stack.Overflow = basicExports.Overflow;
exports.src__rendering__stack = src__rendering__stack;

let src__rendering__paragraph = Object.create(null);
src__rendering__paragraph.TextOverflow = textExports.TextOverflow;
exports.src__rendering__paragraph = src__rendering__paragraph;

let src__rendering__sliver_grid = Object.create(null);
src__rendering__sliver_grid.SliverGridDelegateWithMaxCrossAxisExtent = layoutExports.SliverGridDelegateWithMaxCrossAxisExtent;
exports.src__rendering__sliver_grid = src__rendering__sliver_grid;

let src__rendering__proxy_box = Object.create(null);
src__rendering__proxy_box.HitTestBehavior = layoutExports.HitTestBehavior;
src__rendering__proxy_box.DecorationPosition = layoutExports.DecorationPosition;
exports.src__rendering__proxy_box = src__rendering__proxy_box;

let src__rendering__box = Object.create(null);
src__rendering__box.BoxConstraints = basicExports.BoxConstraints;
exports.src__rendering__box = src__rendering__box;

let src__rendering__table = Object.create(null);
src__rendering__table.TableCellVerticalAlignment = basicExports.TableCellVerticalAlignment;
src__rendering__table.FlexColumnWidth = basicExports.FlexColumnWidth;
src__rendering__table.FixedColumnWidth = basicExports.FixedColumnWidth;
src__rendering__table.TableColumnWidth = basicExports.TableColumnWidth;
exports.src__rendering__table = src__rendering__table;

let src__rendering__table_border = Object.create(null);
src__rendering__table_border.TableBorder = basicExports.TableBorder;
exports.src__rendering__table_border = src__rendering__table_border;

let src__rendering__wrap = Object.create(null);
src__rendering__wrap.WrapAlignment = basicExports.WrapAlignment;
src__rendering__wrap.WrapCrossAlignment = basicExports.WrapCrossAlignment;
exports.src__rendering__wrap = src__rendering__wrap;