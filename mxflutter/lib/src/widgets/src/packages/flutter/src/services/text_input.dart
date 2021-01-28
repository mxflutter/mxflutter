//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/services/text_input.dart';
import 'dart:async';
import 'dart:io';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:vector_math/vector_math_64.dart';
import 'package:flutter/src/services/autofill.dart';
import 'package:flutter/src/services/message_codec.dart';
import 'package:flutter/src/services/platform_channel.dart';
import 'package:flutter/src/services/system_channels.dart';
import 'package:flutter/src/services/system_chrome.dart';
import 'package:flutter/src/services/text_editing.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTextInputSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_smartDashesType.funName] = _smartDashesType;
  m[_smartQuotesType.funName] = _smartQuotesType;
  m[_textInputTypeText.funName] = _textInputTypeText;
  m[_textInputTypeMultiline.funName] = _textInputTypeMultiline;
  m[_textInputTypeNumber.funName] = _textInputTypeNumber;
  m[_textInputTypePhone.funName] = _textInputTypePhone;
  m[_textInputTypeDatetime.funName] = _textInputTypeDatetime;
  m[_textInputTypeEmailAddress.funName] = _textInputTypeEmailAddress;
  m[_textInputTypeUrl.funName] = _textInputTypeUrl;
  m[_textInputTypeVisiblePassword.funName] = _textInputTypeVisiblePassword;
  m[_textInputTypeName.funName] = _textInputTypeName;
  m[_textInputTypeStreetAddress.funName] = _textInputTypeStreetAddress;
  m[_textInputTypeValues.funName] = _textInputTypeValues;
  m[_textInputTypeNumberWithOptions.funName] = _textInputTypeNumberWithOptions;
  m[_textInputAction.funName] = _textInputAction;
  m[_textCapitalization.funName] = _textCapitalization;
  m[_textInputConfiguration.funName] = _textInputConfiguration;
  m[_floatingCursorDragState.funName] = _floatingCursorDragState;
  m[_rawFloatingCursorPoint.funName] = _rawFloatingCursorPoint;
  m[_textEditingValue.funName] = _textEditingValue;
  m[_textEditingValueEmpty.funName] = _textEditingValueEmpty;
  m[_textEditingValueFromJSON.funName] = _textEditingValueFromJSON;
  m[_textInputConnectionDebugResetId.funName] = _textInputConnectionDebugResetId;
  m[_textInputSetChannel.funName] = _textInputSetChannel;
  return m;
}

var _smartDashesType = MXFunctionInvoke(
    "SmartDashesType", ({String name, int index}) => MXSmartDashesType.parse(name, index), ["name", "index"]);
var _smartQuotesType = MXFunctionInvoke(
    "SmartQuotesType", ({String name, int index}) => MXSmartQuotesType.parse(name, index), ["name", "index"]);
var _textInputTypeText = MXFunctionInvoke("TextInputType.text", () => TextInputType.text);
var _textInputTypeMultiline = MXFunctionInvoke("TextInputType.multiline", () => TextInputType.multiline);
var _textInputTypeNumber = MXFunctionInvoke("TextInputType.number", () => TextInputType.number);
var _textInputTypePhone = MXFunctionInvoke("TextInputType.phone", () => TextInputType.phone);
var _textInputTypeDatetime = MXFunctionInvoke("TextInputType.datetime", () => TextInputType.datetime);
var _textInputTypeEmailAddress = MXFunctionInvoke("TextInputType.emailAddress", () => TextInputType.emailAddress);
var _textInputTypeUrl = MXFunctionInvoke("TextInputType.url", () => TextInputType.url);
var _textInputTypeVisiblePassword =
    MXFunctionInvoke("TextInputType.visiblePassword", () => TextInputType.visiblePassword);
var _textInputTypeName = MXFunctionInvoke("TextInputType.name", () => TextInputType.name);
var _textInputTypeStreetAddress = MXFunctionInvoke("TextInputType.streetAddress", () => TextInputType.streetAddress);
var _textInputTypeValues = MXFunctionInvoke("TextInputType.values", () => TextInputType.values);
var _textInputTypeNumberWithOptions = MXFunctionInvoke(
  "TextInputType.numberWithOptions",
  ({
    bool signed = false,
    bool decimal = false,
  }) =>
      TextInputType.numberWithOptions(
    signed: signed,
    decimal: decimal,
  ),
  [
    "signed",
    "decimal",
  ],
);
var _textInputAction = MXFunctionInvoke(
    "TextInputAction", ({String name, int index}) => MXTextInputAction.parse(name, index), ["name", "index"]);
var _textCapitalization = MXFunctionInvoke(
    "TextCapitalization", ({String name, int index}) => MXTextCapitalization.parse(name, index), ["name", "index"]);
