//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'dart:math' as math;
import 'package:meta/meta.dart';
import 'package:flutter/src/foundation/assertions.dart';
import 'package:flutter/src/foundation/constants.dart';
import 'package:flutter/src/foundation/debug.dart';
import 'package:flutter/src/foundation/object.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerDiagnosticsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_diagnosticLevel.funName] = _diagnosticLevel;
  m[_diagnosticsTreeStyle.funName] = _diagnosticsTreeStyle;
  m[_textTreeConfiguration.funName] = _textTreeConfiguration;
  m[_textTreeRenderer.funName] = _textTreeRenderer;
  m[_diagnosticsNodeMessage.funName] = _diagnosticsNodeMessage;
  m[_diagnosticsProperty.funName] = _diagnosticsProperty;
  m[_diagnosticsPropertyLazy.funName] = _diagnosticsPropertyLazy;
  m[_messageProperty.funName] = _messageProperty;
  m[_stringProperty.funName] = _stringProperty;
  m[_doubleProperty.funName] = _doubleProperty;
  m[_doublePropertyLazy.funName] = _doublePropertyLazy;
  m[_intProperty.funName] = _intProperty;
  m[_percentProperty.funName] = _percentProperty;
  m[_flagProperty.funName] = _flagProperty;
  m[_iterableProperty.funName] = _iterableProperty;
  m[_enumProperty.funName] = _enumProperty;
  m[_objectFlagProperty.funName] = _objectFlagProperty;
  m[_objectFlagPropertyHas.funName] = _objectFlagPropertyHas;
  m[_flagsSummary.funName] = _flagsSummary;
  m[_diagnosticableNode.funName] = _diagnosticableNode;
  m[_diagnosticableTreeNode.funName] = _diagnosticableTreeNode;
  m[_diagnosticPropertiesBuilder.funName] = _diagnosticPropertiesBuilder;
  m[_diagnosticPropertiesBuilderFromProperties.funName] = _diagnosticPropertiesBuilderFromProperties;
  m[_diagnosticsBlock.funName] = _diagnosticsBlock;
  m[_diagnosticsSerializationDelegate.funName] = _diagnosticsSerializationDelegate;
  return m;
}

var _diagnosticLevel = MXFunctionInvoke(
    "DiagnosticLevel", ({String name, int index}) => MXDiagnosticLevel.parse(name, index), ["name", "index"]);
var _diagnosticsTreeStyle = MXFunctionInvoke(
    "DiagnosticsTreeStyle", ({String name, int index}) => MXDiagnosticsTreeStyle.parse(name, index), ["name", "index"]);
