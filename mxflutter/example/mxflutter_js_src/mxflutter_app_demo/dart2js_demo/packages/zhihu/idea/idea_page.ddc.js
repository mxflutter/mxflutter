'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const _interceptors = dart_sdk._interceptors;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const text = packages__flutter__src__widgets__actions.src__widgets__text;
const container = packages__flutter__src__widgets__actions.src__widgets__container;
const basic = packages__flutter__src__widgets__actions.src__widgets__basic;
const packages__flutter__material = require('packages/flutter/material');
const app = packages__flutter__material.src__material__app;
const scaffold = packages__flutter__material.src__material__scaffold;
const app_bar = packages__flutter__material.src__material__app_bar;
const packages__zhihu__global_config = require('packages/zhihu/global_config');
const global_config = packages__zhihu__global_config.global_config;
const idea_page = Object.create(dart.library);
let JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
const CT = Object.create(null);
idea_page.IdeaPage = class IdeaPage extends framework.StatefulWidget {
  createState() {
    return new idea_page._IdeaPageState.new();
  }
};
(idea_page.IdeaPage.new = function() {
  idea_page.IdeaPage.__proto__.new.call(this);
}).prototype = idea_page.IdeaPage.prototype;
idea_page._IdeaPageState = class _IdeaPageState extends framework.State$(idea_page.IdeaPage) {
  build(context) {
    return new app.MaterialApp.new({home: new scaffold.Scaffold.new({appBar: new app_bar.AppBar.new({title: new text.Text.new("想法"), actions: JSArrayOfWidget().of([new container.Container.new()])}), body: new basic.Center.new({child: null})}), theme: global_config.GlobalConfig.themeData});
  }
};
(idea_page._IdeaPageState.new = function() {
  idea_page._IdeaPageState.__proto__.new.call(this);
}).prototype = idea_page._IdeaPageState.prototype;
// Exports:
exports.idea__idea_page = idea_page;

//# sourceMappingURL=idea_page.ddc.js.map
