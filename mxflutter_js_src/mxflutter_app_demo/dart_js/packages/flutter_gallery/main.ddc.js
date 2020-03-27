'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const io = dart_sdk.io;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__foundation___bitfield_web = require('packages/flutter/src/foundation/_bitfield_web');
const platform = packages__flutter__src__foundation___bitfield_web.src__foundation__platform;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const binding = packages__flutter__src__widgets__actions.src__widgets__binding;
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const packages__flutter_gallery__gallery__app = require('packages/flutter_gallery/gallery/app');
const app = packages__flutter_gallery__gallery__app.gallery__app;
const main = Object.create(dart.library);
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C0() {
    return C0 = dart.const({
      __proto__: app.GalleryApp.prototype,
      [Widget_key]: null,
      [GalleryApp_testMode]: false,
      [GalleryApp_onSendFeedback]: null,
      [GalleryApp_enableOffscreenLayersCheckerboard]: true,
      [GalleryApp_enableRasterCacheImagesCheckerboard]: true,
      [GalleryApp_enablePerformanceOverlay]: true,
      [GalleryApp_updateUrlFetcher]: null
    });
  }
});
const Widget_key = dart.privateName(framework, "Widget.key");
const GalleryApp_testMode = dart.privateName(app, "GalleryApp.testMode");
const GalleryApp_onSendFeedback = dart.privateName(app, "GalleryApp.onSendFeedback");
const GalleryApp_enableOffscreenLayersCheckerboard = dart.privateName(app, "GalleryApp.enableOffscreenLayersCheckerboard");
const GalleryApp_enableRasterCacheImagesCheckerboard = dart.privateName(app, "GalleryApp.enableRasterCacheImagesCheckerboard");
const GalleryApp_enablePerformanceOverlay = dart.privateName(app, "GalleryApp.enablePerformanceOverlay");
const GalleryApp_updateUrlFetcher = dart.privateName(app, "GalleryApp.updateUrlFetcher");
let C0;
main._enablePlatformOverrideForDesktop = function _enablePlatformOverrideForDesktop() {
  if (!true && (dart.test(io.Platform.isWindows) || dart.test(io.Platform.isLinux))) {
    platform.debugDefaultTargetPlatformOverride = platform.TargetPlatform.fuchsia;
  }
};
main.main = function main$() {
  main._enablePlatformOverrideForDesktop();
  binding.runApp(C0 || CT.C0);
};
dart.trackLibraries("packages/flutter_gallery/main", {
  "package:flutter_gallery/main.dart": main
}, {
}, '{"version":3,"sourceRoot":"","sources":["main.dart"],"names":[],"mappings":";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;AAqBE,0BAAyB,oCAAsB;AACc,IAA3D,8CAAoD;;AAExD;;AAGqC,EAAnC;AAC0B,EAA1B;AACF","file":"main.ddc.js"}');
// Exports:
exports.main = main;

//# sourceMappingURL=main.ddc.js.map
