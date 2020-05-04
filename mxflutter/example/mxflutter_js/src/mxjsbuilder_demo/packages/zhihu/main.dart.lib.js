'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__material__app$46dart = require('packages/flutter/src/material/app.dart');
const app = packages__flutter__src__material__app$46dart.src__material__app;
const packages__zhihu__index__index$46dart = require('packages/zhihu/index/index.dart');
const index = packages__zhihu__index__index$46dart.index__index;
const packages__flutter__src__widgets__widget_span$46dart = require('packages/flutter/src/widgets/widget_span.dart');
const framework = packages__flutter__src__widgets__widget_span$46dart.src__widgets__framework;
const binding = packages__flutter__src__widgets__widget_span$46dart.src__widgets__binding;
var main = Object.create(dart.library);
const CT = Object.create(null);
var L0 = "package:zhihu/main.dart";
main.ZhiHu = class ZhiHu extends framework.StatelessWidget {
  build(context) {
    return new app.MaterialApp.new({title: "知乎-高仿版", home: new index.Index.new()});
  }
};
(main.ZhiHu.new = function() {
  main.ZhiHu.__proto__.new.call(this);
  ;
}).prototype = main.ZhiHu.prototype;
dart.addTypeTests(main.ZhiHu);
dart.addTypeCaches(main.ZhiHu);
dart.setMethodSignature(main.ZhiHu, () => ({
  __proto__: dart.getMethods(main.ZhiHu.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(main.ZhiHu, L0);
main.main = function main$() {
  return binding.runApp(new main.ZhiHu.new());
};
// Exports:
exports.main = main;

//# sourceMappingURL=main.dart.lib.js.map
