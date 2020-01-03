'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const ui = dart_sdk.ui;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const global_macro = Object.create(dart.library);
const CT = Object.create(null);
global_macro.GlobalConfig = class GlobalConfig extends core.Object {};
(global_macro.GlobalConfig.new = function() {
}).prototype = global_macro.GlobalConfig.prototype;
dart.defineLazy(global_macro.GlobalConfig, {
  /*global_macro.GlobalConfig.themeColor*/get themeColor() {
    return new ui.Color.new(4294631680);
  },
  set themeColor(_) {},
  /*global_macro.GlobalConfig.kCommonChannel*/get kCommonChannel() {
    return "kCommonChannel";
  },
  /*global_macro.GlobalConfig.kMainChannel*/get kMainChannel() {
    return "kMainChannel";
  },
  /*global_macro.GlobalConfig.kSubscribeChannel*/get kSubscribeChannel() {
    return "kSubscribeChannel";
  },
  /*global_macro.GlobalConfig.kMyTabChannel*/get kMyTabChannel() {
    return "kMyTabChannel";
  },
  /*global_macro.GlobalConfig.kReloadListEvent*/get kReloadListEvent() {
    return "kReloadListEvent";
  },
  /*global_macro.GlobalConfig.kEndRefreshEvent*/get kEndRefreshEvent() {
    return "kEndRefreshEvent";
  },
  /*global_macro.GlobalConfig.kPopViewControllerAnimated*/get kPopViewControllerAnimated() {
    return "kPopViewControllerAnimated";
  },
  /*global_macro.GlobalConfig.kLoadMyHistoryCacheMethod*/get kLoadMyHistoryCacheMethod() {
    return "kLoadMyHistoryCacheMethod";
  },
  /*global_macro.GlobalConfig.kRequestMyHistoryListMethod*/get kRequestMyHistoryListMethod() {
    return "kRequestMyHistoryListMethod";
  },
  /*global_macro.GlobalConfig.kDeleteHistoryMethod*/get kDeleteHistoryMethod() {
    return "kDeleteHistoryMethod";
  },
  /*global_macro.GlobalConfig.kEnterYiTuoSanMethod*/get kEnterYiTuoSanMethod() {
    return "kEnterYiTuoSanMethod";
  }
});
// Exports:
exports.public__macro__global_macro = global_macro;

//# sourceMappingURL=global_macro.ddc.js.map
