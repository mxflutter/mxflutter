'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const main = Object.create(dart.library);
const CT = Object.create(null);
main.main = function main$() {
  let a = 5;
  let b = 6;
  let ans = a + b;
  core.print("hello world " + dart.str(ans));
};
dart.trackLibraries("packages/flutter_dart2js/main", {
  "package:flutter_dart2js/main.dart": main
}, {
}, '{"version":3,"sourceRoot":"","sources":["main.dart"],"names":[],"mappings":";;;;;;;;AAoBM,UAAI;AACJ,UAAI;AACJ,YAAM,AAAE,CAAD,GAAG,CAAC;AACY,EAA3B,WAAM,AAAoB,0BAAL,GAAG;AAC1B","file":"main.ddc.js"}');
// Exports:
exports.main = main;

//# sourceMappingURL=main.ddc.js.map
