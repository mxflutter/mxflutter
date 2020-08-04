//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';


class MXProxyBottomNavigationBar {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[bottomNavigationBarType.funName] = bottomNavigationBarType;
    m[bottomNavigationBar.funName] = bottomNavigationBar;
    return m;
  }
  static var bottomNavigationBarType = MXFunctionInvoke(
      "BottomNavigationBarType",
      ({Map args}) => MXBottomNavigationBarType.parse(args),
  );
  static var bottomNavigationBar = MXFunctionInvoke(
      "BottomNavigationBar",
      ({
        Key key,
        List<BottomNavigationBarItem> items,
        dynamic onTap,
        int currentIndex = 0,
        dynamic elevation = 8.0,
        BottomNavigationBarType type,
        Color fixedColor,
        Color backgroundColor,
        dynamic iconSize = 24.0,
        Color selectedItemColor,
        Color unselectedItemColor,
        IconThemeData selectedIconTheme,
        IconThemeData unselectedIconTheme,
        dynamic selectedFontSize = 14.0,
        dynamic unselectedFontSize = 12.0,
        TextStyle selectedLabelStyle,
        TextStyle unselectedLabelStyle,
        bool showSelectedLabels = true,
        bool showUnselectedLabels,
      }) =>
        BottomNavigationBar(
        key: key,
        items: items,
        onTap: createValueChangedGenericClosure<int>(bottomNavigationBar.buildOwner, onTap),
        currentIndex: currentIndex,
        elevation: elevation?.toDouble(),
        type: type,
        fixedColor: fixedColor,
        backgroundColor: backgroundColor,
        iconSize: iconSize?.toDouble(),
        selectedItemColor: selectedItemColor,
        unselectedItemColor: unselectedItemColor,
        selectedIconTheme: selectedIconTheme,
        unselectedIconTheme: unselectedIconTheme,
        selectedFontSize: selectedFontSize?.toDouble(),
        unselectedFontSize: unselectedFontSize?.toDouble(),
        selectedLabelStyle: selectedLabelStyle,
        unselectedLabelStyle: unselectedLabelStyle,
        showSelectedLabels: showSelectedLabels,
        showUnselectedLabels: showUnselectedLabels,
      ),
    );
}
class MXBottomNavigationBarType {
  static Map str2VMap = {
    'BottomNavigationBarType.fixed': BottomNavigationBarType.fixed,
    'BottomNavigationBarType.shifting': BottomNavigationBarType.shifting,
  };
  static BottomNavigationBarType parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
