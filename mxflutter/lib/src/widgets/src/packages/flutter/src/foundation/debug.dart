//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/debug.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:flutter/src/foundation/assertions.dart';


class MXProxyDebug {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[diagnosticLevel.funName] = diagnosticLevel;
    m[diagnosticsTreeStyle.funName] = diagnosticsTreeStyle;
    m[textTreeConfiguration.funName] = textTreeConfiguration;
    m[textTreeRenderer.funName] = textTreeRenderer;
    m[diagnosticsProperty.funName] = diagnosticsProperty;
    m[diagnosticsProperty_lazy.funName] = diagnosticsProperty_lazy;
    m[messageProperty.funName] = messageProperty;
    m[stringProperty.funName] = stringProperty;
    m[doubleProperty.funName] = doubleProperty;
    m[doubleProperty_lazy.funName] = doubleProperty_lazy;
    m[intProperty.funName] = intProperty;
    m[percentProperty.funName] = percentProperty;
    m[flagProperty.funName] = flagProperty;
    m[iterableProperty.funName] = iterableProperty;
    m[enumProperty.funName] = enumProperty;
    m[objectFlagProperty.funName] = objectFlagProperty;
    m[objectFlagProperty_has.funName] = objectFlagProperty_has;
    m[flagsSummary.funName] = flagsSummary;
    m[diagnosticableNode.funName] = diagnosticableNode;
    m[diagnosticableTreeNode.funName] = diagnosticableTreeNode;
    m[diagnosticPropertiesBuilder.funName] = diagnosticPropertiesBuilder;
    m[diagnosticPropertiesBuilder_fromProperties.funName] = diagnosticPropertiesBuilder_fromProperties;
    m[diagnosticsBlock.funName] = diagnosticsBlock;
    m[partialStackFrame.funName] = partialStackFrame;
    m[repetitiveStackFrameFilter.funName] = repetitiveStackFrameFilter;
    m[errorDescription.funName] = errorDescription;
    m[errorDescription_fromParts.funName] = errorDescription_fromParts;
    m[errorSummary.funName] = errorSummary;
    m[errorSummary_fromParts.funName] = errorSummary_fromParts;
    m[errorHint.funName] = errorHint;
    m[errorHint_fromParts.funName] = errorHint_fromParts;
    m[errorSpacer.funName] = errorSpacer;
    m[flutterErrorDetails.funName] = flutterErrorDetails;
    m[flutterError.funName] = flutterError;
    m[flutterError_fromParts.funName] = flutterError_fromParts;
    m[diagnosticsStackTrace.funName] = diagnosticsStackTrace;
    m[diagnosticsStackTrace_singleFrame.funName] = diagnosticsStackTrace_singleFrame;
    return m;
  }
  static var diagnosticLevel = MXFunctionInvoke(
      "DiagnosticLevel",
      ({Map args}) => MXDiagnosticLevel.parse(args),
  );
  static var diagnosticsTreeStyle = MXFunctionInvoke(
      "DiagnosticsTreeStyle",
      ({Map args}) => MXDiagnosticsTreeStyle.parse(args),
  );
  static var textTreeConfiguration = MXFunctionInvoke(
      "TextTreeConfiguration",
      ({
        String prefixLineOne,
        String prefixOtherLines,
        String prefixLastChildLineOne,
        String prefixOtherLinesRootNode,
        String linkCharacter,
        String propertyPrefixIfChildren,
        String propertyPrefixNoChildren,
        String lineBreak = 
,
        bool lineBreakProperties = true,
        String afterName = :,
        String afterDescriptionIfBody = ,
        String afterDescription = ,
        String beforeProperties = ,
        String afterProperties = ,
        String mandatoryAfterProperties = ,
        String propertySeparator = ,
        String bodyIndent = ,
        String footer = ,
        bool showChildren = true,
        bool addBlankLineIfNoChildren = true,
        bool isNameOnOwnLine = false,
        bool isBlankLineBetweenPropertiesAndChildren = true,
        String beforeName = ,
        String suffixLineOne = ,
        String mandatoryFooter = ,
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
    );
  static var textTreeRenderer = MXFunctionInvoke(
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
    );
  static var diagnosticsProperty = MXFunctionInvoke(
      "DiagnosticsProperty",
      ({
        String name,
        dynamic value,
        String description,
        String ifNull,
        String ifEmpty,
        bool showName = true,
        bool showSeparator = true,
        Object defaultValue,
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
    );
  static var diagnosticsProperty_lazy = MXFunctionInvoke(
    "diagnosticsProperty.lazy",
      ({
        String name,
        dynamic computeValue,
        String description,
        String ifNull,
        String ifEmpty,
        bool showName = true,
        bool showSeparator = true,
        Object defaultValue,
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
        computeValue,
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
    );
  static var messageProperty = MXFunctionInvoke(
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
    );
  static var stringProperty = MXFunctionInvoke(
      "StringProperty",
      ({
        String name,
        String value,
        String description,
        String tooltip,
        bool showName = true,
        Object defaultValue,
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
    );
  static var doubleProperty = MXFunctionInvoke(
      "DoubleProperty",
      ({
        String name,
        double value,
        String ifNull,
        String unit,
        String tooltip,
        Object defaultValue,
        bool showName = true,
        DiagnosticsTreeStyle style = DiagnosticsTreeStyle.singleLine,
        DiagnosticLevel level = DiagnosticLevel.info,
      }) =>
        DoubleProperty(
        name,
        value,
        ifNull: ifNull,
        unit: unit,
        tooltip: tooltip,
        defaultValue: defaultValue,
        showName: showName,
        style: style,
        level: level,
      ),
    );
  static var doubleProperty_lazy = MXFunctionInvoke(
    "doubleProperty.lazy",
      ({
        String name,
        dynamic computeValue,
        String ifNull,
        bool showName = true,
        String unit,
        String tooltip,
        Object defaultValue,
        DiagnosticLevel level = DiagnosticLevel.info,
      }) =>
        DoubleProperty.lazy(
        name,
        computeValue,
        ifNull: ifNull,
        showName: showName,
        unit: unit,
        tooltip: tooltip,
        defaultValue: defaultValue,
        level: level,
      ),
    );
  static var intProperty = MXFunctionInvoke(
      "IntProperty",
      ({
        String name,
        int value,
        String ifNull,
        bool showName = true,
        String unit,
        Object defaultValue,
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
    );
  static var percentProperty = MXFunctionInvoke(
      "PercentProperty",
      ({
        String name,
        double fraction,
        String ifNull,
        bool showName = true,
        String tooltip,
        String unit,
        DiagnosticLevel level = DiagnosticLevel.info,
      }) =>
        PercentProperty(
        name,
        fraction,
        ifNull: ifNull,
        showName: showName,
        tooltip: tooltip,
        unit: unit,
        level: level,
      ),
    );
  static var flagProperty = MXFunctionInvoke(
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
    );
  static var iterableProperty = MXFunctionInvoke(
      "IterableProperty",
      ({
        String name,
        Iterable<IterableProperty::T> value,
        Object defaultValue,
        String ifNull,
        String ifEmpty = [],
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
    );
  static var enumProperty = MXFunctionInvoke(
      "EnumProperty",
      ({
        String name,
        dynamic value,
        Object defaultValue,
        DiagnosticLevel level = DiagnosticLevel.info,
      }) =>
        EnumProperty(
        name,
        value,
        defaultValue: defaultValue,
        level: level,
      ),
    );
  static var objectFlagProperty = MXFunctionInvoke(
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
    );
  static var objectFlagProperty_has = MXFunctionInvoke(
    "objectFlagProperty.has",
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
    );
  static var flagsSummary = MXFunctionInvoke(
      "FlagsSummary",
      ({
        String name,
        Map<String*, FlagsSummary::T> value,
        String ifEmpty,
        bool showName = true,
        bool showSeparator = true,
        DiagnosticLevel level = DiagnosticLevel.info,
      }) =>
        FlagsSummary(
        name,
        value,
        ifEmpty: ifEmpty,
        showName: showName,
        showSeparator: showSeparator,
        level: level,
      ),
    );
  static var diagnosticableNode = MXFunctionInvoke(
      "DiagnosticableNode",
      ({
        String name,
        dynamic value,
        DiagnosticsTreeStyle style,
      }) =>
        DiagnosticableNode(
        name: name,
        value: value,
        style: style,
      ),
    );
  static var diagnosticableTreeNode = MXFunctionInvoke(
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
    );
  static var diagnosticPropertiesBuilder = MXFunctionInvoke(
      "DiagnosticPropertiesBuilder",
      ({
      }) =>
        DiagnosticPropertiesBuilder(
      ),
    );
  static var diagnosticPropertiesBuilder_fromProperties = MXFunctionInvoke(
    "diagnosticPropertiesBuilder.fromProperties",
      ({
        List<DiagnosticsNode> properties,
      }) =>
        DiagnosticPropertiesBuilder.fromProperties(
        properties,
      ),
    );
  static var diagnosticsBlock = MXFunctionInvoke(
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
        List<DiagnosticsNode> children,
        List<DiagnosticsNode> properties,
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
        children: children,
        properties: properties,
      ),
    );
  static var partialStackFrame = MXFunctionInvoke(
      "PartialStackFrame",
      ({
        Pattern package,
        String className,
        String method,
      }) =>
        PartialStackFrame(
        package: package,
        className: className,
        method: method,
      ),
    );
  static var repetitiveStackFrameFilter = MXFunctionInvoke(
      "RepetitiveStackFrameFilter",
      ({
        List<PartialStackFrame> frames,
        String replacement,
      }) =>
        RepetitiveStackFrameFilter(
        frames: frames,
        replacement: replacement,
      ),
    );
  static var errorDescription = MXFunctionInvoke(
      "ErrorDescription",
      ({
        String message,
      }) =>
        ErrorDescription(
        message,
      ),
    );
  static var errorDescription_fromParts = MXFunctionInvoke(
    "errorDescription.fromParts",
      ({
        List<Object> messageParts,
      }) =>
        ErrorDescription.fromParts(
        messageParts,
      ),
    );
  static var errorSummary = MXFunctionInvoke(
      "ErrorSummary",
      ({
        String message,
      }) =>
        ErrorSummary(
        message,
      ),
    );
  static var errorSummary_fromParts = MXFunctionInvoke(
    "errorSummary.fromParts",
      ({
        List<Object> messageParts,
      }) =>
        ErrorSummary.fromParts(
        messageParts,
      ),
    );
  static var errorHint = MXFunctionInvoke(
      "ErrorHint",
      ({
        String message,
      }) =>
        ErrorHint(
        message,
      ),
    );
  static var errorHint_fromParts = MXFunctionInvoke(
    "errorHint.fromParts",
      ({
        List<Object> messageParts,
      }) =>
        ErrorHint.fromParts(
        messageParts,
      ),
    );
  static var errorSpacer = MXFunctionInvoke(
      "ErrorSpacer",
      ({
      }) =>
        ErrorSpacer(
      ),
    );
  static var flutterErrorDetails = MXFunctionInvoke(
      "FlutterErrorDetails",
      ({
        dynamic exception,
        StackTrace stack,
        String library = Flutter framework,
        DiagnosticsNode context,
        dynamic stackFilter,
        dynamic informationCollector,
        bool silent = false,
      }) =>
        FlutterErrorDetails(
        exception: exception,
        stack: stack,
        library: library,
        context: context,
        stackFilter: createGenericValueGenericClosure<Iterable<String>, Iterable<String>>(flutterErrorDetails.buildOwner, stackFilter),
        informationCollector: informationCollector,
        silent: silent,
      ),
    );
  static var flutterError = MXFunctionInvoke(
      "FlutterError",
      ({
        String message,
      }) =>
        FlutterError(
        message,
      ),
    );
  static var flutterError_fromParts = MXFunctionInvoke(
    "flutterError.fromParts",
      ({
        List<DiagnosticsNode> diagnostics,
      }) =>
        FlutterError.fromParts(
        diagnostics,
      ),
    );
  static var diagnosticsStackTrace = MXFunctionInvoke(
      "DiagnosticsStackTrace",
      ({
        String name,
        StackTrace stack,
        dynamic stackFilter,
        bool showSeparator = true,
      }) =>
        DiagnosticsStackTrace(
        name,
        stack,
        stackFilter: createGenericValueGenericClosure<Iterable<String>, Iterable<String>>(diagnosticsStackTrace.buildOwner, stackFilter),
        showSeparator: showSeparator,
      ),
    );
  static var diagnosticsStackTrace_singleFrame = MXFunctionInvoke(
    "diagnosticsStackTrace.singleFrame",
      ({
        String name,
        String frame,
        bool showSeparator = true,
      }) =>
        DiagnosticsStackTrace.singleFrame(
        name,
        frame: frame,
        showSeparator: showSeparator,
      ),
    );
}
class MXDiagnosticLevel {
  static Map str2VMap = {
    'DiagnosticLevel.hidden': DiagnosticLevel.hidden,
    'DiagnosticLevel.fine': DiagnosticLevel.fine,
    'DiagnosticLevel.debug': DiagnosticLevel.debug,
    'DiagnosticLevel.info': DiagnosticLevel.info,
    'DiagnosticLevel.warning': DiagnosticLevel.warning,
    'DiagnosticLevel.hint': DiagnosticLevel.hint,
    'DiagnosticLevel.summary': DiagnosticLevel.summary,
    'DiagnosticLevel.error': DiagnosticLevel.error,
    'DiagnosticLevel.off': DiagnosticLevel.off,
  };
  static DiagnosticLevel parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXDiagnosticsTreeStyle {
  static Map str2VMap = {
    'DiagnosticsTreeStyle.none': DiagnosticsTreeStyle.none,
    'DiagnosticsTreeStyle.sparse': DiagnosticsTreeStyle.sparse,
    'DiagnosticsTreeStyle.offstage': DiagnosticsTreeStyle.offstage,
    'DiagnosticsTreeStyle.dense': DiagnosticsTreeStyle.dense,
    'DiagnosticsTreeStyle.transition': DiagnosticsTreeStyle.transition,
    'DiagnosticsTreeStyle.error': DiagnosticsTreeStyle.error,
    'DiagnosticsTreeStyle.whitespace': DiagnosticsTreeStyle.whitespace,
    'DiagnosticsTreeStyle.flat': DiagnosticsTreeStyle.flat,
    'DiagnosticsTreeStyle.singleLine': DiagnosticsTreeStyle.singleLine,
    'DiagnosticsTreeStyle.errorProperty': DiagnosticsTreeStyle.errorProperty,
    'DiagnosticsTreeStyle.shallow': DiagnosticsTreeStyle.shallow,
    'DiagnosticsTreeStyle.truncateChildren': DiagnosticsTreeStyle.truncateChildren,
  };
  static DiagnosticsTreeStyle parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
