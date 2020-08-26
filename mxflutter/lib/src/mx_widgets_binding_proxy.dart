import 'package:flutter/material.dart';
import './mirror/mx_mirror.dart';

class MXWidgetsBindingProxy with WidgetsBindingObserver {
  bool _isAddObserver = false;

  final String mirrorId;

  MXWidgetsBindingProxy({this.mirrorId}) {}

  void addObserver() {
    if (_isAddObserver) {
      return;
    }

    WidgetsBinding.instance.addObserver(this);
    _isAddObserver = true;
  }

  bool removeObserver() {
    return WidgetsBinding.instance.removeObserver(this);
  }

  callJS(String functionName, {dynamic args}) {

    Map eventInfo = {
      "funcName": functionName,
      "eventArgs": args
    };

    return MXMirror.getInstance().invokeJSMirrorObj(
        mirrorID: mirrorId, functionName: "onObserverEvent", args: eventInfo);
  }

  Future<bool> didPopRoute() => callJS("didPopRoute");

  Future<bool> didPushRoute(String route) => callJS("didPushRoute");

  void didChangeMetrics() => callJS("didChangeMetrics");

  void didChangeTextScaleFactor() => callJS("didChangeTextScaleFactor");

  void didChangePlatformBrightness() => callJS("didChangePlatformBrightness");

  void didChangeLocales(List<Locale> locale) =>
      callJS("didChangeTextScaleFactor");

  void didChangeAppLifecycleState(AppLifecycleState state) =>
      callJS("didChangeAppLifecycleState", args: state as int);

  void didHaveMemoryPressure() => callJS("didHaveMemoryPressure");

  void didChangeAccessibilityFeatures() =>
      callJS("didChangeAccessibilityFeatures");
}

Map<String, MXFunctionInvoke> mxRegisterMXWidgetsBindingProxy() {
  var invoke = MXFunctionInvoke(
      "MXWidgetsBindingProxy",
      ({String mirrorID}) => MXWidgetsBindingProxy(mirrorId: mirrorID),
      ['mirrorID']);

  var invokeAddObserver = MXFunctionInvoke(
    "MXWidgetsBindingProxy#addObserver",
    ({MXWidgetsBindingProxy mirrorObj}) => mirrorObj.addObserver(),
  );

  var invokeRemoveObserver = MXFunctionInvoke(
    "MXWidgetsBindingProxy#removeObserver",
    ({MXWidgetsBindingProxy mirrorObj}) => mirrorObj.removeObserver(),
  );

  return {
    invoke.funName: invoke,
    invokeAddObserver.funName: invokeAddObserver,
    invokeRemoveObserver.funName: invokeRemoveObserver
  };
}
