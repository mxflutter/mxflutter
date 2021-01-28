//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/widgets/table.dart';
import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/debug.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/image.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerTableSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_tableRow.funName] = _tableRow;
  m[_table.funName] = _table;
  m[_tableCell.funName] = _tableCell;
  return m;
}

var _tableRow = MXFunctionInvoke(
  "TableRow",
  ({
    LocalKey key,
    Decoration decoration,
    dynamic children,
  }) =>
      TableRow(
    key: key,
    decoration: decoration,
    children: toListT<Widget>(children),
  ),
  [
    "key",
    "decoration",
    "children",
  ],
);
var _table = MXFunctionInvoke(
  "Table",
  ({
    Key key,
    dynamic children = const <TableRow>[],
    dynamic columnWidths,
    TableColumnWidth defaultColumnWidth = const FlexColumnWidth(1.0),
    TextDirection textDirection,
    TableBorder border,
    TableCellVerticalAlignment defaultVerticalAlignment = TableCellVerticalAlignment.top,
    TextBaseline textBaseline = TextBaseline.alphabetic,
  }) =>
      Table(
    key: key,
    children: toListT<TableRow>(children),
    columnWidths: toMapT<int, TableColumnWidth>(columnWidths),
    defaultColumnWidth: defaultColumnWidth,
    textDirection: textDirection,
    border: border,
    defaultVerticalAlignment: defaultVerticalAlignment,
    textBaseline: textBaseline,
  ),
  [
    "key",
    "children",
    "columnWidths",
    "defaultColumnWidth",
    "textDirection",
    "border",
    "defaultVerticalAlignment",
    "textBaseline",
  ],
);
var _tableCell = MXFunctionInvoke(
  "TableCell",
  ({
    Key key,
    TableCellVerticalAlignment verticalAlignment,
    Widget child,
  }) =>
      TableCell(
    key: key,
    verticalAlignment: verticalAlignment,
    child: child,
  ),
  [
    "key",
    "verticalAlignment",
    "child",
  ],
);
