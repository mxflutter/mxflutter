'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter_gallery__gallery__home = require('packages/flutter_gallery/gallery/home');
const home = packages__flutter_gallery__gallery__home.gallery__home;
const packages__flutter_gallery__main = require('packages/flutter_gallery/main');
const main = packages__flutter_gallery__main.main;
const main_publish = Object.create(dart.library);
const CT = Object.create(null);
main_publish.main = function main$() {
  home.GalleryHome.showPreviewBanner = false;
  main.main();
};
dart.trackLibraries("packages/flutter_gallery/main_publish", {
  "package:flutter_gallery/main_publish.dart": main_publish
}, {
}, '{"version":3,"sourceRoot":"","sources":["main_publish.dart"],"names":[],"mappings":";;;;;;;;;;;;AAUuC,EAAzB,qCAAoB;AACf,EAAjB;AACF","file":"main_publish.ddc.js"}');
// Exports:
exports.main_publish = main_publish;

//# sourceMappingURL=main_publish.ddc.js.map