var _textInputConfiguration = MXFunctionInvoke(
  "TextInputConfiguration",
  ({
    TextInputType inputType = TextInputType.text,
    bool obscureText = false,
    bool autocorrect = true,
    SmartDashesType smartDashesType,
    SmartQuotesType smartQuotesType,
    bool enableSuggestions = true,
    String actionLabel,
    TextInputAction inputAction = TextInputAction.done,
    Brightness keyboardAppearance = Brightness.light,
    TextCapitalization textCapitalization = TextCapitalization.none,
    AutofillConfiguration autofillConfiguration,
  }) =>
      TextInputConfiguration(
    inputType: inputType,
    obscureText: obscureText,
    autocorrect: autocorrect,
    smartDashesType: smartDashesType,
    smartQuotesType: smartQuotesType,
    enableSuggestions: enableSuggestions,
    actionLabel: actionLabel,
    inputAction: inputAction,
    keyboardAppearance: keyboardAppearance,
    textCapitalization: textCapitalization,
    autofillConfiguration: autofillConfiguration,
  ),
  [
    "inputType",
    "obscureText",
    "autocorrect",
    "smartDashesType",
    "smartQuotesType",
    "enableSuggestions",
    "actionLabel",
    "inputAction",
    "keyboardAppearance",
    "textCapitalization",
    "autofillConfiguration",
  ],
);
var _floatingCursorDragState = MXFunctionInvoke("FloatingCursorDragState",
    ({String name, int index}) => MXFloatingCursorDragState.parse(name, index), ["name", "index"]);
var _rawFloatingCursorPoint = MXFunctionInvoke(
  "RawFloatingCursorPoint",
  ({
    Offset offset,
    FloatingCursorDragState state,
  }) =>
      RawFloatingCursorPoint(
    offset: offset,
    state: state,
  ),
  [
    "offset",
    "state",
  ],
);
var _textEditingValue = MXFunctionInvoke(
  "TextEditingValue",
  ({
    String text = '',
    TextSelection selection = const TextSelection.collapsed(offset: -1),
    TextRange composing = TextRange.empty,
  }) =>
      TextEditingValue(
    text: text,
    selection: selection,
    composing: composing,
  ),
  [
    "text",
    "selection",
    "composing",
  ],
);
var _textEditingValueEmpty = MXFunctionInvoke("TextEditingValue.empty", () => TextEditingValue.empty);
var _textEditingValueFromJSON = MXFunctionInvoke(
  "TextEditingValue.fromJSON",
  ({
    dynamic encoded,
  }) =>
      TextEditingValue.fromJSON(
    toMapT<String, dynamic>(encoded),
  ),
  [
    "encoded",
  ],
);
var _textInputConnectionDebugResetId = MXFunctionInvoke(
  "TextInputConnection.debugResetId",
  ({
    int to = 1,
  }) =>
      TextInputConnection.debugResetId(
    to: to,
  ),
  [
    "to",
  ],
);
var _textInputSetChannel = MXFunctionInvoke(
  "TextInput.setChannel",
  ({
    MethodChannel newChannel,
  }) =>
      TextInput.setChannel(
    newChannel,
  ),
  [
    "newChannel",
  ],
);

class MXSmartDashesType {
  static SmartDashesType parse(String name, int index) {
    switch (name) {
      case 'SmartDashesType.disabled':
        return SmartDashesType.disabled;
      case 'SmartDashesType.enabled':
        return SmartDashesType.enabled;
    }
    return null;
  }
}

class MXSmartQuotesType {
  static SmartQuotesType parse(String name, int index) {
    switch (name) {
      case 'SmartQuotesType.disabled':
        return SmartQuotesType.disabled;
      case 'SmartQuotesType.enabled':
        return SmartQuotesType.enabled;
    }
    return null;
  }
}

class MXTextInputAction {
  static TextInputAction parse(String name, int index) {
    switch (name) {
      case 'TextInputAction.none':
        return TextInputAction.none;
      case 'TextInputAction.unspecified':
        return TextInputAction.unspecified;
      case 'TextInputAction.done':
        return TextInputAction.done;
      case 'TextInputAction.go':
        return TextInputAction.go;
      case 'TextInputAction.search':
        return TextInputAction.search;
      case 'TextInputAction.send':
        return TextInputAction.send;
      case 'TextInputAction.next':
        return TextInputAction.next;
      case 'TextInputAction.previous':
        return TextInputAction.previous;
      case 'TextInputAction.continueAction':
        return TextInputAction.continueAction;
      case 'TextInputAction.join':
        return TextInputAction.join;
      case 'TextInputAction.route':
        return TextInputAction.route;
      case 'TextInputAction.emergencyCall':
        return TextInputAction.emergencyCall;
      case 'TextInputAction.newline':
        return TextInputAction.newline;
    }
    return null;
  }
}

class MXTextCapitalization {
  static TextCapitalization parse(String name, int index) {
    switch (name) {
      case 'TextCapitalization.words':
        return TextCapitalization.words;
      case 'TextCapitalization.sentences':
        return TextCapitalization.sentences;
      case 'TextCapitalization.characters':
        return TextCapitalization.characters;
      case 'TextCapitalization.none':
        return TextCapitalization.none;
    }
    return null;
  }
}

class MXFloatingCursorDragState {
  static FloatingCursorDragState parse(String name, int index) {
    switch (name) {
      case 'FloatingCursorDragState.Start':
        return FloatingCursorDragState.Start;
      case 'FloatingCursorDragState.Update':
        return FloatingCursorDragState.Update;
      case 'FloatingCursorDragState.End':
        return FloatingCursorDragState.End;
    }
    return null;
  }
}
