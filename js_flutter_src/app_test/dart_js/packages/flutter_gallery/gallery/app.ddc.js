'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const async = dart_sdk.async;
const collection = dart_sdk.collection;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const basic = packages__flutter__src__widgets__actions.src__widgets__basic;
const media_query = packages__flutter__src__widgets__actions.src__widgets__media_query;
const widget_inspector = packages__flutter__src__widgets__actions.src__widgets__widget_inspector;
const packages__flutter_gallery__demo__all = require('packages/flutter_gallery/demo/all');
const demos = packages__flutter_gallery__demo__all.gallery__demos;
const packages__flutter_gallery__gallery__options = require('packages/flutter_gallery/gallery/options');
const options = packages__flutter_gallery__gallery__options.gallery__options;
const packages__flutter__material = require('packages/flutter/material');
const app = packages__flutter__material.src__material__app;
const colors = packages__flutter__material.src__material__colors;
const theme = packages__flutter__material.src__material__theme;
const packages__flutter_gallery__gallery__scales = require('packages/flutter_gallery/gallery/scales');
const scales = packages__flutter_gallery__gallery__scales.gallery__scales;
const packages__flutter__gestures = require('packages/flutter/gestures');
const binding = packages__flutter__gestures.src__scheduler__binding;
const packages__flutter__src__foundation___bitfield_web = require('packages/flutter/src/foundation/_bitfield_web');
const platform = packages__flutter__src__foundation___bitfield_web.src__foundation__platform;
const packages__flutter_gallery__demo__shrine__model__app_state_model = require('packages/flutter_gallery/demo/shrine/model/app_state_model');
const app_state_model = packages__flutter_gallery__demo__shrine__model__app_state_model.demo__shrine__model__app_state_model;
const packages__flutter_gallery__gallery__home = require('packages/flutter_gallery/gallery/home');
const home$ = packages__flutter_gallery__gallery__home.gallery__home;
const packages__url_launcher__url_launcher = require('packages/url_launcher/url_launcher');
const url_launcher = packages__url_launcher__url_launcher.url_launcher;
const packages__flutter_gallery__gallery__updater = require('packages/flutter_gallery/gallery/updater');
const updater = packages__flutter_gallery__gallery__updater.gallery__updater;
const packages__scoped_model__scoped_model = require('packages/scoped_model/scoped_model');
const scoped_model = packages__scoped_model__scoped_model.scoped_model;
const packages__flutter_gallery__gallery__themes = require('packages/flutter_gallery/gallery/themes');
const themes = packages__flutter_gallery__gallery__themes.gallery__themes;
const packages__flutter__src__cupertino__action_sheet = require('packages/flutter/src/cupertino/action_sheet');
const theme$ = packages__flutter__src__cupertino__action_sheet.src__cupertino__theme;
const app$ = Object.create(dart.library);
const $_get = dartx._get;
let BuildContextToWidget = () => (BuildContextToWidget = dart.constFn(dart.fnType(framework.Widget, [framework.BuildContext])))();
let LinkedHashMapOfString$BuildContextToWidget = () => (LinkedHashMapOfString$BuildContextToWidget = dart.constFn(collection.LinkedHashMap$(core.String, BuildContextToWidget())))();
let dynamicToString = () => (dynamicToString = dart.constFn(dart.fnType(core.String, [dart.dynamic])))();
let dynamicToFn = () => (dynamicToFn = dart.constFn(dart.fnType(BuildContextToWidget(), [dart.dynamic])))();
let VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
let BuildContextToMediaQuery = () => (BuildContextToMediaQuery = dart.constFn(dart.fnType(media_query.MediaQuery, [framework.BuildContext])))();
let ScopedModelOfAppStateModel = () => (ScopedModelOfAppStateModel = dart.constFn(scoped_model.ScopedModel$(app_state_model.AppStateModel)))();
let BuildContextToCupertinoTheme = () => (BuildContextToCupertinoTheme = dart.constFn(dart.fnType(theme$.CupertinoTheme, [framework.BuildContext])))();
let BuildContextAndWidgetToDirectionality = () => (BuildContextAndWidgetToDirectionality = dart.constFn(dart.fnType(basic.Directionality, [framework.BuildContext, framework.Widget])))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C0() {
    return C0 = dart.const({
      __proto__: core.Duration.prototype,
      [Duration__duration]: 150000
    });
  }
});
const updateUrlFetcher$ = dart.privateName(app$, "GalleryApp.updateUrlFetcher");
const enablePerformanceOverlay$ = dart.privateName(app$, "GalleryApp.enablePerformanceOverlay");
const enableRasterCacheImagesCheckerboard$ = dart.privateName(app$, "GalleryApp.enableRasterCacheImagesCheckerboard");
const enableOffscreenLayersCheckerboard$ = dart.privateName(app$, "GalleryApp.enableOffscreenLayersCheckerboard");
const onSendFeedback$ = dart.privateName(app$, "GalleryApp.onSendFeedback");
const testMode$ = dart.privateName(app$, "GalleryApp.testMode");
app$.GalleryApp = class GalleryApp extends framework.StatefulWidget {
  get updateUrlFetcher() {
    return this[updateUrlFetcher$];
  }
  set updateUrlFetcher(value) {
    super.updateUrlFetcher = value;
  }
  get enablePerformanceOverlay() {
    return this[enablePerformanceOverlay$];
  }
  set enablePerformanceOverlay(value) {
    super.enablePerformanceOverlay = value;
  }
  get enableRasterCacheImagesCheckerboard() {
    return this[enableRasterCacheImagesCheckerboard$];
  }
  set enableRasterCacheImagesCheckerboard(value) {
    super.enableRasterCacheImagesCheckerboard = value;
  }
  get enableOffscreenLayersCheckerboard() {
    return this[enableOffscreenLayersCheckerboard$];
  }
  set enableOffscreenLayersCheckerboard(value) {
    super.enableOffscreenLayersCheckerboard = value;
  }
  get onSendFeedback() {
    return this[onSendFeedback$];
  }
  set onSendFeedback(value) {
    super.onSendFeedback = value;
  }
  get testMode() {
    return this[testMode$];
  }
  set testMode(value) {
    super.testMode = value;
  }
  createState() {
    return new app$._GalleryAppState.new();
  }
};
(app$.GalleryApp.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let updateUrlFetcher = opts && 'updateUrlFetcher' in opts ? opts.updateUrlFetcher : null;
  let enablePerformanceOverlay = opts && 'enablePerformanceOverlay' in opts ? opts.enablePerformanceOverlay : true;
  let enableRasterCacheImagesCheckerboard = opts && 'enableRasterCacheImagesCheckerboard' in opts ? opts.enableRasterCacheImagesCheckerboard : true;
  let enableOffscreenLayersCheckerboard = opts && 'enableOffscreenLayersCheckerboard' in opts ? opts.enableOffscreenLayersCheckerboard : true;
  let onSendFeedback = opts && 'onSendFeedback' in opts ? opts.onSendFeedback : null;
  let testMode = opts && 'testMode' in opts ? opts.testMode : false;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[updateUrlFetcher$] = updateUrlFetcher;
  this[enablePerformanceOverlay$] = enablePerformanceOverlay;
  this[enableRasterCacheImagesCheckerboard$] = enableRasterCacheImagesCheckerboard;
  this[enableOffscreenLayersCheckerboard$] = enableOffscreenLayersCheckerboard;
  this[onSendFeedback$] = onSendFeedback;
  this[testMode$] = testMode;
  app$.GalleryApp.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = app$.GalleryApp.prototype;
dart.addTypeTests(app$.GalleryApp);
dart.setMethodSignature(app$.GalleryApp, () => ({
  __proto__: dart.getMethods(app$.GalleryApp.__proto__),
  createState: dart.fnType(app$._GalleryAppState, [])
}));
dart.setLibraryUri(app$.GalleryApp, "package:flutter_gallery/gallery/app.dart");
dart.setFieldSignature(app$.GalleryApp, () => ({
  __proto__: dart.getFields(app$.GalleryApp.__proto__),
  updateUrlFetcher: dart.finalFieldType(dart.fnType(async.Future$(core.String), [])),
  enablePerformanceOverlay: dart.finalFieldType(core.bool),
  enableRasterCacheImagesCheckerboard: dart.finalFieldType(core.bool),
  enableOffscreenLayersCheckerboard: dart.finalFieldType(core.bool),
  onSendFeedback: dart.finalFieldType(dart.fnType(dart.void, [])),
  testMode: dart.finalFieldType(core.bool)
}));
const _options = dart.privateName(app$, "_options");
const _timeDilationTimer = dart.privateName(app$, "_timeDilationTimer");
const _buildRoutes = dart.privateName(app$, "_buildRoutes");
const Duration__duration = dart.privateName(core, "Duration._duration");
let C0;
const _handleOptionsChanged = dart.privateName(app$, "_handleOptionsChanged");
const _Location_parameterLocations = dart.privateName(widget_inspector, "_Location.parameterLocations");
const _Location_name = dart.privateName(widget_inspector, "_Location.name");
const _Location_column = dart.privateName(widget_inspector, "_Location.column");
const _Location_line = dart.privateName(widget_inspector, "_Location.line");
const _Location_file = dart.privateName(widget_inspector, "_Location.file");
const _applyTextScaleFactor = dart.privateName(app$, "_applyTextScaleFactor");
app$._GalleryAppState = class _GalleryAppState extends framework.State$(app$.GalleryApp) {
  [_buildRoutes]() {
    return LinkedHashMapOfString$BuildContextToWidget().fromIterable(demos.kAllGalleryDemos, {key: dart.fn(demo => dart.str(dart.dload(demo, 'routeName')), dynamicToString()), value: dart.fn(demo => BuildContextToWidget()._check(dart.dload(demo, 'buildRoute')), dynamicToFn())});
  }
  initState() {
    let t0;
    super.initState();
    this[_options] = new options.GalleryOptions.new({themeMode: app.ThemeMode.system, textScaleFactor: scales.kAllGalleryTextScaleValues[$_get](0), timeDilation: binding.timeDilation, platform: platform.defaultTargetPlatform});
    this.model = (t0 = new app_state_model.AppStateModel.new(), t0.loadProducts(), t0);
  }
  dispose() {
    let t0;
    t0 = this[_timeDilationTimer];
    t0 == null ? null : t0.cancel();
    this[_timeDilationTimer] = null;
    super.dispose();
  }
  [_handleOptionsChanged](newOptions) {
    this.setState(dart.fn(() => {
      let t0;
      if (this[_options].timeDilation != newOptions.timeDilation) {
        t0 = this[_timeDilationTimer];
        t0 == null ? null : t0.cancel();
        this[_timeDilationTimer] = null;
        if (dart.notNull(newOptions.timeDilation) > 1.0) {
          this[_timeDilationTimer] = async.Timer.new(C0 || CT.C0, dart.fn(() => {
            binding.timeDilation = newOptions.timeDilation;
          }, VoidToNull()));
        } else {
          binding.timeDilation = newOptions.timeDilation;
        }
      }
      this[_options] = newOptions;
    }, VoidToNull()));
  }
  [_applyTextScaleFactor](child) {
    return new basic.Builder.new({builder: dart.fn(context => new media_query.MediaQuery.new({data: media_query.MediaQuery.of(context).copyWith({textScaleFactor: this[_options].textScaleFactor.scale}), child: child, $creationLocationd_0dea112b090073317d4: C1 || CT.C1}), BuildContextToMediaQuery()), $creationLocationd_0dea112b090073317d4: C5 || CT.C5});
  }
  build(context) {
    let t0;
    let home = new home$.GalleryHome.new({testMode: this.widget.testMode, optionsPage: new options.GalleryOptionsPage.new({options: this[_options], onOptionsChanged: dart.bind(this, _handleOptionsChanged), onSendFeedback: (t0 = this.widget.onSendFeedback, t0 == null ? dart.fn(() => {
          url_launcher.launch("https://github.com/flutter/flutter/issues/new/choose", {forceSafariVC: false});
        }, VoidToNull()) : t0), $creationLocationd_0dea112b090073317d4: C8 || CT.C8}), $creationLocationd_0dea112b090073317d4: C13 || CT.C13});
    if (this.widget.updateUrlFetcher != null) {
      home = new updater.Updater.new({updateUrlFetcher: this.widget.updateUrlFetcher, child: home, $creationLocationd_0dea112b090073317d4: C17 || CT.C17});
    }
    return new (ScopedModelOfAppStateModel()).new({model: this.model, child: new app.MaterialApp.new({theme: themes.kLightGalleryTheme.copyWith({platform: this[_options].platform}), darkTheme: themes.kDarkGalleryTheme.copyWith({platform: this[_options].platform}), themeMode: this[_options].themeMode, title: "Flutter Gallery", color: colors.Colors.grey, showPerformanceOverlay: this[_options].showPerformanceOverlay, checkerboardOffscreenLayers: this[_options].showOffscreenLayersCheckerboard, checkerboardRasterCacheImages: this[_options].showRasterCacheImagesCheckerboard, routes: this[_buildRoutes](), builder: dart.fn((context, child) => new basic.Directionality.new({textDirection: this[_options].textDirection, child: this[_applyTextScaleFactor](new basic.Builder.new({builder: dart.fn(context => new theme$.CupertinoTheme.new({data: new theme$.CupertinoThemeData.new({brightness: theme.Theme.of(context).brightness}), child: child, $creationLocationd_0dea112b090073317d4: C21 || CT.C21}), BuildContextToCupertinoTheme()), $creationLocationd_0dea112b090073317d4: C25 || CT.C25})), $creationLocationd_0dea112b090073317d4: C28 || CT.C28}), BuildContextAndWidgetToDirectionality()), home: home, $creationLocationd_0dea112b090073317d4: C32 || CT.C32}), $creationLocationd_0dea112b090073317d4: C45 || CT.C45});
  }
};
(app$._GalleryAppState.new = function() {
  this[_options] = null;
  this[_timeDilationTimer] = null;
  this.model = null;
  app$._GalleryAppState.__proto__.new.call(this);
  ;
}).prototype = app$._GalleryAppState.prototype;
dart.addTypeTests(app$._GalleryAppState);
dart.setMethodSignature(app$._GalleryAppState, () => ({
  __proto__: dart.getMethods(app$._GalleryAppState.__proto__),
  [_buildRoutes]: dart.fnType(core.Map$(core.String, dart.fnType(framework.Widget, [framework.BuildContext])), []),
  [_handleOptionsChanged]: dart.fnType(dart.void, [options.GalleryOptions]),
  [_applyTextScaleFactor]: dart.fnType(framework.Widget, [framework.Widget]),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(app$._GalleryAppState, "package:flutter_gallery/gallery/app.dart");
dart.setFieldSignature(app$._GalleryAppState, () => ({
  __proto__: dart.getFields(app$._GalleryAppState.__proto__),
  [_options]: dart.fieldType(options.GalleryOptions),
  [_timeDilationTimer]: dart.fieldType(async.Timer),
  model: dart.fieldType(app_state_model.AppStateModel)
}));
dart.trackLibraries("packages/flutter_gallery/gallery/app", {
  "package:flutter_gallery/gallery/app.dart": app$
}, {
}, '{"version":3,"sourceRoot":"","sources":["app.dart"],"names":[],"mappings":";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;EAiCyB;;;;;;EACZ;;;;;;EACA;;;;;;EACA;;;;;;EACQ;;;;;;EACR;;;;;;;AAGuB;EAAkB;;;MAjB9C;MACC;MACA;MACA;MACA;MACA;MACA;;EALA;EACA;EACA;EACA;EACA;EACA;AACF,iDAAW,GAAG;;AAAC;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;AAsBlB,qEACE,8BACK,QAAS,QAA4B,SAAX,WAAL,IAAI,4CACvB,QAAS,QAAS,8BAAK,WAAL,IAAI;EAEjC;;;AAImB,IAAX;AAML,IALD,iBAAW,2CACY,uCACJ,AAA0B,yCAAC,kBAC9B,gCACJ;AAE2B,IAAvC,mBAAQ,yCAAiB;EAC3B;;;AAI8B,SAA5B;wBAAoB;AACK,IAAzB,2BAAqB;AACN,IAAT;EACR;0BAE0C;AAkBtC,IAjBF,cAAS;;AACP,UAAI,AAAS,+BAAgB,AAAW,UAAD;AACT,aAA5B;4BAAoB;AACK,QAAzB,2BAAqB;AACrB,YAA4B,aAAxB,AAAW,UAAD,iBAAgB;AAM1B,UAFF,2BAAqB,6BAAyC;AACtB,YAAtC,uBAAe,AAAW,UAAD;;;AAGW,UAAtC,uBAAe,AAAW,UAAD;;;AAIR,MAArB,iBAAW,UAAU;;EAEzB;0BAEoC;AAClC,UAAO,iCACI,QAAc,WACd,sCACY,AAAY,0BAAT,OAAO,6BACR,AAAS,AAAgB,+CAErC,KAAK;EAIpB;QAG0B;;AACjB,eAAO,qCACF,AAAO,mCACJ,6CACF,4CACS,+CACoB,KAAtB,AAAO,kCAAA,OAAkB;AAC6C,UAApF,oBAAO,wEAAuE;;AAKpF,QAAI,AAAO,gCAAoB;AAI5B,MAHD,OAAO,2CACa,AAAO,qCAClB,IAAI;;AAIf,UAAO,gDACE,mBACA,gCACE,AAAmB,8CAAmB,AAAS,sCAC3C,AAAkB,6CAAmB,AAAS,sCAC9C,AAAS,iCACb,0BACO,4CACU,AAAS,oEACJ,AAAS,+EACP,AAAS,0DAChC,+BACC,SAAc,SAAgB,UAC9B,6CACU,AAAS,qCACjB,4BAIL,gCAAiB,QAAc,WACtB,qCACC,+CACc,AAAY,eAAT,OAAO,uBAEvB,KAAK,+PAMhB,IAAI;EAGhB;;;EAzHe;EACT;EACQ;;;AAwHhB","file":"app.ddc.js"}');
// Exports:
exports.gallery__app = app$;

//# sourceMappingURL=app.ddc.js.map
