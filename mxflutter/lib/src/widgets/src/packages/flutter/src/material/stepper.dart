//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/stepper.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/button_theme.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/flat_button.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/theme.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerStepperSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_stepState.funName] = _stepState;
  m[_stepperType.funName] = _stepperType;
  m[_step.funName] = _step;
  m[_stepper.funName] = _stepper;
  return m;
}
var _stepState = MXFunctionInvoke(
    "StepState",
    ({Map args}) => MXStepState.parse(args),
  );
var _stepperType = MXFunctionInvoke(
    "StepperType",
    ({Map args}) => MXStepperType.parse(args),
  );
var _step = MXFunctionInvoke(
    "Step",
    (
      {
      Widget title,
      Widget subtitle,
      Widget content,
      StepState state = StepState.indexed,
      bool isActive = false,
      }
    ) =>
      Step(
      title: title,
      subtitle: subtitle,
      content: content,
      state: state,
      isActive: isActive,
    ),
);
var _stepper = MXFunctionInvoke(
    "Stepper",
    (
      {
      Key key,
      List<Step> steps,
      ScrollPhysics physics,
      StepperType type = StepperType.vertical,
      int currentStep = 0,
      dynamic onStepTapped,
      dynamic onStepContinue,
      dynamic onStepCancel,
      dynamic controlsBuilder,
      }
    ) =>
      Stepper(
      key: key,
      steps: steps,
      physics: physics,
      type: type,
      currentStep: currentStep,
      onStepTapped: createValueChangedGenericClosure<int>(_stepper.buildOwner, onStepTapped),
      onStepContinue: createVoidCallbackClosure(_stepper.buildOwner, onStepContinue),
      onStepCancel: createVoidCallbackClosure(_stepper.buildOwner, onStepCancel),
      controlsBuilder: createGenericValueGenericClosure<Widget, BuildContext>(_stepper.buildOwner, controlsBuilder),
    ),
);
class MXStepState {
  static Map str2VMap = {
    'StepState.indexed': StepState.indexed,
    'StepState.editing': StepState.editing,
    'StepState.complete': StepState.complete,
    'StepState.disabled': StepState.disabled,
    'StepState.error': StepState.error,
  };
  static StepState parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXStepperType {
  static Map str2VMap = {
    'StepperType.vertical': StepperType.vertical,
    'StepperType.horizontal': StepperType.horizontal,
  };
  static StepperType parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
