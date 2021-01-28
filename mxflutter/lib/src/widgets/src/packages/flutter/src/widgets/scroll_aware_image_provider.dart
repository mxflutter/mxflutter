//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/scroll_aware_image_provider.dart';
import 'dart:async';
import 'package:flutter/painting.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/widgets/disposable_build_context.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/scrollable.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerScrollAwareImageProviderSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_scrollAwareImageProvider.funName] = _scrollAwareImageProvider;
  return m;
}

var _scrollAwareImageProvider = MXFunctionInvoke(
  "ScrollAwareImageProvider",
  ({
    DisposableBuildContext<State<StatefulWidget>> context,
    ImageProvider<dynamic> imageProvider,
  }) =>
      ScrollAwareImageProvider(
    context: context,
    imageProvider: imageProvider,
  ),
  [
    "context",
    "imageProvider",
  ],
);
