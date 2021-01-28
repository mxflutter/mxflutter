//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
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

var _stepState =
    MXFunctionInvoke("StepState", ({String name, int index}) => MXStepState.parse(name, index), ["name", "index"]);
var _stepperType =
    MXFunctionInvoke("StepperType", ({String name, int index}) => MXStepperType.parse(name, index), ["name", "index"]);
var _step = MXFunctionInvoke(
  "Step",
  ({
    Widget title,
    Widget subtitle,
    Widget content,
    StepState state = StepState.indexed,
    bool isActive = false,
  }) =>
      Step(
    title: title,
    subtitle: subtitle,
    content: content,
    state: state,
    isActive: isActive,
  ),
  [
    "title",
    "subtitle",
    "content",
    "state",
    "isActive",
  ],
);
var _stepper = MXFunctionInvoke(
  "Stepper",
  ({
    Key key,
    dynamic steps,
    ScrollPhysics physics,
    StepperType type = StepperType.vertical,
    int currentStep = 0,
    dynamic onStepTapped,
    dynamic onStepContinue,
    dynamic onStepCancel,
    dynamic controlsBuilder,
  }) =>
      Stepper(
    key: key,
    steps: toListT<Step>(steps),
    physics: physics,
    type: type,
    currentStep: currentStep,
    onStepTapped: createValueChangedGenericClosure<int>(_stepper.buildOwner, onStepTapped),
    onStepContinue: createVoidCallbackClosure(_stepper.buildOwner, onStepContinue),
    onStepCancel: createVoidCallbackClosure(_stepper.buildOwner, onStepCancel),
    controlsBuilder: null,
  ),
  [
    "key",
    "steps",
    "physics",
    "type",
    "currentStep",
    "onStepTapped",
    "onStepContinue",
    "onStepCancel",
    "controlsBuilder",
  ],
);

class MXStepState {
  static StepState parse(String name, int index) {
    switch (name) {
      case 'StepState.indexed':
        return StepState.indexed;
      case 'StepState.editing':
        return StepState.editing;
      case 'StepState.complete':
        return StepState.complete;
      case 'StepState.disabled':
        return StepState.disabled;
      case 'StepState.error':
        return StepState.error;
    }
    return null;
  }
}

class MXStepperType {
  static StepperType parse(String name, int index) {
    switch (name) {
      case 'StepperType.vertical':
        return StepperType.vertical;
      case 'StepperType.horizontal':
        return StepperType.horizontal;
    }
    return null;
  }
}
