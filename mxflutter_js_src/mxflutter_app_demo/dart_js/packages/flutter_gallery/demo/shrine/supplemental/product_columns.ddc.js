'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const _interceptors = dart_sdk._interceptors;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const layout_builder = packages__flutter__src__widgets__actions.src__widgets__layout_builder;
const scroll_view = packages__flutter__src__widgets__actions.src__widgets__scroll_view;
const scroll_physics = packages__flutter__src__widgets__actions.src__widgets__scroll_physics;
const basic = packages__flutter__src__widgets__actions.src__widgets__basic;
const widget_inspector = packages__flutter__src__widgets__actions.src__widgets__widget_inspector;
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const packages__flutter__src__painting___network_image_web = require('packages/flutter/src/painting/_network_image_web');
const edge_insets = packages__flutter__src__painting___network_image_web.src__painting__edge_insets;
const packages__flutter_gallery__demo__shrine__supplemental__product_card = require('packages/flutter_gallery/demo/shrine/supplemental/product_card');
const product_card = packages__flutter_gallery__demo__shrine__supplemental__product_card.demo__shrine__supplemental__product_card;
const packages__flutter__src__rendering__animated_size = require('packages/flutter/src/rendering/animated_size');
const box = packages__flutter__src__rendering__animated_size.src__rendering__box;
const packages__flutter_gallery__demo__shrine__model__product = require('packages/flutter_gallery/demo/shrine/model/product');
const product = packages__flutter_gallery__demo__shrine__model__product.demo__shrine__model__product;
const product_columns = Object.create(dart.library);
let JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
let BuildContextAndBoxConstraintsToListView = () => (BuildContextAndBoxConstraintsToListView = dart.constFn(dart.fnType(scroll_view.ListView, [framework.BuildContext, box.BoxConstraints])))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C0() {
    return C0 = dart.const({
      __proto__: scroll_physics.ClampingScrollPhysics.prototype,
      [ScrollPhysics_parent]: null
    });
  },
  get C1() {
    return C1 = dart.const({
      __proto__: edge_insets.EdgeInsetsDirectional.prototype,
      [EdgeInsetsDirectional_bottom]: 0,
      [EdgeInsetsDirectional_end]: 0,
      [EdgeInsetsDirectional_top]: 0,
      [EdgeInsetsDirectional_start]: 28
    });
  },
  get C13() {
    return C13 = dart.const({
      __proto__: basic.SizedBox.prototype,
      [Widget_key]: null,
      [SingleChildRenderObjectWidget_child]: null,
      [SizedBox_height]: 44,
      [SizedBox_width]: null
    });
  },
  get C14() {
    return C14 = dart.const({
      __proto__: edge_insets.EdgeInsetsDirectional.prototype,
      [EdgeInsetsDirectional_bottom]: 0,
      [EdgeInsetsDirectional_end]: 28,
      [EdgeInsetsDirectional_top]: 0,
      [EdgeInsetsDirectional_start]: 0
    });
  },
  get C30() {
    return C30 = dart.const({
      __proto__: basic.SizedBox.prototype,
      [Widget_key]: null,
      [SingleChildRenderObjectWidget_child]: null,
      [SizedBox_height]: 40,
      [SizedBox_width]: null
    });
  }
});
const ScrollPhysics_parent = dart.privateName(scroll_physics, "ScrollPhysics.parent");
let C0;
const EdgeInsetsDirectional_bottom = dart.privateName(edge_insets, "EdgeInsetsDirectional.bottom");
const EdgeInsetsDirectional_end = dart.privateName(edge_insets, "EdgeInsetsDirectional.end");
const EdgeInsetsDirectional_top = dart.privateName(edge_insets, "EdgeInsetsDirectional.top");
const EdgeInsetsDirectional_start = dart.privateName(edge_insets, "EdgeInsetsDirectional.start");
let C1;
const _Location_parameterLocations = dart.privateName(widget_inspector, "_Location.parameterLocations");
const _Location_name = dart.privateName(widget_inspector, "_Location.name");
const _Location_column = dart.privateName(widget_inspector, "_Location.column");
const _Location_line = dart.privateName(widget_inspector, "_Location.line");
const _Location_file = dart.privateName(widget_inspector, "_Location.file");
const Widget_key = dart.privateName(framework, "Widget.key");
const SingleChildRenderObjectWidget_child = dart.privateName(framework, "SingleChildRenderObjectWidget.child");
const SizedBox_height = dart.privateName(basic, "SizedBox.height");
const SizedBox_width = dart.privateName(basic, "SizedBox.width");
let C13;
let C14;
const bottom$ = dart.privateName(product_columns, "TwoProductCardColumn.bottom");
const top$ = dart.privateName(product_columns, "TwoProductCardColumn.top");
product_columns.TwoProductCardColumn = class TwoProductCardColumn extends framework.StatelessWidget {
  get bottom() {
    return this[bottom$];
  }
  set bottom(value) {
    super.bottom = value;
  }
  get top() {
    return this[top$];
  }
  set top(value) {
    super.top = value;
  }
  build(context) {
    return new layout_builder.LayoutBuilder.new({builder: dart.fn((context, constraints) => {
        let heightOfCards = (dart.notNull(constraints.biggest.height) - 44) / 2.0;
        let availableHeightForImages = heightOfCards - 65;
        let imageAspectRatio = availableHeightForImages >= 0.0 ? dart.notNull(constraints.biggest.width) / availableHeightForImages : 49.0 / 33.0;
        return new scroll_view.ListView.new({physics: C0 || CT.C0, children: JSArrayOfWidget().of([new basic.Padding.new({padding: C1 || CT.C1, child: this.top != null ? new product_card.ProductCard.new({imageAspectRatio: imageAspectRatio, product: this.top, $creationLocationd_0dea112b090073317d4: C2 || CT.C2}) : new basic.SizedBox.new({height: heightOfCards > 0 ? heightOfCards : 44, $creationLocationd_0dea112b090073317d4: C6 || CT.C6}), $creationLocationd_0dea112b090073317d4: C9 || CT.C9}), C13 || CT.C13, new basic.Padding.new({padding: C14 || CT.C14, child: new product_card.ProductCard.new({imageAspectRatio: imageAspectRatio, product: this.bottom, $creationLocationd_0dea112b090073317d4: C15 || CT.C15}), $creationLocationd_0dea112b090073317d4: C19 || CT.C19})]), $creationLocationd_0dea112b090073317d4: C23 || CT.C23});
      }, BuildContextAndBoxConstraintsToListView()), $creationLocationd_0dea112b090073317d4: C27 || CT.C27});
  }
};
(product_columns.TwoProductCardColumn.new = function(opts) {
  let bottom = opts && 'bottom' in opts ? opts.bottom : null;
  let top = opts && 'top' in opts ? opts.top : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[bottom$] = bottom;
  this[top$] = top;
  if (!(bottom != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/shrine/supplemental/product_columns.dart", 14, 15, "bottom != null");
  product_columns.TwoProductCardColumn.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = product_columns.TwoProductCardColumn.prototype;
dart.addTypeTests(product_columns.TwoProductCardColumn);
dart.setMethodSignature(product_columns.TwoProductCardColumn, () => ({
  __proto__: dart.getMethods(product_columns.TwoProductCardColumn.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(product_columns.TwoProductCardColumn, "package:flutter_gallery/demo/shrine/supplemental/product_columns.dart");
dart.setFieldSignature(product_columns.TwoProductCardColumn, () => ({
  __proto__: dart.getFields(product_columns.TwoProductCardColumn.__proto__),
  bottom: dart.finalFieldType(product.Product),
  top: dart.finalFieldType(product.Product)
}));
let C30;
const product$ = dart.privateName(product_columns, "OneProductCardColumn.product");
product_columns.OneProductCardColumn = class OneProductCardColumn extends framework.StatelessWidget {
  get product() {
    return this[product$];
  }
  set product(value) {
    super.product = value;
  }
  build(context) {
    return new scroll_view.ListView.new({physics: C0 || CT.C0, reverse: true, children: JSArrayOfWidget().of([C30 || CT.C30, new product_card.ProductCard.new({product: this.product, $creationLocationd_0dea112b090073317d4: C31 || CT.C31})]), $creationLocationd_0dea112b090073317d4: C34 || CT.C34});
  }
};
(product_columns.OneProductCardColumn.new = function(opts) {
  let product = opts && 'product' in opts ? opts.product : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[product$] = product;
  product_columns.OneProductCardColumn.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = product_columns.OneProductCardColumn.prototype;
dart.addTypeTests(product_columns.OneProductCardColumn);
dart.setMethodSignature(product_columns.OneProductCardColumn, () => ({
  __proto__: dart.getMethods(product_columns.OneProductCardColumn.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(product_columns.OneProductCardColumn, "package:flutter_gallery/demo/shrine/supplemental/product_columns.dart");
dart.setFieldSignature(product_columns.OneProductCardColumn, () => ({
  __proto__: dart.getFields(product_columns.OneProductCardColumn.__proto__),
  product: dart.finalFieldType(product.Product)
}));
dart.trackLibraries("packages/flutter_gallery/demo/shrine/supplemental/product_columns", {
  "package:flutter_gallery/demo/shrine/supplemental/product_columns.dart": product_columns
}, {
}, '{"version":3,"sourceRoot":"","sources":["product_columns.dart"],"names":[],"mappings":";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;EAegB;;;;;;EAAQ;;;;;;QAGI;AACxB,UAAO,gDAAuB,SAAc,SAAwB;AAGrD,4BAA4D,CAAhB,aAA3B,AAAY,AAAQ,WAAT,yBAAkC;AAC9D,uCAA2B,AAAc,aAAD;AAGxC,+BAAmB,AAAyB,wBAAD,IAAI,MAC9B,aAA1B,AAAY,AAAQ,WAAT,kBAAiB,wBAAwB,GACpD,AAAK,OAAE;AAEX,cAAO,+DAEa,sBAChB,oDAES,AAAI,YAAG,OACV,oDACoB,gBAAgB,WACzB,kEAEX,gCACU,AAAc,aAAD,GAAG,IAAI,aAAa,oIAIjD,sDAES,oDACa,gBAAgB,WACzB;;EAMrB;;;MA5CiB;MACV;;EADU;EACV;QACK,AAAO,MAAD,IAAI;AAHhB;;AAGqB;;;;;;;;;;;;;;;EAgDb;;;;;;QAGY;AACxB,UAAO,8DAEI,gBACS,qCAIhB,2CACW;EAIjB;;;MAlBiC;;;AAA3B;;AAAoC","file":"product_columns.ddc.js"}');
// Exports:
exports.demo__shrine__supplemental__product_columns = product_columns;

//# sourceMappingURL=product_columns.ddc.js.map
