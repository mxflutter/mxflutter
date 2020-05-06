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
var notice_page = Object.create(dart.library);
const CT = Object.create(null);
var L0 = "package:zhihu/notice/notice_page.dart";
notice_page.NoticePage = class NoticePage extends framework.StatefulWidget {
  createState() {
    return new notice_page._NoticePageState.new();
  }
};
(notice_page.NoticePage.new = function() {
  notice_page.NoticePage.__proto__.new.call(this);
  ;
}).prototype = notice_page.NoticePage.prototype;
dart.addTypeTests(notice_page.NoticePage);
dart.addTypeCaches(notice_page.NoticePage);
dart.setMethodSignature(notice_page.NoticePage, () => ({
  __proto__: dart.getMethods(notice_page.NoticePage.__proto__),
  createState: dart.fnType(notice_page._NoticePageState, [])
}));
dart.setLibraryUri(notice_page.NoticePage, L0);
notice_page._NoticePageState = class _NoticePageState extends framework.State$(notice_page.NoticePage) {
  build(context) {
    return new app.MaterialApp.new({home: new scaffold.Scaffold.new({appBar: new app_bar.AppBar.new({title: new text.Text.new("通知")}), body: new basic.Center.new({child: null})}), theme: global_config.GlobalConfig.themeData});
  }
};
(notice_page._NoticePageState.new = function() {
  notice_page._NoticePageState.__proto__.new.call(this);
  ;
}).prototype = notice_page._NoticePageState.prototype;
dart.addTypeTests(notice_page._NoticePageState);
dart.addTypeCaches(notice_page._NoticePageState);
dart.setMethodSignature(notice_page._NoticePageState, () => ({
  __proto__: dart.getMethods(notice_page._NoticePageState.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(notice_page._NoticePageState, L0);
// Exports:
exports.notice__notice_page = notice_page;

//# sourceMappingURL=notice_page.dart.lib.js.map
