//  mx_mirror_j2d.dart
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:mxflutter/src/mx_build_owner.dart';

/// 通过mirror方法，将json转dart对象
class MXMirrorJ2D {
  static MXMirrorJ2D _instance;

  static MXMirrorJ2D getInstance() {
    if (_instance == null) {
      _instance = MXMirrorJ2D._();
    }
    return _instance;
  }

  factory MXMirrorJ2D() {
    return MXMirrorJ2D.getInstance();
  }

  MXMirrorJ2D._();

  jsonToDartObject(dynamic json, { MXJsonBuildOwner buildOwner }) {
    if (json is Map && MXMirror.getInstance().canInvoke(json["funcName"])) {
      return MXMirror.getInstance().invoke(json, buildOwner: buildOwner);
    } else if (json is List) {
      List list = [];
      json.forEach((element) {
        var object = jsonToDartObject(element, buildOwner: buildOwner);
        list.add(object);
      });
      return list;
    } else {
      return json;
    }
  }
}
