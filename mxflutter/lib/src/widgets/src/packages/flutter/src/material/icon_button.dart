//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/icon_button.dart';
import 'package:flutter/src/material/back_button.dart';
import 'package:flutter/src/material/time.dart';
import 'package:flutter/src/material/snack_bar.dart';
import 'package:flutter/src/material/floating_action_button_location.dart';
import 'package:flutter/src/material/tooltip.dart';
import 'package:flutter/src/material/floating_action_button.dart';
import 'package:flutter/src/material/flexible_space_bar.dart';
import 'package:flutter/src/material/list_tile.dart';
import 'package:flutter/src/material/drawer.dart';
import 'package:flutter/src/material/divider.dart';
import 'package:flutter/src/material/dialog.dart';
import 'package:flutter/src/material/raised_button.dart';
import 'package:flutter/src/material/outline_button.dart';
import 'package:flutter/src/material/material_button.dart';
import 'package:flutter/src/material/button.dart';
import 'package:flutter/src/material/flat_button.dart';
import 'package:flutter/src/material/tooltip_theme.dart';
import 'package:flutter/src/material/toggle_buttons_theme.dart';
import 'package:flutter/src/material/tabs.dart';
import 'package:flutter/src/material/tab_bar_theme.dart';
import 'package:flutter/src/material/snack_bar_theme.dart';
import 'package:flutter/src/material/slider_theme.dart';
import 'package:flutter/src/material/popup_menu_theme.dart';
import 'package:flutter/src/material/page_transitions_theme.dart';
import 'package:flutter/src/material/navigation_rail.dart';
import 'package:flutter/src/material/navigation_rail_theme.dart';
import 'package:flutter/src/material/input_decorator.dart';
import 'package:flutter/src/material/ink_highlight.dart';
import 'package:flutter/src/material/feedback.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/ink_splash.dart';
import 'package:flutter/src/material/divider_theme.dart';
import 'package:flutter/src/material/dialog_theme.dart';
import 'package:flutter/src/material/chip_theme.dart';
import 'package:flutter/src/material/card_theme.dart';
import 'package:flutter/src/material/bottom_app_bar_theme.dart';
import 'package:flutter/src/material/banner_theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/button_theme.dart';
import 'package:flutter/src/material/button_bar_theme.dart';
import 'package:flutter/src/material/button_bar.dart';
import 'package:flutter/src/material/bottom_sheet.dart';
import 'package:flutter/src/material/scaffold.dart';
import 'package:flutter/src/material/elevation_overlay.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/reorderable_list.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/app_bar_theme.dart';
import 'package:flutter/src/material/app_bar.dart';


