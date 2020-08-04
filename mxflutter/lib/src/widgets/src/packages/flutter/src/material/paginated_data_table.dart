//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/paginated_data_table.dart';


class MXProxyPaginatedDataTable {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[paginatedDataTable.funName] = paginatedDataTable;
    m[paginatedDataTableState.funName] = paginatedDataTableState;
    return m;
  }
  static var paginatedDataTable = MXFunctionInvoke(
      "PaginatedDataTable",
      ({
        Key key,
        Widget header,
        List<Widget> actions,
        List<DataColumn> columns,
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
        List<int> availableRowsPerPage,
        dynamic onRowsPerPageChanged,
        DragStartBehavior dragStartBehavior = DragStartBehavior.start,
        DataTableSource source,
      }) =>
        PaginatedDataTable(
        key: key,
        header: header,
        actions: actions,
        columns: columns,
        sortColumnIndex: sortColumnIndex,
        sortAscending: sortAscending,
        onSelectAll: createValueChangedGenericClosure<bool>(paginatedDataTable.buildOwner, onSelectAll),
        dataRowHeight: dataRowHeight?.toDouble(),
        headingRowHeight: headingRowHeight?.toDouble(),
        horizontalMargin: horizontalMargin?.toDouble(),
        columnSpacing: columnSpacing?.toDouble(),
        showCheckboxColumn: showCheckboxColumn,
        initialFirstRowIndex: initialFirstRowIndex,
        onPageChanged: createValueChangedGenericClosure<int>(paginatedDataTable.buildOwner, onPageChanged),
        rowsPerPage: rowsPerPage,
        availableRowsPerPage: availableRowsPerPage,
        onRowsPerPageChanged: createValueChangedGenericClosure<int>(paginatedDataTable.buildOwner, onRowsPerPageChanged),
        dragStartBehavior: dragStartBehavior,
        source: source,
      ),
    );
  static var paginatedDataTableState = MXFunctionInvoke(
      "PaginatedDataTableState",
      ({
      }) =>
        PaginatedDataTableState(
      ),
    );
}
