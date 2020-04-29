//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

const dart_sdk = require("dart_sdk");
const dartx = dart_sdk.dartx;

let ObjectPrototype = Object.prototype;
ObjectPrototype[dartx._get] = function (index) {
  return this[index];
};

ObjectPrototype[dartx._set] = function (index, value) {
  this[index] = value;
};


