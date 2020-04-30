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
const notice_page = Object.create(dart.library);
const CT = Object.create(null);
notice_page.NoticePage = class NoticePage extends framework.StatefulWidget {
  createState() {
    return new notice_page._NoticePageState.new();
  }
};
(notice_page.NoticePage.new = function() {
  notice_page.NoticePage.__proto__.new.call(this);
}).prototype = notice_page.NoticePage.prototype;
notice_page._NoticePageState = class _NoticePageState extends framework.State$(notice_page.NoticePage) {
  build(context) {
    return new app.MaterialApp.new({home: new scaffold.Scaffold.new({appBar: new app_bar.AppBar.new({title: new text.Text.new("通知")}), body: new basic.Center.new({child: null})}), theme: global_config.GlobalConfig.themeData});
  }
};
(notice_page._NoticePageState.new = function() {
  notice_page._NoticePageState.__proto__.new.call(this);
}).prototype = notice_page._NoticePageState.prototype;
// Exports:
exports.notice__notice_page = notice_page;

//# sourceMappingURL=notice_page.ddc.js.map
