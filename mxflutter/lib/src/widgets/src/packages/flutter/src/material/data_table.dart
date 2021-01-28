//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/data_table.dart';
import 'dart:math' as math;
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/checkbox.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/divider.dart';
import 'package:flutter/src/material/dropdown.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:flutter/src/material/tooltip.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerDataTableSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_dataColumn.funName] = _dataColumn;
  m[_dataRow.funName] = _dataRow;
  m[_dataRowByIndex.funName] = _dataRowByIndex;
  m[_dataCell.funName] = _dataCell;
  m[_dataCellEmpty.funName] = _dataCellEmpty;
  m[_dataTable.funName] = _dataTable;
  m[_tableRowInkWell.funName] = _tableRowInkWell;
  return m;
}

var _dataColumn = MXFunctionInvoke(
  "DataColumn",
  ({
    Widget label,
    String tooltip,
    bool numeric = false,
    dynamic onSort,
  }) =>
      DataColumn(
    label: label,
    tooltip: tooltip,
    numeric: numeric,
    onSort: createVoidTwoParamsClosure<int, bool>(_dataColumn.buildOwner, onSort),
  ),
  [
    "label",
    "tooltip",
    "numeric",
    "onSort",
  ],
);
var _dataRow = MXFunctionInvoke(
  "DataRow",
  ({
    LocalKey key,
    bool selected = false,
    dynamic onSelectChanged,
    MaterialStateProperty<Color> color,
    dynamic cells,
  }) =>
      DataRow(
    key: key,
    selected: selected,
    onSelectChanged: createValueChangedGenericClosure<bool>(_dataRow.buildOwner, onSelectChanged),
    color: color,
    cells: toListT<DataCell>(cells),
  ),
  [
    "key",
    "selected",
    "onSelectChanged",
    "color",
    "cells",
  ],
);
var _dataRowByIndex = MXFunctionInvoke(
  "DataRow.byIndex",
  ({
    int index,
    bool selected = false,
    dynamic onSelectChanged,
    MaterialStateProperty<Color> color,
    dynamic cells,
  }) =>
      DataRow.byIndex(
    index: index,
    selected: selected,
    onSelectChanged: createValueChangedGenericClosure<bool>(_dataRowByIndex.buildOwner, onSelectChanged),
    color: color,
    cells: toListT<DataCell>(cells),
  ),
  [
    "index",
    "selected",
    "onSelectChanged",
    "color",
    "cells",
  ],
);
var _dataCell = MXFunctionInvoke(
  "DataCell",
  ({
    Widget child,
    bool placeholder = false,
    bool showEditIcon = false,
    dynamic onTap,
  }) =>
      DataCell(
    child,
    placeholder: placeholder,
    showEditIcon: showEditIcon,
    onTap: createVoidCallbackClosure(_dataCell.buildOwner, onTap),
  ),
  [
    "child",
    "placeholder",
    "showEditIcon",
    "onTap",
  ],
);
var _dataCellEmpty = MXFunctionInvoke("DataCell.empty", () => DataCell.empty);
var _dataTable = MXFunctionInvoke(
  "DataTable",
  ({
    Key key,
    dynamic columns,
    int sortColumnIndex,
    bool sortAscending = true,
    dynamic onSelectAll,
    dynamic dataRowHeight = 48.0,
    dynamic headingRowHeight = 56.0,
    dynamic horizontalMargin = 24.0,
    dynamic columnSpacing = 56.0,
    bool showCheckboxColumn = true,
    dynamic dividerThickness = 1.0,
    dynamic rows,
  }) =>
      DataTable(
    key: key,
    columns: toListT<DataColumn>(columns),
    sortColumnIndex: sortColumnIndex,
    sortAscending: sortAscending,
    onSelectAll: createValueChangedGenericClosure<bool>(_dataTable.buildOwner, onSelectAll),
    dataRowHeight: dataRowHeight?.toDouble(),
    headingRowHeight: headingRowHeight?.toDouble(),
    horizontalMargin: horizontalMargin?.toDouble(),
    columnSpacing: columnSpacing?.toDouble(),
    showCheckboxColumn: showCheckboxColumn,
    dividerThickness: dividerThickness?.toDouble(),
    rows: toListT<DataRow>(rows),
  ),
  [
    "key",
    "columns",
    "sortColumnIndex",
    "sortAscending",
    "onSelectAll",
    "dataRowHeight",
    "headingRowHeight",
    "horizontalMargin",
    "columnSpacing",
    "showCheckboxColumn",
    "dividerThickness",
    "rows",
  ],
);
var _tableRowInkWell = MXFunctionInvoke(
  "TableRowInkWell",
  ({
    Key key,
    Widget child,
    dynamic onTap,
    dynamic onDoubleTap,
    dynamic onLongPress,
    dynamic onHighlightChanged,
    MaterialStateProperty<Color> overlayColor,
  }) =>
      TableRowInkWell(
    key: key,
    child: child,
    onTap: createVoidCallbackClosure(_tableRowInkWell.buildOwner, onTap),
    onDoubleTap: createVoidCallbackClosure(_tableRowInkWell.buildOwner, onDoubleTap),
    onLongPress: createVoidCallbackClosure(_tableRowInkWell.buildOwner, onLongPress),
    onHighlightChanged: createValueChangedGenericClosure<bool>(_tableRowInkWell.buildOwner, onHighlightChanged),
    overlayColor: overlayColor,
  ),
  [
    "key",
    "child",
    "onTap",
    "onDoubleTap",
    "onLongPress",
    "onHighlightChanged",
    "overlayColor",
  ],
);
