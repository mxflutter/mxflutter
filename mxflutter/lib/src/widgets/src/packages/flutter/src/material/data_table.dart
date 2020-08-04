//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/data_table.dart';
import 'dart:math';
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
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:flutter/src/material/tooltip.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerDataTableSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[dataColumn.funName] = dataColumn;
  m[dataRow.funName] = dataRow;
  m[dataRow_byIndex.funName] = dataRow_byIndex;
  m[dataCell.funName] = dataCell;
  m[dataTable.funName] = dataTable;
  m[tableRowInkWell.funName] = tableRowInkWell;
  return m;
}
var dataColumn = MXFunctionInvoke(
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
      onSort: createVoidCallbackClosure(dataColumn.buildOwner, onSort),
    ),
);
var dataRow = MXFunctionInvoke(
    "DataRow",
    ({
      LocalKey key,
      bool selected = false,
      dynamic onSelectChanged,
      List<DataCell> cells,
    }) =>
      DataRow(
      key: key,
      selected: selected,
      onSelectChanged: createValueChangedGenericClosure<bool>(dataRow.buildOwner, onSelectChanged),
      cells: cells,
    ),
);
var dataRow_byIndex = MXFunctionInvoke(
  "dataRow.byIndex",
    ({
      int index,
      bool selected = false,
      dynamic onSelectChanged,
      List<DataCell> cells,
    }) =>
      DataRow.byIndex(
      index: index,
      selected: selected,
      onSelectChanged: createValueChangedGenericClosure<bool>(dataRow_byIndex.buildOwner, onSelectChanged),
      cells: cells,
    ),
);
var dataCell = MXFunctionInvoke(
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
      onTap: createVoidCallbackClosure(dataCell.buildOwner, onTap),
    ),
);
var dataTable = MXFunctionInvoke(
    "DataTable",
    ({
      Key key,
      List<DataColumn> columns,
      int sortColumnIndex,
      bool sortAscending = true,
      dynamic onSelectAll,
      dynamic dataRowHeight = 48.0,
      dynamic headingRowHeight = 56.0,
      dynamic horizontalMargin = 24.0,
      dynamic columnSpacing = 56.0,
      bool showCheckboxColumn = true,
      dynamic dividerThickness = 1.0,
      List<DataRow> rows,
    }) =>
      DataTable(
      key: key,
      columns: columns,
      sortColumnIndex: sortColumnIndex,
      sortAscending: sortAscending,
      onSelectAll: createValueChangedGenericClosure<bool>(dataTable.buildOwner, onSelectAll),
      dataRowHeight: dataRowHeight,
      headingRowHeight: headingRowHeight,
      horizontalMargin: horizontalMargin,
      columnSpacing: columnSpacing,
      showCheckboxColumn: showCheckboxColumn,
      dividerThickness: dividerThickness,
      rows: rows,
    ),
);
var tableRowInkWell = MXFunctionInvoke(
    "TableRowInkWell",
    ({
      Key key,
      Widget child,
      dynamic onTap,
      dynamic onDoubleTap,
      dynamic onLongPress,
      dynamic onHighlightChanged,
    }) =>
      TableRowInkWell(
      key: key,
      child: child,
      onTap: createVoidCallbackClosure(tableRowInkWell.buildOwner, onTap),
      onDoubleTap: createVoidCallbackClosure(tableRowInkWell.buildOwner, onDoubleTap),
      onLongPress: createVoidCallbackClosure(tableRowInkWell.buildOwner, onLongPress),
      onHighlightChanged: createValueChangedGenericClosure<bool>(tableRowInkWell.buildOwner, onHighlightChanged),
    ),
);
