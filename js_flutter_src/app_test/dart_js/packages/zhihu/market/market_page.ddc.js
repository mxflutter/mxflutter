'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const text = packages__flutter__src__widgets__actions.src__widgets__text;
const widget_inspector = packages__flutter__src__widgets__actions.src__widgets__widget_inspector;
const basic = packages__flutter__src__widgets__actions.src__widgets__basic;
const packages__flutter__material = require('packages/flutter/material');
const app = packages__flutter__material.src__material__app;
const scaffold = packages__flutter__material.src__material__scaffold;
const app_bar = packages__flutter__material.src__material__app_bar;
const packages__zhihu__global_config = require('packages/zhihu/global_config');
const global_config = packages__zhihu__global_config.global_config;
const market_page = Object.create(dart.library);
const CT = Object.create(null);
market_page.MarketPage = class MarketPage extends framework.StatefulWidget {
  createState() {
    return new market_page._MarketPageState.new();
  }
};
(market_page.MarketPage.new = function(opts) {
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  market_page.MarketPage.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = market_page.MarketPage.prototype;
;
;
dart.setLibraryUri(market_page.MarketPage, "package:zhihu/market/market_page.dart");
const _Location_parameterLocations = dart.privateName(widget_inspector, "_Location.parameterLocations");
const _Location_name = dart.privateName(widget_inspector, "_Location.name");
const _Location_column = dart.privateName(widget_inspector, "_Location.column");
const _Location_line = dart.privateName(widget_inspector, "_Location.line");
const _Location_file = dart.privateName(widget_inspector, "_Location.file");
market_page._MarketPageState = class _MarketPageState extends framework.State$(market_page.MarketPage) {
  build(context) {
    return new app.MaterialApp.new({home: new scaffold.Scaffold.new({appBar: new app_bar.AppBar.new({title: new text.Text.new("市场", {$creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), body: new basic.Center.new({child: null, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), theme: global_config.GlobalConfig.themeData, $creationLocationd_0dea112b090073317d4: {}});
  }
};
(market_page._MarketPageState.new = function() {
  market_page._MarketPageState.__proto__.new.call(this);
  ;
}).prototype = market_page._MarketPageState.prototype;
;
;
dart.setLibraryUri(market_page._MarketPageState, "package:zhihu/market/market_page.dart");
// Exports:
exports.market__market_page = market_page;

//# sourceMappingURL=market_page.ddc.js.map
