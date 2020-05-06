'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__widgets__widget_span$46dart = require('packages/flutter/src/widgets/widget_span.dart');
const framework = packages__flutter__src__widgets__widget_span$46dart.src__widgets__framework;
const text = packages__flutter__src__widgets__widget_span$46dart.src__widgets__text;
const basic = packages__flutter__src__widgets__widget_span$46dart.src__widgets__basic;
const packages__flutter__src__material__app$46dart = require('packages/flutter/src/material/app.dart');
const app = packages__flutter__src__material__app$46dart.src__material__app;
const packages__flutter__src__material__icon_button$46dart = require('packages/flutter/src/material/icon_button.dart');
const scaffold = packages__flutter__src__material__icon_button$46dart.src__material__scaffold;
const app_bar = packages__flutter__src__material__icon_button$46dart.src__material__app_bar;
const packages__zhihu__global_config$46dart = require('packages/zhihu/global_config.dart');
const global_config = packages__zhihu__global_config$46dart.global_config;
var market_page = Object.create(dart.library);
const CT = Object.create(null);
var L0 = "package:zhihu/market/market_page.dart";
market_page.MarketPage = class MarketPage extends framework.StatefulWidget {
  createState() {
    return new market_page._MarketPageState.new();
  }
};
(market_page.MarketPage.new = function() {
  market_page.MarketPage.__proto__.new.call(this);
  ;
}).prototype = market_page.MarketPage.prototype;
dart.addTypeTests(market_page.MarketPage);
dart.addTypeCaches(market_page.MarketPage);
dart.setMethodSignature(market_page.MarketPage, () => ({
  __proto__: dart.getMethods(market_page.MarketPage.__proto__),
  createState: dart.fnType(market_page._MarketPageState, [])
}));
dart.setLibraryUri(market_page.MarketPage, L0);
market_page._MarketPageState = class _MarketPageState extends framework.State$(market_page.MarketPage) {
  build(context) {
    return new app.MaterialApp.new({home: new scaffold.Scaffold.new({appBar: new app_bar.AppBar.new({title: new text.Text.new("市场")}), body: new basic.Center.new({child: null})}), theme: global_config.GlobalConfig.themeData});
  }
};
(market_page._MarketPageState.new = function() {
  market_page._MarketPageState.__proto__.new.call(this);
  ;
}).prototype = market_page._MarketPageState.prototype;
dart.addTypeTests(market_page._MarketPageState);
dart.addTypeCaches(market_page._MarketPageState);
dart.setMethodSignature(market_page._MarketPageState, () => ({
  __proto__: dart.getMethods(market_page._MarketPageState.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(market_page._MarketPageState, L0);
// Exports:
exports.market__market_page = market_page;

//# sourceMappingURL=market_page.dart.lib.js.map
