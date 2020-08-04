//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/rendering/table.dart';


class MXProxyTable {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[tableCellParentData.funName] = tableCellParentData;
    m[intrinsicColumnWidth.funName] = intrinsicColumnWidth;
    m[fixedColumnWidth.funName] = fixedColumnWidth;
    m[fractionColumnWidth.funName] = fractionColumnWidth;
    m[flexColumnWidth.funName] = flexColumnWidth;
    m[maxColumnWidth.funName] = maxColumnWidth;
    m[minColumnWidth.funName] = minColumnWidth;
    m[tableCellVerticalAlignment.funName] = tableCellVerticalAlignment;
    m[renderTable.funName] = renderTable;
    return m;
  }
  static var tableCellParentData = MXFunctionInvoke(
      "TableCellParentData",
      ({
      }) =>
        TableCellParentData(
      ),
    );
  static var intrinsicColumnWidth = MXFunctionInvoke(
      "IntrinsicColumnWidth",
      ({
        dynamic flex,
      }) =>
        IntrinsicColumnWidth(
        flex: flex?.toDouble(),
      ),
    );
  static var fixedColumnWidth = MXFunctionInvoke(
      "FixedColumnWidth",
      ({
        double value,
      }) =>
        FixedColumnWidth(
        value,
      ),
    );
  static var fractionColumnWidth = MXFunctionInvoke(
      "FractionColumnWidth",
      ({
        double value,
      }) =>
        FractionColumnWidth(
        value,
      ),
    );
  static var flexColumnWidth = MXFunctionInvoke(
      "FlexColumnWidth",
      ({
        double value,
      }) =>
        FlexColumnWidth(
        value,
      ),
    );
  static var maxColumnWidth = MXFunctionInvoke(
      "MaxColumnWidth",
      ({
        TableColumnWidth a,
        TableColumnWidth b,
      }) =>
        MaxColumnWidth(
        a,
        b,
      ),
    );
  static var minColumnWidth = MXFunctionInvoke(
      "MinColumnWidth",
      ({
        TableColumnWidth a,
        TableColumnWidth b,
      }) =>
        MinColumnWidth(
        a,
        b,
      ),
    );
  static var tableCellVerticalAlignment = MXFunctionInvoke(
      "TableCellVerticalAlignment",
      ({Map args}) => MXTableCellVerticalAlignment.parse(args),
  );
  static var renderTable = MXFunctionInvoke(
      "RenderTable",
      ({
        int columns,
        int rows,
        Map<int*, TableColumnWidth> columnWidths,
        TableColumnWidth defaultColumnWidth,
        TextDirection textDirection,
        TableBorder border,
        List<Decoration> rowDecorations,
        ImageConfiguration configuration,
        TableCellVerticalAlignment defaultVerticalAlignment = TableCellVerticalAlignment.top,
        TextBaseline textBaseline,
        List<List<RenderBox>> children,
      }) =>
        RenderTable(
        columns: columns,
        rows: rows,
        columnWidths: columnWidths,
        defaultColumnWidth: defaultColumnWidth,
        textDirection: textDirection,
        border: border,
        rowDecorations: rowDecorations,
        configuration: configuration,
        defaultVerticalAlignment: defaultVerticalAlignment,
        textBaseline: textBaseline,
        children: children,
      ),
    );
}
class MXTableCellVerticalAlignment {
  static Map str2VMap = {
    'TableCellVerticalAlignment.top': TableCellVerticalAlignment.top,
    'TableCellVerticalAlignment.middle': TableCellVerticalAlignment.middle,
    'TableCellVerticalAlignment.bottom': TableCellVerticalAlignment.bottom,
    'TableCellVerticalAlignment.baseline': TableCellVerticalAlignment.baseline,
    'TableCellVerticalAlignment.fill': TableCellVerticalAlignment.fill,
  };
  static TableCellVerticalAlignment parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
