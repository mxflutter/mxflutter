'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter_gallery__demo__animation__home = require('packages/flutter_gallery/demo/animation/home');
const home = packages__flutter_gallery__demo__animation__home.demo__animation__home;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const animation_demo = Object.create(dart.library);
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C0() {
    return C0 = dart.const({
      __proto__: home.AnimationDemoHome.prototype,
      [Widget_key]: null
    });
  }
});
const Widget_key = dart.privateName(framework, "Widget.key");
let C0;
animation_demo.AnimationDemo = class AnimationDemo extends framework.StatelessWidget {
  build(context) {
    return C0 || CT.C0;
  }
};
(animation_demo.AnimationDemo.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  animation_demo.AnimationDemo.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = animation_demo.AnimationDemo.prototype;
dart.addTypeTests(animation_demo.AnimationDemo);
dart.setMethodSignature(animation_demo.AnimationDemo, () => ({
  __proto__: dart.getMethods(animation_demo.AnimationDemo.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(animation_demo.AnimationDemo, "package:flutter_gallery/demo/animation_demo.dart");
dart.defineLazy(animation_demo.AnimationDemo, {
  /*animation_demo.AnimationDemo.routeName*/get routeName() {
    return "/animation";
  }
});
dart.trackLibraries("packages/flutter_gallery/demo/animation_demo", {
  "package:flutter_gallery/demo/animation_demo.dart": animation_demo
}, {
}, '{"version":3,"sourceRoot":"","sources":["animation_demo.dart"],"names":[],"mappings":";;;;;;;;;;;;;;;;;;;;;;QAc4B;AAAY;EAAyB;;;MALtC;;AAAQ,8DAAW,GAAG;;AAAC;;;;;;;;IAE5B,sCAAS","file":"animation_demo.ddc.js"}');
// Exports:
exports.demo__animation_demo = animation_demo;

//# sourceMappingURL=animation_demo.ddc.js.map
