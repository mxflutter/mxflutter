'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter_gallery__demo__shrine__model__product = require('packages/flutter_gallery/demo/shrine/model/product');
const product = packages__flutter_gallery__demo__shrine__model__product.demo__shrine__model__product;
const products_repository = Object.create(dart.library);
const $where = dartx.where;
const $toList = dartx.toList;
let ProductTobool = () => (ProductTobool = dart.constFn(dart.fnType(core.bool, [product.Product])))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C2() {
    return C2 = dart.const({
      __proto__: product.Category.prototype,
      [_name]: "Category.accessories",
      index: 1
    });
  },
  get C1() {
    return C1 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 120,
      [Product_name]: "Vagabond sack",
      [Product_isFeatured]: true,
      [Product_id]: 0,
      [Product_category]: C2 || CT.C2
    });
  },
  get C3() {
    return C3 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 58,
      [Product_name]: "Stella sunglasses",
      [Product_isFeatured]: true,
      [Product_id]: 1,
      [Product_category]: C2 || CT.C2
    });
  },
  get C4() {
    return C4 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 35,
      [Product_name]: "Whitney belt",
      [Product_isFeatured]: false,
      [Product_id]: 2,
      [Product_category]: C2 || CT.C2
    });
  },
  get C5() {
    return C5 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 98,
      [Product_name]: "Garden strand",
      [Product_isFeatured]: true,
      [Product_id]: 3,
      [Product_category]: C2 || CT.C2
    });
  },
  get C6() {
    return C6 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 34,
      [Product_name]: "Strut earrings",
      [Product_isFeatured]: false,
      [Product_id]: 4,
      [Product_category]: C2 || CT.C2
    });
  },
  get C7() {
    return C7 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 12,
      [Product_name]: "Varsity socks",
      [Product_isFeatured]: false,
      [Product_id]: 5,
      [Product_category]: C2 || CT.C2
    });
  },
  get C8() {
    return C8 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 16,
      [Product_name]: "Weave keyring",
      [Product_isFeatured]: false,
      [Product_id]: 6,
      [Product_category]: C2 || CT.C2
    });
  },
  get C9() {
    return C9 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 40,
      [Product_name]: "Gatsby hat",
      [Product_isFeatured]: true,
      [Product_id]: 7,
      [Product_category]: C2 || CT.C2
    });
  },
  get C10() {
    return C10 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 198,
      [Product_name]: "Shrug bag",
      [Product_isFeatured]: true,
      [Product_id]: 8,
      [Product_category]: C2 || CT.C2
    });
  },
  get C12() {
    return C12 = dart.const({
      __proto__: product.Category.prototype,
      [_name]: "Category.home",
      index: 3
    });
  },
  get C11() {
    return C11 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 58,
      [Product_name]: "Gilt desk trio",
      [Product_isFeatured]: true,
      [Product_id]: 9,
      [Product_category]: C12 || CT.C12
    });
  },
  get C13() {
    return C13 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 18,
      [Product_name]: "Copper wire rack",
      [Product_isFeatured]: false,
      [Product_id]: 10,
      [Product_category]: C12 || CT.C12
    });
  },
  get C14() {
    return C14 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 28,
      [Product_name]: "Soothe ceramic set",
      [Product_isFeatured]: false,
      [Product_id]: 11,
      [Product_category]: C12 || CT.C12
    });
  },
  get C15() {
    return C15 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 34,
      [Product_name]: "Hurrahs tea set",
      [Product_isFeatured]: false,
      [Product_id]: 12,
      [Product_category]: C12 || CT.C12
    });
  },
  get C16() {
    return C16 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 18,
      [Product_name]: "Blue stone mug",
      [Product_isFeatured]: true,
      [Product_id]: 13,
      [Product_category]: C12 || CT.C12
    });
  },
  get C17() {
    return C17 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 27,
      [Product_name]: "Rainwater tray",
      [Product_isFeatured]: true,
      [Product_id]: 14,
      [Product_category]: C12 || CT.C12
    });
  },
  get C18() {
    return C18 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 16,
      [Product_name]: "Chambray napkins",
      [Product_isFeatured]: true,
      [Product_id]: 15,
      [Product_category]: C12 || CT.C12
    });
  },
  get C19() {
    return C19 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 16,
      [Product_name]: "Succulent planters",
      [Product_isFeatured]: true,
      [Product_id]: 16,
      [Product_category]: C12 || CT.C12
    });
  },
  get C20() {
    return C20 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 175,
      [Product_name]: "Quartet table",
      [Product_isFeatured]: false,
      [Product_id]: 17,
      [Product_category]: C12 || CT.C12
    });
  },
  get C21() {
    return C21 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 129,
      [Product_name]: "Kitchen quattro",
      [Product_isFeatured]: true,
      [Product_id]: 18,
      [Product_category]: C12 || CT.C12
    });
  },
  get C23() {
    return C23 = dart.const({
      __proto__: product.Category.prototype,
      [_name]: "Category.clothing",
      index: 2
    });
  },
  get C22() {
    return C22 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 48,
      [Product_name]: "Clay sweater",
      [Product_isFeatured]: false,
      [Product_id]: 19,
      [Product_category]: C23 || CT.C23
    });
  },
  get C24() {
    return C24 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 45,
      [Product_name]: "Sea tunic",
      [Product_isFeatured]: false,
      [Product_id]: 20,
      [Product_category]: C23 || CT.C23
    });
  },
  get C25() {
    return C25 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 38,
      [Product_name]: "Plaster tunic",
      [Product_isFeatured]: false,
      [Product_id]: 21,
      [Product_category]: C23 || CT.C23
    });
  },
  get C26() {
    return C26 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 70,
      [Product_name]: "White pinstripe shirt",
      [Product_isFeatured]: false,
      [Product_id]: 22,
      [Product_category]: C23 || CT.C23
    });
  },
  get C27() {
    return C27 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 70,
      [Product_name]: "Chambray shirt",
      [Product_isFeatured]: false,
      [Product_id]: 23,
      [Product_category]: C23 || CT.C23
    });
  },
  get C28() {
    return C28 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 60,
      [Product_name]: "Seabreeze sweater",
      [Product_isFeatured]: true,
      [Product_id]: 24,
      [Product_category]: C23 || CT.C23
    });
  },
  get C29() {
    return C29 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 178,
      [Product_name]: "Gentry jacket",
      [Product_isFeatured]: false,
      [Product_id]: 25,
      [Product_category]: C23 || CT.C23
    });
  },
  get C30() {
    return C30 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 74,
      [Product_name]: "Navy trousers",
      [Product_isFeatured]: false,
      [Product_id]: 26,
      [Product_category]: C23 || CT.C23
    });
  },
  get C31() {
    return C31 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 38,
      [Product_name]: "Walter henley (white)",
      [Product_isFeatured]: true,
      [Product_id]: 27,
      [Product_category]: C23 || CT.C23
    });
  },
  get C32() {
    return C32 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 48,
      [Product_name]: "Surf and perf shirt",
      [Product_isFeatured]: true,
      [Product_id]: 28,
      [Product_category]: C23 || CT.C23
    });
  },
  get C33() {
    return C33 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 98,
      [Product_name]: "Ginger scarf",
      [Product_isFeatured]: true,
      [Product_id]: 29,
      [Product_category]: C23 || CT.C23
    });
  },
  get C34() {
    return C34 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 68,
      [Product_name]: "Ramona crossover",
      [Product_isFeatured]: true,
      [Product_id]: 30,
      [Product_category]: C23 || CT.C23
    });
  },
  get C35() {
    return C35 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 38,
      [Product_name]: "Chambray shirt",
      [Product_isFeatured]: false,
      [Product_id]: 31,
      [Product_category]: C23 || CT.C23
    });
  },
  get C36() {
    return C36 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 58,
      [Product_name]: "Classic white collar",
      [Product_isFeatured]: false,
      [Product_id]: 32,
      [Product_category]: C23 || CT.C23
    });
  },
  get C37() {
    return C37 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 42,
      [Product_name]: "Cerise scallop tee",
      [Product_isFeatured]: true,
      [Product_id]: 33,
      [Product_category]: C23 || CT.C23
    });
  },
  get C38() {
    return C38 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 27,
      [Product_name]: "Shoulder rolls tee",
      [Product_isFeatured]: false,
      [Product_id]: 34,
      [Product_category]: C23 || CT.C23
    });
  },
  get C39() {
    return C39 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 24,
      [Product_name]: "Grey slouch tank",
      [Product_isFeatured]: false,
      [Product_id]: 35,
      [Product_category]: C23 || CT.C23
    });
  },
  get C40() {
    return C40 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 58,
      [Product_name]: "Sunshirt dress",
      [Product_isFeatured]: false,
      [Product_id]: 36,
      [Product_category]: C23 || CT.C23
    });
  },
  get C41() {
    return C41 = dart.const({
      __proto__: product.Product.prototype,
      [Product_price]: 58,
      [Product_name]: "Fine lines tee",
      [Product_isFeatured]: true,
      [Product_id]: 37,
      [Product_category]: C23 || CT.C23
    });
  },
  get C0() {
    return C0 = dart.constList([C1 || CT.C1, C3 || CT.C3, C4 || CT.C4, C5 || CT.C5, C6 || CT.C6, C7 || CT.C7, C8 || CT.C8, C9 || CT.C9, C10 || CT.C10, C11 || CT.C11, C13 || CT.C13, C14 || CT.C14, C15 || CT.C15, C16 || CT.C16, C17 || CT.C17, C18 || CT.C18, C19 || CT.C19, C20 || CT.C20, C21 || CT.C21, C22 || CT.C22, C24 || CT.C24, C25 || CT.C25, C26 || CT.C26, C27 || CT.C27, C28 || CT.C28, C29 || CT.C29, C30 || CT.C30, C31 || CT.C31, C32 || CT.C32, C33 || CT.C33, C34 || CT.C34, C35 || CT.C35, C36 || CT.C36, C37 || CT.C37, C38 || CT.C38, C39 || CT.C39, C40 || CT.C40, C41 || CT.C41], product.Product);
  }
});
const Product_price = dart.privateName(product, "Product.price");
const Product_name = dart.privateName(product, "Product.name");
const Product_isFeatured = dart.privateName(product, "Product.isFeatured");
const Product_id = dart.privateName(product, "Product.id");
const _name = dart.privateName(product, "_name");
let C2;
const Product_category = dart.privateName(product, "Product.category");
let C1;
let C3;
let C4;
let C5;
let C6;
let C7;
let C8;
let C9;
let C10;
let C12;
let C11;
let C13;
let C14;
let C15;
let C16;
let C17;
let C18;
let C19;
let C20;
let C21;
let C23;
let C22;
let C24;
let C25;
let C26;
let C27;
let C28;
let C29;
let C30;
let C31;
let C32;
let C33;
let C34;
let C35;
let C36;
let C37;
let C38;
let C39;
let C40;
let C41;
let C0;
products_repository.ProductsRepository = class ProductsRepository extends core.Object {
  static loadProducts(category) {
    let allProducts = C0 || CT.C0;
    if (dart.equals(category, product.Category.all)) {
      return allProducts;
    } else {
      return allProducts[$where](dart.fn(p => dart.equals(p.category, category), ProductTobool()))[$toList]();
    }
  }
};
(products_repository.ProductsRepository.new = function() {
  ;
}).prototype = products_repository.ProductsRepository.prototype;
dart.addTypeTests(products_repository.ProductsRepository);
dart.setLibraryUri(products_repository.ProductsRepository, "package:flutter_gallery/demo/shrine/model/products_repository.dart");
dart.trackLibraries("packages/flutter_gallery/demo/shrine/model/products_repository", {
  "package:flutter_gallery/demo/shrine/model/products_repository.dart": products_repository
}, {
}, '{"version":3,"sourceRoot":"","sources":["products_repository.dart"],"names":[],"mappings":";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;sBAO6C;AACrB;AA4QpB,QAAa,YAAT,QAAQ,EAAa;AACvB,YAAO,YAAW;;AAElB,YAAO,AAAY,AAA6C,YAA9C,SAAO,QAAS,KAAiB,YAAX,AAAE,CAAD,WAAa,QAAQ;;EAElE;;;;AACF","file":"products_repository.ddc.js"}');
// Exports:
exports.demo__shrine__model__products_repository = products_repository;

//# sourceMappingURL=products_repository.ddc.js.map
