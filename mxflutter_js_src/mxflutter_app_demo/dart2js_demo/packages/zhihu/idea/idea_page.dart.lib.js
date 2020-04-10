'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const _interceptors = dart_sdk._interceptors;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__widgets__widget_span$46dart = require('packages/flutter/src/widgets/widget_span.dart');
const framework = packages__flutter__src__widgets__widget_span$46dart.src__widgets__framework;
const text = packages__flutter__src__widgets__widget_span$46dart.src__widgets__text;
const container = packages__flutter__src__widgets__widget_span$46dart.src__widgets__container;
const basic = packages__flutter__src__widgets__widget_span$46dart.src__widgets__basic;
const packages__flutter__src__material__app$46dart = require('packages/flutter/src/material/app.dart');
const app = packages__flutter__src__material__app$46dart.src__material__app;
const packages__flutter__src__material__icon_button$46dart = require('packages/flutter/src/material/icon_button.dart');
const scaffold = packages__flutter__src__material__icon_button$46dart.src__material__scaffold;
const app_bar = packages__flutter__src__material__icon_button$46dart.src__material__app_bar;
const packages__zhihu__global_config$46dart = require('packages/zhihu/global_config.dart');
const global_config = packages__zhihu__global_config$46dart.global_config;
var idea_page = Object.create(dart.library);
var JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
const CT = Object.create(null);
var L0 = "package:zhihu/idea/idea_page.dart";
idea_page.IdeaPage = class IdeaPage extends framework.StatefulWidget {
  createState() {
    return new idea_page._IdeaPageState.new();
  }
};
(idea_page.IdeaPage.new = function() {
  idea_page.IdeaPage.__proto__.new.call(this);
  ;
}).prototype = idea_page.IdeaPage.prototype;
dart.addTypeTests(idea_page.IdeaPage);
dart.addTypeCaches(idea_page.IdeaPage);
dart.setMethodSignature(idea_page.IdeaPage, () => ({
  __proto__: dart.getMethods(idea_page.IdeaPage.__proto__),
  createState: dart.fnType(idea_page._IdeaPageState, [])
}));
dart.setLibraryUri(idea_page.IdeaPage, L0);
idea_page._IdeaPageState = class _IdeaPageState extends framework.State$(idea_page.IdeaPage) {
  build(context) {
    return new app.MaterialApp.new({home: new scaffold.Scaffold.new({appBar: new app_bar.AppBar.new({title: new text.Text.new("想法"), actions: JSArrayOfWidget().of([new container.Container.new()])}), body: new basic.Center.new({child: null})}), theme: global_config.GlobalConfig.themeData});
  }
};
(idea_page._IdeaPageState.new = function() {
  idea_page._IdeaPageState.__proto__.new.call(this);
  ;
}).prototype = idea_page._IdeaPageState.prototype;
dart.addTypeTests(idea_page._IdeaPageState);
dart.addTypeCaches(idea_page._IdeaPageState);
dart.setMethodSignature(idea_page._IdeaPageState, () => ({
  __proto__: dart.getMethods(idea_page._IdeaPageState.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(idea_page._IdeaPageState, L0);
// Exports:
exports.idea__idea_page = idea_page;

//# sourceMappingURL=idea_page.dart.lib.js.map
