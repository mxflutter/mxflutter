"use strict";

let frameworkExports = require("./js_flutter_framework.js");
let basicExports = require("./js_flutter_basic_types.js");
let materialExports = require("./js_flutter_material.js");
let layoutExports = require("./js_flutter_layout.js");
let textExports = require("./js_flutter_text.js");
let imageExports = require("./js_flutter_image.js");
let animationExports = require("./js_flutter_animation.js");

let src__services__system_chrome = Object.create(null);
src__services__system_chrome.SystemUiOverlayStyle =
  basicExports.SystemUiOverlayStyle;
exports.src__services__system_chrome = src__services__system_chrome;

let src__services__text_input = Object.create(null);
src__services__text_input.TextInputType = textExports.TextInputType;
src__services__text_input.TextCapitalization = textExports.TextCapitalization;
src__services__text_input.TextInputAction = textExports.TextInputAction;
exports.src__services__text_input = src__services__text_input;

let src__gestures__recognizer = Object.create(null);
src__gestures__recognizer.DragStartBehavior = layoutExports.DragStartBehavior;
exports.src__gestures__recognizer = src__gestures__recognizer;

let src__services__asset_bundle = Object.create(null);
src__services__asset_bundle.PlatformAssetBundle =
  basicExports.PlatformAssetBundle;
exports.src__services__asset_bundle = src__services__asset_bundle;

//Message Channel
const dart_sdk = require("dart_sdk");
const core = dart_sdk.core;
const async = dart_sdk.async;
const dart = dart_sdk.dart;
const typed_data = dart_sdk.typed_data;

const platform_channel = Object.create(dart.library);

platform_channel.MethodChannel = class MethodChannel extends core.Object {
  get name() {
    return this[name$];
  }
  set name(value) {
    super.name = value;
  }

  invokeMethod(T, method, $arguments) {
    if ($arguments === void 0) $arguments = null;
    return async.async(
      T,
      function* invokeMethod() {
        if (!(method != null))
          dart.assertFailed(
            null,
            "org-dartlang-app:///packages/flutter/src/services/platform_channel.dart",
            313,
            12,
            "method != null"
          );
        function mxflutter_MethodChannel_invokeMethod(channelName) {
          let completer = async.Completer$(T).new();
          mx_jsbridge_MethodChannel_invokeMethod(
            channelName,
            method,
            $arguments,
            dart.fn(value => {
                completer.complete(value);
              }, dart.fnType(core.Null, [T]))
          );
          return completer.future;
        }

        let result = yield mxflutter_MethodChannel_invokeMethod(this.name["name"]);
        if (result == null) {
          dart.throw(
            new message_codec.MissingPluginException.new(
              "No implementation found for method " +
                dart.str(method) +
                " on channel " +
                dart.str(this.name)
            )
          );
        }
        let typedResult = T._check(result);
        return typedResult;
      }.bind(this)
    );
  }
};
(platform_channel.MethodChannel.new = function(name) {
  this[name$] = name;
  if (!(name != null))
    dart.assertFailed(
      null,
      "org-dartlang-app:///packages/flutter/src/services/platform_channel.dart",
      127,
      16,
      "name != null"
    );
}).prototype = platform_channel.MethodChannel.prototype;
const MethodChannel_name = dart.privateName(
  platform_channel,
  "MethodChannel.name"
);
const name$ = MethodChannel_name;

exports.src__services__platform_channel = platform_channel;
