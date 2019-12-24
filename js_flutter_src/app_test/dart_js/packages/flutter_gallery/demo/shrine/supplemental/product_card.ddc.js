'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const _interceptors = dart_sdk._interceptors;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__intl__intl = require('packages/intl/intl');
const intl = packages__intl__intl.intl;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const localizations = packages__flutter__src__widgets__actions.src__widgets__localizations;
const image = packages__flutter__src__widgets__actions.src__widgets__image;
const widget_inspector = packages__flutter__src__widgets__actions.src__widgets__widget_inspector;
const gesture_detector = packages__flutter__src__widgets__actions.src__widgets__gesture_detector;
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const basic = packages__flutter__src__widgets__actions.src__widgets__basic;
const media_query = packages__flutter__src__widgets__actions.src__widgets__media_query;
const text = packages__flutter__src__widgets__actions.src__widgets__text;
const icon = packages__flutter__src__widgets__actions.src__widgets__icon;
const icon_data = packages__flutter__src__widgets__actions.src__widgets__icon_data;
const packages__flutter__material = require('packages/flutter/material');
const theme$ = packages__flutter__material.src__material__theme;
const packages__flutter__src__painting___network_image_web = require('packages/flutter/src/painting/_network_image_web');
const box_fit = packages__flutter__src__painting___network_image_web.src__painting__box_fit;
const edge_insets = packages__flutter__src__painting___network_image_web.src__painting__edge_insets;
const packages__scoped_model__scoped_model = require('packages/scoped_model/scoped_model');
const scoped_model = packages__scoped_model__scoped_model.scoped_model;
const packages__flutter_gallery__demo__shrine__model__app_state_model = require('packages/flutter_gallery/demo/shrine/model/app_state_model');
const app_state_model = packages__flutter_gallery__demo__shrine__model__app_state_model.demo__shrine__model__app_state_model;
const packages__flutter__src__rendering__animated_size = require('packages/flutter/src/rendering/animated_size');
const flex = packages__flutter__src__rendering__animated_size.src__rendering__flex;
const paragraph = packages__flutter__src__rendering__animated_size.src__rendering__paragraph;
const packages__flutter_gallery__demo__shrine__model__product = require('packages/flutter_gallery/demo/shrine/model/product');
const product = packages__flutter_gallery__demo__shrine__model__product.demo__shrine__model__product;
const product_card = Object.create(dart.library);
let ScopedModelDescendantOfAppStateModel = () => (ScopedModelDescendantOfAppStateModel = dart.constFn(scoped_model.ScopedModelDescendant$(app_state_model.AppStateModel)))();
let VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
let BuildContextAndWidgetAndAppStateModelToGestureDetector = () => (BuildContextAndWidgetAndAppStateModelToGestureDetector = dart.constFn(dart.fnType(gesture_detector.GestureDetector, [framework.BuildContext, framework.Widget, app_state_model.AppStateModel])))();
let JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C20() {
    return C20 = dart.const({
      __proto__: basic.SizedBox.prototype,
      [Widget_key]: null,
      [SingleChildRenderObjectWidget_child]: null,
      [SizedBox_height]: 4,
      [SizedBox_width]: null
    });
  },
  get C42() {
    return C42 = dart.const({
      __proto__: icon_data.IconData.prototype,
      [IconData_matchTextDirection]: false,
      [IconData_fontPackage]: null,
      [IconData_fontFamily]: "MaterialIcons",
      [IconData_codePoint]: 59476
    });
  },
  get C41() {
    return C41 = dart.const({
      __proto__: icon.Icon.prototype,
      [Widget_key]: null,
      [Icon_textDirection]: null,
      [Icon_semanticLabel]: null,
      [Icon_color]: null,
      [Icon_size]: null,
      [Icon_icon]: C42 || CT.C42
    });
  },
  get C43() {
    return C43 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 16,
      [EdgeInsets_right]: 16,
      [EdgeInsets_top]: 16,
      [EdgeInsets_left]: 16
    });
  },
  get C40() {
    return C40 = dart.const({
      __proto__: basic.Padding.prototype,
      [Widget_key]: null,
      [SingleChildRenderObjectWidget_child]: C41 || CT.C41,
      [Padding_padding]: C43 || CT.C43
    });
  }
});
const _Location_parameterLocations = dart.privateName(widget_inspector, "_Location.parameterLocations");
const _Location_name = dart.privateName(widget_inspector, "_Location.name");
const _Location_column = dart.privateName(widget_inspector, "_Location.column");
const _Location_line = dart.privateName(widget_inspector, "_Location.line");
const _Location_file = dart.privateName(widget_inspector, "_Location.file");
const Widget_key = dart.privateName(framework, "Widget.key");
const SingleChildRenderObjectWidget_child = dart.privateName(framework, "SingleChildRenderObjectWidget.child");
const SizedBox_height = dart.privateName(basic, "SizedBox.height");
const SizedBox_width = dart.privateName(basic, "SizedBox.width");
let C20;
const Icon_textDirection = dart.privateName(icon, "Icon.textDirection");
const Icon_semanticLabel = dart.privateName(icon, "Icon.semanticLabel");
const Icon_color = dart.privateName(icon, "Icon.color");
const Icon_size = dart.privateName(icon, "Icon.size");
const IconData_matchTextDirection = dart.privateName(icon_data, "IconData.matchTextDirection");
const IconData_fontPackage = dart.privateName(icon_data, "IconData.fontPackage");
const IconData_fontFamily = dart.privateName(icon_data, "IconData.fontFamily");
const IconData_codePoint = dart.privateName(icon_data, "IconData.codePoint");
let C42;
const Icon_icon = dart.privateName(icon, "Icon.icon");
let C41;
const EdgeInsets_bottom = dart.privateName(edge_insets, "EdgeInsets.bottom");
const EdgeInsets_right = dart.privateName(edge_insets, "EdgeInsets.right");
const EdgeInsets_top = dart.privateName(edge_insets, "EdgeInsets.top");
const EdgeInsets_left = dart.privateName(edge_insets, "EdgeInsets.left");
let C43;
const Padding_padding = dart.privateName(basic, "Padding.padding");
let C40;
const imageAspectRatio$ = dart.privateName(product_card, "ProductCard.imageAspectRatio");
const product$ = dart.privateName(product_card, "ProductCard.product");
product_card.ProductCard = class ProductCard extends framework.StatelessWidget {
  get imageAspectRatio() {
    return this[imageAspectRatio$];
  }
  set imageAspectRatio(value) {
    super.imageAspectRatio = value;
  }
  get product() {
    return this[product$];
  }
  set product(value) {
    super.product = value;
  }
  build(context) {
    let formatter = intl.NumberFormat.simpleCurrency({decimalDigits: 0, locale: dart.toString(localizations.Localizations.localeOf(context))});
    let theme = theme$.Theme.of(context);
    let imageWidget = new image.Image.asset(this.product.assetName, {package: this.product.assetPackage, fit: box_fit.BoxFit.cover, $creationLocationd_0dea112b090073317d4: C0 || CT.C0});
    return new (ScopedModelDescendantOfAppStateModel()).new({builder: dart.fn((context, child, model) => new gesture_detector.GestureDetector.new({onTap: dart.fn(() => {
          model.addProductToCart(this.product.id);
        }, VoidToNull()), child: child, $creationLocationd_0dea112b090073317d4: C5 || CT.C5}), BuildContextAndWidgetAndAppStateModelToGestureDetector()), child: new basic.Stack.new({children: JSArrayOfWidget().of([new basic.Column.new({mainAxisAlignment: flex.MainAxisAlignment.center, crossAxisAlignment: flex.CrossAxisAlignment.center, children: JSArrayOfWidget().of([new basic.AspectRatio.new({aspectRatio: this.imageAspectRatio, child: imageWidget, $creationLocationd_0dea112b090073317d4: C9 || CT.C9}), new basic.SizedBox.new({height: 65 * dart.notNull(media_query.MediaQuery.of(context).textScaleFactor), width: 121.0, child: new basic.Column.new({mainAxisAlignment: flex.MainAxisAlignment.end, crossAxisAlignment: flex.CrossAxisAlignment.center, children: JSArrayOfWidget().of([new text.Text.new(this.product == null ? "" : this.product.name, {style: theme.textTheme.button, softWrap: false, overflow: paragraph.TextOverflow.ellipsis, maxLines: 1, $creationLocationd_0dea112b090073317d4: C13 || CT.C13}), C20 || CT.C20, new text.Text.new(this.product == null ? "" : formatter.format(this.product.price), {style: theme.textTheme.caption, $creationLocationd_0dea112b090073317d4: C21 || CT.C21})]), $creationLocationd_0dea112b090073317d4: C25 || CT.C25}), $creationLocationd_0dea112b090073317d4: C30 || CT.C30})]), $creationLocationd_0dea112b090073317d4: C35 || CT.C35}), C40 || CT.C40]), $creationLocationd_0dea112b090073317d4: C44 || CT.C44}), $creationLocationd_0dea112b090073317d4: C47 || CT.C47});
  }
};
(product_card.ProductCard.new = function(opts) {
  let imageAspectRatio = opts && 'imageAspectRatio' in opts ? opts.imageAspectRatio : 0.673469387755102;
  let product = opts && 'product' in opts ? opts.product : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[imageAspectRatio$] = imageAspectRatio;
  this[product$] = product;
  if (!(imageAspectRatio == null || dart.notNull(imageAspectRatio) > 0)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/shrine/supplemental/product_card.dart", 14, 16, "imageAspectRatio == null || imageAspectRatio > 0");
  product_card.ProductCard.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = product_card.ProductCard.prototype;
dart.addTypeTests(product_card.ProductCard);
dart.setMethodSignature(product_card.ProductCard, () => ({
  __proto__: dart.getMethods(product_card.ProductCard.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(product_card.ProductCard, "package:flutter_gallery/demo/shrine/supplemental/product_card.dart");
dart.setFieldSignature(product_card.ProductCard, () => ({
  __proto__: dart.getFields(product_card.ProductCard.__proto__),
  imageAspectRatio: dart.finalFieldType(core.double),
  product: dart.finalFieldType(product.Product)
}));
dart.defineLazy(product_card.ProductCard, {
  /*product_card.ProductCard.kTextBoxHeight*/get kTextBoxHeight() {
    return 65;
  }
});
dart.trackLibraries("packages/flutter_gallery/demo/shrine/supplemental/product_card", {
  "package:flutter_gallery/demo/shrine/supplemental/product_card.dart": product_card
}, {
}, '{"version":3,"sourceRoot":"","sources":["product_card.dart"],"names":[],"mappings":";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;EAee;;;;;;EACC;;;;;;QAKY;AACL,oBAAyB,iDAC3B,WACyB,cAAlB,qCAAS,OAAO;AAGxB,gBAAc,gBAAG,OAAO;AAE5B,sBAAoB,sBAC9B,AAAQ,kCACC,AAAQ,gCACL;AAGd,UAAO,4DACI,SAAc,SAAgB,OAAqB,UACnD,iDACE;AAC6B,UAAlC,AAAM,KAAD,kBAAkB,AAAQ;iCAE1B,KAAK,2HAGT,+BACa,sBAChB,yCACuC,mDACE,0CACrB,sBAChB,wCACe,8BACN,WAAW,yDAEpB,gCACyB,kBAAa,AAAY,0BAAT,OAAO,2BACvC,cACA,yCACgC,gDACE,0CACrB,sBAChB,kBACE,AAAQ,gBAAG,OAAO,KAAK,AAAQ,2BACxB,AAAM,AAAU,KAAX,6BACF,iBACa,2CACb,2EAGZ,kBACE,AAAQ,gBAAG,OAAO,KAAK,AAAU,SAAD,QAAQ,AAAQ,6BACzC,AAAM,AAAU,KAAX;EAchC;;;MAzEyB;MAAiC;;EAAjC;EAAiC;QAC7C,AAAiB,AAAQ,gBAAT,IAAI,QAAyB,aAAjB,gBAAgB,IAAG;AADtD;;AACwD;;;;;;;;;;;;;IAK1C,uCAAc","file":"product_card.ddc.js"}');
// Exports:
exports.demo__shrine__supplemental__product_card = product_card;

//# sourceMappingURL=product_card.ddc.js.map
