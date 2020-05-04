'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const text = packages__flutter__src__widgets__actions.src__widgets__text;
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
(market_page.MarketPage.new = function() {
  market_page.MarketPage.__proto__.new.call(this);
}).prototype = market_page.MarketPage.prototype;
market_page._MarketPageState = class _MarketPageState extends framework.State$(market_page.MarketPage) {
  build(context) {
    return new app.MaterialApp.new({home: new scaffold.Scaffold.new({appBar: new app_bar.AppBar.new({title: new text.Text.new("市场")}), body: new basic.Center.new({child: null})}), theme: global_config.GlobalConfig.themeData});
  }
};
(market_page._MarketPageState.new = function() {
  market_page._MarketPageState.__proto__.new.call(this);
}).prototype = market_page._MarketPageState.prototype;
// Exports:
exports.market__market_page = market_page;

//# sourceMappingURL=market_page.ddc.js.map
