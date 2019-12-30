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

const name$ = dart.privateName(platform_channel, "MethodChannel.name");
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

        let result = yield mxflutter_MethodChannel_invokeMethod(this.name);
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
(platform_channel.MethodChannel.new = function(name, codec = null, binaryMessenger = null) {
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

const name$0 = dart.privateName(platform_channel, "EventChannel.name");

class FakeStreamController {
  constructor(channelName, streamParam) {
    this.channelName = channelName;
    this.streamParam = streamParam;
  }

  listen(onData, opts) {
    let onError = opts && 'onError' in opts ? opts.onError : null;
    let onDone = opts && 'onDone' in opts ? opts.onDone : null;
    let cancelOnError = opts && 'cancelOnError' in opts ? opts.cancelOnError : null;
    cancelOnError = true === cancelOnError;
    mx_jsbridge_EventChannel_receiveBroadcastStream_listen(this.channelName, this.streamParam, onData, onError, onDone, cancelOnError);
  }
};

platform_channel.EventChannel = class EventChannel extends core.Object {
  get name() {
    return this[name$0];
  }
  set name(value) {
    super.name = value;
  }

  receiveBroadcastStream($arguments) {
    if ($arguments === void 0) $arguments = null;
    return new FakeStreamController(this.name, $arguments);
  }
};
(platform_channel.EventChannel.new = function(name, codec = null, binaryMessenger = null) {
  this[name$0] = name;
  if (!(name != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_channel.dart", 473, 16, "name != null");
  ;
}).prototype = platform_channel.EventChannel.prototype;

exports.src__services__platform_channel = platform_channel;
