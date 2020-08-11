//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/services/text_input.dart';
import 'dart:async';
import 'dart:io';
import 'dart:ui';
import 'package:flutter/foundation.dart';
import 'package:vector_math/vector_math_64.dart';
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
  m[_textInputType_numberWithOptions.funName] = _textInputType_numberWithOptions;
  m[_textInputAction.funName] = _textInputAction;
  m[_textCapitalization.funName] = _textCapitalization;
  m[_textInputConfiguration.funName] = _textInputConfiguration;
  m[_floatingCursorDragState.funName] = _floatingCursorDragState;
  m[_rawFloatingCursorPoint.funName] = _rawFloatingCursorPoint;
  m[_textEditingValue.funName] = _textEditingValue;
  m[_textEditingValue_fromJSON.funName] = _textEditingValue_fromJSON;
  m[_textInputConnection_debugResetId.funName] = _textInputConnection_debugResetId;
  m[_textInput_setChannel.funName] = _textInput_setChannel;
  return m;
}
var _smartDashesType = MXFunctionInvoke(
    "SmartDashesType",
    ({String name, int index}) => MXSmartDashesType.parse(name, index),
  );
var _smartQuotesType = MXFunctionInvoke(
    "SmartQuotesType",
    ({String name, int index}) => MXSmartQuotesType.parse(name, index),
  );
var _textInputType_numberWithOptions = MXFunctionInvoke(
  "TextInputType.numberWithOptions",
    (
      {
      bool signed = false,
      bool decimal = false,
      }
    ) =>
      TextInputType.numberWithOptions(
      signed: signed,
      decimal: decimal,
    ),
);
var _textInputAction = MXFunctionInvoke(
    "TextInputAction",
    ({String name, int index}) => MXTextInputAction.parse(name, index),
  );
var _textCapitalization = MXFunctionInvoke(
    "TextCapitalization",
    ({String name, int index}) => MXTextCapitalization.parse(name, index),
  );
var _textInputConfiguration = MXFunctionInvoke(
    "TextInputConfiguration",
    (
      {
      TextInputType inputType = TextInputType.text,
      bool obscureText = false,
      bool autocorrect = true,
      SmartDashesType smartDashesType,
      SmartQuotesType smartQuotesType,
      bool enableSuggestions = true,
      String actionLabel,
      TextInputAction inputAction = TextInputAction.done,
      Brightness keyboardAppearance =  Brightness.light,
      TextCapitalization textCapitalization =  TextCapitalization.none,
      }
    ) =>
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
    ),
);
var _floatingCursorDragState = MXFunctionInvoke(
    "FloatingCursorDragState",
    ({String name, int index}) => MXFloatingCursorDragState.parse(name, index),
  );
var _rawFloatingCursorPoint = MXFunctionInvoke(
    "RawFloatingCursorPoint",
    (
      {
      Offset offset,
      FloatingCursorDragState state,
      }
    ) =>
      RawFloatingCursorPoint(
      offset: offset,
      state: state,
    ),
);
var _textEditingValue = MXFunctionInvoke(
    "TextEditingValue",
    (
      {
      String text = '',
      TextSelection selection = const TextSelection.collapsed(offset: -1),
      TextRange composing = TextRange.empty,
      }
    ) =>
      TextEditingValue(
      text: text,
      selection: selection,
      composing: composing,
    ),
);
var _textEditingValue_fromJSON = MXFunctionInvoke(
  "TextEditingValue.fromJSON",
    (
      {
      dynamic encoded,
      }
    ) =>
      TextEditingValue.fromJSON(
      toMapT<String, dynamic>(encoded),
    ),
);
var _textInputConnection_debugResetId = MXFunctionInvoke(
  "TextInputConnection.debugResetId",
    (
      {
      int to = 1,
      }
    ) =>
      TextInputConnection.debugResetId(
      to: to,
    ),
);
var _textInput_setChannel = MXFunctionInvoke(
  "TextInput.setChannel",
    (
      {
      MethodChannel newChannel,
      }
    ) =>
      TextInput.setChannel(
      newChannel,
    ),
);
class MXSmartDashesType {
  static SmartDashesType parse(String name, int index) {
    switch(name) {
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
    switch(name) {
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
    switch(name) {
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
    switch(name) {
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
    switch(name) {
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
