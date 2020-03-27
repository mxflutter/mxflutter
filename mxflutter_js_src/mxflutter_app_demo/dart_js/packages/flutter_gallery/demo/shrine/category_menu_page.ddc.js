'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const ui = dart_sdk.ui;
const _interceptors = dart_sdk._interceptors;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__material = require('packages/flutter/material');
const theme$ = packages__flutter__material.src__material__theme;
const packages__scoped_model__scoped_model = require('packages/scoped_model/scoped_model');
const scoped_model = packages__scoped_model__scoped_model.scoped_model;
const packages__flutter_gallery__demo__shrine__model__app_state_model = require('packages/flutter_gallery/demo/shrine/model/app_state_model');
const app_state_model = packages__flutter_gallery__demo__shrine__model__app_state_model.demo__shrine__model__app_state_model;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const gesture_detector = packages__flutter__src__widgets__actions.src__widgets__gesture_detector;
const basic = packages__flutter__src__widgets__actions.src__widgets__basic;
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const text = packages__flutter__src__widgets__actions.src__widgets__text;
const widget_inspector = packages__flutter__src__widgets__actions.src__widgets__widget_inspector;
const container = packages__flutter__src__widgets__actions.src__widgets__container;
const scroll_view = packages__flutter__src__widgets__actions.src__widgets__scroll_view;
const packages__flutter_gallery__demo__shrine__colors = require('packages/flutter_gallery/demo/shrine/colors');
const colors = packages__flutter_gallery__demo__shrine__colors.demo__shrine__colors;
const packages__flutter__src__painting___network_image_web = require('packages/flutter/src/painting/_network_image_web');
const edge_insets = packages__flutter__src__painting___network_image_web.src__painting__edge_insets;
const packages__flutter_gallery__demo__shrine__model__product = require('packages/flutter_gallery/demo/shrine/model/product');
const product = packages__flutter_gallery__demo__shrine__model__product.demo__shrine__model__product;
const category_menu_page = Object.create(dart.library);
const $replaceAll = dartx.replaceAll;
const $toUpperCase = dartx.toUpperCase;
const $map = dartx.map;
const $toList = dartx.toList;
let ScopedModelDescendantOfAppStateModel = () => (ScopedModelDescendantOfAppStateModel = dart.constFn(scoped_model.ScopedModelDescendant$(app_state_model.AppStateModel)))();
let VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
let JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
let BuildContextAndWidgetAndAppStateModelToGestureDetector = () => (BuildContextAndWidgetAndAppStateModelToGestureDetector = dart.constFn(dart.fnType(gesture_detector.GestureDetector, [framework.BuildContext, framework.Widget, app_state_model.AppStateModel])))();
let CategoryToWidget = () => (CategoryToWidget = dart.constFn(dart.fnType(framework.Widget, [product.Category])))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C0() {
    return C0 = dart.const({
      __proto__: basic.SizedBox.prototype,
      [Widget_key]: null,
      [SingleChildRenderObjectWidget_child]: null,
      [SizedBox_height]: 16,
      [SizedBox_width]: null
    });
  },
  get C6() {
    return C6 = dart.const({
      __proto__: basic.SizedBox.prototype,
      [Widget_key]: null,
      [SingleChildRenderObjectWidget_child]: null,
      [SizedBox_height]: 14,
      [SizedBox_width]: null
    });
  },
  get C15() {
    return C15 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 16,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 16,
      [EdgeInsets_left]: 0
    });
  },
  get C32() {
    return C32 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 40,
      [EdgeInsets_left]: 0
    });
  }
});
const Widget_key = dart.privateName(framework, "Widget.key");
const SingleChildRenderObjectWidget_child = dart.privateName(framework, "SingleChildRenderObjectWidget.child");
const SizedBox_height = dart.privateName(basic, "SizedBox.height");
const SizedBox_width = dart.privateName(basic, "SizedBox.width");
let C0;
const _Location_parameterLocations = dart.privateName(widget_inspector, "_Location.parameterLocations");
const _Location_name = dart.privateName(widget_inspector, "_Location.name");
const _Location_column = dart.privateName(widget_inspector, "_Location.column");
const _Location_line = dart.privateName(widget_inspector, "_Location.line");
const _Location_file = dart.privateName(widget_inspector, "_Location.file");
let C6;
const EdgeInsets_bottom = dart.privateName(edge_insets, "EdgeInsets.bottom");
const EdgeInsets_right = dart.privateName(edge_insets, "EdgeInsets.right");
const EdgeInsets_top = dart.privateName(edge_insets, "EdgeInsets.top");
const EdgeInsets_left = dart.privateName(edge_insets, "EdgeInsets.left");
let C15;
const _buildCategory = dart.privateName(category_menu_page, "_buildCategory");
let C32;
const onCategoryTap$ = dart.privateName(category_menu_page, "CategoryMenuPage.onCategoryTap");
category_menu_page.CategoryMenuPage = class CategoryMenuPage extends framework.StatelessWidget {
  get onCategoryTap() {
    return this[onCategoryTap$];
  }
  set onCategoryTap(value) {
    super.onCategoryTap = value;
  }
  [_buildCategory](category, context) {
    let categoryString = dart.toString(category)[$replaceAll]("Category.", "")[$toUpperCase]();
    let theme = theme$.Theme.of(context);
    return new (ScopedModelDescendantOfAppStateModel()).new({builder: dart.fn((context, child, model) => new gesture_detector.GestureDetector.new({onTap: dart.fn(() => {
          model.setCategory(category);
          if (this.onCategoryTap != null) {
            this.onCategoryTap();
          }
        }, VoidToNull()), child: dart.equals(model.selectedCategory, category) ? new basic.Column.new({children: JSArrayOfWidget().of([C0 || CT.C0, new text.Text.new(categoryString, {style: theme.textTheme.body2, textAlign: ui.TextAlign.center, $creationLocationd_0dea112b090073317d4: C1 || CT.C1}), C6 || CT.C6, new container.Container.new({width: 70.0, height: 2.0, color: colors.kShrinePink400, $creationLocationd_0dea112b090073317d4: C7 || CT.C7})]), $creationLocationd_0dea112b090073317d4: C12 || CT.C12}) : new basic.Padding.new({padding: C15 || CT.C15, child: new text.Text.new(categoryString, {style: theme.textTheme.body2.copyWith({color: colors.kShrineBrown900.withAlpha(153)}), textAlign: ui.TextAlign.center, $creationLocationd_0dea112b090073317d4: C16 || CT.C16}), $creationLocationd_0dea112b090073317d4: C21 || CT.C21}), $creationLocationd_0dea112b090073317d4: C25 || CT.C25}), BuildContextAndWidgetAndAppStateModelToGestureDetector()), $creationLocationd_0dea112b090073317d4: C29 || CT.C29});
  }
  build(context) {
    return new basic.Center.new({child: new container.Container.new({padding: C32 || CT.C32, color: colors.kShrinePink100, child: new scroll_view.ListView.new({children: product.Category.values[$map](framework.Widget, dart.fn(c => this[_buildCategory](c, context), CategoryToWidget()))[$toList](), $creationLocationd_0dea112b090073317d4: C33 || CT.C33}), $creationLocationd_0dea112b090073317d4: C36 || CT.C36}), $creationLocationd_0dea112b090073317d4: C41 || CT.C41});
  }
};
(category_menu_page.CategoryMenuPage.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let onCategoryTap = opts && 'onCategoryTap' in opts ? opts.onCategoryTap : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[onCategoryTap$] = onCategoryTap;
  category_menu_page.CategoryMenuPage.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = category_menu_page.CategoryMenuPage.prototype;
dart.addTypeTests(category_menu_page.CategoryMenuPage);
dart.setMethodSignature(category_menu_page.CategoryMenuPage, () => ({
  __proto__: dart.getMethods(category_menu_page.CategoryMenuPage.__proto__),
  [_buildCategory]: dart.fnType(framework.Widget, [product.Category, framework.BuildContext]),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(category_menu_page.CategoryMenuPage, "package:flutter_gallery/demo/shrine/category_menu_page.dart");
dart.setFieldSignature(category_menu_page.CategoryMenuPage, () => ({
  __proto__: dart.getFields(category_menu_page.CategoryMenuPage.__proto__),
  onCategoryTap: dart.finalFieldType(dart.fnType(dart.void, []))
}));
dart.trackLibraries("packages/flutter_gallery/demo/shrine/category_menu_page", {
  "package:flutter_gallery/demo/shrine/category_menu_page.dart": category_menu_page
}, {
}, '{"version":3,"sourceRoot":"","sources":["category_menu_page.dart"],"names":[],"mappings":";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;EAiBqB;;;;;;mBAEY,UAAuB;AACvC,yBAA0B,AAAW,AAA4B,cAAhD,QAAQ,eAAuB,aAAa;AAC1D,gBAAc,gBAAG,OAAO;AACxC,UAAO,4DACI,SAAc,SAAgB,OAAqB,UACxD,iDACS;AACsB,UAA3B,AAAM,KAAD,aAAa,QAAQ;AAC1B,cAAI,sBAAiB;AACJ,YAAf;;iCAG0B,YAAvB,AAAM,KAAD,mBAAqB,QAAQ,IACrC,gCACoB,mCAEhB,kBACE,cAAc,UACP,AAAM,AAAU,KAAX,6BACS,yFAGvB,oCACS,cACC,YACD,0IAIb,sDAES,kBACL,cAAc,UACP,AAAM,AAAU,AAAM,KAAjB,kCACH,AAAgB,iCAAU,mBAEd;EAKvC;QAG0B;AACxB,UAAO,8BACE,4DAEE,8BACA,wCACc,AAAO,AAAgD,gDAA5C,QAAU,KAAM,qBAAe,CAAC,EAAE,OAAO;EAI/E;;;MA5DM;MACC;;;AACF,qEAAW,GAAG;;AAAC","file":"category_menu_page.ddc.js"}');
// Exports:
exports.demo__shrine__category_menu_page = category_menu_page;

//# sourceMappingURL=category_menu_page.ddc.js.map
