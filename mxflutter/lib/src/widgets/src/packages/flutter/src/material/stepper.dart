//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/stepper.dart';


class MXProxyStepper {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[stepState.funName] = stepState;
    m[stepperType.funName] = stepperType;
    m[step.funName] = step;
    m[stepper.funName] = stepper;
    return m;
  }
  static var stepState = MXFunctionInvoke(
      "StepState",
      ({Map args}) => MXStepState.parse(args),
  );
  static var stepperType = MXFunctionInvoke(
      "StepperType",
      ({Map args}) => MXStepperType.parse(args),
  );
  static var step = MXFunctionInvoke(
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
    );
  static var stepper = MXFunctionInvoke(
      "Stepper",
      ({
        Key key,
        List<Step> steps,
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
        steps: steps,
        physics: physics,
        type: type,
        currentStep: currentStep,
        onStepTapped: createValueChangedGenericClosure<int>(stepper.buildOwner, onStepTapped),
        onStepContinue: createVoidCallbackClosure(stepper.buildOwner, onStepContinue),
        onStepCancel: createVoidCallbackClosure(stepper.buildOwner, onStepCancel),
        controlsBuilder: createGenericValueGenericClosure<Widget, BuildContext>(stepper.buildOwner, controlsBuilder),
      ),
    );
}
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
