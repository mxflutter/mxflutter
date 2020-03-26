'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const _js_helper = dart_sdk._js_helper;
const collection = dart_sdk.collection;
const _interceptors = dart_sdk._interceptors;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter_gallery__demo__shrine__model__product = require('packages/flutter_gallery/demo/shrine/model/product');
const product = packages__flutter_gallery__demo__shrine__model__product.demo__shrine__model__product;
const packages__flutter_gallery__demo__shrine__model__products_repository = require('packages/flutter_gallery/demo/shrine/model/products_repository');
const products_repository = packages__flutter_gallery__demo__shrine__model__products_repository.demo__shrine__model__products_repository;
const packages__scoped_model__scoped_model = require('packages/scoped_model/scoped_model');
const scoped_model = packages__scoped_model__scoped_model.scoped_model;
const app_state_model = Object.create(dart.library);
const $values = dartx.values;
const $fold = dartx.fold;
const $keys = dartx.keys;
const $_get = dartx._get;
const $map = dartx.map;
const $where = dartx.where;
const $toList = dartx.toList;
const $containsKey = dartx.containsKey;
const $_set = dartx._set;
const $remove = dartx.remove;
const $firstWhere = dartx.firstWhere;
const $clear = dartx.clear;
let IdentityMapOfint$int = () => (IdentityMapOfint$int = dart.constFn(_js_helper.IdentityMap$(core.int, core.int)))();
let LinkedHashMapOfint$int = () => (LinkedHashMapOfint$int = dart.constFn(collection.LinkedHashMap$(core.int, core.int)))();
let intAndintToint = () => (intAndintToint = dart.constFn(dart.fnType(core.int, [core.int, core.int])))();
let intToint = () => (intToint = dart.constFn(dart.fnType(core.int, [core.int])))();
let doubleAndintTodouble = () => (doubleAndintTodouble = dart.constFn(dart.fnType(core.double, [core.double, core.int])))();
let numAndintTonum = () => (numAndintTonum = dart.constFn(dart.fnType(core.num, [core.num, core.int])))();
let JSArrayOfProduct = () => (JSArrayOfProduct = dart.constFn(_interceptors.JSArray$(product.Product)))();
let ListOfProduct = () => (ListOfProduct = dart.constFn(core.List$(product.Product)))();
let ProductTobool = () => (ProductTobool = dart.constFn(dart.fnType(core.bool, [product.Product])))();
const CT = Object.create(null);
const _availableProducts = dart.privateName(app_state_model, "_availableProducts");
const _selectedCategory = dart.privateName(app_state_model, "_selectedCategory");
const _productsInCart = dart.privateName(app_state_model, "_productsInCart");
app_state_model.AppStateModel = class AppStateModel extends scoped_model.Model {
  get productsInCart() {
    return LinkedHashMapOfint$int().from(this[_productsInCart]);
  }
  get totalCartQuantity() {
    return this[_productsInCart][$values][$fold](core.int, 0, dart.fn((v, e) => dart.notNull(v) + dart.notNull(e), intAndintToint()));
  }
  get selectedCategory() {
    return this[_selectedCategory];
  }
  get subtotalCost() {
    return this[_productsInCart][$keys][$map](core.int, dart.fn(id => dart.notNull(this[_availableProducts][$_get](id).price) * dart.notNull(this[_productsInCart][$_get](id)), intToint()))[$fold](core.double, 0.0, dart.fn((sum, e) => dart.notNull(sum) + dart.notNull(e), doubleAndintTodouble()));
  }
  get shippingCost() {
    return dart.notNull(app_state_model._shippingCostPerItem) * dart.notNull(this[_productsInCart][$values][$fold](core.num, 0.0, dart.fn((sum, e) => dart.notNull(sum) + dart.notNull(e), numAndintTonum())));
  }
  get tax() {
    return dart.notNull(this.subtotalCost) * dart.notNull(app_state_model._salesTaxRate);
  }
  get totalCost() {
    return dart.notNull(this.subtotalCost) + dart.notNull(this.shippingCost) + dart.notNull(this.tax);
  }
  getProducts() {
    if (this[_availableProducts] == null) {
      return JSArrayOfProduct().of([]);
    }
    if (dart.equals(this[_selectedCategory], product.Category.all)) {
      return ListOfProduct().from(this[_availableProducts]);
    } else {
      return this[_availableProducts][$where](dart.fn(p => dart.equals(p.category, this[_selectedCategory]), ProductTobool()))[$toList]();
    }
  }
  addProductToCart(productId) {
    let t1, t0;
    if (!dart.test(this[_productsInCart][$containsKey](productId))) {
      this[_productsInCart][$_set](productId, 1);
    } else {
      t0 = this[_productsInCart];
      t1 = productId;
      t0[$_set](t1, dart.notNull(t0[$_get](t1)) + 1);
    }
    this.notifyListeners();
  }
  removeItemFromCart(productId) {
    let t1, t0;
    if (dart.test(this[_productsInCart][$containsKey](productId))) {
      if (this[_productsInCart][$_get](productId) === 1) {
        this[_productsInCart][$remove](productId);
      } else {
        t0 = this[_productsInCart];
        t1 = productId;
        t0[$_set](t1, dart.notNull(t0[$_get](t1)) - 1);
      }
    }
    this.notifyListeners();
  }
  getProductById(id) {
    return this[_availableProducts][$firstWhere](dart.fn(p => p.id == id, ProductTobool()));
  }
  clearCart() {
    this[_productsInCart][$clear]();
    this.notifyListeners();
  }
  loadProducts() {
    this[_availableProducts] = products_repository.ProductsRepository.loadProducts(product.Category.all);
    this.notifyListeners();
  }
  setCategory(newCategory) {
    this[_selectedCategory] = newCategory;
    this.notifyListeners();
  }
  toString() {
    return "AppStateModel(totalCost: " + dart.str(this.totalCost) + ")";
  }
};
(app_state_model.AppStateModel.new = function() {
  this[_availableProducts] = null;
  this[_selectedCategory] = product.Category.all;
  this[_productsInCart] = new (IdentityMapOfint$int()).new();
  app_state_model.AppStateModel.__proto__.new.call(this);
  ;
}).prototype = app_state_model.AppStateModel.prototype;
dart.addTypeTests(app_state_model.AppStateModel);
dart.setMethodSignature(app_state_model.AppStateModel, () => ({
  __proto__: dart.getMethods(app_state_model.AppStateModel.__proto__),
  getProducts: dart.fnType(core.List$(product.Product), []),
  addProductToCart: dart.fnType(dart.void, [core.int]),
  removeItemFromCart: dart.fnType(dart.void, [core.int]),
  getProductById: dart.fnType(product.Product, [core.int]),
  clearCart: dart.fnType(dart.void, []),
  loadProducts: dart.fnType(dart.void, []),
  setCategory: dart.fnType(dart.void, [product.Category])
}));
dart.setGetterSignature(app_state_model.AppStateModel, () => ({
  __proto__: dart.getGetters(app_state_model.AppStateModel.__proto__),
  productsInCart: core.Map$(core.int, core.int),
  totalCartQuantity: core.int,
  selectedCategory: product.Category,
  subtotalCost: core.double,
  shippingCost: core.double,
  tax: core.double,
  totalCost: core.double
}));
dart.setLibraryUri(app_state_model.AppStateModel, "package:flutter_gallery/demo/shrine/model/app_state_model.dart");
dart.setFieldSignature(app_state_model.AppStateModel, () => ({
  __proto__: dart.getFields(app_state_model.AppStateModel.__proto__),
  [_availableProducts]: dart.fieldType(core.List$(product.Product)),
  [_selectedCategory]: dart.fieldType(product.Category),
  [_productsInCart]: dart.finalFieldType(core.Map$(core.int, core.int))
}));
dart.defineExtensionMethods(app_state_model.AppStateModel, ['toString']);
dart.defineLazy(app_state_model, {
  /*app_state_model._salesTaxRate*/get _salesTaxRate() {
    return 0.06;
  },
  set _salesTaxRate(_) {},
  /*app_state_model._shippingCostPerItem*/get _shippingCostPerItem() {
    return 7.0;
  },
  set _shippingCostPerItem(_) {}
});
dart.trackLibraries("packages/flutter_gallery/demo/shrine/model/app_state_model", {
  "package:flutter_gallery/demo/shrine/model/app_state_model.dart": app_state_model
}, {
}, '{"version":3,"sourceRoot":"","sources":["app_state_model.dart"],"names":[],"mappings":";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;AAsBsC,UAAH,+BAAsB;EAAgB;;AAG1C,UAAA,AAAgB,AAAO,iDAAK,GAAG,SAAK,GAAO,MAAQ,aAAF,CAAC,iBAAG,CAAC;EAAC;;AAEnD;EAAiB;;AAIhD,UAAO,AAAgB,AACpB,AACA,8CADI,QAAK,MAAoC,aAA7B,AAAkB,AAAK,gCAAJ,EAAE,wBAAU,AAAe,6BAAC,EAAE,qCAC5D,KAAK,SAAQ,KAAS,MAAU,aAAJ,GAAG,iBAAG,CAAC;EAC7C;;AAIE,UAA4B,cAArB,qDAAuB,AAAgB,AAAO,gDAAK,KAAK,SAAK,KAAS,MAAU,aAAJ,GAAG,iBAAG,CAAC;EAC5F;;AAGkB,UAAa,cAAb,kCAAe;EAAa;;AAGtB,UAAa,AAAe,cAA5B,kCAAe,kCAAe;EAAG;;AAIvD,QAAI,AAAmB,4BAAG;AACxB,YAAgB;;AAGlB,QAAsB,YAAlB,yBAA8B;AAChC,kCAA0B;;AAE1B,YAAO,AACJ,AACA,kCADM,QAAS,KAAiB,YAAX,AAAE,CAAD,WAAa;;EAG1C;mBAG0B;;AACxB,mBAAK,AAAgB,oCAAY,SAAS;AACV,MAA9B,AAAe,6BAAC,SAAS,EAAI;;AAED,WAA5B;WAAgB,SAAS;MAAV,cAAW,aAAX,iBAAW;;AAGX,IAAjB;EACF;qBAG4B;;AAC1B,kBAAI,AAAgB,oCAAY,SAAS;AACvC,UAAI,AAAe,AAAY,6BAAX,SAAS,MAAK;AACC,QAAjC,AAAgB,+BAAO,SAAS;;AAEJ,aAA5B;aAAgB,SAAS;QAAV,cAAW,aAAX,iBAAW;;;AAIb,IAAjB;EACF;iBAG2B;AACzB,UAAO,AAAmB,uCAAW,QAAS,KAAM,AAAE,AAAG,CAAJ,OAAO,EAAE;EAChE;;AAIyB,IAAvB,AAAgB;AACC,IAAjB;EACF;;AAIoE,IAAlE,2BAAwC,oDAAsB;AAC7C,IAAjB;EACF;cAE0B;AACO,IAA/B,0BAAoB,WAAW;AACd,IAAjB;EACF;;AAIE,UAAO,AAAsC,wCAAX,kBAAS;EAC7C;;;EAjGc;EAGL,0BAA6B;EAGlB,wBAA4B;;;AA4FlD;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;IAvGO,6BAAa;UAAG;;;IAChB,oCAAoB;UAAG","file":"app_state_model.ddc.js"}');
// Exports:
exports.demo__shrine__model__app_state_model = app_state_model;

//# sourceMappingURL=app_state_model.ddc.js.map
