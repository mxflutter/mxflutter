
const dart_sdk = require("dart_sdk");
const dartx = dart_sdk.dartx;

let ObjectPrototype = Object.prototype;
ObjectPrototype[dartx._get] = function(index) {
  return this[index];
};

ObjectPrototype[dartx._set] = function(index, value) {
  this[index] = value;
};