var _textTreeConfiguration = MXFunctionInvoke(
  "TextTreeConfiguration",
  ({
    String prefixLineOne,
    String prefixOtherLines,
    String prefixLastChildLineOne,
    String prefixOtherLinesRootNode,
    String linkCharacter,
    String propertyPrefixIfChildren,
    String propertyPrefixNoChildren,
    String lineBreak = '\n',
    bool lineBreakProperties = true,
    String afterName = ':',
    String afterDescriptionIfBody = '',
    String afterDescription = '',
    String beforeProperties = '',
    String afterProperties = '',
    String mandatoryAfterProperties = '',
    String propertySeparator = '',
    String bodyIndent = '',
    String footer = '',
    bool showChildren = true,
    bool addBlankLineIfNoChildren = true,
    bool isNameOnOwnLine = false,
    bool isBlankLineBetweenPropertiesAndChildren = true,
    String beforeName = '',
    String suffixLineOne = '',
    String mandatoryFooter = '',
  }) =>
      TextTreeConfiguration(
    prefixLineOne: prefixLineOne,
    prefixOtherLines: prefixOtherLines,
    prefixLastChildLineOne: prefixLastChildLineOne,
    prefixOtherLinesRootNode: prefixOtherLinesRootNode,
    linkCharacter: linkCharacter,
    propertyPrefixIfChildren: propertyPrefixIfChildren,
    propertyPrefixNoChildren: propertyPrefixNoChildren,
    lineBreak: lineBreak,
    lineBreakProperties: lineBreakProperties,
    afterName: afterName,
    afterDescriptionIfBody: afterDescriptionIfBody,
    afterDescription: afterDescription,
    beforeProperties: beforeProperties,
    afterProperties: afterProperties,
    mandatoryAfterProperties: mandatoryAfterProperties,
    propertySeparator: propertySeparator,
    bodyIndent: bodyIndent,
    footer: footer,
    showChildren: showChildren,
    addBlankLineIfNoChildren: addBlankLineIfNoChildren,
    isNameOnOwnLine: isNameOnOwnLine,
    isBlankLineBetweenPropertiesAndChildren: isBlankLineBetweenPropertiesAndChildren,
    beforeName: beforeName,
    suffixLineOne: suffixLineOne,
    mandatoryFooter: mandatoryFooter,
  ),
  [
    "prefixLineOne",
    "prefixOtherLines",
    "prefixLastChildLineOne",
    "prefixOtherLinesRootNode",
    "linkCharacter",
    "propertyPrefixIfChildren",
    "propertyPrefixNoChildren",
    "lineBreak",
    "lineBreakProperties",
    "afterName",
    "afterDescriptionIfBody",
    "afterDescription",
    "beforeProperties",
    "afterProperties",
    "mandatoryAfterProperties",
    "propertySeparator",
    "bodyIndent",
    "footer",
    "showChildren",
    "addBlankLineIfNoChildren",
    "isNameOnOwnLine",
    "isBlankLineBetweenPropertiesAndChildren",
    "beforeName",
    "suffixLineOne",
    "mandatoryFooter",
  ],
);
var _textTreeRenderer = MXFunctionInvoke(
  "TextTreeRenderer",
  ({
    DiagnosticLevel minLevel = DiagnosticLevel.debug,
    int wrapWidth = 100,
    int wrapWidthProperties = 65,
    int maxDescendentsTruncatableNode = -1,
  }) =>
      TextTreeRenderer(
    minLevel: minLevel,
    wrapWidth: wrapWidth,
    wrapWidthProperties: wrapWidthProperties,
    maxDescendentsTruncatableNode: maxDescendentsTruncatableNode,
  ),
  [
    "minLevel",
    "wrapWidth",
    "wrapWidthProperties",
    "maxDescendentsTruncatableNode",
  ],
);
var _diagnosticsNodeMessage = MXFunctionInvoke(
  "DiagnosticsNode.message",
  ({
    String message,
    DiagnosticsTreeStyle style = DiagnosticsTreeStyle.singleLine,
    DiagnosticLevel level = DiagnosticLevel.info,
    bool allowWrap = true,
  }) =>
      DiagnosticsNode.message(
    message,
    style: style,
    level: level,
    allowWrap: allowWrap,
  ),
  [
    "message",
    "style",
    "level",
    "allowWrap",
  ],
);
var _diagnosticsProperty = MXFunctionInvoke(
  "DiagnosticsProperty",
  ({
    String name,
    dynamic value,
    String description,
    String ifNull,
    String ifEmpty,
    bool showName = true,
    bool showSeparator = true,
    Object defaultValue = kNoDefaultValue,
    String tooltip,
    bool missingIfNull = false,
    String linePrefix,
    bool expandableValue = false,
    bool allowWrap = true,
    bool allowNameWrap = true,
    DiagnosticsTreeStyle style = DiagnosticsTreeStyle.singleLine,
    DiagnosticLevel level = DiagnosticLevel.info,
  }) =>
      DiagnosticsProperty(
    name,
    value,
    description: description,
    ifNull: ifNull,
    ifEmpty: ifEmpty,
    showName: showName,
    showSeparator: showSeparator,
    defaultValue: defaultValue,
    tooltip: tooltip,
    missingIfNull: missingIfNull,
    linePrefix: linePrefix,
    expandableValue: expandableValue,
    allowWrap: allowWrap,
    allowNameWrap: allowNameWrap,
    style: style,
    level: level,
  ),
  [
    "name",
    "value",
    "description",
    "ifNull",
    "ifEmpty",
    "showName",
    "showSeparator",
    "defaultValue",
    "tooltip",
    "missingIfNull",
    "linePrefix",
    "expandableValue",
    "allowWrap",
    "allowNameWrap",
    "style",
    "level",
  ],
);
var _diagnosticsPropertyLazy = MXFunctionInvoke(
  "DiagnosticsProperty.lazy",
  ({
    String name,
    dynamic computeValue,
    String description,
    String ifNull,
    String ifEmpty,
    bool showName = true,
    bool showSeparator = true,
    Object defaultValue = kNoDefaultValue,
    String tooltip,
    bool missingIfNull = false,
    bool expandableValue = false,
    bool allowWrap = true,
    bool allowNameWrap = true,
    DiagnosticsTreeStyle style = DiagnosticsTreeStyle.singleLine,
    DiagnosticLevel level = DiagnosticLevel.info,
  }) =>
      DiagnosticsProperty.lazy(
    name,
    null,
    description: description,
    ifNull: ifNull,
    ifEmpty: ifEmpty,
    showName: showName,
    showSeparator: showSeparator,
    defaultValue: defaultValue,
    tooltip: tooltip,
    missingIfNull: missingIfNull,
    expandableValue: expandableValue,
    allowWrap: allowWrap,
    allowNameWrap: allowNameWrap,
    style: style,
    level: level,
  ),
  [
    "name",
    "computeValue",
    "description",
    "ifNull",
    "ifEmpty",
    "showName",
    "showSeparator",
    "defaultValue",
    "tooltip",
    "missingIfNull",
    "expandableValue",
    "allowWrap",
    "allowNameWrap",
    "style",
    "level",
  ],
);
var _messageProperty = MXFunctionInvoke(
  "MessageProperty",
  ({
    String name,
    String message,
    DiagnosticsTreeStyle style = DiagnosticsTreeStyle.singleLine,
    DiagnosticLevel level = DiagnosticLevel.info,
  }) =>
      MessageProperty(
    name,
    message,
    style: style,
    level: level,
  ),
  [
    "name",
    "message",
    "style",
    "level",
  ],
);
var _stringProperty = MXFunctionInvoke(
  "StringProperty",
  ({
    String name,
    String value,
    String description,
    String tooltip,
    bool showName = true,
    Object defaultValue = kNoDefaultValue,
    bool quoted = true,
    String ifEmpty,
    DiagnosticsTreeStyle style = DiagnosticsTreeStyle.singleLine,
    DiagnosticLevel level = DiagnosticLevel.info,
  }) =>
      StringProperty(
    name,
    value,
    description: description,
    tooltip: tooltip,
    showName: showName,
    defaultValue: defaultValue,
    quoted: quoted,
    ifEmpty: ifEmpty,
    style: style,
    level: level,
  ),
  [
    "name",
    "value",
    "description",
    "tooltip",
    "showName",
    "defaultValue",
    "quoted",
    "ifEmpty",
    "style",
    "level",
  ],
);
var _doubleProperty = MXFunctionInvoke(
  "DoubleProperty",
  ({
    String name,
    dynamic value,
    String ifNull,
    String unit,
    String tooltip,
    Object defaultValue = kNoDefaultValue,
    bool showName = true,
    DiagnosticsTreeStyle style = DiagnosticsTreeStyle.singleLine,
    DiagnosticLevel level = DiagnosticLevel.info,
  }) =>
      DoubleProperty(
    name,
    value?.toDouble(),
    ifNull: ifNull,
    unit: unit,
    tooltip: tooltip,
    defaultValue: defaultValue,
    showName: showName,
    style: style,
    level: level,
  ),
  [
    "name",
    "value",
    "ifNull",
    "unit",
    "tooltip",
    "defaultValue",
    "showName",
    "style",
    "level",
  ],
);
var _doublePropertyLazy = MXFunctionInvoke(
  "DoubleProperty.lazy",
  ({
    String name,
    dynamic computeValue,
    String ifNull,
    bool showName = true,
    String unit,
    String tooltip,
    Object defaultValue = kNoDefaultValue,
    DiagnosticLevel level = DiagnosticLevel.info,
  }) =>
      DoubleProperty.lazy(
    name,
    null,
    ifNull: ifNull,
    showName: showName,
    unit: unit,
    tooltip: tooltip,
    defaultValue: defaultValue,
    level: level,
  ),
  [
    "name",
    "computeValue",
    "ifNull",
    "showName",
    "unit",
    "tooltip",
    "defaultValue",
    "level",
  ],
);
var _intProperty = MXFunctionInvoke(
  "IntProperty",
  ({
    String name,
    int value,
    String ifNull,
    bool showName = true,
    String unit,
    Object defaultValue = kNoDefaultValue,
    DiagnosticsTreeStyle style = DiagnosticsTreeStyle.singleLine,
    DiagnosticLevel level = DiagnosticLevel.info,
  }) =>
      IntProperty(
    name,
    value,
    ifNull: ifNull,
    showName: showName,
    unit: unit,
    defaultValue: defaultValue,
    style: style,
    level: level,
  ),
  [
    "name",
    "value",
    "ifNull",
    "showName",
    "unit",
    "defaultValue",
    "style",
    "level",
  ],
);
var _percentProperty = MXFunctionInvoke(
  "PercentProperty",
  ({
    String name,
    dynamic fraction,
    String ifNull,
    bool showName = true,
    String tooltip,
    String unit,
    DiagnosticLevel level = DiagnosticLevel.info,
  }) =>
      PercentProperty(
    name,
    fraction?.toDouble(),
    ifNull: ifNull,
    showName: showName,
    tooltip: tooltip,
    unit: unit,
    level: level,
  ),
  [
    "name",
    "fraction",
    "ifNull",
    "showName",
    "tooltip",
    "unit",
    "level",
  ],
);
var _flagProperty = MXFunctionInvoke(
  "FlagProperty",
  ({
    String name,
    bool value,
    String ifTrue,
    String ifFalse,
    bool showName = false,
    Object defaultValue,
    DiagnosticLevel level = DiagnosticLevel.info,
  }) =>
      FlagProperty(
    name,
    value: value,
    ifTrue: ifTrue,
    ifFalse: ifFalse,
    showName: showName,
    defaultValue: defaultValue,
    level: level,
  ),
  [
    "name",
    "value",
    "ifTrue",
    "ifFalse",
    "showName",
    "defaultValue",
    "level",
  ],
);
var _iterableProperty = MXFunctionInvoke(
  "IterableProperty",
  ({
    String name,
    Iterable<dynamic> value,
    Object defaultValue = kNoDefaultValue,
    String ifNull,
    String ifEmpty = '[]',
    DiagnosticsTreeStyle style = DiagnosticsTreeStyle.singleLine,
    bool showName = true,
    bool showSeparator = true,
    DiagnosticLevel level = DiagnosticLevel.info,
  }) =>
      IterableProperty(
    name,
    value,
    defaultValue: defaultValue,
    ifNull: ifNull,
    ifEmpty: ifEmpty,
    style: style,
    showName: showName,
    showSeparator: showSeparator,
    level: level,
  ),
  [
    "name",
    "value",
    "defaultValue",
    "ifNull",
    "ifEmpty",
    "style",
    "showName",
    "showSeparator",
    "level",
  ],
);
var _enumProperty = MXFunctionInvoke(
  "EnumProperty",
  ({
    String name,
    dynamic value,
    Object defaultValue = kNoDefaultValue,
    DiagnosticLevel level = DiagnosticLevel.info,
  }) =>
      EnumProperty(
    name,
    value,
    defaultValue: defaultValue,
    level: level,
  ),
  [
    "name",
    "value",
    "defaultValue",
    "level",
  ],
);
var _objectFlagProperty = MXFunctionInvoke(
  "ObjectFlagProperty",
  ({
    String name,
    dynamic value,
    String ifPresent,
    String ifNull,
    bool showName = false,
    DiagnosticLevel level = DiagnosticLevel.info,
  }) =>
      ObjectFlagProperty(
    name,
    value,
    ifPresent: ifPresent,
    ifNull: ifNull,
    showName: showName,
    level: level,
  ),
  [
    "name",
    "value",
    "ifPresent",
    "ifNull",
    "showName",
    "level",
  ],
);
var _objectFlagPropertyHas = MXFunctionInvoke(
  "ObjectFlagProperty.has",
  ({
    String name,
    dynamic value,
    DiagnosticLevel level = DiagnosticLevel.info,
  }) =>
      ObjectFlagProperty.has(
    name,
    value,
    level: level,
  ),
  [
    "name",
    "value",
    "level",
  ],
);
var _flagsSummary = MXFunctionInvoke(
  "FlagsSummary",
  ({
    String name,
    dynamic value,
    String ifEmpty,
    bool showName = true,
    bool showSeparator = true,
    DiagnosticLevel level = DiagnosticLevel.info,
  }) =>
      FlagsSummary(
    name,
    toMapT<String, dynamic>(value),
    ifEmpty: ifEmpty,
    showName: showName,
    showSeparator: showSeparator,
    level: level,
  ),
  [
    "name",
    "value",
    "ifEmpty",
    "showName",
    "showSeparator",
    "level",
  ],
);
var _diagnosticableNode = MXFunctionInvoke(
  "DiagnosticableNode",
  ({
    String name,
    Diagnosticable value,
    DiagnosticsTreeStyle style,
  }) =>
      DiagnosticableNode(
    name: name,
    value: value,
    style: style,
  ),
  [
    "name",
    "value",
    "style",
  ],
);
var _diagnosticableTreeNode = MXFunctionInvoke(
  "DiagnosticableTreeNode",
  ({
    String name,
    DiagnosticableTree value,
    DiagnosticsTreeStyle style,
  }) =>
      DiagnosticableTreeNode(
    name: name,
    value: value,
    style: style,
  ),
  [
    "name",
    "value",
    "style",
  ],
);
var _diagnosticPropertiesBuilder = MXFunctionInvoke(
  "DiagnosticPropertiesBuilder",
  () => DiagnosticPropertiesBuilder(),
  [],
);
var _diagnosticPropertiesBuilderFromProperties = MXFunctionInvoke(
  "DiagnosticPropertiesBuilder.fromProperties",
  ({
    dynamic properties,
  }) =>
      DiagnosticPropertiesBuilder.fromProperties(
    toListT<DiagnosticsNode>(properties),
  ),
  [
    "properties",
  ],
);
var _diagnosticsBlock = MXFunctionInvoke(
  "DiagnosticsBlock",
  ({
    String name,
    DiagnosticsTreeStyle style = DiagnosticsTreeStyle.whitespace,
    bool showName = true,
    bool showSeparator = true,
    String linePrefix,
    Object value,
    String description,
    DiagnosticLevel level = DiagnosticLevel.info,
    bool allowTruncate = false,
    dynamic children = const <DiagnosticsNode>[],
    dynamic properties = const <DiagnosticsNode>[],
  }) =>
      DiagnosticsBlock(
    name: name,
    style: style,
    showName: showName,
    showSeparator: showSeparator,
    linePrefix: linePrefix,
    value: value,
    description: description,
    level: level,
    allowTruncate: allowTruncate,
    children: toListT<DiagnosticsNode>(children),
    properties: toListT<DiagnosticsNode>(properties),
  ),
  [
    "name",
    "style",
    "showName",
    "showSeparator",
    "linePrefix",
    "value",
    "description",
    "level",
    "allowTruncate",
    "children",
    "properties",
  ],
);
var _diagnosticsSerializationDelegate = MXFunctionInvoke(
  "DiagnosticsSerializationDelegate",
  ({
    int subtreeDepth,
    bool includeProperties,
  }) =>
      DiagnosticsSerializationDelegate(
    subtreeDepth: subtreeDepth,
    includeProperties: includeProperties,
  ),
  [
    "subtreeDepth",
    "includeProperties",
  ],
);

