'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const ui = dart_sdk.ui;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__material = require('packages/flutter/material');
const theme_data = packages__flutter__material.src__material__theme_data;
const colors = packages__flutter__material.src__material__colors;
const global_config = Object.create(dart.library);
const CT = Object.create(null);
global_config.GlobalConfig = class GlobalConfig extends core.Object {};
(global_config.GlobalConfig.new = function() {
}).prototype = global_config.GlobalConfig.prototype;
dart.defineLazy(global_config.GlobalConfig, {
  /*global_config.GlobalConfig.dark*/get dark() {
    return true;
  },
  set dark(_) {},
  /*global_config.GlobalConfig.themeData*/get themeData() {
    return theme_data.ThemeData.dark();
  },
  set themeData(_) {},
  /*global_config.GlobalConfig.searchBackgroundColor*/get searchBackgroundColor() {
    return colors.Colors.white10;
  },
  set searchBackgroundColor(_) {},
  /*global_config.GlobalConfig.cardBackgroundColor*/get cardBackgroundColor() {
    return new ui.Color.new(4280427042);
  },
  set cardBackgroundColor(_) {},
  /*global_config.GlobalConfig.fontColor*/get fontColor() {
    return colors.Colors.white30;
  },
  set fontColor(_) {}
});
// Exports:
exports.global_config = global_config;

//# sourceMappingURL=global_config.ddc.js.map
