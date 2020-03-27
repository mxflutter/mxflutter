'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const _interceptors = dart_sdk._interceptors;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter_gallery__demo__shrine__model__product = require('packages/flutter_gallery/demo/shrine/model/product');
const product = packages__flutter_gallery__demo__shrine__model__product.demo__shrine__model__product;
const packages__scoped_model__scoped_model = require('packages/scoped_model/scoped_model');
const scoped_model = packages__scoped_model__scoped_model.scoped_model;
const packages__flutter_gallery__demo__shrine__model__app_state_model = require('packages/flutter_gallery/demo/shrine/model/app_state_model');
const app_state_model = packages__flutter_gallery__demo__shrine__model__app_state_model.demo__shrine__model__app_state_model;
const packages__flutter_gallery__demo__shrine__supplemental__asymmetric_view = require('packages/flutter_gallery/demo/shrine/supplemental/asymmetric_view');
const asymmetric_view = packages__flutter_gallery__demo__shrine__supplemental__asymmetric_view.demo__shrine__supplemental__asymmetric_view;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const widget_inspector = packages__flutter__src__widgets__actions.src__widgets__widget_inspector;
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const basic = packages__flutter__src__widgets__actions.src__widgets__basic;
const packages__flutter__src__painting___network_image_web = require('packages/flutter/src/painting/_network_image_web');
const alignment = packages__flutter__src__painting___network_image_web.src__painting__alignment;
const packages__flutter_gallery__demo__shrine__expanding_bottom_sheet = require('packages/flutter_gallery/demo/shrine/expanding_bottom_sheet');
const expanding_bottom_sheet = packages__flutter_gallery__demo__shrine__expanding_bottom_sheet.demo__shrine__expanding_bottom_sheet;
const packages__flutter_gallery__demo__shrine__backdrop = require('packages/flutter_gallery/demo/shrine/backdrop');
const backdrop = packages__flutter_gallery__demo__shrine__backdrop.demo__shrine__backdrop;
const home = Object.create(dart.library);
let ScopedModelDescendantOfAppStateModel = () => (ScopedModelDescendantOfAppStateModel = dart.constFn(scoped_model.ScopedModelDescendant$(app_state_model.AppStateModel)))();
let BuildContextAndWidgetAndAppStateModelToAsymmetricView = () => (BuildContextAndWidgetAndAppStateModelToAsymmetricView = dart.constFn(dart.fnType(asymmetric_view.AsymmetricView, [framework.BuildContext, framework.Widget, app_state_model.AppStateModel])))();
let JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C0() {
    return C0 = dart.const({
      __proto__: product.Category.prototype,
      [_name]: "Category.all",
      index: 0
    });
  }
});
const _name = dart.privateName(product, "_name");
let C0;
const _Location_parameterLocations = dart.privateName(widget_inspector, "_Location.parameterLocations");
const _Location_name = dart.privateName(widget_inspector, "_Location.name");
const _Location_column = dart.privateName(widget_inspector, "_Location.column");
const _Location_line = dart.privateName(widget_inspector, "_Location.line");
const _Location_file = dart.privateName(widget_inspector, "_Location.file");
const category$ = dart.privateName(home, "ProductPage.category");
home.ProductPage = class ProductPage extends framework.StatelessWidget {
  get category() {
    return this[category$];
  }
  set category(value) {
    super.category = value;
  }
  build(context) {
    return new (ScopedModelDescendantOfAppStateModel()).new({builder: dart.fn((context, child, model) => new asymmetric_view.AsymmetricView.new({products: model.getProducts(), $creationLocationd_0dea112b090073317d4: C1 || CT.C1}), BuildContextAndWidgetAndAppStateModelToAsymmetricView()), $creationLocationd_0dea112b090073317d4: C4 || CT.C4});
  }
};
(home.ProductPage.new = function(opts) {
  let category = opts && 'category' in opts ? opts.category : C0 || CT.C0;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[category$] = category;
  home.ProductPage.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = home.ProductPage.prototype;
dart.addTypeTests(home.ProductPage);
dart.setMethodSignature(home.ProductPage, () => ({
  __proto__: dart.getMethods(home.ProductPage.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(home.ProductPage, "package:flutter_gallery/demo/shrine/home.dart");
dart.setFieldSignature(home.ProductPage, () => ({
  __proto__: dart.getFields(home.ProductPage.__proto__),
  category: dart.finalFieldType(product.Category)
}));
const expandingBottomSheet$ = dart.privateName(home, "HomePage.expandingBottomSheet");
const backdrop$ = dart.privateName(home, "HomePage.backdrop");
home.HomePage = class HomePage extends framework.StatelessWidget {
  get expandingBottomSheet() {
    return this[expandingBottomSheet$];
  }
  set expandingBottomSheet(value) {
    super.expandingBottomSheet = value;
  }
  get backdrop() {
    return this[backdrop$];
  }
  set backdrop(value) {
    super.backdrop = value;
  }
  build(context) {
    return new basic.Stack.new({children: JSArrayOfWidget().of([this.backdrop, new basic.Align.new({child: this.expandingBottomSheet, alignment: alignment.Alignment.bottomRight, $creationLocationd_0dea112b090073317d4: C7 || CT.C7})]), $creationLocationd_0dea112b090073317d4: C11 || CT.C11});
  }
};
(home.HomePage.new = function(opts) {
  let expandingBottomSheet = opts && 'expandingBottomSheet' in opts ? opts.expandingBottomSheet : null;
  let backdrop = opts && 'backdrop' in opts ? opts.backdrop : null;
  let key = opts && 'key' in opts ? opts.key : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[expandingBottomSheet$] = expandingBottomSheet;
  this[backdrop$] = backdrop;
  home.HomePage.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = home.HomePage.prototype;
dart.addTypeTests(home.HomePage);
dart.setMethodSignature(home.HomePage, () => ({
  __proto__: dart.getMethods(home.HomePage.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(home.HomePage, "package:flutter_gallery/demo/shrine/home.dart");
dart.setFieldSignature(home.HomePage, () => ({
  __proto__: dart.getFields(home.HomePage.__proto__),
  expandingBottomSheet: dart.finalFieldType(expanding_bottom_sheet.ExpandingBottomSheet),
  backdrop: dart.finalFieldType(backdrop.Backdrop)
}));
dart.trackLibraries("packages/flutter_gallery/demo/shrine/home", {
  "package:flutter_gallery/demo/shrine/home.dart": home
}, {
}, '{"version":3,"sourceRoot":"","sources":["home.dart"],"names":[],"mappings":";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;EAgBiB;;;;;;QAGW;AACxB,UAAO,4DACI,SAAc,SAAgB,OAAqB,UACnD,kDAAyB,AAAM,KAAD;EAE3C;;;MAVwB;;;AAAlB;;AAA2C;;;;;;;;;;;;;;EAoBtB;;;;;;EACZ;;;;;;QAGW;AACxB,UAAO,gCACa,sBAChB,eACA,4BAAa,sCAA2C;EAG9D;;;MAhBO;MACA;MACD;;EAFC;EACA;AAEF,+CAAW,GAAG;;AAAC","file":"home.ddc.js"}');
// Exports:
exports.demo__shrine__home = home;

//# sourceMappingURL=home.ddc.js.map
