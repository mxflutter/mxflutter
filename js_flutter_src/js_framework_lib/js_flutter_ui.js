let frameworkExports = require("./js_flutter_framework.js");
let basicExports = require("./js_flutter_basic_types.js");
let materialExports = require("./js_flutter_material.js");
let layoutExports = require("./js_flutter_layout.js");

let textExports = require("./js_flutter_text.js");
let imageExports = require("./js_flutter_image.js");
let animationExports = require("./js_flutter_animation.js");


module.exports = Object.assign(
  frameworkExports,
  basicExports,
  materialExports,
  layoutExports,
  textExports,
  imageExports,
  animationExports,
);
