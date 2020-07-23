//  mx_mirror_object.dart
//  Copyright 2020 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

class MXMirrorObject {
  static MXMirrorObject _instance;
  
  // mirrorId到Object的映射表
  var _id2ObjectMap = {};

  static MXMirrorObject getInstance() {
    if (_instance == null) {
      _instance = MXMirrorObject._();
    }
    return _instance;
  }

  factory MXMirrorObject() {
    return MXMirrorObject.getInstance();
  }

  MXMirrorObject._();

  /// 获取irrorID
  String getMirrorID(Map jsonMap) {
    dynamic mirrorID = jsonMap["mirrorID"];
    return mirrorID;
  }

  /// 获取Mirror对象
  dynamic getMirrorObject(dynamic mirrorID) {
    if (mirrorID == null) {
      return;
    }
    return _id2ObjectMap[mirrorID];
  }

  /// 添加Mirror对象
  void addMirrorObject(dynamic mirrorID, dynamic mirrorObj) {
    if (mirrorID == null || mirrorObj == null) {
      return;
    }

    _id2ObjectMap[mirrorID] = mirrorObj;
  }

  /// 移除Mirror对象
  void removeMirrorObject(dynamic mirrorID) {
    _id2ObjectMap.remove(mirrorID);
  }

  /// 移除Mirror对象列表
  void removeMirrorObjectList(List mirrorIDList) {
    for (var mirrorID in mirrorIDList) {
      _id2ObjectMap.remove(mirrorID);
    }
  }

  /// 移除所有Mirror对象
  void clearAllMirrorObjects() {
    _id2ObjectMap.clear();
  }
}
