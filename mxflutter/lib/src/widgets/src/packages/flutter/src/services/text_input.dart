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
import 'dart:ui';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTextInputSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[smartDashesType.funName] = smartDashesType;
  m[smartQuotesType.funName] = smartQuotesType;
  m[textInputType_numberWithOptions.funName] = textInputType_numberWithOptions;
  m[textInputAction.funName] = textInputAction;
  m[textCapitalization.funName] = textCapitalization;
  m[textInputConfiguration.funName] = textInputConfiguration;
  m[floatingCursorDragState.funName] = floatingCursorDragState;
  m[rawFloatingCursorPoint.funName] = rawFloatingCursorPoint;
  m[textEditingValue.funName] = textEditingValue;
  m[textEditingValue_fromJSON.funName] = textEditingValue_fromJSON;
  return m;
}
var smartDashesType = MXFunctionInvoke(
    "SmartDashesType",
    ({Map args}) => MXSmartDashesType.parse(args),
  );
var smartQuotesType = MXFunctionInvoke(
    "SmartQuotesType",
    ({Map args}) => MXSmartQuotesType.parse(args),
  );
var textInputType_numberWithOptions = MXFunctionInvoke(
  "textInputType.numberWithOptions",
    ({
      bool signed = false,
      bool decimal = false,
    }) =>
      TextInputType.numberWithOptions(
      signed: signed,
      decimal: decimal,
    ),
);
var textInputAction = MXFunctionInvoke(
    "TextInputAction",
    ({Map args}) => MXTextInputAction.parse(args),
  );
var textCapitalization = MXFunctionInvoke(
    "TextCapitalization",
    ({Map args}) => MXTextCapitalization.parse(args),
  );
var textInputConfiguration = MXFunctionInvoke(
    "TextInputConfiguration",
    ({
      TextInputType inputType,
      bool obscureText = false,
      bool autocorrect = true,
      SmartDashesType smartDashesType,
      SmartQuotesType smartQuotesType,
      bool enableSuggestions = true,
      String actionLabel,
      TextInputAction inputAction = TextInputAction.done,
      Brightness keyboardAppearance = Brightness.light,
      TextCapitalization textCapitalization = TextCapitalization.none,
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
    ),
);
var floatingCursorDragState = MXFunctionInvoke(
    "FloatingCursorDragState",
    ({Map args}) => MXFloatingCursorDragState.parse(args),
  );
var rawFloatingCursorPoint = MXFunctionInvoke(
    "RawFloatingCursorPoint",
    ({
      Offset offset,
      FloatingCursorDragState state,
    }) =>
      RawFloatingCursorPoint(
      offset: offset,
      state: state,
    ),
);
var textEditingValue = MXFunctionInvoke(
    "TextEditingValue",
    ({
      String text = '',
      TextSelection selection,
      TextRange composing,
    }) =>
      TextEditingValue(
      text: text,
      selection: selection,
      composing: composing,
    ),
);
var textEditingValue_fromJSON = MXFunctionInvoke(
  "textEditingValue.fromJSON",
    ({
      Map<String, dynamic> encoded,
    }) =>
      TextEditingValue.fromJSON(
      encoded,
    ),
);
class MXSmartDashesType {
  static Map str2VMap = {
    'SmartDashesType.disabled': SmartDashesType.disabled,
    'SmartDashesType.enabled': SmartDashesType.enabled,
  };
  static SmartDashesType parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXSmartQuotesType {
  static Map str2VMap = {
    'SmartQuotesType.disabled': SmartQuotesType.disabled,
    'SmartQuotesType.enabled': SmartQuotesType.enabled,
  };
  static SmartQuotesType parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXTextInputAction {
  static Map str2VMap = {
    'TextInputAction.none': TextInputAction.none,
    'TextInputAction.unspecified': TextInputAction.unspecified,
    'TextInputAction.done': TextInputAction.done,
    'TextInputAction.go': TextInputAction.go,
    'TextInputAction.search': TextInputAction.search,
    'TextInputAction.send': TextInputAction.send,
    'TextInputAction.next': TextInputAction.next,
    'TextInputAction.previous': TextInputAction.previous,
    'TextInputAction.continueAction': TextInputAction.continueAction,
    'TextInputAction.join': TextInputAction.join,
    'TextInputAction.route': TextInputAction.route,
    'TextInputAction.emergencyCall': TextInputAction.emergencyCall,
    'TextInputAction.newline': TextInputAction.newline,
  };
  static TextInputAction parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXTextCapitalization {
  static Map str2VMap = {
    'TextCapitalization.words': TextCapitalization.words,
    'TextCapitalization.sentences': TextCapitalization.sentences,
    'TextCapitalization.characters': TextCapitalization.characters,
    'TextCapitalization.none': TextCapitalization.none,
  };
  static TextCapitalization parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXFloatingCursorDragState {
  static Map str2VMap = {
    'FloatingCursorDragState.Start': FloatingCursorDragState.Start,
    'FloatingCursorDragState.Update': FloatingCursorDragState.Update,
    'FloatingCursorDragState.End': FloatingCursorDragState.End,
  };
  static FloatingCursorDragState parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
