//  MXFlutterFramework
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

mixin MXMirrorObjectMgr {
  /// mirrorId到Object的映射表。
  Map<String, dynamic> _id2ObjectMap = {};

  /// 获取mirrorID。
  String mirrorId(Map jsonMap) {
    var mirrorID = jsonMap["mirrorID"];
    return mirrorID;
  }

  /// 获取Mirror对象。
  dynamic findMirrorObject(dynamic mirrorID) {
    if (mirrorID == null) {
      return;
    }
    return _id2ObjectMap[mirrorID];
  }

  /// 添加Mirror对象。
  void addMirrorObject(dynamic mirrorId, dynamic mirrorObj) {
    if (mirrorId == null || mirrorObj == null) {
      return;
    }

    _id2ObjectMap[mirrorId] = mirrorObj;
  }

  /// 移除Mirror对象。
  void removeMirrorObject(dynamic mirrorId) {
    _id2ObjectMap.remove(mirrorId);
  }

  /// 移除Mirror对象列表。
  void removeMirrorObjectList(List mirrorIdList) {
    for (var mirrorId in mirrorIdList) {
      _id2ObjectMap.remove(mirrorId);
    }
  }

  /// 移除所有Mirror对象。
  void clearAllMirrorObjects() {
    _id2ObjectMap.clear();
  }
}
