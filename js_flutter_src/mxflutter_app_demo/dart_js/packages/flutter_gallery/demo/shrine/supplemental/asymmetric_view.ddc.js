'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const container = packages__flutter__src__widgets__actions.src__widgets__container;
const media_query = packages__flutter__src__widgets__actions.src__widgets__media_query;
const widget_inspector = packages__flutter__src__widgets__actions.src__widgets__widget_inspector;
const basic = packages__flutter__src__widgets__actions.src__widgets__basic;
const scroll_view = packages__flutter__src__widgets__actions.src__widgets__scroll_view;
const scroll_physics = packages__flutter__src__widgets__actions.src__widgets__scroll_physics;
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const packages__flutter_gallery__demo__shrine__supplemental__product_columns = require('packages/flutter_gallery/demo/shrine/supplemental/product_columns');
const product_columns = packages__flutter_gallery__demo__shrine__supplemental__product_columns.demo__shrine__supplemental__product_columns;
const packages__flutter__src__painting___network_image_web = require('packages/flutter/src/painting/_network_image_web');
const edge_insets = packages__flutter__src__painting___network_image_web.src__painting__edge_insets;
const basic_types = packages__flutter__src__painting___network_image_web.src__painting__basic_types;
const packages__flutter_gallery__demo__shrine__model__product = require('packages/flutter_gallery/demo/shrine/model/product');
const product = packages__flutter_gallery__demo__shrine__model__product.demo__shrine__model__product;
const asymmetric_view = Object.create(dart.library);
const $isEmpty = dartx.isEmpty;
const $length = dartx.length;
const $modulo = dartx['%'];
const $_get = dartx._get;
const $toList = dartx.toList;
const $truncate = dartx.truncate;
const $ceil = dartx.ceil;
let ListOfContainer = () => (ListOfContainer = dart.constFn(core.List$(container.Container)))();
let intToContainer = () => (intToContainer = dart.constFn(dart.fnType(container.Container, [core.int])))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C0() {
    return C0 = dart.constList([], container.Container);
  },
  get C8() {
    return C8 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 16,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 16
    });
  },
  get C17() {
    return C17 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 44,
      [EdgeInsets_right]: 16,
      [EdgeInsets_top]: 34,
      [EdgeInsets_left]: 0
    });
  },
  get C18() {
    return C18 = dart.const({
      __proto__: scroll_physics.AlwaysScrollableScrollPhysics.prototype,
      [ScrollPhysics_parent]: null
    });
  }
});
let C0;
const _listItemCount = dart.privateName(asymmetric_view, "_listItemCount");
const _evenCasesIndex = dart.privateName(asymmetric_view, "_evenCasesIndex");
const _Location_parameterLocations = dart.privateName(widget_inspector, "_Location.parameterLocations");
const _Location_name = dart.privateName(widget_inspector, "_Location.name");
const _Location_column = dart.privateName(widget_inspector, "_Location.column");
const _Location_line = dart.privateName(widget_inspector, "_Location.line");
const _Location_file = dart.privateName(widget_inspector, "_Location.file");
const _oddCasesIndex = dart.privateName(asymmetric_view, "_oddCasesIndex");
const EdgeInsets_bottom = dart.privateName(edge_insets, "EdgeInsets.bottom");
const EdgeInsets_right = dart.privateName(edge_insets, "EdgeInsets.right");
const EdgeInsets_top = dart.privateName(edge_insets, "EdgeInsets.top");
const EdgeInsets_left = dart.privateName(edge_insets, "EdgeInsets.left");
let C8;
const _buildColumns = dart.privateName(asymmetric_view, "_buildColumns");
let C17;
const ScrollPhysics_parent = dart.privateName(scroll_physics, "ScrollPhysics.parent");
let C18;
const products$ = dart.privateName(asymmetric_view, "AsymmetricView.products");
asymmetric_view.AsymmetricView = class AsymmetricView extends framework.StatelessWidget {
  get products() {
    return this[products$];
  }
  set products(value) {
    super.products = value;
  }
  [_buildColumns](context) {
    if (this.products == null || dart.test(this.products[$isEmpty])) {
      return C0 || CT.C0;
    }
    return ListOfContainer().generate(this[_listItemCount](this.products[$length]), dart.fn(index => {
      let width = 0.59 * dart.notNull(media_query.MediaQuery.of(context).size.width);
      let column = null;
      if (index[$modulo](2) === 0) {
        let bottom = this[_evenCasesIndex](index);
        column = new product_columns.TwoProductCardColumn.new({bottom: this.products[$_get](bottom), top: dart.notNull(this.products[$length]) - 1 >= dart.notNull(bottom) + 1 ? this.products[$_get](dart.notNull(bottom) + 1) : null, $creationLocationd_0dea112b090073317d4: C1 || CT.C1});
        width = width + 32.0;
      } else {
        column = new product_columns.OneProductCardColumn.new({product: this.products[$_get](this[_oddCasesIndex](index)), $creationLocationd_0dea112b090073317d4: C5 || CT.C5});
      }
      return new container.Container.new({width: width, child: new basic.Padding.new({padding: C8 || CT.C8, child: column, $creationLocationd_0dea112b090073317d4: C9 || CT.C9}), $creationLocationd_0dea112b090073317d4: C13 || CT.C13});
    }, intToContainer()))[$toList]();
  }
  [_evenCasesIndex](input) {
    return (dart.notNull(input) / 2)[$truncate]() * 3;
  }
  [_oddCasesIndex](input) {
    if (!(dart.notNull(input) > 0)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/shrine/supplemental/asymmetric_view.dart", 66, 12, "input > 0");
    return (dart.notNull(input) / 2)[$ceil]() * 3 - 1;
  }
  [_listItemCount](totalItems) {
    return totalItems[$modulo](3) === 0 ? (dart.notNull(totalItems) / 3)[$truncate]() * 2 : (dart.notNull(totalItems) / 3)[$ceil]() * 2 - 1;
  }
  build(context) {
    return new scroll_view.ListView.new({scrollDirection: basic_types.Axis.horizontal, padding: C17 || CT.C17, children: this[_buildColumns](context), physics: C18 || CT.C18, $creationLocationd_0dea112b090073317d4: C19 || CT.C19});
  }
};
(asymmetric_view.AsymmetricView.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let products = opts && 'products' in opts ? opts.products : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[products$] = products;
  asymmetric_view.AsymmetricView.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = asymmetric_view.AsymmetricView.prototype;
dart.addTypeTests(asymmetric_view.AsymmetricView);
dart.setMethodSignature(asymmetric_view.AsymmetricView, () => ({
  __proto__: dart.getMethods(asymmetric_view.AsymmetricView.__proto__),
  [_buildColumns]: dart.fnType(core.List$(container.Container), [framework.BuildContext]),
  [_evenCasesIndex]: dart.fnType(core.int, [core.int]),
  [_oddCasesIndex]: dart.fnType(core.int, [core.int]),
  [_listItemCount]: dart.fnType(core.int, [core.int]),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(asymmetric_view.AsymmetricView, "package:flutter_gallery/demo/shrine/supplemental/asymmetric_view.dart");
dart.setFieldSignature(asymmetric_view.AsymmetricView, () => ({
  __proto__: dart.getFields(asymmetric_view.AsymmetricView.__proto__),
  products: dart.finalFieldType(core.List$(product.Product))
}));
dart.trackLibraries("packages/flutter_gallery/demo/shrine/supplemental/asymmetric_view", {
  "package:flutter_gallery/demo/shrine/supplemental/asymmetric_view.dart": asymmetric_view
}, {
}, '{"version":3,"sourceRoot":"","sources":["asymmetric_view.dart"],"names":[],"mappings":";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;EAYsB;;;;;;kBAEuB;AACzC,QAAI,AAAS,iBAAG,kBAAQ,AAAS;AAC/B;;AAWF,UAAA,AA0BG,4BA1B6B,qBAAe,AAAS,yBAAS,QAAK;AAC7D,kBAAQ,AAAI,oBAAa,AAAY,AAAK,0BAAd,OAAO;AACnC;AACP,UAAI,AAAM,AAAI,KAAL,UAAG,OAAK;AAEL,qBAAS,sBAAgB,KAAK;AAMvC,QALD,SAAS,sDACC,AAAQ,qBAAC,MAAM,QACF,AAAI,aAApB,AAAS,0BAAS,KAAY,aAAP,MAAM,IAAG,IACjC,AAAQ,qBAAQ,aAAP,MAAM,IAAG,KAClB;AAEO,QAAb,QAAA,AAAM,KAAD,GAAI;;AAKR,QAFD,SAAS,uDACE,AAAQ,qBAAC,qBAAe,KAAK;;AAG1C,YAAO,qCACE,KAAK,SACL,oDAEE,MAAM;;EAIrB;oBAEwB;AAKtB,UAAa,AAAK,eAAX,KAAK,IAAI,kBAAI;EACtB;mBAEuB;AACrB,UAAa,aAAN,KAAK,IAAG;AACf,UAAmB,AAAO,AAAI,EAAhB,aAAN,KAAK,IAAG,cAAY,IAAI;EAClC;mBAEuB;AACrB,UAAQ,AAAW,AAAI,WAAL,UAAG,OAAK,IACX,AAAK,cAAhB,UAAU,IAAI,kBAAI,IACD,AAAO,AAAI,CAAhB,aAAX,UAAU,IAAG,cAAY,IAAI;EACpC;QAG0B;AACxB,UAAO,gDACiB,+DAEZ,oBAAc,OAAO;EAGnC;;;MAzE0B;MAAU;;;AAAa,gEAAW,GAAG;;AAAC","file":"asymmetric_view.ddc.js"}');
// Exports:
exports.demo__shrine__supplemental__asymmetric_view = asymmetric_view;

//# sourceMappingURL=asymmetric_view.ddc.js.map
