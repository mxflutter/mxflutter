//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

class MXJSMirrorObjMgr {
  //单例代码
  static MXJSMirrorObjMgr _instance;

  static MXJSMirrorObjMgr getInstance() {
    if (_instance == null) {
      _instance = MXJSMirrorObjMgr._();
    }

    return _instance;
  }

  factory MXJSMirrorObjMgr() {
    return MXJSMirrorObjMgr.getInstance();
  }

  MXJSMirrorObjMgr._() {}
  //----
  Map<String, dynamic> g_mirrorObjectMap = {};

  String getJsonObjMirrorID(Map jsonMap) {
    dynamic mirrorID = jsonMap["mirrorID"];
    return mirrorID;
  }

  dynamic getMirrorObjectFromMap(Map jsonMap) {
    dynamic mirrorID = jsonMap["mirrorID"];
    if (mirrorID != null) {
      return g_mirrorObjectMap[mirrorID];
    }
    return null;
  }

  dynamic getMirrorObjectFromID(dynamic mirrorID) {
    return g_mirrorObjectMap[mirrorID];
  }

  void addMirrorObject(dynamic mirrorID, dynamic mirrorObj) {
    g_mirrorObjectMap[mirrorID] = mirrorObj;
  }

  void removeMirrorObject(dynamic mirrorID) {
    g_mirrorObjectMap.remove(mirrorID);
  }
}
