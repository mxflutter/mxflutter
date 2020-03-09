"use strict";

let frameworkExports = require("js_flutter_framework.js");
let basicExports = require("js_flutter_basic_types.js");
let materialExports = require("js_flutter_material.js");
let layoutExports = require("js_flutter_layout.js");
let textExports = require("js_flutter_text.js");
let imageExports = require("js_flutter_image.js");
let animationExports = require("js_flutter_animation.js");
let animationExports = require("js_flutter_animation.js");
let messageChannelExports = require("message_channel/js_flutter_message_channel.js");

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


const platform_channel = Object.create(null);
platform_channel.MethodChannel = messageChannelExports.MethodChannel;
platform_channel.EventChannel = messageChannelExports.EventChannel;


exports.src__services__platform_channel = platform_channel;
