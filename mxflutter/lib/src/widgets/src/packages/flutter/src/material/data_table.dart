//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/data_table.dart';


class MXProxyDataTable {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[dataColumn.funName] = dataColumn;
    m[dataRow.funName] = dataRow;
    m[dataRow_byIndex.funName] = dataRow_byIndex;
    m[dataCell.funName] = dataCell;
    m[dataTable.funName] = dataTable;
    m[tableRowInkWell.funName] = tableRowInkWell;
    return m;
  }
  static var dataColumn = MXFunctionInvoke(
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
  static var dataRow = MXFunctionInvoke(
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
  static var dataRow_byIndex = MXFunctionInvoke(
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
  static var dataCell = MXFunctionInvoke(
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
  static var dataTable = MXFunctionInvoke(
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
        dataRowHeight: dataRowHeight?.toDouble(),
        headingRowHeight: headingRowHeight?.toDouble(),
        horizontalMargin: horizontalMargin?.toDouble(),
        columnSpacing: columnSpacing?.toDouble(),
        showCheckboxColumn: showCheckboxColumn,
        dividerThickness: dividerThickness?.toDouble(),
        rows: rows,
      ),
    );
  static var tableRowInkWell = MXFunctionInvoke(
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
}
