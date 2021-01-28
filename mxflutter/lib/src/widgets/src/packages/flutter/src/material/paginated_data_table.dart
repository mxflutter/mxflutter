//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/paginated_data_table.dart';
import 'dart:math' as math;
import 'package:flutter/widgets.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/src/material/button_bar.dart';
import 'package:flutter/src/material/card.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/data_table.dart';
import 'package:flutter/src/material/data_table_source.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/dropdown.dart';
import 'package:flutter/src/material/icon_button.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/ink_decoration.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/progress_indicator.dart';
import 'package:flutter/src/material/theme.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerPaginatedDataTableSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_paginatedDataTable.funName] = _paginatedDataTable;
  m[_paginatedDataTableDefaultRowsPerPage.funName] = _paginatedDataTableDefaultRowsPerPage;
  m[_paginatedDataTableState.funName] = _paginatedDataTableState;
  return m;
}

var _paginatedDataTable = MXFunctionInvoke(
  "PaginatedDataTable",
  ({
    Key key,
    Widget header,
    dynamic actions,
    dynamic columns,
    int sortColumnIndex,
    bool sortAscending = true,
    dynamic onSelectAll,
    dynamic dataRowHeight = 48.0,
    dynamic headingRowHeight = 56.0,
    dynamic horizontalMargin = 24.0,
    dynamic columnSpacing = 56.0,
    bool showCheckboxColumn = true,
    int initialFirstRowIndex = 0,
    dynamic onPageChanged,
    int rowsPerPage = 10,

    /// MX modified begin -change to int
    dynamic availableRowsPerPage = const <int>[10, 20, 50, 100],

    /// MX modified end
    dynamic onRowsPerPageChanged,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    DataTableSource source,
  }) =>
      PaginatedDataTable(
    key: key,
    header: header,
    actions: toListT<Widget>(actions),
    columns: toListT<DataColumn>(columns),
    sortColumnIndex: sortColumnIndex,
    sortAscending: sortAscending,
    onSelectAll: createValueChangedGenericClosure<bool>(_paginatedDataTable.buildOwner, onSelectAll),
    dataRowHeight: dataRowHeight?.toDouble(),
    headingRowHeight: headingRowHeight?.toDouble(),
    horizontalMargin: horizontalMargin?.toDouble(),
    columnSpacing: columnSpacing?.toDouble(),
    showCheckboxColumn: showCheckboxColumn,
    initialFirstRowIndex: initialFirstRowIndex,
    onPageChanged: createValueChangedGenericClosure<int>(_paginatedDataTable.buildOwner, onPageChanged),
    rowsPerPage: rowsPerPage,
    availableRowsPerPage: toListT<int>(availableRowsPerPage),
    onRowsPerPageChanged: createValueChangedGenericClosure<int>(_paginatedDataTable.buildOwner, onRowsPerPageChanged),
    dragStartBehavior: dragStartBehavior,
    source: source,
  ),
  [
    "key",
    "header",
    "actions",
    "columns",
    "sortColumnIndex",
    "sortAscending",
    "onSelectAll",
    "dataRowHeight",
    "headingRowHeight",
    "horizontalMargin",
    "columnSpacing",
    "showCheckboxColumn",
    "initialFirstRowIndex",
    "onPageChanged",
    "rowsPerPage",
    "availableRowsPerPage",
    "onRowsPerPageChanged",
    "dragStartBehavior",
    "source",
  ],
);
var _paginatedDataTableDefaultRowsPerPage =
    MXFunctionInvoke("PaginatedDataTable.defaultRowsPerPage", () => PaginatedDataTable.defaultRowsPerPage);
var _paginatedDataTableState = MXFunctionInvoke(
  "PaginatedDataTableState",
  () => PaginatedDataTableState(),
  [],
);