class MXDiagnosticLevel {
  static DiagnosticLevel parse(String name, int index) {
    switch (name) {
      case 'DiagnosticLevel.hidden':
        return DiagnosticLevel.hidden;
      case 'DiagnosticLevel.fine':
        return DiagnosticLevel.fine;
      case 'DiagnosticLevel.debug':
        return DiagnosticLevel.debug;
      case 'DiagnosticLevel.info':
        return DiagnosticLevel.info;
      case 'DiagnosticLevel.warning':
        return DiagnosticLevel.warning;
      case 'DiagnosticLevel.hint':
        return DiagnosticLevel.hint;
      case 'DiagnosticLevel.summary':
        return DiagnosticLevel.summary;
      case 'DiagnosticLevel.error':
        return DiagnosticLevel.error;
      case 'DiagnosticLevel.off':
        return DiagnosticLevel.off;
    }
    return null;
  }
}

class MXDiagnosticsTreeStyle {
  static DiagnosticsTreeStyle parse(String name, int index) {
    switch (name) {
      case 'DiagnosticsTreeStyle.none':
        return DiagnosticsTreeStyle.none;
      case 'DiagnosticsTreeStyle.sparse':
        return DiagnosticsTreeStyle.sparse;
      case 'DiagnosticsTreeStyle.offstage':
        return DiagnosticsTreeStyle.offstage;
      case 'DiagnosticsTreeStyle.dense':
        return DiagnosticsTreeStyle.dense;
      case 'DiagnosticsTreeStyle.transition':
        return DiagnosticsTreeStyle.transition;
      case 'DiagnosticsTreeStyle.error':
        return DiagnosticsTreeStyle.error;
      case 'DiagnosticsTreeStyle.whitespace':
        return DiagnosticsTreeStyle.whitespace;
      case 'DiagnosticsTreeStyle.flat':
        return DiagnosticsTreeStyle.flat;
      case 'DiagnosticsTreeStyle.singleLine':
        return DiagnosticsTreeStyle.singleLine;
      case 'DiagnosticsTreeStyle.errorProperty':
        return DiagnosticsTreeStyle.errorProperty;
      case 'DiagnosticsTreeStyle.shallow':
        return DiagnosticsTreeStyle.shallow;
      case 'DiagnosticsTreeStyle.truncateChildren':
        return DiagnosticsTreeStyle.truncateChildren;
    }
    return null;
  }
}
