'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const _interceptors = dart_sdk._interceptors;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const text = packages__flutter__src__widgets__actions.src__widgets__text;
const widget_inspector = packages__flutter__src__widgets__actions.src__widgets__widget_inspector;
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
(idea_page.IdeaPage.new = function(opts) {
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  idea_page.IdeaPage.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = idea_page.IdeaPage.prototype;
;
;
dart.setLibraryUri(idea_page.IdeaPage, "package:zhihu/idea/idea_page.dart");
const _Location_parameterLocations = dart.privateName(widget_inspector, "_Location.parameterLocations");
const _Location_name = dart.privateName(widget_inspector, "_Location.name");
const _Location_column = dart.privateName(widget_inspector, "_Location.column");
const _Location_line = dart.privateName(widget_inspector, "_Location.line");
const _Location_file = dart.privateName(widget_inspector, "_Location.file");
idea_page._IdeaPageState = class _IdeaPageState extends framework.State$(idea_page.IdeaPage) {
  build(context) {
    return new app.MaterialApp.new({home: new scaffold.Scaffold.new({appBar: new app_bar.AppBar.new({title: new text.Text.new("想法", {$creationLocationd_0dea112b090073317d4: {}}), actions: JSArrayOfWidget().of([new container.Container.new({$creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), body: new basic.Center.new({child: null, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), theme: global_config.GlobalConfig.themeData, $creationLocationd_0dea112b090073317d4: {}});
  }
};
(idea_page._IdeaPageState.new = function() {
  idea_page._IdeaPageState.__proto__.new.call(this);
  ;
}).prototype = idea_page._IdeaPageState.prototype;
;
;
dart.setLibraryUri(idea_page._IdeaPageState, "package:zhihu/idea/idea_page.dart");
// Exports:
exports.idea__idea_page = idea_page;

//# sourceMappingURL=idea_page.ddc.js.map