class MXProxyIconButton {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
    var m = <String, MXFunctionInvoke>{};
    m[iconButton.funName] = iconButton;
    m[backButtonIcon.funName] = backButtonIcon;
    m[backButton.funName] = backButton;
    m[closeButton.funName] = closeButton;
    m[dayPeriod.funName] = dayPeriod;
    m[timeOfDay.funName] = timeOfDay;
    m[timeOfDay_now.funName] = timeOfDay_now;
    m[timeOfDay_fromDateTime.funName] = timeOfDay_fromDateTime;
    m[timeOfDayFormat.funName] = timeOfDayFormat;
    m[hourFormat.funName] = hourFormat;
    m[snackBarClosedReason.funName] = snackBarClosedReason;
    m[snackBarAction.funName] = snackBarAction;
    m[snackBar.funName] = snackBar;
    m[tooltip.funName] = tooltip;
    m[floatingActionButton.funName] = floatingActionButton;
    m[floatingActionButton_extended.funName] = floatingActionButton_extended;
    m[collapseMode.funName] = collapseMode;
    m[stretchMode.funName] = stretchMode;
    m[flexibleSpaceBar.funName] = flexibleSpaceBar;
    m[flexibleSpaceBarSettings.funName] = flexibleSpaceBarSettings;
    m[listTileStyle.funName] = listTileStyle;
    m[listTileTheme.funName] = listTileTheme;
    m[listTileControlAffinity.funName] = listTileControlAffinity;
    m[listTile.funName] = listTile;
    m[drawerAlignment.funName] = drawerAlignment;
    m[drawer.funName] = drawer;
    m[drawerController.funName] = drawerController;
    m[drawerControllerState.funName] = drawerControllerState;
    m[divider.funName] = divider;
    m[verticalDivider.funName] = verticalDivider;
    m[dialog.funName] = dialog;
    m[alertDialog.funName] = alertDialog;
    m[simpleDialogOption.funName] = simpleDialogOption;
    m[simpleDialog.funName] = simpleDialog;
    m[materialButton.funName] = materialButton;
    m[raisedButton.funName] = raisedButton;
    m[outlineButton.funName] = outlineButton;
    m[rawMaterialButton.funName] = rawMaterialButton;
    m[flatButton.funName] = flatButton;
    m[tooltipThemeData.funName] = tooltipThemeData;
    m[tooltipTheme.funName] = tooltipTheme;
    m[toggleButtonsThemeData.funName] = toggleButtonsThemeData;
    m[toggleButtonsTheme.funName] = toggleButtonsTheme;
    m[tabBarIndicatorSize.funName] = tabBarIndicatorSize;
    m[tab.funName] = tab;
    m[tabBar.funName] = tabBar;
    m[tabBarView.funName] = tabBarView;
    m[tabPageSelectorIndicator.funName] = tabPageSelectorIndicator;
    m[tabPageSelector.funName] = tabPageSelector;
    m[tabBarTheme.funName] = tabBarTheme;
    m[snackBarBehavior.funName] = snackBarBehavior;
    m[snackBarThemeData.funName] = snackBarThemeData;
    m[sliderTheme.funName] = sliderTheme;
    m[showValueIndicator.funName] = showValueIndicator;
    m[thumb.funName] = thumb;
    m[sliderThemeData.funName] = sliderThemeData;
    m[sliderThemeData_fromPrimaryColors.funName] = sliderThemeData_fromPrimaryColors;
    m[rectangularSliderTrackShape.funName] = rectangularSliderTrackShape;
    m[roundedRectSliderTrackShape.funName] = roundedRectSliderTrackShape;
    m[rectangularRangeSliderTrackShape.funName] = rectangularRangeSliderTrackShape;
    m[roundedRectRangeSliderTrackShape.funName] = roundedRectRangeSliderTrackShape;
    m[roundSliderTickMarkShape.funName] = roundSliderTickMarkShape;
    m[roundRangeSliderTickMarkShape.funName] = roundRangeSliderTickMarkShape;
    m[roundSliderThumbShape.funName] = roundSliderThumbShape;
    m[roundRangeSliderThumbShape.funName] = roundRangeSliderThumbShape;
    m[roundSliderOverlayShape.funName] = roundSliderOverlayShape;
    m[paddleSliderValueIndicatorShape.funName] = paddleSliderValueIndicatorShape;
    m[paddleRangeSliderValueIndicatorShape.funName] = paddleRangeSliderValueIndicatorShape;
    m[rangeValues.funName] = rangeValues;
    m[rangeLabels.funName] = rangeLabels;
    m[popupMenuThemeData.funName] = popupMenuThemeData;
    m[popupMenuTheme.funName] = popupMenuTheme;
    m[fadeUpwardsPageTransitionsBuilder.funName] = fadeUpwardsPageTransitionsBuilder;
    m[openUpwardsPageTransitionsBuilder.funName] = openUpwardsPageTransitionsBuilder;
    m[zoomPageTransitionsBuilder.funName] = zoomPageTransitionsBuilder;
    m[cupertinoPageTransitionsBuilder.funName] = cupertinoPageTransitionsBuilder;
    m[pageTransitionsTheme.funName] = pageTransitionsTheme;
    m[navigationRail.funName] = navigationRail;
    m[navigationRailLabelType.funName] = navigationRailLabelType;
    m[navigationRailDestination.funName] = navigationRailDestination;
    m[navigationRailThemeData.funName] = navigationRailThemeData;
    m[navigationRailTheme.funName] = navigationRailTheme;
    m[floatingLabelBehavior.funName] = floatingLabelBehavior;
    m[inputDecorator.funName] = inputDecorator;
    m[inputDecoration.funName] = inputDecoration;
    m[inputDecoration_collapsed.funName] = inputDecoration_collapsed;
    m[inputDecorationTheme.funName] = inputDecorationTheme;
    m[inkHighlight.funName] = inkHighlight;
    m[feedback_.funName] = feedback_;
    m[inkResponse.funName] = inkResponse;
    m[inkWell.funName] = inkWell;
    m[inkSplash.funName] = inkSplash;
    m[dividerThemeData.funName] = dividerThemeData;
    m[dividerTheme.funName] = dividerTheme;
    m[dialogTheme.funName] = dialogTheme;
    m[chipTheme.funName] = chipTheme;
    m[chipThemeData.funName] = chipThemeData;
    m[chipThemeData_fromDefaults.funName] = chipThemeData_fromDefaults;
    m[cardTheme.funName] = cardTheme;
    m[bottomAppBarTheme.funName] = bottomAppBarTheme;
    m[materialBannerThemeData.funName] = materialBannerThemeData;
    m[materialBannerTheme.funName] = materialBannerTheme;
    m[materialTapTargetSize.funName] = materialTapTargetSize;
    m[themeData.funName] = themeData;
    m[themeData_from.funName] = themeData_from;
    m[themeData_light.funName] = themeData_light;
    m[themeData_dark.funName] = themeData_dark;
    m[themeData_fallback.funName] = themeData_fallback;
    m[themeData_raw.funName] = themeData_raw;
    m[materialBasedCupertinoThemeData.funName] = materialBasedCupertinoThemeData;
    m[materialBasedCupertinoThemeData_.funName] = materialBasedCupertinoThemeData_;
    m[visualDensity.funName] = visualDensity;
    m[colorScheme.funName] = colorScheme;
    m[colorScheme_fromSwatch.funName] = colorScheme_fromSwatch;
    m[colorScheme_light.funName] = colorScheme_light;
    m[colorScheme_dark.funName] = colorScheme_dark;
    m[buttonTextTheme.funName] = buttonTextTheme;
    m[buttonBarLayoutBehavior.funName] = buttonBarLayoutBehavior;
    m[buttonTheme.funName] = buttonTheme;
    m[buttonTheme_fromButtonThemeData.funName] = buttonTheme_fromButtonThemeData;
    m[buttonTheme_bar.funName] = buttonTheme_bar;
    m[buttonThemeData.funName] = buttonThemeData;
    m[buttonBarThemeData.funName] = buttonBarThemeData;
    m[buttonBarTheme.funName] = buttonBarTheme;
    m[buttonBar.funName] = buttonBar;
    m[bottomSheet.funName] = bottomSheet;
    m[scaffoldPrelayoutGeometry.funName] = scaffoldPrelayoutGeometry;
    m[scaffoldGeometry.funName] = scaffoldGeometry;
    m[scaffold.funName] = scaffold;
    m[scaffoldState.funName] = scaffoldState;
    m[scaffoldFeatureController_.funName] = scaffoldFeatureController_;
    m[persistentBottomSheetController_.funName] = persistentBottomSheetController_;
    m[elevationOverlay_.funName] = elevationOverlay_;
    m[materialType.funName] = materialType;
    m[material.funName] = material;
    m[shapeBorderTween.funName] = shapeBorderTween;
    m[reorderableListView.funName] = reorderableListView;
    m[defaultMaterialLocalizations.funName] = defaultMaterialLocalizations;
    m[theme.funName] = theme;
    m[themeDataTween.funName] = themeDataTween;
    m[animatedTheme.funName] = animatedTheme;
    m[appBarTheme.funName] = appBarTheme;
    m[appBar.funName] = appBar;
    m[sliverAppBar.funName] = sliverAppBar;
    return m;
  }
  static var iconButton = MXFunctionInvoke(
      "IconButton",
      ({
        Key key,
        dynamic iconSize = 24.0,
        VisualDensity visualDensity,
        EdgeInsetsGeometry padding,
        AlignmentGeometry alignment,
        Widget icon,
        Color color,
        Color focusColor,
        Color hoverColor,
        Color highlightColor,
        Color splashColor,
        Color disabledColor,
        dynamic onPressed,
        FocusNode focusNode,
        bool autofocus = false,
        String tooltip,
        bool enableFeedback = true,
        BoxConstraints constraints,
      }) =>
        IconButton(
        key: key,
        iconSize: iconSize?.toDouble(),
        visualDensity: visualDensity,
        padding: padding,
        alignment: alignment,
        icon: icon,
        color: color,
        focusColor: focusColor,
        hoverColor: hoverColor,
        highlightColor: highlightColor,
        splashColor: splashColor,
        disabledColor: disabledColor,
        onPressed: createVoidCallbackClosure(iconButton.buildOwner, onPressed),
        focusNode: focusNode,
        autofocus: autofocus,
        tooltip: tooltip,
        enableFeedback: enableFeedback,
        constraints: constraints,
      ),
    );
  static var backButtonIcon = MXFunctionInvoke(
      "BackButtonIcon",
      ({
        Key key,
      }) =>
        BackButtonIcon(
        key: key,
      ),
    );
  static var backButton = MXFunctionInvoke(
      "BackButton",
      ({
        Key key,
        Color color,
        dynamic onPressed,
      }) =>
        BackButton(
        key: key,
        color: color,
        onPressed: createVoidCallbackClosure(backButton.buildOwner, onPressed),
      ),
    );
  static var closeButton = MXFunctionInvoke(
      "CloseButton",
      ({
        Key key,
        Color color,
        dynamic onPressed,
      }) =>
        CloseButton(
        key: key,
        color: color,
        onPressed: createVoidCallbackClosure(closeButton.buildOwner, onPressed),
      ),
    );
  static var dayPeriod = MXFunctionInvoke(
      "DayPeriod",
      ({Map args}) => MXDayPeriod.parse(args),
  );
  static var timeOfDay = MXFunctionInvoke(
      "TimeOfDay",
      ({
        int hour,
        int minute,
      }) =>
        TimeOfDay(
        hour: hour,
        minute: minute,
      ),
    );
  static var timeOfDay_now = MXFunctionInvoke(
    "timeOfDay.now",
      ({
      }) =>
        TimeOfDay.now(
      ),
    );
  static var timeOfDay_fromDateTime = MXFunctionInvoke(
    "timeOfDay.fromDateTime",
      ({
        DateTime time,
      }) =>
        TimeOfDay.fromDateTime(
        time,
      ),
    );
  static var timeOfDayFormat = MXFunctionInvoke(
      "TimeOfDayFormat",
      ({Map args}) => MXTimeOfDayFormat.parse(args),
  );
  static var hourFormat = MXFunctionInvoke(
      "HourFormat",
      ({Map args}) => MXHourFormat.parse(args),
  );
  static var snackBarClosedReason = MXFunctionInvoke(
      "SnackBarClosedReason",
      ({Map args}) => MXSnackBarClosedReason.parse(args),
  );
  static var snackBarAction = MXFunctionInvoke(
      "SnackBarAction",
      ({
        Key key,
        Color textColor,
        Color disabledTextColor,
        String label,
        dynamic onPressed,
      }) =>
        SnackBarAction(
        key: key,
        textColor: textColor,
        disabledTextColor: disabledTextColor,
        label: label,
        onPressed: createVoidCallbackClosure(snackBarAction.buildOwner, onPressed),
      ),
    );
  static var snackBar = MXFunctionInvoke(
      "SnackBar",
      ({
        Key key,
        Widget content,
        Color backgroundColor,
        dynamic elevation,
        ShapeBorder shape,
        SnackBarBehavior behavior,
        SnackBarAction action,
        Duration duration,
        Animation<double> animation,
        dynamic onVisible,
      }) =>
        SnackBar(
        key: key,
        content: content,
        backgroundColor: backgroundColor,
        elevation: elevation?.toDouble(),
        shape: shape,
        behavior: behavior,
        action: action,
        duration: duration,
        animation: animation,
        onVisible: createVoidCallbackClosure(snackBar.buildOwner, onVisible),
      ),
    );
  static var tooltip = MXFunctionInvoke(
      "Tooltip",
      ({
        Key key,
        String message,
        dynamic height,
        EdgeInsetsGeometry padding,
        EdgeInsetsGeometry margin,
        dynamic verticalOffset,
        bool preferBelow,
        bool excludeFromSemantics,
        Decoration decoration,
        TextStyle textStyle,
        Duration waitDuration,
        Duration showDuration,
        Widget child,
      }) =>
        Tooltip(
        key: key,
        message: message,
        height: height?.toDouble(),
        padding: padding,
        margin: margin,
        verticalOffset: verticalOffset?.toDouble(),
        preferBelow: preferBelow,
        excludeFromSemantics: excludeFromSemantics,
        decoration: decoration,
        textStyle: textStyle,
        waitDuration: waitDuration,
        showDuration: showDuration,
        child: child,
      ),
    );
  static var floatingActionButton = MXFunctionInvoke(
      "FloatingActionButton",
      ({
        Key key,
        Widget child,
        String tooltip,
        Color foregroundColor,
        Color backgroundColor,
        Color focusColor,
        Color hoverColor,
        Color splashColor,
        Object heroTag,
        dynamic elevation,
        dynamic focusElevation,
        dynamic hoverElevation,
        dynamic highlightElevation,
        dynamic disabledElevation,
        dynamic onPressed,
        bool mini = false,
        ShapeBorder shape,
        Clip clipBehavior = Clip.none,
        FocusNode focusNode,
        bool autofocus = false,
        MaterialTapTargetSize materialTapTargetSize,
        bool isExtended = false,
      }) =>
        FloatingActionButton(
        key: key,
        child: child,
        tooltip: tooltip,
        foregroundColor: foregroundColor,
        backgroundColor: backgroundColor,
        focusColor: focusColor,
        hoverColor: hoverColor,
        splashColor: splashColor,
        heroTag: heroTag,
        elevation: elevation?.toDouble(),
        focusElevation: focusElevation?.toDouble(),
        hoverElevation: hoverElevation?.toDouble(),
        highlightElevation: highlightElevation?.toDouble(),
        disabledElevation: disabledElevation?.toDouble(),
        onPressed: createVoidCallbackClosure(floatingActionButton.buildOwner, onPressed),
        mini: mini,
        shape: shape,
        clipBehavior: clipBehavior,
        focusNode: focusNode,
        autofocus: autofocus,
        materialTapTargetSize: materialTapTargetSize,
        isExtended: isExtended,
      ),
    );
  static var floatingActionButton_extended = MXFunctionInvoke(
    "floatingActionButton.extended",
      ({
        Key key,
        String tooltip,
        Color foregroundColor,
        Color backgroundColor,
        Color focusColor,
        Color hoverColor,
        Object heroTag,
        dynamic elevation,
        dynamic focusElevation,
        dynamic hoverElevation,
        Color splashColor,
        dynamic highlightElevation,
        dynamic disabledElevation,
        dynamic onPressed,
        ShapeBorder shape,
        bool isExtended = true,
        MaterialTapTargetSize materialTapTargetSize,
        Clip clipBehavior = Clip.none,
        FocusNode focusNode,
        bool autofocus = false,
        Widget icon,
        Widget label,
      }) =>
        FloatingActionButton.extended(
        key: key,
        tooltip: tooltip,
        foregroundColor: foregroundColor,
        backgroundColor: backgroundColor,
        focusColor: focusColor,
        hoverColor: hoverColor,
        heroTag: heroTag,
        elevation: elevation?.toDouble(),
        focusElevation: focusElevation?.toDouble(),
        hoverElevation: hoverElevation?.toDouble(),
        splashColor: splashColor,
        highlightElevation: highlightElevation?.toDouble(),
        disabledElevation: disabledElevation?.toDouble(),
        onPressed: createVoidCallbackClosure(floatingActionButton_extended.buildOwner, onPressed),
        shape: shape,
        isExtended: isExtended,
        materialTapTargetSize: materialTapTargetSize,
        clipBehavior: clipBehavior,
        focusNode: focusNode,
        autofocus: autofocus,
        icon: icon,
        label: label,
      ),
    );
  static var collapseMode = MXFunctionInvoke(
      "CollapseMode",
      ({Map args}) => MXCollapseMode.parse(args),
  );
  static var stretchMode = MXFunctionInvoke(
      "StretchMode",
      ({Map args}) => MXStretchMode.parse(args),
  );
  static var flexibleSpaceBar = MXFunctionInvoke(
      "FlexibleSpaceBar",
      ({
        Key key,
        Widget title,
        Widget background,
        bool centerTitle,
        EdgeInsetsGeometry titlePadding,
        CollapseMode collapseMode = CollapseMode.parallax,
        List<StretchMode> stretchModes,
      }) =>
        FlexibleSpaceBar(
        key: key,
        title: title,
        background: background,
        centerTitle: centerTitle,
        titlePadding: titlePadding,
        collapseMode: collapseMode,
        stretchModes: stretchModes,
      ),
    );
  static var flexibleSpaceBarSettings = MXFunctionInvoke(
      "FlexibleSpaceBarSettings",
      ({
        Key key,
        dynamic toolbarOpacity,
        dynamic minExtent,
        dynamic maxExtent,
        dynamic currentExtent,
        Widget child,
      }) =>
        FlexibleSpaceBarSettings(
        key: key,
        toolbarOpacity: toolbarOpacity?.toDouble(),
        minExtent: minExtent?.toDouble(),
        maxExtent: maxExtent?.toDouble(),
        currentExtent: currentExtent?.toDouble(),
        child: child,
      ),
    );
  static var listTileStyle = MXFunctionInvoke(
      "ListTileStyle",
      ({Map args}) => MXListTileStyle.parse(args),
  );
  static var listTileTheme = MXFunctionInvoke(
      "ListTileTheme",
      ({
        Key key,
        bool dense = false,
        ListTileStyle style = ListTileStyle.list,
        Color selectedColor,
        Color iconColor,
        Color textColor,
        EdgeInsetsGeometry contentPadding,
        Widget child,
      }) =>
        ListTileTheme(
        key: key,
        dense: dense,
        style: style,
        selectedColor: selectedColor,
        iconColor: iconColor,
        textColor: textColor,
        contentPadding: contentPadding,
        child: child,
      ),
    );
  static var listTileControlAffinity = MXFunctionInvoke(
      "ListTileControlAffinity",
      ({Map args}) => MXListTileControlAffinity.parse(args),
  );
  static var listTile = MXFunctionInvoke(
      "ListTile",
      ({
        Key key,
        Widget leading,
        Widget title,
        Widget subtitle,
        Widget trailing,
        bool isThreeLine = false,
        bool dense,
        EdgeInsetsGeometry contentPadding,
        bool enabled = true,
        dynamic onTap,
        dynamic onLongPress,
        bool selected = false,
      }) =>
        ListTile(
        key: key,
        leading: leading,
        title: title,
        subtitle: subtitle,
        trailing: trailing,
        isThreeLine: isThreeLine,
        dense: dense,
        contentPadding: contentPadding,
        enabled: enabled,
        onTap: createVoidCallbackClosure(listTile.buildOwner, onTap),
        onLongPress: createVoidCallbackClosure(listTile.buildOwner, onLongPress),
        selected: selected,
      ),
    );
  static var drawerAlignment = MXFunctionInvoke(
      "DrawerAlignment",
      ({Map args}) => MXDrawerAlignment.parse(args),
  );
  static var drawer = MXFunctionInvoke(
      "Drawer",
      ({
        Key key,
        dynamic elevation = 16.0,
        Widget child,
        String semanticLabel,
      }) =>
        Drawer(
        key: key,
        elevation: elevation?.toDouble(),
        child: child,
        semanticLabel: semanticLabel,
      ),
    );
  static var drawerController = MXFunctionInvoke(
      "DrawerController",
      ({
        GlobalKey<State<StatefulWidget>> key,
        Widget child,
        DrawerAlignment alignment,
        dynamic drawerCallback,
        DragStartBehavior dragStartBehavior = DragStartBehavior.start,
        Color scrimColor,
        dynamic edgeDragWidth,
        bool enableOpenDragGesture = true,
      }) =>
        DrawerController(
        key: key,
        child: child,
        alignment: alignment,
        drawerCallback: createValueChangedGenericClosure<bool>(drawerController.buildOwner, drawerCallback),
        dragStartBehavior: dragStartBehavior,
        scrimColor: scrimColor,
        edgeDragWidth: edgeDragWidth?.toDouble(),
        enableOpenDragGesture: enableOpenDragGesture,
      ),
    );
  static var drawerControllerState = MXFunctionInvoke(
      "DrawerControllerState",
      ({
      }) =>
        DrawerControllerState(
      ),
    );
  static var divider = MXFunctionInvoke(
      "Divider",
      ({
        Key key,
        dynamic height,
        dynamic thickness,
        dynamic indent,
        dynamic endIndent,
        Color color,
      }) =>
        Divider(
        key: key,
        height: height?.toDouble(),
        thickness: thickness?.toDouble(),
        indent: indent?.toDouble(),
        endIndent: endIndent?.toDouble(),
        color: color,
      ),
    );
  static var verticalDivider = MXFunctionInvoke(
      "VerticalDivider",
      ({
        Key key,
        dynamic width,
        dynamic thickness,
        dynamic indent,
        dynamic endIndent,
        Color color,
      }) =>
        VerticalDivider(
        key: key,
        width: width?.toDouble(),
        thickness: thickness?.toDouble(),
        indent: indent?.toDouble(),
        endIndent: endIndent?.toDouble(),
        color: color,
      ),
    );
  static var dialog = MXFunctionInvoke(
      "Dialog",
      ({
        Key key,
        Color backgroundColor,
        dynamic elevation,
        Duration insetAnimationDuration,
        Curve insetAnimationCurve,
        EdgeInsets insetPadding,
        Clip clipBehavior = Clip.none,
        ShapeBorder shape,
        Widget child,
      }) =>
        Dialog(
        key: key,
        backgroundColor: backgroundColor,
        elevation: elevation?.toDouble(),
        insetAnimationDuration: insetAnimationDuration,
        insetAnimationCurve: insetAnimationCurve,
        insetPadding: insetPadding,
        clipBehavior: clipBehavior,
        shape: shape,
        child: child,
      ),
    );
  static var alertDialog = MXFunctionInvoke(
      "AlertDialog",
      ({
        Key key,
        Widget title,
        EdgeInsetsGeometry titlePadding,
        TextStyle titleTextStyle,
        Widget content,
        EdgeInsetsGeometry contentPadding,
        TextStyle contentTextStyle,
        List<Widget> actions,
        EdgeInsetsGeometry actionsPadding,
        VerticalDirection actionsOverflowDirection,
        dynamic actionsOverflowButtonSpacing,
        EdgeInsetsGeometry buttonPadding,
        Color backgroundColor,
        dynamic elevation,
        String semanticLabel,
        EdgeInsets insetPadding,
        Clip clipBehavior = Clip.none,
        ShapeBorder shape,
        bool scrollable = false,
      }) =>
        AlertDialog(
        key: key,
        title: title,
        titlePadding: titlePadding,
        titleTextStyle: titleTextStyle,
        content: content,
        contentPadding: contentPadding,
        contentTextStyle: contentTextStyle,
        actions: actions,
        actionsPadding: actionsPadding,
        actionsOverflowDirection: actionsOverflowDirection,
        actionsOverflowButtonSpacing: actionsOverflowButtonSpacing?.toDouble(),
        buttonPadding: buttonPadding,
        backgroundColor: backgroundColor,
        elevation: elevation?.toDouble(),
        semanticLabel: semanticLabel,
        insetPadding: insetPadding,
        clipBehavior: clipBehavior,
        shape: shape,
        scrollable: scrollable,
      ),
    );
  static var simpleDialogOption = MXFunctionInvoke(
      "SimpleDialogOption",
      ({
        Key key,
        dynamic onPressed,
        EdgeInsets padding,
        Widget child,
      }) =>
        SimpleDialogOption(
        key: key,
        onPressed: createVoidCallbackClosure(simpleDialogOption.buildOwner, onPressed),
        padding: padding,
        child: child,
      ),
    );
  static var simpleDialog = MXFunctionInvoke(
      "SimpleDialog",
      ({
        Key key,
        Widget title,
        EdgeInsetsGeometry titlePadding,
        List<Widget> children,
        EdgeInsetsGeometry contentPadding,
        Color backgroundColor,
        dynamic elevation,
        String semanticLabel,
        ShapeBorder shape,
      }) =>
        SimpleDialog(
        key: key,
        title: title,
        titlePadding: titlePadding,
        children: children,
        contentPadding: contentPadding,
        backgroundColor: backgroundColor,
        elevation: elevation?.toDouble(),
        semanticLabel: semanticLabel,
        shape: shape,
      ),
    );
  static var materialButton = MXFunctionInvoke(
      "MaterialButton",
      ({
        Key key,
        dynamic onPressed,
        dynamic onLongPress,
        dynamic onHighlightChanged,
        ButtonTextTheme textTheme,
        Color textColor,
        Color disabledTextColor,
        Color color,
        Color disabledColor,
        Color focusColor,
        Color hoverColor,
        Color highlightColor,
        Color splashColor,
        Brightness colorBrightness,
        dynamic elevation,
        dynamic focusElevation,
        dynamic hoverElevation,
        dynamic highlightElevation,
        dynamic disabledElevation,
        EdgeInsetsGeometry padding,
        VisualDensity visualDensity,
        ShapeBorder shape,
        Clip clipBehavior = Clip.none,
        FocusNode focusNode,
        bool autofocus = false,
        MaterialTapTargetSize materialTapTargetSize,
        Duration animationDuration,
        dynamic minWidth,
        dynamic height,
        bool enableFeedback = true,
        Widget child,
      }) =>
        MaterialButton(
        key: key,
        onPressed: createVoidCallbackClosure(materialButton.buildOwner, onPressed),
        onLongPress: createVoidCallbackClosure(materialButton.buildOwner, onLongPress),
        onHighlightChanged: createValueChangedGenericClosure<bool>(materialButton.buildOwner, onHighlightChanged),
        textTheme: textTheme,
        textColor: textColor,
        disabledTextColor: disabledTextColor,
        color: color,
        disabledColor: disabledColor,
        focusColor: focusColor,
        hoverColor: hoverColor,
        highlightColor: highlightColor,
        splashColor: splashColor,
        colorBrightness: colorBrightness,
        elevation: elevation?.toDouble(),
        focusElevation: focusElevation?.toDouble(),
        hoverElevation: hoverElevation?.toDouble(),
        highlightElevation: highlightElevation?.toDouble(),
        disabledElevation: disabledElevation?.toDouble(),
        padding: padding,
        visualDensity: visualDensity,
        shape: shape,
        clipBehavior: clipBehavior,
        focusNode: focusNode,
        autofocus: autofocus,
        materialTapTargetSize: materialTapTargetSize,
        animationDuration: animationDuration,
        minWidth: minWidth?.toDouble(),
        height: height?.toDouble(),
        enableFeedback: enableFeedback,
        child: child,
      ),
    );
  static var raisedButton = MXFunctionInvoke(
      "RaisedButton",
      ({
        Key key,
        dynamic onPressed,
        dynamic onLongPress,
        dynamic onHighlightChanged,
        ButtonTextTheme textTheme,
        Color textColor,
        Color disabledTextColor,
        Color color,
        Color disabledColor,
        Color focusColor,
        Color hoverColor,
        Color highlightColor,
        Color splashColor,
        Brightness colorBrightness,
        dynamic elevation,
        dynamic focusElevation,
        dynamic hoverElevation,
        dynamic highlightElevation,
        dynamic disabledElevation,
        EdgeInsetsGeometry padding,
        VisualDensity visualDensity,
        ShapeBorder shape,
        Clip clipBehavior = Clip.none,
        FocusNode focusNode,
        bool autofocus = false,
        MaterialTapTargetSize materialTapTargetSize,
        Duration animationDuration,
        Widget child,
      }) =>
        RaisedButton(
        key: key,
        onPressed: createVoidCallbackClosure(raisedButton.buildOwner, onPressed),
        onLongPress: createVoidCallbackClosure(raisedButton.buildOwner, onLongPress),
        onHighlightChanged: createValueChangedGenericClosure<bool>(raisedButton.buildOwner, onHighlightChanged),
        textTheme: textTheme,
        textColor: textColor,
        disabledTextColor: disabledTextColor,
        color: color,
        disabledColor: disabledColor,
        focusColor: focusColor,
        hoverColor: hoverColor,
        highlightColor: highlightColor,
        splashColor: splashColor,
        colorBrightness: colorBrightness,
        elevation: elevation?.toDouble(),
        focusElevation: focusElevation?.toDouble(),
        hoverElevation: hoverElevation?.toDouble(),
        highlightElevation: highlightElevation?.toDouble(),
        disabledElevation: disabledElevation?.toDouble(),
        padding: padding,
        visualDensity: visualDensity,
        shape: shape,
        clipBehavior: clipBehavior,
        focusNode: focusNode,
        autofocus: autofocus,
        materialTapTargetSize: materialTapTargetSize,
        animationDuration: animationDuration,
        child: child,
      ),
    );
  static var outlineButton = MXFunctionInvoke(
      "OutlineButton",
      ({
        Key key,
        dynamic onPressed,
        dynamic onLongPress,
        ButtonTextTheme textTheme,
        Color textColor,
        Color disabledTextColor,
        Color color,
        Color focusColor,
        Color hoverColor,
        Color highlightColor,
        Color splashColor,
        dynamic highlightElevation,
        BorderSide borderSide,
        Color disabledBorderColor,
        Color highlightedBorderColor,
        EdgeInsetsGeometry padding,
        VisualDensity visualDensity,
        ShapeBorder shape,
        Clip clipBehavior = Clip.none,
        FocusNode focusNode,
        bool autofocus = false,
        Widget child,
      }) =>
        OutlineButton(
        key: key,
        onPressed: createVoidCallbackClosure(outlineButton.buildOwner, onPressed),
        onLongPress: createVoidCallbackClosure(outlineButton.buildOwner, onLongPress),
        textTheme: textTheme,
        textColor: textColor,
        disabledTextColor: disabledTextColor,
        color: color,
        focusColor: focusColor,
        hoverColor: hoverColor,
        highlightColor: highlightColor,
        splashColor: splashColor,
        highlightElevation: highlightElevation?.toDouble(),
        borderSide: borderSide,
        disabledBorderColor: disabledBorderColor,
        highlightedBorderColor: highlightedBorderColor,
        padding: padding,
        visualDensity: visualDensity,
        shape: shape,
        clipBehavior: clipBehavior,
        focusNode: focusNode,
        autofocus: autofocus,
        child: child,
      ),
    );
  static var rawMaterialButton = MXFunctionInvoke(
      "RawMaterialButton",
      ({
        Key key,
        dynamic onPressed,
        dynamic onLongPress,
        dynamic onHighlightChanged,
        TextStyle textStyle,
        Color fillColor,
        Color focusColor,
        Color hoverColor,
        Color highlightColor,
        Color splashColor,
        dynamic elevation = 2.0,
        dynamic focusElevation = 4.0,
        dynamic hoverElevation = 4.0,
        dynamic highlightElevation = 8.0,
        dynamic disabledElevation = 0.0,
        EdgeInsetsGeometry padding,
        VisualDensity visualDensity,
        BoxConstraints constraints,
        ShapeBorder shape,
        Duration animationDuration,
        Clip clipBehavior = Clip.none,
        FocusNode focusNode,
        bool autofocus = false,
        MaterialTapTargetSize materialTapTargetSize,
        Widget child,
        bool enableFeedback = true,
      }) =>
        RawMaterialButton(
        key: key,
        onPressed: createVoidCallbackClosure(rawMaterialButton.buildOwner, onPressed),
        onLongPress: createVoidCallbackClosure(rawMaterialButton.buildOwner, onLongPress),
        onHighlightChanged: createValueChangedGenericClosure<bool>(rawMaterialButton.buildOwner, onHighlightChanged),
        textStyle: textStyle,
        fillColor: fillColor,
        focusColor: focusColor,
        hoverColor: hoverColor,
        highlightColor: highlightColor,
        splashColor: splashColor,
        elevation: elevation?.toDouble(),
        focusElevation: focusElevation?.toDouble(),
        hoverElevation: hoverElevation?.toDouble(),
        highlightElevation: highlightElevation?.toDouble(),
        disabledElevation: disabledElevation?.toDouble(),
        padding: padding,
        visualDensity: visualDensity,
        constraints: constraints,
        shape: shape,
        animationDuration: animationDuration,
        clipBehavior: clipBehavior,
        focusNode: focusNode,
        autofocus: autofocus,
        materialTapTargetSize: materialTapTargetSize,
        child: child,
        enableFeedback: enableFeedback,
      ),
    );
  static var flatButton = MXFunctionInvoke(
      "FlatButton",
      ({
        Key key,
        dynamic onPressed,
        dynamic onLongPress,
        dynamic onHighlightChanged,
        ButtonTextTheme textTheme,
        Color textColor,
        Color disabledTextColor,
        Color color,
        Color disabledColor,
        Color focusColor,
        Color hoverColor,
        Color highlightColor,
        Color splashColor,
        Brightness colorBrightness,
        EdgeInsetsGeometry padding,
        VisualDensity visualDensity,
        ShapeBorder shape,
        Clip clipBehavior = Clip.none,
        FocusNode focusNode,
        bool autofocus = false,
        MaterialTapTargetSize materialTapTargetSize,
        Widget child,
      }) =>
        FlatButton(
        key: key,
        onPressed: createVoidCallbackClosure(flatButton.buildOwner, onPressed),
        onLongPress: createVoidCallbackClosure(flatButton.buildOwner, onLongPress),
        onHighlightChanged: createValueChangedGenericClosure<bool>(flatButton.buildOwner, onHighlightChanged),
        textTheme: textTheme,
        textColor: textColor,
        disabledTextColor: disabledTextColor,
        color: color,
        disabledColor: disabledColor,
        focusColor: focusColor,
        hoverColor: hoverColor,
        highlightColor: highlightColor,
        splashColor: splashColor,
        colorBrightness: colorBrightness,
        padding: padding,
        visualDensity: visualDensity,
        shape: shape,
        clipBehavior: clipBehavior,
        focusNode: focusNode,
        autofocus: autofocus,
        materialTapTargetSize: materialTapTargetSize,
        child: child,
      ),
    );
  static var tooltipThemeData = MXFunctionInvoke(
      "TooltipThemeData",
      ({
        dynamic height,
        EdgeInsetsGeometry padding,
        EdgeInsetsGeometry margin,
        dynamic verticalOffset,
        bool preferBelow,
        bool excludeFromSemantics,
        Decoration decoration,
        TextStyle textStyle,
        Duration waitDuration,
        Duration showDuration,
      }) =>
        TooltipThemeData(
        height: height?.toDouble(),
        padding: padding,
        margin: margin,
        verticalOffset: verticalOffset?.toDouble(),
        preferBelow: preferBelow,
        excludeFromSemantics: excludeFromSemantics,
        decoration: decoration,
        textStyle: textStyle,
        waitDuration: waitDuration,
        showDuration: showDuration,
      ),
    );
  static var tooltipTheme = MXFunctionInvoke(
      "TooltipTheme",
      ({
        Key key,
        TooltipThemeData data,
        Widget child,
      }) =>
        TooltipTheme(
        key: key,
        data: data,
        child: child,
      ),
    );
  static var toggleButtonsThemeData = MXFunctionInvoke(
      "ToggleButtonsThemeData",
      ({
        TextStyle textStyle,
        BoxConstraints constraints,
        Color color,
        Color selectedColor,
        Color disabledColor,
        Color fillColor,
        Color focusColor,
        Color highlightColor,
        Color hoverColor,
        Color splashColor,
        Color borderColor,
        Color selectedBorderColor,
        Color disabledBorderColor,
        BorderRadius borderRadius,
        dynamic borderWidth,
      }) =>
        ToggleButtonsThemeData(
        textStyle: textStyle,
        constraints: constraints,
        color: color,
        selectedColor: selectedColor,
        disabledColor: disabledColor,
        fillColor: fillColor,
        focusColor: focusColor,
        highlightColor: highlightColor,
        hoverColor: hoverColor,
        splashColor: splashColor,
        borderColor: borderColor,
        selectedBorderColor: selectedBorderColor,
        disabledBorderColor: disabledBorderColor,
        borderRadius: borderRadius,
        borderWidth: borderWidth?.toDouble(),
      ),
    );
  static var toggleButtonsTheme = MXFunctionInvoke(
      "ToggleButtonsTheme",
      ({
        Key key,
        ToggleButtonsThemeData data,
        Widget child,
      }) =>
        ToggleButtonsTheme(
        key: key,
        data: data,
        child: child,
      ),
    );
  static var tabBarIndicatorSize = MXFunctionInvoke(
      "TabBarIndicatorSize",
      ({Map args}) => MXTabBarIndicatorSize.parse(args),
  );
  static var tab = MXFunctionInvoke(
      "Tab",
      ({
        Key key,
        String text,
        Widget icon,
        EdgeInsetsGeometry iconMargin,
        Widget child,
      }) =>
        Tab(
        key: key,
        text: text,
        icon: icon,
        iconMargin: iconMargin,
        child: child,
      ),
    );
  static var tabBar = MXFunctionInvoke(
      "TabBar",
      ({
        Key key,
        List<Widget> tabs,
        TabController controller,
        bool isScrollable = false,
        Color indicatorColor,
        dynamic indicatorWeight = 2.0,
        EdgeInsetsGeometry indicatorPadding,
        Decoration indicator,
        TabBarIndicatorSize indicatorSize,
        Color labelColor,
        TextStyle labelStyle,
        EdgeInsetsGeometry labelPadding,
        Color unselectedLabelColor,
        TextStyle unselectedLabelStyle,
        DragStartBehavior dragStartBehavior = DragStartBehavior.start,
        dynamic onTap,
      }) =>
        TabBar(
        key: key,
        tabs: tabs,
        controller: controller,
        isScrollable: isScrollable,
        indicatorColor: indicatorColor,
        indicatorWeight: indicatorWeight?.toDouble(),
        indicatorPadding: indicatorPadding,
        indicator: indicator,
        indicatorSize: indicatorSize,
        labelColor: labelColor,
        labelStyle: labelStyle,
        labelPadding: labelPadding,
        unselectedLabelColor: unselectedLabelColor,
        unselectedLabelStyle: unselectedLabelStyle,
        dragStartBehavior: dragStartBehavior,
        onTap: createValueChangedGenericClosure<int>(tabBar.buildOwner, onTap),
      ),
    );
  static var tabBarView = MXFunctionInvoke(
      "TabBarView",
      ({
        Key key,
        List<Widget> children,
        TabController controller,
        ScrollPhysics physics,
        DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      }) =>
        TabBarView(
        key: key,
        children: children,
        controller: controller,
        physics: physics,
        dragStartBehavior: dragStartBehavior,
      ),
    );
  static var tabPageSelectorIndicator = MXFunctionInvoke(
      "TabPageSelectorIndicator",
      ({
        Key key,
        Color backgroundColor,
        Color borderColor,
        dynamic size,
      }) =>
        TabPageSelectorIndicator(
        key: key,
        backgroundColor: backgroundColor,
        borderColor: borderColor,
        size: size?.toDouble(),
      ),
    );
  static var tabPageSelector = MXFunctionInvoke(
      "TabPageSelector",
      ({
        Key key,
        TabController controller,
        dynamic indicatorSize = 12.0,
        Color color,
        Color selectedColor,
      }) =>
        TabPageSelector(
        key: key,
        controller: controller,
        indicatorSize: indicatorSize?.toDouble(),
        color: color,
        selectedColor: selectedColor,
      ),
    );
  static var tabBarTheme = MXFunctionInvoke(
      "TabBarTheme",
      ({
        Decoration indicator,
        TabBarIndicatorSize indicatorSize,
        Color labelColor,
        EdgeInsetsGeometry labelPadding,
        TextStyle labelStyle,
        Color unselectedLabelColor,
        TextStyle unselectedLabelStyle,
      }) =>
        TabBarTheme(
        indicator: indicator,
        indicatorSize: indicatorSize,
        labelColor: labelColor,
        labelPadding: labelPadding,
        labelStyle: labelStyle,
        unselectedLabelColor: unselectedLabelColor,
        unselectedLabelStyle: unselectedLabelStyle,
      ),
    );
  static var snackBarBehavior = MXFunctionInvoke(
      "SnackBarBehavior",
      ({Map args}) => MXSnackBarBehavior.parse(args),
  );
  static var snackBarThemeData = MXFunctionInvoke(
      "SnackBarThemeData",
      ({
        Color backgroundColor,
        Color actionTextColor,
        Color disabledActionTextColor,
        TextStyle contentTextStyle,
        dynamic elevation,
        ShapeBorder shape,
        SnackBarBehavior behavior,
      }) =>
        SnackBarThemeData(
        backgroundColor: backgroundColor,
        actionTextColor: actionTextColor,
        disabledActionTextColor: disabledActionTextColor,
        contentTextStyle: contentTextStyle,
        elevation: elevation?.toDouble(),
        shape: shape,
        behavior: behavior,
      ),
    );
  static var sliderTheme = MXFunctionInvoke(
      "SliderTheme",
      ({
        Key key,
        SliderThemeData data,
        Widget child,
      }) =>
        SliderTheme(
        key: key,
        data: data,
        child: child,
      ),
    );
  static var showValueIndicator = MXFunctionInvoke(
      "ShowValueIndicator",
      ({Map args}) => MXShowValueIndicator.parse(args),
  );
  static var thumb = MXFunctionInvoke(
      "Thumb",
      ({Map args}) => MXThumb.parse(args),
  );
  static var sliderThemeData = MXFunctionInvoke(
      "SliderThemeData",
      ({
        dynamic trackHeight,
        Color activeTrackColor,
        Color inactiveTrackColor,
        Color disabledActiveTrackColor,
        Color disabledInactiveTrackColor,
        Color activeTickMarkColor,
        Color inactiveTickMarkColor,
        Color disabledActiveTickMarkColor,
        Color disabledInactiveTickMarkColor,
        Color thumbColor,
        Color overlappingShapeStrokeColor,
        Color disabledThumbColor,
        Color overlayColor,
        Color valueIndicatorColor,
        SliderComponentShape overlayShape,
        SliderTickMarkShape tickMarkShape,
        SliderComponentShape thumbShape,
        SliderTrackShape trackShape,
        SliderComponentShape valueIndicatorShape,
        RangeSliderTickMarkShape rangeTickMarkShape,
        RangeSliderThumbShape rangeThumbShape,
        RangeSliderTrackShape rangeTrackShape,
        RangeSliderValueIndicatorShape rangeValueIndicatorShape,
        ShowValueIndicator showValueIndicator,
        TextStyle valueIndicatorTextStyle,
        dynamic minThumbSeparation,
        dynamic thumbSelector,
      }) =>
        SliderThemeData(
        trackHeight: trackHeight?.toDouble(),
        activeTrackColor: activeTrackColor,
        inactiveTrackColor: inactiveTrackColor,
        disabledActiveTrackColor: disabledActiveTrackColor,
        disabledInactiveTrackColor: disabledInactiveTrackColor,
        activeTickMarkColor: activeTickMarkColor,
        inactiveTickMarkColor: inactiveTickMarkColor,
        disabledActiveTickMarkColor: disabledActiveTickMarkColor,
        disabledInactiveTickMarkColor: disabledInactiveTickMarkColor,
        thumbColor: thumbColor,
        overlappingShapeStrokeColor: overlappingShapeStrokeColor,
        disabledThumbColor: disabledThumbColor,
        overlayColor: overlayColor,
        valueIndicatorColor: valueIndicatorColor,
        overlayShape: overlayShape,
        tickMarkShape: tickMarkShape,
        thumbShape: thumbShape,
        trackShape: trackShape,
        valueIndicatorShape: valueIndicatorShape,
        rangeTickMarkShape: rangeTickMarkShape,
        rangeThumbShape: rangeThumbShape,
        rangeTrackShape: rangeTrackShape,
        rangeValueIndicatorShape: rangeValueIndicatorShape,
        showValueIndicator: showValueIndicator,
        valueIndicatorTextStyle: valueIndicatorTextStyle,
        minThumbSeparation: minThumbSeparation?.toDouble(),
        thumbSelector: thumbSelector,
      ),
    );
  static var sliderThemeData_fromPrimaryColors = MXFunctionInvoke(
    "sliderThemeData.fromPrimaryColors",
      ({
        Color primaryColor,
        Color primaryColorDark,
        Color primaryColorLight,
        TextStyle valueIndicatorTextStyle,
      }) =>
        SliderThemeData.fromPrimaryColors(
        primaryColor: primaryColor,
        primaryColorDark: primaryColorDark,
        primaryColorLight: primaryColorLight,
        valueIndicatorTextStyle: valueIndicatorTextStyle,
      ),
    );
  static var rectangularSliderTrackShape = MXFunctionInvoke(
      "RectangularSliderTrackShape",
      ({
        dynamic disabledThumbGapWidth = 2.0,
      }) =>
        RectangularSliderTrackShape(
        disabledThumbGapWidth: disabledThumbGapWidth?.toDouble(),
      ),
    );
  static var roundedRectSliderTrackShape = MXFunctionInvoke(
      "RoundedRectSliderTrackShape",
      ({
      }) =>
        RoundedRectSliderTrackShape(
      ),
    );
  static var rectangularRangeSliderTrackShape = MXFunctionInvoke(
      "RectangularRangeSliderTrackShape",
      ({
      }) =>
        RectangularRangeSliderTrackShape(
      ),
    );
  static var roundedRectRangeSliderTrackShape = MXFunctionInvoke(
      "RoundedRectRangeSliderTrackShape",
      ({
      }) =>
        RoundedRectRangeSliderTrackShape(
      ),
    );
  static var roundSliderTickMarkShape = MXFunctionInvoke(
      "RoundSliderTickMarkShape",
      ({
        dynamic tickMarkRadius,
      }) =>
        RoundSliderTickMarkShape(
        tickMarkRadius: tickMarkRadius?.toDouble(),
      ),
    );
  static var roundRangeSliderTickMarkShape = MXFunctionInvoke(
      "RoundRangeSliderTickMarkShape",
      ({
        dynamic tickMarkRadius,
      }) =>
        RoundRangeSliderTickMarkShape(
        tickMarkRadius: tickMarkRadius?.toDouble(),
      ),
    );
  static var roundSliderThumbShape = MXFunctionInvoke(
      "RoundSliderThumbShape",
      ({
        dynamic enabledThumbRadius = 10.0,
        dynamic disabledThumbRadius,
      }) =>
        RoundSliderThumbShape(
        enabledThumbRadius: enabledThumbRadius?.toDouble(),
        disabledThumbRadius: disabledThumbRadius?.toDouble(),
      ),
    );
  static var roundRangeSliderThumbShape = MXFunctionInvoke(
      "RoundRangeSliderThumbShape",
      ({
        dynamic enabledThumbRadius = 10.0,
        dynamic disabledThumbRadius,
      }) =>
        RoundRangeSliderThumbShape(
        enabledThumbRadius: enabledThumbRadius?.toDouble(),
        disabledThumbRadius: disabledThumbRadius?.toDouble(),
      ),
    );
  static var roundSliderOverlayShape = MXFunctionInvoke(
      "RoundSliderOverlayShape",
      ({
        dynamic overlayRadius = 24.0,
      }) =>
        RoundSliderOverlayShape(
        overlayRadius: overlayRadius?.toDouble(),
      ),
    );
  static var paddleSliderValueIndicatorShape = MXFunctionInvoke(
      "PaddleSliderValueIndicatorShape",
      ({
      }) =>
        PaddleSliderValueIndicatorShape(
      ),
    );
  static var paddleRangeSliderValueIndicatorShape = MXFunctionInvoke(
      "PaddleRangeSliderValueIndicatorShape",
      ({
      }) =>
        PaddleRangeSliderValueIndicatorShape(
      ),
    );
  static var rangeValues = MXFunctionInvoke(
      "RangeValues",
      ({
        double start,
        double end,
      }) =>
        RangeValues(
        start,
        end,
      ),
    );
  static var rangeLabels = MXFunctionInvoke(
      "RangeLabels",
      ({
        String start,
        String end,
      }) =>
        RangeLabels(
        start,
        end,
      ),
    );
  static var popupMenuThemeData = MXFunctionInvoke(
      "PopupMenuThemeData",
      ({
        Color color,
        ShapeBorder shape,
        dynamic elevation,
        TextStyle textStyle,
      }) =>
        PopupMenuThemeData(
        color: color,
        shape: shape,
        elevation: elevation?.toDouble(),
        textStyle: textStyle,
      ),
    );
  static var popupMenuTheme = MXFunctionInvoke(
      "PopupMenuTheme",
      ({
        Key key,
        PopupMenuThemeData data,
        Widget child,
      }) =>
        PopupMenuTheme(
        key: key,
        data: data,
        child: child,
      ),
    );
  static var fadeUpwardsPageTransitionsBuilder = MXFunctionInvoke(
      "FadeUpwardsPageTransitionsBuilder",
      ({
      }) =>
        FadeUpwardsPageTransitionsBuilder(
      ),
    );
  static var openUpwardsPageTransitionsBuilder = MXFunctionInvoke(
      "OpenUpwardsPageTransitionsBuilder",
      ({
      }) =>
        OpenUpwardsPageTransitionsBuilder(
      ),
    );
  static var zoomPageTransitionsBuilder = MXFunctionInvoke(
      "ZoomPageTransitionsBuilder",
      ({
      }) =>
        ZoomPageTransitionsBuilder(
      ),
    );
  static var cupertinoPageTransitionsBuilder = MXFunctionInvoke(
      "CupertinoPageTransitionsBuilder",
      ({
      }) =>
        CupertinoPageTransitionsBuilder(
      ),
    );
  static var pageTransitionsTheme = MXFunctionInvoke(
      "PageTransitionsTheme",
      ({
        Map<TargetPlatform*, PageTransitionsBuilder> builders,
      }) =>
        PageTransitionsTheme(
        builders: builders,
      ),
    );
  static var navigationRail = MXFunctionInvoke(
      "NavigationRail",
      ({
        Color backgroundColor,
        bool extended = false,
        Widget leading,
        Widget trailing,
        List<NavigationRailDestination> destinations,
        int selectedIndex,
        dynamic onDestinationSelected,
        dynamic elevation,
        dynamic groupAlignment,
        NavigationRailLabelType labelType,
        TextStyle unselectedLabelTextStyle,
        TextStyle selectedLabelTextStyle,
        IconThemeData unselectedIconTheme,
        IconThemeData selectedIconTheme,
        dynamic minWidth,
        dynamic minExtendedWidth,
      }) =>
        NavigationRail(
        backgroundColor: backgroundColor,
        extended: extended,
        leading: leading,
        trailing: trailing,
        destinations: destinations,
        selectedIndex: selectedIndex,
        onDestinationSelected: createValueChangedGenericClosure<int>(navigationRail.buildOwner, onDestinationSelected),
        elevation: elevation?.toDouble(),
        groupAlignment: groupAlignment?.toDouble(),
        labelType: labelType,
        unselectedLabelTextStyle: unselectedLabelTextStyle,
        selectedLabelTextStyle: selectedLabelTextStyle,
        unselectedIconTheme: unselectedIconTheme,
        selectedIconTheme: selectedIconTheme,
        minWidth: minWidth?.toDouble(),
        minExtendedWidth: minExtendedWidth?.toDouble(),
      ),
    );
  static var navigationRailLabelType = MXFunctionInvoke(
      "NavigationRailLabelType",
      ({Map args}) => MXNavigationRailLabelType.parse(args),
  );
  static var navigationRailDestination = MXFunctionInvoke(
      "NavigationRailDestination",
      ({
        Widget icon,
        Widget selectedIcon,
        Widget label,
      }) =>
        NavigationRailDestination(
        icon: icon,
        selectedIcon: selectedIcon,
        label: label,
      ),
    );
  static var navigationRailThemeData = MXFunctionInvoke(
      "NavigationRailThemeData",
      ({
        Color backgroundColor,
        dynamic elevation,
        TextStyle unselectedLabelTextStyle,
        TextStyle selectedLabelTextStyle,
        IconThemeData unselectedIconTheme,
        IconThemeData selectedIconTheme,
        dynamic groupAlignment,
        NavigationRailLabelType labelType,
      }) =>
        NavigationRailThemeData(
        backgroundColor: backgroundColor,
        elevation: elevation?.toDouble(),
        unselectedLabelTextStyle: unselectedLabelTextStyle,
        selectedLabelTextStyle: selectedLabelTextStyle,
        unselectedIconTheme: unselectedIconTheme,
        selectedIconTheme: selectedIconTheme,
        groupAlignment: groupAlignment?.toDouble(),
        labelType: labelType,
      ),
    );
  static var navigationRailTheme = MXFunctionInvoke(
      "NavigationRailTheme",
      ({
        Key key,
        NavigationRailThemeData data,
        Widget child,
      }) =>
        NavigationRailTheme(
        key: key,
        data: data,
        child: child,
      ),
    );
  static var floatingLabelBehavior = MXFunctionInvoke(
      "FloatingLabelBehavior",
      ({Map args}) => MXFloatingLabelBehavior.parse(args),
  );
  static var inputDecorator = MXFunctionInvoke(
      "InputDecorator",
      ({
        Key key,
        InputDecoration decoration,
        TextStyle baseStyle,
        TextAlign textAlign,
        TextAlignVertical textAlignVertical,
        bool isFocused = false,
        bool isHovering = false,
        bool expands = false,
        bool isEmpty = false,
        Widget child,
      }) =>
        InputDecorator(
        key: key,
        decoration: decoration,
        baseStyle: baseStyle,
        textAlign: textAlign,
        textAlignVertical: textAlignVertical,
        isFocused: isFocused,
        isHovering: isHovering,
        expands: expands,
        isEmpty: isEmpty,
        child: child,
      ),
    );
  static var inputDecoration = MXFunctionInvoke(
      "InputDecoration",
      ({
        Widget icon,
        String labelText,
        TextStyle labelStyle,
        String helperText,
        TextStyle helperStyle,
        int helperMaxLines,
        String hintText,
        TextStyle hintStyle,
        int hintMaxLines,
        String errorText,
        TextStyle errorStyle,
        int errorMaxLines,
        bool hasFloatingPlaceholder = true,
        FloatingLabelBehavior floatingLabelBehavior = FloatingLabelBehavior.auto,
        bool isDense,
        EdgeInsetsGeometry contentPadding,
        Widget prefixIcon,
        BoxConstraints prefixIconConstraints,
        Widget prefix,
        String prefixText,
        TextStyle prefixStyle,
        Widget suffixIcon,
        Widget suffix,
        String suffixText,
        TextStyle suffixStyle,
        BoxConstraints suffixIconConstraints,
        Widget counter,
        String counterText,
        TextStyle counterStyle,
        bool filled,
        Color fillColor,
        Color focusColor,
        Color hoverColor,
        InputBorder errorBorder,
        InputBorder focusedBorder,
        InputBorder focusedErrorBorder,
        InputBorder disabledBorder,
        InputBorder enabledBorder,
        InputBorder border,
        bool enabled = true,
        String semanticCounterText,
        bool alignLabelWithHint,
      }) =>
        InputDecoration(
        icon: icon,
        labelText: labelText,
        labelStyle: labelStyle,
        helperText: helperText,
        helperStyle: helperStyle,
        helperMaxLines: helperMaxLines,
        hintText: hintText,
        hintStyle: hintStyle,
        hintMaxLines: hintMaxLines,
        errorText: errorText,
        errorStyle: errorStyle,
        errorMaxLines: errorMaxLines,
        hasFloatingPlaceholder: hasFloatingPlaceholder,
        floatingLabelBehavior: floatingLabelBehavior,
        isDense: isDense,
        contentPadding: contentPadding,
        prefixIcon: prefixIcon,
        prefixIconConstraints: prefixIconConstraints,
        prefix: prefix,
        prefixText: prefixText,
        prefixStyle: prefixStyle,
        suffixIcon: suffixIcon,
        suffix: suffix,
        suffixText: suffixText,
        suffixStyle: suffixStyle,
        suffixIconConstraints: suffixIconConstraints,
        counter: counter,
        counterText: counterText,
        counterStyle: counterStyle,
        filled: filled,
        fillColor: fillColor,
        focusColor: focusColor,
        hoverColor: hoverColor,
        errorBorder: errorBorder,
        focusedBorder: focusedBorder,
        focusedErrorBorder: focusedErrorBorder,
        disabledBorder: disabledBorder,
        enabledBorder: enabledBorder,
        border: border,
        enabled: enabled,
        semanticCounterText: semanticCounterText,
        alignLabelWithHint: alignLabelWithHint,
      ),
    );
  static var inputDecoration_collapsed = MXFunctionInvoke(
    "inputDecoration.collapsed",
      ({
        String hintText,
        bool hasFloatingPlaceholder = true,
        FloatingLabelBehavior floatingLabelBehavior = FloatingLabelBehavior.auto,
        TextStyle hintStyle,
        bool filled = false,
        Color fillColor,
        Color focusColor,
        Color hoverColor,
        InputBorder border,
        bool enabled = true,
      }) =>
        InputDecoration.collapsed(
        hintText: hintText,
        hasFloatingPlaceholder: hasFloatingPlaceholder,
        floatingLabelBehavior: floatingLabelBehavior,
        hintStyle: hintStyle,
        filled: filled,
        fillColor: fillColor,
        focusColor: focusColor,
        hoverColor: hoverColor,
        border: border,
        enabled: enabled,
      ),
    );
  static var inputDecorationTheme = MXFunctionInvoke(
      "InputDecorationTheme",
      ({
        TextStyle labelStyle,
        TextStyle helperStyle,
        int helperMaxLines,
        TextStyle hintStyle,
        TextStyle errorStyle,
        int errorMaxLines,
        bool hasFloatingPlaceholder = true,
        FloatingLabelBehavior floatingLabelBehavior = FloatingLabelBehavior.auto,
        bool isDense = false,
        EdgeInsetsGeometry contentPadding,
        bool isCollapsed = false,
        TextStyle prefixStyle,
        TextStyle suffixStyle,
        TextStyle counterStyle,
        bool filled = false,
        Color fillColor,
        Color focusColor,
        Color hoverColor,
        InputBorder errorBorder,
        InputBorder focusedBorder,
        InputBorder focusedErrorBorder,
        InputBorder disabledBorder,
        InputBorder enabledBorder,
        InputBorder border,
        bool alignLabelWithHint = false,
      }) =>
        InputDecorationTheme(
        labelStyle: labelStyle,
        helperStyle: helperStyle,
        helperMaxLines: helperMaxLines,
        hintStyle: hintStyle,
        errorStyle: errorStyle,
        errorMaxLines: errorMaxLines,
        hasFloatingPlaceholder: hasFloatingPlaceholder,
        floatingLabelBehavior: floatingLabelBehavior,
        isDense: isDense,
        contentPadding: contentPadding,
        isCollapsed: isCollapsed,
        prefixStyle: prefixStyle,
        suffixStyle: suffixStyle,
        counterStyle: counterStyle,
        filled: filled,
        fillColor: fillColor,
        focusColor: focusColor,
        hoverColor: hoverColor,
        errorBorder: errorBorder,
        focusedBorder: focusedBorder,
        focusedErrorBorder: focusedErrorBorder,
        disabledBorder: disabledBorder,
        enabledBorder: enabledBorder,
        border: border,
        alignLabelWithHint: alignLabelWithHint,
      ),
    );
  static var inkHighlight = MXFunctionInvoke(
      "InkHighlight",
      ({
        MaterialInkController controller,
        RenderBox referenceBox,
        Color color,
        TextDirection textDirection,
        BoxShape shape = BoxShape.rectangle,
        BorderRadius borderRadius,
        ShapeBorder customBorder,
        dynamic rectCallback,
        dynamic onRemoved,
        Duration fadeDuration,
      }) =>
        InkHighlight(
        controller: controller,
        referenceBox: referenceBox,
        color: color,
        textDirection: textDirection,
        shape: shape,
        borderRadius: borderRadius,
        customBorder: customBorder,
        rectCallback: rectCallback,
        onRemoved: createVoidCallbackClosure(inkHighlight.buildOwner, onRemoved),
        fadeDuration: fadeDuration,
      ),
    );
  static var feedback_ = MXFunctionInvoke(
    "feedback.",
      ({
      }) =>
        Feedback.(
      ),
    );
  static var inkResponse = MXFunctionInvoke(
      "InkResponse",
      ({
        Key key,
        Widget child,
        dynamic onTap,
        dynamic onTapDown,
        dynamic onTapCancel,
        dynamic onDoubleTap,
        dynamic onLongPress,
        dynamic onHighlightChanged,
        dynamic onHover,
        bool containedInkWell = false,
        BoxShape highlightShape = BoxShape.circle,
        dynamic radius,
        BorderRadius borderRadius,
        ShapeBorder customBorder,
        Color focusColor,
        Color hoverColor,
        Color highlightColor,
        Color splashColor,
        InteractiveInkFeatureFactory splashFactory,
        bool enableFeedback = true,
        bool excludeFromSemantics = false,
        FocusNode focusNode,
        bool canRequestFocus = true,
        dynamic onFocusChange,
        bool autofocus = false,
      }) =>
        InkResponse(
        key: key,
        child: child,
        onTap: createVoidCallbackClosure(inkResponse.buildOwner, onTap),
        onTapDown: createValueChangedGenericClosure<TapDownDetails>(inkResponse.buildOwner, onTapDown),
        onTapCancel: createVoidCallbackClosure(inkResponse.buildOwner, onTapCancel),
        onDoubleTap: createVoidCallbackClosure(inkResponse.buildOwner, onDoubleTap),
        onLongPress: createVoidCallbackClosure(inkResponse.buildOwner, onLongPress),
        onHighlightChanged: createValueChangedGenericClosure<bool>(inkResponse.buildOwner, onHighlightChanged),
        onHover: createValueChangedGenericClosure<bool>(inkResponse.buildOwner, onHover),
        containedInkWell: containedInkWell,
        highlightShape: highlightShape,
        radius: radius?.toDouble(),
        borderRadius: borderRadius,
        customBorder: customBorder,
        focusColor: focusColor,
        hoverColor: hoverColor,
        highlightColor: highlightColor,
        splashColor: splashColor,
        splashFactory: splashFactory,
        enableFeedback: enableFeedback,
        excludeFromSemantics: excludeFromSemantics,
        focusNode: focusNode,
        canRequestFocus: canRequestFocus,
        onFocusChange: createValueChangedGenericClosure<bool>(inkResponse.buildOwner, onFocusChange),
        autofocus: autofocus,
      ),
    );
  static var inkWell = MXFunctionInvoke(
      "InkWell",
      ({
        Key key,
        Widget child,
        dynamic onTap,
        dynamic onDoubleTap,
        dynamic onLongPress,
        dynamic onTapDown,
        dynamic onTapCancel,
        dynamic onHighlightChanged,
        dynamic onHover,
        Color focusColor,
        Color hoverColor,
        Color highlightColor,
        Color splashColor,
        InteractiveInkFeatureFactory splashFactory,
        dynamic radius,
        BorderRadius borderRadius,
        ShapeBorder customBorder,
        bool enableFeedback = true,
        bool excludeFromSemantics = false,
        FocusNode focusNode,
        bool canRequestFocus = true,
        dynamic onFocusChange,
        bool autofocus = false,
      }) =>
        InkWell(
        key: key,
        child: child,
        onTap: createVoidCallbackClosure(inkWell.buildOwner, onTap),
        onDoubleTap: createVoidCallbackClosure(inkWell.buildOwner, onDoubleTap),
        onLongPress: createVoidCallbackClosure(inkWell.buildOwner, onLongPress),
        onTapDown: createValueChangedGenericClosure<TapDownDetails>(inkWell.buildOwner, onTapDown),
        onTapCancel: createVoidCallbackClosure(inkWell.buildOwner, onTapCancel),
        onHighlightChanged: createValueChangedGenericClosure<bool>(inkWell.buildOwner, onHighlightChanged),
        onHover: createValueChangedGenericClosure<bool>(inkWell.buildOwner, onHover),
        focusColor: focusColor,
        hoverColor: hoverColor,
        highlightColor: highlightColor,
        splashColor: splashColor,
        splashFactory: splashFactory,
        radius: radius?.toDouble(),
        borderRadius: borderRadius,
        customBorder: customBorder,
        enableFeedback: enableFeedback,
        excludeFromSemantics: excludeFromSemantics,
        focusNode: focusNode,
        canRequestFocus: canRequestFocus,
        onFocusChange: createValueChangedGenericClosure<bool>(inkWell.buildOwner, onFocusChange),
        autofocus: autofocus,
      ),
    );
  static var inkSplash = MXFunctionInvoke(
      "InkSplash",
      ({
        MaterialInkController controller,
        RenderBox referenceBox,
        TextDirection textDirection,
        Offset position,
        Color color,
        bool containedInkWell = false,
        dynamic rectCallback,
        BorderRadius borderRadius,
        ShapeBorder customBorder,
        dynamic radius,
        dynamic onRemoved,
      }) =>
        InkSplash(
        controller: controller,
        referenceBox: referenceBox,
        textDirection: textDirection,
        position: position,
        color: color,
        containedInkWell: containedInkWell,
        rectCallback: rectCallback,
        borderRadius: borderRadius,
        customBorder: customBorder,
        radius: radius?.toDouble(),
        onRemoved: createVoidCallbackClosure(inkSplash.buildOwner, onRemoved),
      ),
    );
  static var dividerThemeData = MXFunctionInvoke(
      "DividerThemeData",
      ({
        Color color,
        dynamic space,
        dynamic thickness,
        dynamic indent,
        dynamic endIndent,
      }) =>
        DividerThemeData(
        color: color,
        space: space?.toDouble(),
        thickness: thickness?.toDouble(),
        indent: indent?.toDouble(),
        endIndent: endIndent?.toDouble(),
      ),
    );
  static var dividerTheme = MXFunctionInvoke(
      "DividerTheme",
      ({
        Key key,
        DividerThemeData data,
        Widget child,
      }) =>
        DividerTheme(
        key: key,
        data: data,
        child: child,
      ),
    );
  static var dialogTheme = MXFunctionInvoke(
      "DialogTheme",
      ({
        Color backgroundColor,
        dynamic elevation,
        ShapeBorder shape,
        TextStyle titleTextStyle,
        TextStyle contentTextStyle,
      }) =>
        DialogTheme(
        backgroundColor: backgroundColor,
        elevation: elevation?.toDouble(),
        shape: shape,
        titleTextStyle: titleTextStyle,
        contentTextStyle: contentTextStyle,
      ),
    );
  static var chipTheme = MXFunctionInvoke(
      "ChipTheme",
      ({
        Key key,
        ChipThemeData data,
        Widget child,
      }) =>
        ChipTheme(
        key: key,
        data: data,
        child: child,
      ),
    );
  static var chipThemeData = MXFunctionInvoke(
      "ChipThemeData",
      ({
        Color backgroundColor,
        Color deleteIconColor,
        Color disabledColor,
        Color selectedColor,
        Color secondarySelectedColor,
        Color shadowColor,
        Color selectedShadowColor,
        bool showCheckmark,
        Color checkmarkColor,
        EdgeInsetsGeometry labelPadding,
        EdgeInsetsGeometry padding,
        ShapeBorder shape,
        TextStyle labelStyle,
        TextStyle secondaryLabelStyle,
        Brightness brightness,
        dynamic elevation,
        dynamic pressElevation,
      }) =>
        ChipThemeData(
        backgroundColor: backgroundColor,
        deleteIconColor: deleteIconColor,
        disabledColor: disabledColor,
        selectedColor: selectedColor,
        secondarySelectedColor: secondarySelectedColor,
        shadowColor: shadowColor,
        selectedShadowColor: selectedShadowColor,
        showCheckmark: showCheckmark,
        checkmarkColor: checkmarkColor,
        labelPadding: labelPadding,
        padding: padding,
        shape: shape,
        labelStyle: labelStyle,
        secondaryLabelStyle: secondaryLabelStyle,
        brightness: brightness,
        elevation: elevation?.toDouble(),
        pressElevation: pressElevation?.toDouble(),
      ),
    );
  static var chipThemeData_fromDefaults = MXFunctionInvoke(
    "chipThemeData.fromDefaults",
      ({
        Brightness brightness,
        Color primaryColor,
        Color secondaryColor,
        TextStyle labelStyle,
      }) =>
        ChipThemeData.fromDefaults(
        brightness: brightness,
        primaryColor: primaryColor,
        secondaryColor: secondaryColor,
        labelStyle: labelStyle,
      ),
    );
  static var cardTheme = MXFunctionInvoke(
      "CardTheme",
      ({
        Clip clipBehavior,
        Color color,
        Color shadowColor,
        dynamic elevation,
        EdgeInsetsGeometry margin,
        ShapeBorder shape,
      }) =>
        CardTheme(
        clipBehavior: clipBehavior,
        color: color,
        shadowColor: shadowColor,
        elevation: elevation?.toDouble(),
        margin: margin,
        shape: shape,
      ),
    );
  static var bottomAppBarTheme = MXFunctionInvoke(
      "BottomAppBarTheme",
      ({
        Color color,
        dynamic elevation,
        NotchedShape shape,
      }) =>
        BottomAppBarTheme(
        color: color,
        elevation: elevation?.toDouble(),
        shape: shape,
      ),
    );
  static var materialBannerThemeData = MXFunctionInvoke(
      "MaterialBannerThemeData",
      ({
        Color backgroundColor,
        TextStyle contentTextStyle,
        EdgeInsetsGeometry padding,
        EdgeInsetsGeometry leadingPadding,
      }) =>
        MaterialBannerThemeData(
        backgroundColor: backgroundColor,
        contentTextStyle: contentTextStyle,
        padding: padding,
        leadingPadding: leadingPadding,
      ),
    );
  static var materialBannerTheme = MXFunctionInvoke(
      "MaterialBannerTheme",
      ({
        Key key,
        MaterialBannerThemeData data,
        Widget child,
      }) =>
        MaterialBannerTheme(
        key: key,
        data: data,
        child: child,
      ),
    );
  static var materialTapTargetSize = MXFunctionInvoke(
      "MaterialTapTargetSize",
      ({Map args}) => MXMaterialTapTargetSize.parse(args),
  );
  static var themeData = MXFunctionInvoke(
      "ThemeData",
      ({
        Brightness brightness,
        VisualDensity visualDensity,
        MaterialColor primarySwatch,
        Color primaryColor,
        Brightness primaryColorBrightness,
        Color primaryColorLight,
        Color primaryColorDark,
        Color accentColor,
        Brightness accentColorBrightness,
        Color canvasColor,
        Color scaffoldBackgroundColor,
        Color bottomAppBarColor,
        Color cardColor,
        Color dividerColor,
        Color focusColor,
        Color hoverColor,
        Color highlightColor,
        Color splashColor,
        InteractiveInkFeatureFactory splashFactory,
        Color selectedRowColor,
        Color unselectedWidgetColor,
        Color disabledColor,
        Color buttonColor,
        ButtonThemeData buttonTheme,
        ToggleButtonsThemeData toggleButtonsTheme,
        Color secondaryHeaderColor,
        Color textSelectionColor,
        Color cursorColor,
        Color textSelectionHandleColor,
        Color backgroundColor,
        Color dialogBackgroundColor,
        Color indicatorColor,
        Color hintColor,
        Color errorColor,
        Color toggleableActiveColor,
        String fontFamily,
        TextTheme textTheme,
        TextTheme primaryTextTheme,
        TextTheme accentTextTheme,
        InputDecorationTheme inputDecorationTheme,
        IconThemeData iconTheme,
        IconThemeData primaryIconTheme,
        IconThemeData accentIconTheme,
        SliderThemeData sliderTheme,
        TabBarTheme tabBarTheme,
        TooltipThemeData tooltipTheme,
        CardTheme cardTheme,
        ChipThemeData chipTheme,
        TargetPlatform platform,
        MaterialTapTargetSize materialTapTargetSize,
        bool applyElevationOverlayColor,
        PageTransitionsTheme pageTransitionsTheme,
        AppBarTheme appBarTheme,
        BottomAppBarTheme bottomAppBarTheme,
        ColorScheme colorScheme,
        DialogTheme dialogTheme,
        FloatingActionButtonThemeData floatingActionButtonTheme,
        NavigationRailThemeData navigationRailTheme,
        Typography typography,
        CupertinoThemeData cupertinoOverrideTheme,
        SnackBarThemeData snackBarTheme,
        BottomSheetThemeData bottomSheetTheme,
        PopupMenuThemeData popupMenuTheme,
        MaterialBannerThemeData bannerTheme,
        DividerThemeData dividerTheme,
        ButtonBarThemeData buttonBarTheme,
      }) =>
        ThemeData(
        brightness: brightness,
        visualDensity: visualDensity,
        primarySwatch: primarySwatch,
        primaryColor: primaryColor,
        primaryColorBrightness: primaryColorBrightness,
        primaryColorLight: primaryColorLight,
        primaryColorDark: primaryColorDark,
        accentColor: accentColor,
        accentColorBrightness: accentColorBrightness,
        canvasColor: canvasColor,
        scaffoldBackgroundColor: scaffoldBackgroundColor,
        bottomAppBarColor: bottomAppBarColor,
        cardColor: cardColor,
        dividerColor: dividerColor,
        focusColor: focusColor,
        hoverColor: hoverColor,
        highlightColor: highlightColor,
        splashColor: splashColor,
        splashFactory: splashFactory,
        selectedRowColor: selectedRowColor,
        unselectedWidgetColor: unselectedWidgetColor,
        disabledColor: disabledColor,
        buttonColor: buttonColor,
        buttonTheme: buttonTheme,
        toggleButtonsTheme: toggleButtonsTheme,
        secondaryHeaderColor: secondaryHeaderColor,
        textSelectionColor: textSelectionColor,
        cursorColor: cursorColor,
        textSelectionHandleColor: textSelectionHandleColor,
        backgroundColor: backgroundColor,
        dialogBackgroundColor: dialogBackgroundColor,
        indicatorColor: indicatorColor,
        hintColor: hintColor,
        errorColor: errorColor,
        toggleableActiveColor: toggleableActiveColor,
        fontFamily: fontFamily,
        textTheme: textTheme,
        primaryTextTheme: primaryTextTheme,
        accentTextTheme: accentTextTheme,
        inputDecorationTheme: inputDecorationTheme,
        iconTheme: iconTheme,
        primaryIconTheme: primaryIconTheme,
        accentIconTheme: accentIconTheme,
        sliderTheme: sliderTheme,
        tabBarTheme: tabBarTheme,
        tooltipTheme: tooltipTheme,
        cardTheme: cardTheme,
        chipTheme: chipTheme,
        platform: platform,
        materialTapTargetSize: materialTapTargetSize,
        applyElevationOverlayColor: applyElevationOverlayColor,
        pageTransitionsTheme: pageTransitionsTheme,
        appBarTheme: appBarTheme,
        bottomAppBarTheme: bottomAppBarTheme,
        colorScheme: colorScheme,
        dialogTheme: dialogTheme,
        floatingActionButtonTheme: floatingActionButtonTheme,
        navigationRailTheme: navigationRailTheme,
        typography: typography,
        cupertinoOverrideTheme: cupertinoOverrideTheme,
        snackBarTheme: snackBarTheme,
        bottomSheetTheme: bottomSheetTheme,
        popupMenuTheme: popupMenuTheme,
        bannerTheme: bannerTheme,
        dividerTheme: dividerTheme,
        buttonBarTheme: buttonBarTheme,
      ),
    );
  static var themeData_from = MXFunctionInvoke(
    "themeData.from",
      ({
        ColorScheme colorScheme,
        TextTheme textTheme,
      }) =>
        ThemeData.from(
        colorScheme: colorScheme,
        textTheme: textTheme,
      ),
    );
  static var themeData_light = MXFunctionInvoke(
    "themeData.light",
      ({
      }) =>
        ThemeData.light(
      ),
    );
  static var themeData_dark = MXFunctionInvoke(
    "themeData.dark",
      ({
      }) =>
        ThemeData.dark(
      ),
    );
  static var themeData_fallback = MXFunctionInvoke(
    "themeData.fallback",
      ({
      }) =>
        ThemeData.fallback(
      ),
    );
  static var themeData_raw = MXFunctionInvoke(
    "themeData.raw",
      ({
        Brightness brightness,
        VisualDensity visualDensity,
        Color primaryColor,
        Brightness primaryColorBrightness,
        Color primaryColorLight,
        Color primaryColorDark,
        Color canvasColor,
        Color accentColor,
        Brightness accentColorBrightness,
        Color scaffoldBackgroundColor,
        Color bottomAppBarColor,
        Color cardColor,
        Color dividerColor,
        Color focusColor,
        Color hoverColor,
        Color highlightColor,
        Color splashColor,
        InteractiveInkFeatureFactory splashFactory,
        Color selectedRowColor,
        Color unselectedWidgetColor,
        Color disabledColor,
        ButtonThemeData buttonTheme,
        Color buttonColor,
        ToggleButtonsThemeData toggleButtonsTheme,
        Color secondaryHeaderColor,
        Color textSelectionColor,
        Color cursorColor,
        Color textSelectionHandleColor,
        Color backgroundColor,
        Color dialogBackgroundColor,
        Color indicatorColor,
        Color hintColor,
        Color errorColor,
        Color toggleableActiveColor,
        TextTheme textTheme,
        TextTheme primaryTextTheme,
        TextTheme accentTextTheme,
        InputDecorationTheme inputDecorationTheme,
        IconThemeData iconTheme,
        IconThemeData primaryIconTheme,
        IconThemeData accentIconTheme,
        SliderThemeData sliderTheme,
        TabBarTheme tabBarTheme,
        TooltipThemeData tooltipTheme,
        CardTheme cardTheme,
        ChipThemeData chipTheme,
        TargetPlatform platform,
        MaterialTapTargetSize materialTapTargetSize,
        bool applyElevationOverlayColor,
        PageTransitionsTheme pageTransitionsTheme,
        AppBarTheme appBarTheme,
        BottomAppBarTheme bottomAppBarTheme,
        ColorScheme colorScheme,
        DialogTheme dialogTheme,
        FloatingActionButtonThemeData floatingActionButtonTheme,
        NavigationRailThemeData navigationRailTheme,
        Typography typography,
        CupertinoThemeData cupertinoOverrideTheme,
        SnackBarThemeData snackBarTheme,
        BottomSheetThemeData bottomSheetTheme,
        PopupMenuThemeData popupMenuTheme,
        MaterialBannerThemeData bannerTheme,
        DividerThemeData dividerTheme,
        ButtonBarThemeData buttonBarTheme,
      }) =>
        ThemeData.raw(
        brightness: brightness,
        visualDensity: visualDensity,
        primaryColor: primaryColor,
        primaryColorBrightness: primaryColorBrightness,
        primaryColorLight: primaryColorLight,
        primaryColorDark: primaryColorDark,
        canvasColor: canvasColor,
        accentColor: accentColor,
        accentColorBrightness: accentColorBrightness,
        scaffoldBackgroundColor: scaffoldBackgroundColor,
        bottomAppBarColor: bottomAppBarColor,
        cardColor: cardColor,
        dividerColor: dividerColor,
        focusColor: focusColor,
        hoverColor: hoverColor,
        highlightColor: highlightColor,
        splashColor: splashColor,
        splashFactory: splashFactory,
        selectedRowColor: selectedRowColor,
        unselectedWidgetColor: unselectedWidgetColor,
        disabledColor: disabledColor,
        buttonTheme: buttonTheme,
        buttonColor: buttonColor,
        toggleButtonsTheme: toggleButtonsTheme,
        secondaryHeaderColor: secondaryHeaderColor,
        textSelectionColor: textSelectionColor,
        cursorColor: cursorColor,
        textSelectionHandleColor: textSelectionHandleColor,
        backgroundColor: backgroundColor,
        dialogBackgroundColor: dialogBackgroundColor,
        indicatorColor: indicatorColor,
        hintColor: hintColor,
        errorColor: errorColor,
        toggleableActiveColor: toggleableActiveColor,
        textTheme: textTheme,
        primaryTextTheme: primaryTextTheme,
        accentTextTheme: accentTextTheme,
        inputDecorationTheme: inputDecorationTheme,
        iconTheme: iconTheme,
        primaryIconTheme: primaryIconTheme,
        accentIconTheme: accentIconTheme,
        sliderTheme: sliderTheme,
        tabBarTheme: tabBarTheme,
        tooltipTheme: tooltipTheme,
        cardTheme: cardTheme,
        chipTheme: chipTheme,
        platform: platform,
        materialTapTargetSize: materialTapTargetSize,
        applyElevationOverlayColor: applyElevationOverlayColor,
        pageTransitionsTheme: pageTransitionsTheme,
        appBarTheme: appBarTheme,
        bottomAppBarTheme: bottomAppBarTheme,
        colorScheme: colorScheme,
        dialogTheme: dialogTheme,
        floatingActionButtonTheme: floatingActionButtonTheme,
        navigationRailTheme: navigationRailTheme,
        typography: typography,
        cupertinoOverrideTheme: cupertinoOverrideTheme,
        snackBarTheme: snackBarTheme,
        bottomSheetTheme: bottomSheetTheme,
        popupMenuTheme: popupMenuTheme,
        bannerTheme: bannerTheme,
        dividerTheme: dividerTheme,
        buttonBarTheme: buttonBarTheme,
      ),
    );
  static var materialBasedCupertinoThemeData = MXFunctionInvoke(
      "MaterialBasedCupertinoThemeData",
      ({
        ThemeData materialTheme,
      }) =>
        MaterialBasedCupertinoThemeData(
        materialTheme: materialTheme,
      ),
    );
  static var materialBasedCupertinoThemeData_ = MXFunctionInvoke(
    "materialBasedCupertinoThemeData.",
      ({
        ThemeData _materialTheme,
        CupertinoThemeData _cupertinoOverrideTheme,
      }) =>
        MaterialBasedCupertinoThemeData.(
        _materialTheme,
        _cupertinoOverrideTheme,
      ),
    );
  static var visualDensity = MXFunctionInvoke(
      "VisualDensity",
      ({
        dynamic horizontal = 0.0,
        dynamic vertical = 0.0,
      }) =>
        VisualDensity(
        horizontal: horizontal?.toDouble(),
        vertical: vertical?.toDouble(),
      ),
    );
  static var colorScheme = MXFunctionInvoke(
      "ColorScheme",
      ({
        Color primary,
        Color primaryVariant,
        Color secondary,
        Color secondaryVariant,
        Color surface,
        Color background,
        Color error,
        Color onPrimary,
        Color onSecondary,
        Color onSurface,
        Color onBackground,
        Color onError,
        Brightness brightness,
      }) =>
        ColorScheme(
        primary: primary,
        primaryVariant: primaryVariant,
        secondary: secondary,
        secondaryVariant: secondaryVariant,
        surface: surface,
        background: background,
        error: error,
        onPrimary: onPrimary,
        onSecondary: onSecondary,
        onSurface: onSurface,
        onBackground: onBackground,
        onError: onError,
        brightness: brightness,
      ),
    );
  static var colorScheme_fromSwatch = MXFunctionInvoke(
    "colorScheme.fromSwatch",
      ({
        MaterialColor primarySwatch,
        Color primaryColorDark,
        Color accentColor,
        Color cardColor,
        Color backgroundColor,
        Color errorColor,
        Brightness brightness = Brightness.light,
      }) =>
        ColorScheme.fromSwatch(
        primarySwatch: primarySwatch,
        primaryColorDark: primaryColorDark,
        accentColor: accentColor,
        cardColor: cardColor,
        backgroundColor: backgroundColor,
        errorColor: errorColor,
        brightness: brightness,
      ),
    );
  static var colorScheme_light = MXFunctionInvoke(
    "colorScheme.light",
      ({
        Color primary,
        Color primaryVariant,
        Color secondary,
        Color secondaryVariant,
        Color surface,
        Color background,
        Color error,
        Color onPrimary,
        Color onSecondary,
        Color onSurface,
        Color onBackground,
        Color onError,
        Brightness brightness = Brightness.light,
      }) =>
        ColorScheme.light(
        primary: primary,
        primaryVariant: primaryVariant,
        secondary: secondary,
        secondaryVariant: secondaryVariant,
        surface: surface,
        background: background,
        error: error,
        onPrimary: onPrimary,
        onSecondary: onSecondary,
        onSurface: onSurface,
        onBackground: onBackground,
        onError: onError,
        brightness: brightness,
      ),
    );
  static var colorScheme_dark = MXFunctionInvoke(
    "colorScheme.dark",
      ({
        Color primary,
        Color primaryVariant,
        Color secondary,
        Color secondaryVariant,
        Color surface,
        Color background,
        Color error,
        Color onPrimary,
        Color onSecondary,
        Color onSurface,
        Color onBackground,
        Color onError,
        Brightness brightness = Brightness.dark,
      }) =>
        ColorScheme.dark(
        primary: primary,
        primaryVariant: primaryVariant,
        secondary: secondary,
        secondaryVariant: secondaryVariant,
        surface: surface,
        background: background,
        error: error,
        onPrimary: onPrimary,
        onSecondary: onSecondary,
        onSurface: onSurface,
        onBackground: onBackground,
        onError: onError,
        brightness: brightness,
      ),
    );
  static var buttonTextTheme = MXFunctionInvoke(
      "ButtonTextTheme",
      ({Map args}) => MXButtonTextTheme.parse(args),
  );
  static var buttonBarLayoutBehavior = MXFunctionInvoke(
      "ButtonBarLayoutBehavior",
      ({Map args}) => MXButtonBarLayoutBehavior.parse(args),
  );
  static var buttonTheme = MXFunctionInvoke(
      "ButtonTheme",
      ({
        Key key,
        ButtonTextTheme textTheme = ButtonTextTheme.normal,
        ButtonBarLayoutBehavior layoutBehavior = ButtonBarLayoutBehavior.padded,
        dynamic minWidth = 88.0,
        dynamic height = 36.0,
        EdgeInsetsGeometry padding,
        ShapeBorder shape,
        bool alignedDropdown = false,
        Color buttonColor,
        Color disabledColor,
        Color focusColor,
        Color hoverColor,
        Color highlightColor,
        Color splashColor,
        ColorScheme colorScheme,
        MaterialTapTargetSize materialTapTargetSize,
        Widget child,
      }) =>
        ButtonTheme(
        key: key,
        textTheme: textTheme,
        layoutBehavior: layoutBehavior,
        minWidth: minWidth?.toDouble(),
        height: height?.toDouble(),
        padding: padding,
        shape: shape,
        alignedDropdown: alignedDropdown,
        buttonColor: buttonColor,
        disabledColor: disabledColor,
        focusColor: focusColor,
        hoverColor: hoverColor,
        highlightColor: highlightColor,
        splashColor: splashColor,
        colorScheme: colorScheme,
        materialTapTargetSize: materialTapTargetSize,
        child: child,
      ),
    );
  static var buttonTheme_fromButtonThemeData = MXFunctionInvoke(
    "buttonTheme.fromButtonThemeData",
      ({
        Key key,
        ButtonThemeData data,
        Widget child,
      }) =>
        ButtonTheme.fromButtonThemeData(
        key: key,
        data: data,
        child: child,
      ),
    );
  static var buttonTheme_bar = MXFunctionInvoke(
    "buttonTheme.bar",
      ({
        Key key,
        ButtonTextTheme textTheme = ButtonTextTheme.accent,
        dynamic minWidth = 64.0,
        dynamic height = 36.0,
        EdgeInsetsGeometry padding,
        ShapeBorder shape,
        bool alignedDropdown = false,
        Color buttonColor,
        Color disabledColor,
        Color focusColor,
        Color hoverColor,
        Color highlightColor,
        Color splashColor,
        ColorScheme colorScheme,
        Widget child,
        ButtonBarLayoutBehavior layoutBehavior = ButtonBarLayoutBehavior.padded,
      }) =>
        ButtonTheme.bar(
        key: key,
        textTheme: textTheme,
        minWidth: minWidth?.toDouble(),
        height: height?.toDouble(),
        padding: padding,
        shape: shape,
        alignedDropdown: alignedDropdown,
        buttonColor: buttonColor,
        disabledColor: disabledColor,
        focusColor: focusColor,
        hoverColor: hoverColor,
        highlightColor: highlightColor,
        splashColor: splashColor,
        colorScheme: colorScheme,
        child: child,
        layoutBehavior: layoutBehavior,
      ),
    );
  static var buttonThemeData = MXFunctionInvoke(
      "ButtonThemeData",
      ({
        ButtonTextTheme textTheme = ButtonTextTheme.normal,
        dynamic minWidth = 88.0,
        dynamic height = 36.0,
        EdgeInsetsGeometry padding,
        ShapeBorder shape,
        ButtonBarLayoutBehavior layoutBehavior = ButtonBarLayoutBehavior.padded,
        bool alignedDropdown = false,
        Color buttonColor,
        Color disabledColor,
        Color focusColor,
        Color hoverColor,
        Color highlightColor,
        Color splashColor,
        ColorScheme colorScheme,
        MaterialTapTargetSize materialTapTargetSize,
      }) =>
        ButtonThemeData(
        textTheme: textTheme,
        minWidth: minWidth?.toDouble(),
        height: height?.toDouble(),
        padding: padding,
        shape: shape,
        layoutBehavior: layoutBehavior,
        alignedDropdown: alignedDropdown,
        buttonColor: buttonColor,
        disabledColor: disabledColor,
        focusColor: focusColor,
        hoverColor: hoverColor,
        highlightColor: highlightColor,
        splashColor: splashColor,
        colorScheme: colorScheme,
        materialTapTargetSize: materialTapTargetSize,
      ),
    );
  static var buttonBarThemeData = MXFunctionInvoke(
      "ButtonBarThemeData",
      ({
        MainAxisAlignment alignment,
        MainAxisSize mainAxisSize,
        ButtonTextTheme buttonTextTheme,
        dynamic buttonMinWidth,
        dynamic buttonHeight,
        EdgeInsetsGeometry buttonPadding,
        bool buttonAlignedDropdown,
        ButtonBarLayoutBehavior layoutBehavior,
        VerticalDirection overflowDirection,
      }) =>
        ButtonBarThemeData(
        alignment: alignment,
        mainAxisSize: mainAxisSize,
        buttonTextTheme: buttonTextTheme,
        buttonMinWidth: buttonMinWidth?.toDouble(),
        buttonHeight: buttonHeight?.toDouble(),
        buttonPadding: buttonPadding,
        buttonAlignedDropdown: buttonAlignedDropdown,
        layoutBehavior: layoutBehavior,
        overflowDirection: overflowDirection,
      ),
    );
  static var buttonBarTheme = MXFunctionInvoke(
      "ButtonBarTheme",
      ({
        Key key,
        ButtonBarThemeData data,
        Widget child,
      }) =>
        ButtonBarTheme(
        key: key,
        data: data,
        child: child,
      ),
    );
  static var buttonBar = MXFunctionInvoke(
      "ButtonBar",
      ({
        Key key,
        MainAxisAlignment alignment,
        MainAxisSize mainAxisSize,
        ButtonTextTheme buttonTextTheme,
        dynamic buttonMinWidth,
        dynamic buttonHeight,
        EdgeInsetsGeometry buttonPadding,
        bool buttonAlignedDropdown,
        ButtonBarLayoutBehavior layoutBehavior,
        VerticalDirection overflowDirection,
        dynamic overflowButtonSpacing,
        List<Widget> children,
      }) =>
        ButtonBar(
        key: key,
        alignment: alignment,
        mainAxisSize: mainAxisSize,
        buttonTextTheme: buttonTextTheme,
        buttonMinWidth: buttonMinWidth?.toDouble(),
        buttonHeight: buttonHeight?.toDouble(),
        buttonPadding: buttonPadding,
        buttonAlignedDropdown: buttonAlignedDropdown,
        layoutBehavior: layoutBehavior,
        overflowDirection: overflowDirection,
        overflowButtonSpacing: overflowButtonSpacing?.toDouble(),
        children: children,
      ),
    );
  static var bottomSheet = MXFunctionInvoke(
      "BottomSheet",
      ({
        Key key,
        AnimationController animationController,
        bool enableDrag = true,
        dynamic onDragStart,
        dynamic onDragEnd,
        Color backgroundColor,
        dynamic elevation,
        ShapeBorder shape,
        Clip clipBehavior,
        dynamic onClosing,
        dynamic builder,
      }) =>
        BottomSheet(
        key: key,
        animationController: animationController,
        enableDrag: enableDrag,
        onDragStart: createValueChangedGenericClosure<DragStartDetails>(bottomSheet.buildOwner, onDragStart),
        onDragEnd: createValueChangedGenericClosure<DragEndDetails>(bottomSheet.buildOwner, onDragEnd),
        backgroundColor: backgroundColor,
        elevation: elevation?.toDouble(),
        shape: shape,
        clipBehavior: clipBehavior,
        onClosing: createVoidCallbackClosure(bottomSheet.buildOwner, onClosing),
        builder: createGenericValueGenericClosure<Widget, BuildContext>(bottomSheet.buildOwner, builder),
      ),
    );
  static var scaffoldPrelayoutGeometry = MXFunctionInvoke(
      "ScaffoldPrelayoutGeometry",
      ({
        Size bottomSheetSize,
        dynamic contentBottom,
        dynamic contentTop,
        Size floatingActionButtonSize,
        EdgeInsets minInsets,
        Size scaffoldSize,
        Size snackBarSize,
        TextDirection textDirection,
      }) =>
        ScaffoldPrelayoutGeometry(
        bottomSheetSize: bottomSheetSize,
        contentBottom: contentBottom?.toDouble(),
        contentTop: contentTop?.toDouble(),
        floatingActionButtonSize: floatingActionButtonSize,
        minInsets: minInsets,
        scaffoldSize: scaffoldSize,
        snackBarSize: snackBarSize,
        textDirection: textDirection,
      ),
    );
  static var scaffoldGeometry = MXFunctionInvoke(
      "ScaffoldGeometry",
      ({
        dynamic bottomNavigationBarTop,
        Rect floatingActionButtonArea,
      }) =>
        ScaffoldGeometry(
        bottomNavigationBarTop: bottomNavigationBarTop?.toDouble(),
        floatingActionButtonArea: floatingActionButtonArea,
      ),
    );
  static var scaffold = MXFunctionInvoke(
      "Scaffold",
      ({
        Key key,
        PreferredSizeWidget appBar,
        Widget body,
        Widget floatingActionButton,
        FloatingActionButtonLocation floatingActionButtonLocation,
        FloatingActionButtonAnimator floatingActionButtonAnimator,
        List<Widget> persistentFooterButtons,
        Widget drawer,
        Widget endDrawer,
        Widget bottomNavigationBar,
        Widget bottomSheet,
        Color backgroundColor,
        bool resizeToAvoidBottomPadding,
        bool resizeToAvoidBottomInset,
        bool primary = true,
        DragStartBehavior drawerDragStartBehavior = DragStartBehavior.start,
        bool extendBody = false,
        bool extendBodyBehindAppBar = false,
        Color drawerScrimColor,
        dynamic drawerEdgeDragWidth,
        bool drawerEnableOpenDragGesture = true,
        bool endDrawerEnableOpenDragGesture = true,
      }) =>
        Scaffold(
        key: key,
        appBar: appBar,
        body: body,
        floatingActionButton: floatingActionButton,
        floatingActionButtonLocation: floatingActionButtonLocation,
        floatingActionButtonAnimator: floatingActionButtonAnimator,
        persistentFooterButtons: persistentFooterButtons,
        drawer: drawer,
        endDrawer: endDrawer,
        bottomNavigationBar: bottomNavigationBar,
        bottomSheet: bottomSheet,
        backgroundColor: backgroundColor,
        resizeToAvoidBottomPadding: resizeToAvoidBottomPadding,
        resizeToAvoidBottomInset: resizeToAvoidBottomInset,
        primary: primary,
        drawerDragStartBehavior: drawerDragStartBehavior,
        extendBody: extendBody,
        extendBodyBehindAppBar: extendBodyBehindAppBar,
        drawerScrimColor: drawerScrimColor,
        drawerEdgeDragWidth: drawerEdgeDragWidth?.toDouble(),
        drawerEnableOpenDragGesture: drawerEnableOpenDragGesture,
        endDrawerEnableOpenDragGesture: endDrawerEnableOpenDragGesture,
      ),
    );
  static var scaffoldState = MXFunctionInvoke(
      "ScaffoldState",
      ({
      }) =>
        ScaffoldState(
      ),
    );
  static var scaffoldFeatureController_ = MXFunctionInvoke(
    "scaffoldFeatureController.",
      ({
        dynamic _widget,
        Completer<ScaffoldFeatureController::U> _completer,
        dynamic close,
        dynamic setState,
      }) =>
        ScaffoldFeatureController.(
        _widget,
        _completer,
        close,
        setState,
      ),
    );
  static var persistentBottomSheetController_ = MXFunctionInvoke(
    "persistentBottomSheetController.",
      ({
        _StandardBottomSheet widget,
        Completer<PersistentBottomSheetController::T> completer,
        dynamic close,
        dynamic setState,
        bool _isLocalHistoryEntry,
      }) =>
        PersistentBottomSheetController.(
        widget,
        completer,
        close,
        setState,
        _isLocalHistoryEntry,
      ),
    );
  static var elevationOverlay_ = MXFunctionInvoke(
    "elevationOverlay.",
      ({
      }) =>
        ElevationOverlay.(
      ),
    );
  static var materialType = MXFunctionInvoke(
      "MaterialType",
      ({Map args}) => MXMaterialType.parse(args),
  );
  static var material = MXFunctionInvoke(
      "Material",
      ({
        Key key,
        MaterialType type = MaterialType.canvas,
        dynamic elevation = 0.0,
        Color color,
        Color shadowColor,
        TextStyle textStyle,
        BorderRadiusGeometry borderRadius,
        ShapeBorder shape,
        bool borderOnForeground = true,
        Clip clipBehavior = Clip.none,
        Duration animationDuration,
        Widget child,
      }) =>
        Material(
        key: key,
        type: type,
        elevation: elevation?.toDouble(),
        color: color,
        shadowColor: shadowColor,
        textStyle: textStyle,
        borderRadius: borderRadius,
        shape: shape,
        borderOnForeground: borderOnForeground,
        clipBehavior: clipBehavior,
        animationDuration: animationDuration,
        child: child,
      ),
    );
  static var shapeBorderTween = MXFunctionInvoke(
      "ShapeBorderTween",
      ({
        ShapeBorder begin,
        ShapeBorder end,
      }) =>
        ShapeBorderTween(
        begin: begin,
        end: end,
      ),
    );
  static var reorderableListView = MXFunctionInvoke(
      "ReorderableListView",
      ({
        Key key,
        Widget header,
        List<Widget> children,
        dynamic onReorder,
        ScrollController scrollController,
        Axis scrollDirection = Axis.vertical,
        EdgeInsets padding,
        bool reverse = false,
      }) =>
        ReorderableListView(
        key: key,
        header: header,
        children: children,
        onReorder: createVoidCallbackClosure(reorderableListView.buildOwner, onReorder),
        scrollController: scrollController,
        scrollDirection: scrollDirection,
        padding: padding,
        reverse: reverse,
      ),
    );
  static var defaultMaterialLocalizations = MXFunctionInvoke(
      "DefaultMaterialLocalizations",
      ({
      }) =>
        DefaultMaterialLocalizations(
      ),
    );
  static var theme = MXFunctionInvoke(
      "Theme",
      ({
        Key key,
        ThemeData data,
        bool isMaterialAppTheme = false,
        Widget child,
      }) =>
        Theme(
        key: key,
        data: data,
        isMaterialAppTheme: isMaterialAppTheme,
        child: child,
      ),
    );
  static var themeDataTween = MXFunctionInvoke(
      "ThemeDataTween",
      ({
        ThemeData begin,
        ThemeData end,
      }) =>
        ThemeDataTween(
        begin: begin,
        end: end,
      ),
    );
  static var animatedTheme = MXFunctionInvoke(
      "AnimatedTheme",
      ({
        Key key,
        ThemeData data,
        bool isMaterialAppTheme = false,
        Curve curve,
        Duration duration,
        dynamic onEnd,
        Widget child,
      }) =>
        AnimatedTheme(
        key: key,
        data: data,
        isMaterialAppTheme: isMaterialAppTheme,
        curve: curve,
        duration: duration,
        onEnd: createVoidCallbackClosure(animatedTheme.buildOwner, onEnd),
        child: child,
      ),
    );
  static var appBarTheme = MXFunctionInvoke(
      "AppBarTheme",
      ({
        Brightness brightness,
        Color color,
        dynamic elevation,
        IconThemeData iconTheme,
        IconThemeData actionsIconTheme,
        TextTheme textTheme,
      }) =>
        AppBarTheme(
        brightness: brightness,
        color: color,
        elevation: elevation?.toDouble(),
        iconTheme: iconTheme,
        actionsIconTheme: actionsIconTheme,
        textTheme: textTheme,
      ),
    );
  static var appBar = MXFunctionInvoke(
      "AppBar",
      ({
        Key key,
        Widget leading,
        bool automaticallyImplyLeading = true,
        Widget title,
        List<Widget> actions,
        Widget flexibleSpace,
        PreferredSizeWidget bottom,
        dynamic elevation,
        ShapeBorder shape,
        Color backgroundColor,
        Brightness brightness,
        IconThemeData iconTheme,
        IconThemeData actionsIconTheme,
        TextTheme textTheme,
        bool primary = true,
        bool centerTitle,
        bool excludeHeaderSemantics = false,
        dynamic titleSpacing = 16.0,
        dynamic toolbarOpacity = 1.0,
        dynamic bottomOpacity = 1.0,
      }) =>
        AppBar(
        key: key,
        leading: leading,
        automaticallyImplyLeading: automaticallyImplyLeading,
        title: title,
        actions: actions,
        flexibleSpace: flexibleSpace,
        bottom: bottom,
        elevation: elevation?.toDouble(),
        shape: shape,
        backgroundColor: backgroundColor,
        brightness: brightness,
        iconTheme: iconTheme,
        actionsIconTheme: actionsIconTheme,
        textTheme: textTheme,
        primary: primary,
        centerTitle: centerTitle,
        excludeHeaderSemantics: excludeHeaderSemantics,
        titleSpacing: titleSpacing?.toDouble(),
        toolbarOpacity: toolbarOpacity?.toDouble(),
        bottomOpacity: bottomOpacity?.toDouble(),
      ),
    );
  static var sliverAppBar = MXFunctionInvoke(
      "SliverAppBar",
      ({
        Key key,
        Widget leading,
        bool automaticallyImplyLeading = true,
        Widget title,
        List<Widget> actions,
        Widget flexibleSpace,
        PreferredSizeWidget bottom,
        dynamic elevation,
        bool forceElevated = false,
        Color backgroundColor,
        Brightness brightness,
        IconThemeData iconTheme,
        IconThemeData actionsIconTheme,
        TextTheme textTheme,
        bool primary = true,
        bool centerTitle,
        bool excludeHeaderSemantics = false,
        dynamic titleSpacing = 16.0,
        dynamic expandedHeight,
        bool floating = false,
        bool pinned = false,
        bool snap = false,
        bool stretch = false,
        dynamic stretchTriggerOffset = 100.0,
        dynamic onStretchTrigger,
        ShapeBorder shape,
      }) =>
        SliverAppBar(
        key: key,
        leading: leading,
        automaticallyImplyLeading: automaticallyImplyLeading,
        title: title,
        actions: actions,
        flexibleSpace: flexibleSpace,
        bottom: bottom,
        elevation: elevation?.toDouble(),
        forceElevated: forceElevated,
        backgroundColor: backgroundColor,
        brightness: brightness,
        iconTheme: iconTheme,
        actionsIconTheme: actionsIconTheme,
        textTheme: textTheme,
        primary: primary,
        centerTitle: centerTitle,
        excludeHeaderSemantics: excludeHeaderSemantics,
        titleSpacing: titleSpacing?.toDouble(),
        expandedHeight: expandedHeight?.toDouble(),
        floating: floating,
        pinned: pinned,
        snap: snap,
        stretch: stretch,
        stretchTriggerOffset: stretchTriggerOffset?.toDouble(),
        onStretchTrigger: onStretchTrigger,
        shape: shape,
      ),
    );
}
class MXDayPeriod {
  static Map str2VMap = {
    'DayPeriod.am': DayPeriod.am,
    'DayPeriod.pm': DayPeriod.pm,
  };
  static DayPeriod parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXTimeOfDayFormat {
  static Map str2VMap = {
    'TimeOfDayFormat.HH_colon_mm': TimeOfDayFormat.HH_colon_mm,
    'TimeOfDayFormat.HH_dot_mm': TimeOfDayFormat.HH_dot_mm,
    'TimeOfDayFormat.frenchCanadian': TimeOfDayFormat.frenchCanadian,
    'TimeOfDayFormat.H_colon_mm': TimeOfDayFormat.H_colon_mm,
    'TimeOfDayFormat.h_colon_mm_space_a': TimeOfDayFormat.h_colon_mm_space_a,
    'TimeOfDayFormat.a_space_h_colon_mm': TimeOfDayFormat.a_space_h_colon_mm,
  };
  static TimeOfDayFormat parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXHourFormat {
  static Map str2VMap = {
    'HourFormat.HH': HourFormat.HH,
    'HourFormat.H': HourFormat.H,
    'HourFormat.h': HourFormat.h,
  };
  static HourFormat parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXSnackBarClosedReason {
  static Map str2VMap = {
    'SnackBarClosedReason.action': SnackBarClosedReason.action,
    'SnackBarClosedReason.dismiss': SnackBarClosedReason.dismiss,
    'SnackBarClosedReason.swipe': SnackBarClosedReason.swipe,
    'SnackBarClosedReason.hide': SnackBarClosedReason.hide,
    'SnackBarClosedReason.remove': SnackBarClosedReason.remove,
    'SnackBarClosedReason.timeout': SnackBarClosedReason.timeout,
  };
  static SnackBarClosedReason parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXCollapseMode {
  static Map str2VMap = {
    'CollapseMode.parallax': CollapseMode.parallax,
    'CollapseMode.pin': CollapseMode.pin,
    'CollapseMode.none': CollapseMode.none,
  };
  static CollapseMode parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXStretchMode {
  static Map str2VMap = {
    'StretchMode.zoomBackground': StretchMode.zoomBackground,
    'StretchMode.blurBackground': StretchMode.blurBackground,
    'StretchMode.fadeTitle': StretchMode.fadeTitle,
  };
  static StretchMode parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXListTileStyle {
  static Map str2VMap = {
    'ListTileStyle.list': ListTileStyle.list,
    'ListTileStyle.drawer': ListTileStyle.drawer,
  };
  static ListTileStyle parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXListTileControlAffinity {
  static Map str2VMap = {
    'ListTileControlAffinity.leading': ListTileControlAffinity.leading,
    'ListTileControlAffinity.trailing': ListTileControlAffinity.trailing,
    'ListTileControlAffinity.platform': ListTileControlAffinity.platform,
  };
  static ListTileControlAffinity parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXDrawerAlignment {
  static Map str2VMap = {
    'DrawerAlignment.start': DrawerAlignment.start,
    'DrawerAlignment.end': DrawerAlignment.end,
  };
  static DrawerAlignment parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXTabBarIndicatorSize {
  static Map str2VMap = {
    'TabBarIndicatorSize.tab': TabBarIndicatorSize.tab,
    'TabBarIndicatorSize.label': TabBarIndicatorSize.label,
  };
  static TabBarIndicatorSize parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXSnackBarBehavior {
  static Map str2VMap = {
    'SnackBarBehavior.fixed': SnackBarBehavior.fixed,
    'SnackBarBehavior.floating': SnackBarBehavior.floating,
  };
  static SnackBarBehavior parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXShowValueIndicator {
  static Map str2VMap = {
    'ShowValueIndicator.onlyForDiscrete': ShowValueIndicator.onlyForDiscrete,
    'ShowValueIndicator.onlyForContinuous': ShowValueIndicator.onlyForContinuous,
    'ShowValueIndicator.always': ShowValueIndicator.always,
    'ShowValueIndicator.never': ShowValueIndicator.never,
  };
  static ShowValueIndicator parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXThumb {
  static Map str2VMap = {
    'Thumb.start': Thumb.start,
    'Thumb.end': Thumb.end,
  };
  static Thumb parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXNavigationRailLabelType {
  static Map str2VMap = {
    'NavigationRailLabelType.none': NavigationRailLabelType.none,
    'NavigationRailLabelType.selected': NavigationRailLabelType.selected,
    'NavigationRailLabelType.all': NavigationRailLabelType.all,
  };
  static NavigationRailLabelType parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXFloatingLabelBehavior {
  static Map str2VMap = {
    'FloatingLabelBehavior.never': FloatingLabelBehavior.never,
    'FloatingLabelBehavior.auto': FloatingLabelBehavior.auto,
    'FloatingLabelBehavior.always': FloatingLabelBehavior.always,
  };
  static FloatingLabelBehavior parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXMaterialTapTargetSize {
  static Map str2VMap = {
    'MaterialTapTargetSize.padded': MaterialTapTargetSize.padded,
    'MaterialTapTargetSize.shrinkWrap': MaterialTapTargetSize.shrinkWrap,
  };
  static MaterialTapTargetSize parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXButtonTextTheme {
  static Map str2VMap = {
    'ButtonTextTheme.normal': ButtonTextTheme.normal,
    'ButtonTextTheme.accent': ButtonTextTheme.accent,
    'ButtonTextTheme.primary': ButtonTextTheme.primary,
  };
  static ButtonTextTheme parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXButtonBarLayoutBehavior {
  static Map str2VMap = {
    'ButtonBarLayoutBehavior.constrained': ButtonBarLayoutBehavior.constrained,
    'ButtonBarLayoutBehavior.padded': ButtonBarLayoutBehavior.padded,
  };
  static ButtonBarLayoutBehavior parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
class MXMaterialType {
  static Map str2VMap = {
    'MaterialType.canvas': MaterialType.canvas,
    'MaterialType.card': MaterialType.card,
    'MaterialType.circle': MaterialType.circle,
    'MaterialType.button': MaterialType.button,
    'MaterialType.transparency': MaterialType.transparency,
  };
  static MaterialType parse(dynamic value) {
    if (value is Map) {
      var valueStr = value["_name"].trim();
      var v = str2VMap[valueStr];
      return v;
    } else {
      return value;
    }
  }
}
