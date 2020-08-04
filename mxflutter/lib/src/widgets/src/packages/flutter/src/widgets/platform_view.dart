//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/platform_view.dart';


class MXProxyPlatformView {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[androidView.funName] = androidView;
    m[uiKitView.funName] = uiKitView;
    m[htmlElementView.funName] = htmlElementView;
    m[platformViewCreationParams_.funName] = platformViewCreationParams_;
    m[platformViewLink.funName] = platformViewLink;
    m[platformViewSurface.funName] = platformViewSurface;
    return m;
  }
  static var androidView = MXFunctionInvoke(
      "AndroidView",
      ({
        Key key,
        String viewType,
        dynamic onPlatformViewCreated,
        PlatformViewHitTestBehavior hitTestBehavior = PlatformViewHitTestBehavior.opaque,
        TextDirection layoutDirection,
        Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizers,
        dynamic creationParams,
        MessageCodec<dynamic> creationParamsCodec,
      }) =>
        AndroidView(
        key: key,
        viewType: viewType,
        onPlatformViewCreated: createValueChangedGenericClosure<int>(androidView.buildOwner, onPlatformViewCreated),
        hitTestBehavior: hitTestBehavior,
        layoutDirection: layoutDirection,
        gestureRecognizers: gestureRecognizers,
        creationParams: creationParams,
        creationParamsCodec: creationParamsCodec,
      ),
    );
  static var uiKitView = MXFunctionInvoke(
      "UiKitView",
      ({
        Key key,
        String viewType,
        dynamic onPlatformViewCreated,
        PlatformViewHitTestBehavior hitTestBehavior = PlatformViewHitTestBehavior.opaque,
        TextDirection layoutDirection,
        dynamic creationParams,
        MessageCodec<dynamic> creationParamsCodec,
        Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizers,
      }) =>
        UiKitView(
        key: key,
        viewType: viewType,
        onPlatformViewCreated: createValueChangedGenericClosure<int>(uiKitView.buildOwner, onPlatformViewCreated),
        hitTestBehavior: hitTestBehavior,
        layoutDirection: layoutDirection,
        creationParams: creationParams,
        creationParamsCodec: creationParamsCodec,
        gestureRecognizers: gestureRecognizers,
      ),
    );
  static var htmlElementView = MXFunctionInvoke(
      "HtmlElementView",
      ({
        Key key,
        String viewType,
      }) =>
        HtmlElementView(
        key: key,
        viewType: viewType,
      ),
    );
  static var platformViewCreationParams_ = MXFunctionInvoke(
    "platformViewCreationParams.",
      ({
        int id,
        String viewType,
        dynamic onPlatformViewCreated,
        dynamic onFocusChanged,
      }) =>
        PlatformViewCreationParams.(
        id: id,
        viewType: viewType,
        onPlatformViewCreated: createValueChangedGenericClosure<int>(platformViewCreationParams_.buildOwner, onPlatformViewCreated),
        onFocusChanged: createValueChangedGenericClosure<bool>(platformViewCreationParams_.buildOwner, onFocusChanged),
      ),
    );
  static var platformViewLink = MXFunctionInvoke(
      "PlatformViewLink",
      ({
        Key key,
        dynamic surfaceFactory,
        dynamic onCreatePlatformView,
        String viewType,
      }) =>
        PlatformViewLink(
        key: key,
        surfaceFactory: surfaceFactory,
        onCreatePlatformView: createGenericValueGenericClosure<PlatformViewController, PlatformViewCreationParams>(platformViewLink.buildOwner, onCreatePlatformView),
        viewType: viewType,
      ),
    );
  static var platformViewSurface = MXFunctionInvoke(
      "PlatformViewSurface",
      ({
        Key key,
        PlatformViewController controller,
        PlatformViewHitTestBehavior hitTestBehavior,
        Set<Factory<OneSequenceGestureRecognizer>> gestureRecognizers,
      }) =>
        PlatformViewSurface(
        key: key,
        controller: controller,
        hitTestBehavior: hitTestBehavior,
        gestureRecognizers: gestureRecognizers,
      ),
    );
}
