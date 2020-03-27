'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter_gallery__demo__calculator__home = require('packages/flutter_gallery/demo/calculator/home');
const home = packages__flutter_gallery__demo__calculator__home.demo__calculator__home;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const calculator_demo = Object.create(dart.library);
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C0() {
    return C0 = dart.const({
      __proto__: home.Calculator.prototype,
      [Widget_key]: null
    });
  }
});
const Widget_key = dart.privateName(framework, "Widget.key");
let C0;
calculator_demo.CalculatorDemo = class CalculatorDemo extends framework.StatelessWidget {
  build(context) {
    return C0 || CT.C0;
  }
};
(calculator_demo.CalculatorDemo.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  calculator_demo.CalculatorDemo.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = calculator_demo.CalculatorDemo.prototype;
dart.addTypeTests(calculator_demo.CalculatorDemo);
dart.setMethodSignature(calculator_demo.CalculatorDemo, () => ({
  __proto__: dart.getMethods(calculator_demo.CalculatorDemo.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(calculator_demo.CalculatorDemo, "package:flutter_gallery/demo/calculator_demo.dart");
dart.defineLazy(calculator_demo.CalculatorDemo, {
  /*calculator_demo.CalculatorDemo.routeName*/get routeName() {
    return "/calculator";
  }
});
dart.trackLibraries("packages/flutter_gallery/demo/calculator_demo", {
  "package:flutter_gallery/demo/calculator_demo.dart": calculator_demo
}, {
}, '{"version":3,"sourceRoot":"","sources":["calculator_demo.dart"],"names":[],"mappings":";;;;;;;;;;;;;;;;;;;;;;QAc4B;AAAY;EAAkB;;;MAL9B;;AAAQ,gEAAW,GAAG;;AAAC;;;;;;;;IAE7B,wCAAS","file":"calculator_demo.ddc.js"}');
// Exports:
exports.demo__calculator_demo = calculator_demo;

//# sourceMappingURL=calculator_demo.ddc.js.map
