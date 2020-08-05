//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/icon_button.dart';
import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/material/constants.dart';
import 'package:flutter/src/material/debug.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/src/material/ink_well.dart';
import 'package:flutter/src/material/material.dart';
import 'package:flutter/src/material/theme.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:flutter/src/material/tooltip.dart';
import 'package:flutter/src/material/back_button.dart';
import 'package:flutter/src/material/material_localizations.dart';
import 'package:flutter/src/material/time.dart';
import 'dart:ui';
import 'package:flutter/src/material/snack_bar.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/material/button_theme.dart';
import 'package:flutter/src/material/color_scheme.dart';
import 'package:flutter/src/material/flat_button.dart';
import 'package:flutter/src/material/scaffold.dart';
import 'package:flutter/src/material/snack_bar_theme.dart';
import 'package:flutter/src/material/floating_action_button_location.dart';
import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:flutter/src/material/feedback.dart';
import 'package:flutter/src/material/tooltip_theme.dart';
import 'package:flutter/src/material/floating_action_button.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/src/material/button.dart';
import 'package:flutter/src/material/floating_action_button_theme.dart';
import 'package:flutter/src/material/flexible_space_bar.dart';
import 'package:flutter/src/material/list_tile.dart';
import 'package:flutter/src/material/divider.dart';
import 'package:flutter/src/material/drawer.dart';
import 'package:flutter/src/material/divider_theme.dart';
import 'package:flutter/src/material/dialog.dart';
import 'package:flutter/src/material/button_bar.dart';
import 'package:flutter/src/material/dialog_theme.dart';
import 'package:flutter/src/material/raised_button.dart';
import 'package:flutter/src/material/material_button.dart';
import 'package:flutter/src/material/outline_button.dart';
import 'package:flutter/src/material/material_state.dart';
import 'package:flutter/src/material/toggle_buttons_theme.dart';
import 'package:flutter/src/material/tabs.dart';
import 'package:flutter/src/material/app_bar.dart';
import 'package:flutter/src/material/tab_bar_theme.dart';
import 'package:flutter/src/material/tab_controller.dart';
import 'package:flutter/src/material/tab_indicator.dart';
import 'package:flutter/src/material/slider_theme.dart';
import 'package:flutter/src/material/popup_menu_theme.dart';
import 'package:flutter/src/material/page_transitions_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/material/navigation_rail.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/material/navigation_rail_theme.dart';
import 'package:flutter/src/material/input_decorator.dart';
import 'package:flutter/src/material/input_border.dart';
import 'package:flutter/src/material/ink_highlight.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter/services.dart';
import 'dart:collection';
import 'package:flutter/src/material/ink_splash.dart';
import 'package:flutter/src/material/chip_theme.dart';
import 'package:flutter/src/material/card_theme.dart';
import 'package:flutter/src/material/bottom_app_bar_theme.dart';
import 'package:flutter/src/material/banner_theme.dart';
import 'package:flutter/src/material/app_bar_theme.dart';
import 'package:flutter/src/material/bottom_sheet_theme.dart';
import 'package:flutter/src/material/button_bar_theme.dart';
import 'package:flutter/src/material/text_theme.dart';
import 'package:flutter/src/material/typography.dart';
import 'package:flutter/src/material/bottom_sheet.dart';
import 'package:flutter/src/material/curves.dart';
import 'package:flutter/src/material/elevation_overlay.dart';
import 'package:flutter/src/material/reorderable_list.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerIconButtonSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_iconButton.funName] = _iconButton;
  m[_backButtonIcon.funName] = _backButtonIcon;
  m[_backButton.funName] = _backButton;
  m[_closeButton.funName] = _closeButton;
  m[_dayPeriod.funName] = _dayPeriod;
  m[_timeOfDay.funName] = _timeOfDay;
  m[_timeOfDay_now.funName] = _timeOfDay_now;
  m[_timeOfDay_fromDateTime.funName] = _timeOfDay_fromDateTime;
  m[_timeOfDayFormat.funName] = _timeOfDayFormat;
  m[_hourFormat.funName] = _hourFormat;
  m[_snackBarClosedReason.funName] = _snackBarClosedReason;
  m[_snackBarAction.funName] = _snackBarAction;
  m[_snackBar.funName] = _snackBar;
  m[_tooltip.funName] = _tooltip;
  m[_floatingActionButton.funName] = _floatingActionButton;
  m[_floatingActionButton_extended.funName] = _floatingActionButton_extended;
  m[_collapseMode.funName] = _collapseMode;
  m[_stretchMode.funName] = _stretchMode;
  m[_flexibleSpaceBar.funName] = _flexibleSpaceBar;
  m[_flexibleSpaceBarSettings.funName] = _flexibleSpaceBarSettings;
  m[_listTileStyle.funName] = _listTileStyle;
  m[_listTileTheme.funName] = _listTileTheme;
  m[_listTileControlAffinity.funName] = _listTileControlAffinity;
  m[_listTile.funName] = _listTile;
  m[_drawerAlignment.funName] = _drawerAlignment;
  m[_drawer.funName] = _drawer;
  m[_drawerController.funName] = _drawerController;
  m[_drawerControllerState.funName] = _drawerControllerState;
  m[_divider.funName] = _divider;
  m[_verticalDivider.funName] = _verticalDivider;
  m[_dialog.funName] = _dialog;
  m[_alertDialog.funName] = _alertDialog;
  m[_simpleDialogOption.funName] = _simpleDialogOption;
  m[_simpleDialog.funName] = _simpleDialog;
  m[_materialButton.funName] = _materialButton;
  m[_raisedButton.funName] = _raisedButton;
  m[_outlineButton.funName] = _outlineButton;
  m[_rawMaterialButton.funName] = _rawMaterialButton;
  m[_flatButton.funName] = _flatButton;
  m[_tooltipThemeData.funName] = _tooltipThemeData;
  m[_tooltipTheme.funName] = _tooltipTheme;
  m[_toggleButtonsThemeData.funName] = _toggleButtonsThemeData;
  m[_toggleButtonsTheme.funName] = _toggleButtonsTheme;
  m[_tabBarIndicatorSize.funName] = _tabBarIndicatorSize;
  m[_tab.funName] = _tab;
  m[_tabBar.funName] = _tabBar;
  m[_tabBarView.funName] = _tabBarView;
  m[_tabPageSelectorIndicator.funName] = _tabPageSelectorIndicator;
  m[_tabPageSelector.funName] = _tabPageSelector;
  m[_tabBarTheme.funName] = _tabBarTheme;
  m[_snackBarBehavior.funName] = _snackBarBehavior;
  m[_snackBarThemeData.funName] = _snackBarThemeData;
  m[_sliderTheme.funName] = _sliderTheme;
  m[_showValueIndicator.funName] = _showValueIndicator;
  m[_thumb.funName] = _thumb;
  m[_sliderThemeData.funName] = _sliderThemeData;
  m[_sliderThemeData_fromPrimaryColors.funName] = _sliderThemeData_fromPrimaryColors;
  m[_rectangularSliderTrackShape.funName] = _rectangularSliderTrackShape;
  m[_roundedRectSliderTrackShape.funName] = _roundedRectSliderTrackShape;
  m[_rectangularRangeSliderTrackShape.funName] = _rectangularRangeSliderTrackShape;
  m[_roundedRectRangeSliderTrackShape.funName] = _roundedRectRangeSliderTrackShape;
  m[_roundSliderTickMarkShape.funName] = _roundSliderTickMarkShape;
  m[_roundRangeSliderTickMarkShape.funName] = _roundRangeSliderTickMarkShape;
  m[_roundSliderThumbShape.funName] = _roundSliderThumbShape;
  m[_roundRangeSliderThumbShape.funName] = _roundRangeSliderThumbShape;
  m[_roundSliderOverlayShape.funName] = _roundSliderOverlayShape;
  m[_paddleSliderValueIndicatorShape.funName] = _paddleSliderValueIndicatorShape;
  m[_paddleRangeSliderValueIndicatorShape.funName] = _paddleRangeSliderValueIndicatorShape;
  m[_rangeValues.funName] = _rangeValues;
  m[_rangeLabels.funName] = _rangeLabels;
  m[_popupMenuThemeData.funName] = _popupMenuThemeData;
  m[_popupMenuTheme.funName] = _popupMenuTheme;
  m[_fadeUpwardsPageTransitionsBuilder.funName] = _fadeUpwardsPageTransitionsBuilder;
  m[_openUpwardsPageTransitionsBuilder.funName] = _openUpwardsPageTransitionsBuilder;
  m[_zoomPageTransitionsBuilder.funName] = _zoomPageTransitionsBuilder;
  m[_cupertinoPageTransitionsBuilder.funName] = _cupertinoPageTransitionsBuilder;
  m[_pageTransitionsTheme.funName] = _pageTransitionsTheme;
  m[_navigationRail.funName] = _navigationRail;
  m[_navigationRailLabelType.funName] = _navigationRailLabelType;
  m[_navigationRailDestination.funName] = _navigationRailDestination;
  m[_navigationRailThemeData.funName] = _navigationRailThemeData;
  m[_navigationRailTheme.funName] = _navigationRailTheme;
  m[_floatingLabelBehavior.funName] = _floatingLabelBehavior;
  m[_inputDecorator.funName] = _inputDecorator;
  m[_inputDecoration.funName] = _inputDecoration;
  m[_inputDecoration_collapsed.funName] = _inputDecoration_collapsed;
  m[_inputDecorationTheme.funName] = _inputDecorationTheme;
  m[_inkHighlight.funName] = _inkHighlight;
  m[_inkResponse.funName] = _inkResponse;
  m[_inkWell.funName] = _inkWell;
  m[_inkSplash.funName] = _inkSplash;
  m[_dividerThemeData.funName] = _dividerThemeData;
  m[_dividerTheme.funName] = _dividerTheme;
  m[_dialogTheme.funName] = _dialogTheme;
  m[_chipTheme.funName] = _chipTheme;
  m[_chipThemeData.funName] = _chipThemeData;
  m[_chipThemeData_fromDefaults.funName] = _chipThemeData_fromDefaults;
  m[_cardTheme.funName] = _cardTheme;
  m[_bottomAppBarTheme.funName] = _bottomAppBarTheme;
  m[_materialBannerThemeData.funName] = _materialBannerThemeData;
  m[_materialBannerTheme.funName] = _materialBannerTheme;
  m[_materialTapTargetSize.funName] = _materialTapTargetSize;
  m[_themeData.funName] = _themeData;
  m[_themeData_from.funName] = _themeData_from;
  m[_themeData_light.funName] = _themeData_light;
  m[_themeData_dark.funName] = _themeData_dark;
  m[_themeData_fallback.funName] = _themeData_fallback;
  m[_themeData_raw.funName] = _themeData_raw;
  m[_materialBasedCupertinoThemeData.funName] = _materialBasedCupertinoThemeData;
  m[_visualDensity.funName] = _visualDensity;
  m[_colorScheme.funName] = _colorScheme;
  m[_colorScheme_fromSwatch.funName] = _colorScheme_fromSwatch;
  m[_colorScheme_light.funName] = _colorScheme_light;
  m[_colorScheme_dark.funName] = _colorScheme_dark;
  m[_buttonTextTheme.funName] = _buttonTextTheme;
  m[_buttonBarLayoutBehavior.funName] = _buttonBarLayoutBehavior;
  m[_buttonTheme.funName] = _buttonTheme;
  m[_buttonTheme_fromButtonThemeData.funName] = _buttonTheme_fromButtonThemeData;
  m[_buttonTheme_bar.funName] = _buttonTheme_bar;
  m[_buttonThemeData.funName] = _buttonThemeData;
  m[_buttonBarThemeData.funName] = _buttonBarThemeData;
  m[_buttonBarTheme.funName] = _buttonBarTheme;
  m[_buttonBar.funName] = _buttonBar;
  m[_bottomSheet.funName] = _bottomSheet;
  m[_scaffoldPrelayoutGeometry.funName] = _scaffoldPrelayoutGeometry;
  m[_scaffoldGeometry.funName] = _scaffoldGeometry;
  m[_scaffold.funName] = _scaffold;
  m[_scaffoldState.funName] = _scaffoldState;
  m[_materialType.funName] = _materialType;
  m[_material.funName] = _material;
  m[_shapeBorderTween.funName] = _shapeBorderTween;
  m[_reorderableListView.funName] = _reorderableListView;
  m[_defaultMaterialLocalizations.funName] = _defaultMaterialLocalizations;
  m[_theme.funName] = _theme;
  m[_themeDataTween.funName] = _themeDataTween;
  m[_animatedTheme.funName] = _animatedTheme;
  m[_appBarTheme.funName] = _appBarTheme;
  m[_appBar.funName] = _appBar;
  m[_sliverAppBar.funName] = _sliverAppBar;
  return m;
}
var _iconButton = MXFunctionInvoke(
    "IconButton",
    (
      {
      Key key,
      double iconSize = 24.0,
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
      }
    ) =>
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
      onPressed: createVoidCallbackClosure(_iconButton.buildOwner, onPressed),
      focusNode: focusNode,
      autofocus: autofocus,
      tooltip: tooltip,
      enableFeedback: enableFeedback,
      constraints: constraints,
    ),
);
var _backButtonIcon = MXFunctionInvoke(
    "BackButtonIcon",
    (
      {
      Key key,
      }
    ) =>
      BackButtonIcon(
      key: key,
    ),
);
var _backButton = MXFunctionInvoke(
    "BackButton",
    (
      {
      Key key,
      Color color,
      dynamic onPressed,
      }
    ) =>
      BackButton(
      key: key,
      color: color,
      onPressed: createVoidCallbackClosure(_backButton.buildOwner, onPressed),
    ),
);
var _closeButton = MXFunctionInvoke(
    "CloseButton",
    (
      {
      Key key,
      Color color,
      dynamic onPressed,
      }
    ) =>
      CloseButton(
      key: key,
      color: color,
      onPressed: createVoidCallbackClosure(_closeButton.buildOwner, onPressed),
    ),
);
var _dayPeriod = MXFunctionInvoke(
    "DayPeriod",
    ({Map args}) => MXDayPeriod.parse(args),
  );
var _timeOfDay = MXFunctionInvoke(
    "TimeOfDay",
    (
      {
      int hour,
      int minute,
      }
    ) =>
      TimeOfDay(
      hour: hour,
      minute: minute,
    ),
);
var _timeOfDay_now = MXFunctionInvoke(
  "timeOfDay.now",
    (
    ) =>
      TimeOfDay.now(
    ),
);
var _timeOfDay_fromDateTime = MXFunctionInvoke(
  "timeOfDay.fromDateTime",
    (
      {
      DateTime time,
      }
    ) =>
      TimeOfDay.fromDateTime(
      time,
    ),
);
var _timeOfDayFormat = MXFunctionInvoke(
    "TimeOfDayFormat",
    ({Map args}) => MXTimeOfDayFormat.parse(args),
  );
var _hourFormat = MXFunctionInvoke(
    "HourFormat",
    ({Map args}) => MXHourFormat.parse(args),
  );
var _snackBarClosedReason = MXFunctionInvoke(
    "SnackBarClosedReason",
    ({Map args}) => MXSnackBarClosedReason.parse(args),
  );
var _snackBarAction = MXFunctionInvoke(
    "SnackBarAction",
    (
      {
      Key key,
      Color textColor,
      Color disabledTextColor,
      String label,
      dynamic onPressed,
      }
    ) =>
      SnackBarAction(
      key: key,
      textColor: textColor,
      disabledTextColor: disabledTextColor,
      label: label,
      onPressed: createVoidCallbackClosure(_snackBarAction.buildOwner, onPressed),
    ),
);
var _snackBar = MXFunctionInvoke(
    "SnackBar",
    (
      {
      Key key,
      Widget content,
      Color backgroundColor,
      double elevation,
      ShapeBorder shape,
      SnackBarBehavior behavior,
      SnackBarAction action,
      Duration duration,
      Animation<double> animation,
      dynamic onVisible,
      }
    ) =>
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
      onVisible: createVoidCallbackClosure(_snackBar.buildOwner, onVisible),
    ),
);
var _tooltip = MXFunctionInvoke(
    "Tooltip",
    (
      {
      Key key,
      String message,
      double height,
      EdgeInsetsGeometry padding,
      EdgeInsetsGeometry margin,
      double verticalOffset,
      bool preferBelow,
      bool excludeFromSemantics,
      Decoration decoration,
      TextStyle textStyle,
      Duration waitDuration,
      Duration showDuration,
      Widget child,
      }
    ) =>
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
var _floatingActionButton = MXFunctionInvoke(
    "FloatingActionButton",
    (
      {
      Key key,
      Widget child,
      String tooltip,
      Color foregroundColor,
      Color backgroundColor,
      Color focusColor,
      Color hoverColor,
      Color splashColor,
      Object heroTag,
      double elevation,
      double focusElevation,
      double hoverElevation,
      double highlightElevation,
      double disabledElevation,
      dynamic onPressed,
      bool mini = false,
      ShapeBorder shape,
      Clip clipBehavior = Clip.none,
      FocusNode focusNode,
      bool autofocus = false,
      MaterialTapTargetSize materialTapTargetSize,
      bool isExtended = false,
      }
    ) =>
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
      onPressed: createVoidCallbackClosure(_floatingActionButton.buildOwner, onPressed),
      mini: mini,
      shape: shape,
      clipBehavior: clipBehavior,
      focusNode: focusNode,
      autofocus: autofocus,
      materialTapTargetSize: materialTapTargetSize,
      isExtended: isExtended,
    ),
);
var _floatingActionButton_extended = MXFunctionInvoke(
  "floatingActionButton.extended",
    (
      {
      Key key,
      String tooltip,
      Color foregroundColor,
      Color backgroundColor,
      Color focusColor,
      Color hoverColor,
      Object heroTag,
      double elevation,
      double focusElevation,
      double hoverElevation,
      Color splashColor,
      double highlightElevation,
      double disabledElevation,
      dynamic onPressed,
      ShapeBorder shape,
      bool isExtended = true,
      MaterialTapTargetSize materialTapTargetSize,
      Clip clipBehavior = Clip.none,
      FocusNode focusNode,
      bool autofocus = false,
      Widget icon,
      Widget label,
      }
    ) =>
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
      onPressed: createVoidCallbackClosure(_floatingActionButton_extended.buildOwner, onPressed),
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
var _collapseMode = MXFunctionInvoke(
    "CollapseMode",
    ({Map args}) => MXCollapseMode.parse(args),
  );
var _stretchMode = MXFunctionInvoke(
    "StretchMode",
    ({Map args}) => MXStretchMode.parse(args),
  );
var _flexibleSpaceBar = MXFunctionInvoke(
    "FlexibleSpaceBar",
    (
      {
      Key key,
      Widget title,
      Widget background,
      bool centerTitle,
      EdgeInsetsGeometry titlePadding,
      CollapseMode collapseMode = CollapseMode.parallax,
      List<StretchMode> stretchModes,
      }
    ) =>
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
var _flexibleSpaceBarSettings = MXFunctionInvoke(
    "FlexibleSpaceBarSettings",
    (
      {
      Key key,
      double toolbarOpacity,
      double minExtent,
      double maxExtent,
      double currentExtent,
      Widget child,
      }
    ) =>
      FlexibleSpaceBarSettings(
      key: key,
      toolbarOpacity: toolbarOpacity?.toDouble(),
      minExtent: minExtent?.toDouble(),
      maxExtent: maxExtent?.toDouble(),
      currentExtent: currentExtent?.toDouble(),
      child: child,
    ),
);
var _listTileStyle = MXFunctionInvoke(
    "ListTileStyle",
    ({Map args}) => MXListTileStyle.parse(args),
  );
var _listTileTheme = MXFunctionInvoke(
    "ListTileTheme",
    (
      {
      Key key,
      bool dense = false,
      ListTileStyle style = ListTileStyle.list,
      Color selectedColor,
      Color iconColor,
      Color textColor,
      EdgeInsetsGeometry contentPadding,
      Widget child,
      }
    ) =>
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
var _listTileControlAffinity = MXFunctionInvoke(
    "ListTileControlAffinity",
    ({Map args}) => MXListTileControlAffinity.parse(args),
  );
var _listTile = MXFunctionInvoke(
    "ListTile",
    (
      {
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
      }
    ) =>
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
      onTap: createVoidCallbackClosure(_listTile.buildOwner, onTap),
      onLongPress: createVoidCallbackClosure(_listTile.buildOwner, onLongPress),
      selected: selected,
    ),
);
var _drawerAlignment = MXFunctionInvoke(
    "DrawerAlignment",
    ({Map args}) => MXDrawerAlignment.parse(args),
  );
var _drawer = MXFunctionInvoke(
    "Drawer",
    (
      {
      Key key,
      double elevation = 16.0,
      Widget child,
      String semanticLabel,
      }
    ) =>
      Drawer(
      key: key,
      elevation: elevation?.toDouble(),
      child: child,
      semanticLabel: semanticLabel,
    ),
);
var _drawerController = MXFunctionInvoke(
    "DrawerController",
    (
      {
      GlobalKey<State<StatefulWidget>> key,
      Widget child,
      DrawerAlignment alignment,
      dynamic drawerCallback,
      DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      Color scrimColor,
      double edgeDragWidth,
      bool enableOpenDragGesture = true,
      }
    ) =>
      DrawerController(
      key: key,
      child: child,
      alignment: alignment,
      drawerCallback: createValueChangedGenericClosure<bool>(_drawerController.buildOwner, drawerCallback),
      dragStartBehavior: dragStartBehavior,
      scrimColor: scrimColor,
      edgeDragWidth: edgeDragWidth?.toDouble(),
      enableOpenDragGesture: enableOpenDragGesture,
    ),
);
var _drawerControllerState = MXFunctionInvoke(
    "DrawerControllerState",
    (
    ) =>
      DrawerControllerState(
    ),
);
var _divider = MXFunctionInvoke(
    "Divider",
    (
      {
      Key key,
      double height,
      double thickness,
      double indent,
      double endIndent,
      Color color,
      }
    ) =>
      Divider(
      key: key,
      height: height?.toDouble(),
      thickness: thickness?.toDouble(),
      indent: indent?.toDouble(),
      endIndent: endIndent?.toDouble(),
      color: color,
    ),
);
var _verticalDivider = MXFunctionInvoke(
    "VerticalDivider",
    (
      {
      Key key,
      double width,
      double thickness,
      double indent,
      double endIndent,
      Color color,
      }
    ) =>
      VerticalDivider(
      key: key,
      width: width?.toDouble(),
      thickness: thickness?.toDouble(),
      indent: indent?.toDouble(),
      endIndent: endIndent?.toDouble(),
      color: color,
    ),
);
var _dialog = MXFunctionInvoke(
    "Dialog",
    (
      {
      Key key,
      Color backgroundColor,
      double elevation,
      Duration insetAnimationDuration,
      Curve insetAnimationCurve,
      EdgeInsets insetPadding,
      Clip clipBehavior = Clip.none,
      ShapeBorder shape,
      Widget child,
      }
    ) =>
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
var _alertDialog = MXFunctionInvoke(
    "AlertDialog",
    (
      {
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
      double actionsOverflowButtonSpacing,
      EdgeInsetsGeometry buttonPadding,
      Color backgroundColor,
      double elevation,
      String semanticLabel,
      EdgeInsets insetPadding,
      Clip clipBehavior = Clip.none,
      ShapeBorder shape,
      bool scrollable = false,
      }
    ) =>
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
var _simpleDialogOption = MXFunctionInvoke(
    "SimpleDialogOption",
    (
      {
      Key key,
      dynamic onPressed,
      EdgeInsets padding,
      Widget child,
      }
    ) =>
      SimpleDialogOption(
      key: key,
      onPressed: createVoidCallbackClosure(_simpleDialogOption.buildOwner, onPressed),
      padding: padding,
      child: child,
    ),
);
var _simpleDialog = MXFunctionInvoke(
    "SimpleDialog",
    (
      {
      Key key,
      Widget title,
      EdgeInsetsGeometry titlePadding,
      List<Widget> children,
      EdgeInsetsGeometry contentPadding,
      Color backgroundColor,
      double elevation,
      String semanticLabel,
      ShapeBorder shape,
      }
    ) =>
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
var _materialButton = MXFunctionInvoke(
    "MaterialButton",
    (
      {
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
      double elevation,
      double focusElevation,
      double hoverElevation,
      double highlightElevation,
      double disabledElevation,
      EdgeInsetsGeometry padding,
      VisualDensity visualDensity,
      ShapeBorder shape,
      Clip clipBehavior = Clip.none,
      FocusNode focusNode,
      bool autofocus = false,
      MaterialTapTargetSize materialTapTargetSize,
      Duration animationDuration,
      double minWidth,
      double height,
      bool enableFeedback = true,
      Widget child,
      }
    ) =>
      MaterialButton(
      key: key,
      onPressed: createVoidCallbackClosure(_materialButton.buildOwner, onPressed),
      onLongPress: createVoidCallbackClosure(_materialButton.buildOwner, onLongPress),
      onHighlightChanged: createValueChangedGenericClosure<bool>(_materialButton.buildOwner, onHighlightChanged),
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
var _raisedButton = MXFunctionInvoke(
    "RaisedButton",
    (
      {
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
      double elevation,
      double focusElevation,
      double hoverElevation,
      double highlightElevation,
      double disabledElevation,
      EdgeInsetsGeometry padding,
      VisualDensity visualDensity,
      ShapeBorder shape,
      Clip clipBehavior = Clip.none,
      FocusNode focusNode,
      bool autofocus = false,
      MaterialTapTargetSize materialTapTargetSize,
      Duration animationDuration,
      Widget child,
      }
    ) =>
      RaisedButton(
      key: key,
      onPressed: createVoidCallbackClosure(_raisedButton.buildOwner, onPressed),
      onLongPress: createVoidCallbackClosure(_raisedButton.buildOwner, onLongPress),
      onHighlightChanged: createValueChangedGenericClosure<bool>(_raisedButton.buildOwner, onHighlightChanged),
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
var _outlineButton = MXFunctionInvoke(
    "OutlineButton",
    (
      {
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
      double highlightElevation,
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
      }
    ) =>
      OutlineButton(
      key: key,
      onPressed: createVoidCallbackClosure(_outlineButton.buildOwner, onPressed),
      onLongPress: createVoidCallbackClosure(_outlineButton.buildOwner, onLongPress),
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
var _rawMaterialButton = MXFunctionInvoke(
    "RawMaterialButton",
    (
      {
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
      double elevation = 2.0,
      double focusElevation = 4.0,
      double hoverElevation = 4.0,
      double highlightElevation = 8.0,
      double disabledElevation = 0.0,
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
      }
    ) =>
      RawMaterialButton(
      key: key,
      onPressed: createVoidCallbackClosure(_rawMaterialButton.buildOwner, onPressed),
      onLongPress: createVoidCallbackClosure(_rawMaterialButton.buildOwner, onLongPress),
      onHighlightChanged: createValueChangedGenericClosure<bool>(_rawMaterialButton.buildOwner, onHighlightChanged),
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
var _flatButton = MXFunctionInvoke(
    "FlatButton",
    (
      {
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
      }
    ) =>
      FlatButton(
      key: key,
      onPressed: createVoidCallbackClosure(_flatButton.buildOwner, onPressed),
      onLongPress: createVoidCallbackClosure(_flatButton.buildOwner, onLongPress),
      onHighlightChanged: createValueChangedGenericClosure<bool>(_flatButton.buildOwner, onHighlightChanged),
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
var _tooltipThemeData = MXFunctionInvoke(
    "TooltipThemeData",
    (
      {
      double height,
      EdgeInsetsGeometry padding,
      EdgeInsetsGeometry margin,
      double verticalOffset,
      bool preferBelow,
      bool excludeFromSemantics,
      Decoration decoration,
      TextStyle textStyle,
      Duration waitDuration,
      Duration showDuration,
      }
    ) =>
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
var _tooltipTheme = MXFunctionInvoke(
    "TooltipTheme",
    (
      {
      Key key,
      TooltipThemeData data,
      Widget child,
      }
    ) =>
      TooltipTheme(
      key: key,
      data: data,
      child: child,
    ),
);
var _toggleButtonsThemeData = MXFunctionInvoke(
    "ToggleButtonsThemeData",
    (
      {
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
      double borderWidth,
      }
    ) =>
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
var _toggleButtonsTheme = MXFunctionInvoke(
    "ToggleButtonsTheme",
    (
      {
      Key key,
      ToggleButtonsThemeData data,
      Widget child,
      }
    ) =>
      ToggleButtonsTheme(
      key: key,
      data: data,
      child: child,
    ),
);
var _tabBarIndicatorSize = MXFunctionInvoke(
    "TabBarIndicatorSize",
    ({Map args}) => MXTabBarIndicatorSize.parse(args),
  );
var _tab = MXFunctionInvoke(
    "Tab",
    (
      {
      Key key,
      String text,
      Widget icon,
      EdgeInsetsGeometry iconMargin,
      Widget child,
      }
    ) =>
      Tab(
      key: key,
      text: text,
      icon: icon,
      iconMargin: iconMargin,
      child: child,
    ),
);
var _tabBar = MXFunctionInvoke(
    "TabBar",
    (
      {
      Key key,
      List<Widget> tabs,
      TabController controller,
      bool isScrollable = false,
      Color indicatorColor,
      double indicatorWeight = 2.0,
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
      }
    ) =>
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
      onTap: createValueChangedGenericClosure<int>(_tabBar.buildOwner, onTap),
    ),
);
var _tabBarView = MXFunctionInvoke(
    "TabBarView",
    (
      {
      Key key,
      List<Widget> children,
      TabController controller,
      ScrollPhysics physics,
      DragStartBehavior dragStartBehavior = DragStartBehavior.start,
      }
    ) =>
      TabBarView(
      key: key,
      children: children,
      controller: controller,
      physics: physics,
      dragStartBehavior: dragStartBehavior,
    ),
);
var _tabPageSelectorIndicator = MXFunctionInvoke(
    "TabPageSelectorIndicator",
    (
      {
      Key key,
      Color backgroundColor,
      Color borderColor,
      double size,
      }
    ) =>
      TabPageSelectorIndicator(
      key: key,
      backgroundColor: backgroundColor,
      borderColor: borderColor,
      size: size?.toDouble(),
    ),
);
var _tabPageSelector = MXFunctionInvoke(
    "TabPageSelector",
    (
      {
      Key key,
      TabController controller,
      double indicatorSize = 12.0,
      Color color,
      Color selectedColor,
      }
    ) =>
      TabPageSelector(
      key: key,
      controller: controller,
      indicatorSize: indicatorSize?.toDouble(),
      color: color,
      selectedColor: selectedColor,
    ),
);
var _tabBarTheme = MXFunctionInvoke(
    "TabBarTheme",
    (
      {
      Decoration indicator,
      TabBarIndicatorSize indicatorSize,
      Color labelColor,
      EdgeInsetsGeometry labelPadding,
      TextStyle labelStyle,
      Color unselectedLabelColor,
      TextStyle unselectedLabelStyle,
      }
    ) =>
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
var _snackBarBehavior = MXFunctionInvoke(
    "SnackBarBehavior",
    ({Map args}) => MXSnackBarBehavior.parse(args),
  );
var _snackBarThemeData = MXFunctionInvoke(
    "SnackBarThemeData",
    (
      {
      Color backgroundColor,
      Color actionTextColor,
      Color disabledActionTextColor,
      TextStyle contentTextStyle,
      double elevation,
      ShapeBorder shape,
      SnackBarBehavior behavior,
      }
    ) =>
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
var _sliderTheme = MXFunctionInvoke(
    "SliderTheme",
    (
      {
      Key key,
      SliderThemeData data,
      Widget child,
      }
    ) =>
      SliderTheme(
      key: key,
      data: data,
      child: child,
    ),
);
var _showValueIndicator = MXFunctionInvoke(
    "ShowValueIndicator",
    ({Map args}) => MXShowValueIndicator.parse(args),
  );
var _thumb = MXFunctionInvoke(
    "Thumb",
    ({Map args}) => MXThumb.parse(args),
  );
var _sliderThemeData = MXFunctionInvoke(
    "SliderThemeData",
    (
      {
      double trackHeight,
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
      double minThumbSeparation,
      dynamic thumbSelector,
      }
    ) =>
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
      thumbSelector: null,
    ),
);
var _sliderThemeData_fromPrimaryColors = MXFunctionInvoke(
  "sliderThemeData.fromPrimaryColors",
    (
      {
      Color primaryColor,
      Color primaryColorDark,
      Color primaryColorLight,
      TextStyle valueIndicatorTextStyle,
      }
    ) =>
      SliderThemeData.fromPrimaryColors(
      primaryColor: primaryColor,
      primaryColorDark: primaryColorDark,
      primaryColorLight: primaryColorLight,
      valueIndicatorTextStyle: valueIndicatorTextStyle,
    ),
);
var _rectangularSliderTrackShape = MXFunctionInvoke(
    "RectangularSliderTrackShape",
    (
      {
      double disabledThumbGapWidth = 2.0,
      }
    ) =>
      RectangularSliderTrackShape(
      disabledThumbGapWidth: disabledThumbGapWidth?.toDouble(),
    ),
);
var _roundedRectSliderTrackShape = MXFunctionInvoke(
    "RoundedRectSliderTrackShape",
    (
    ) =>
      RoundedRectSliderTrackShape(
    ),
);
var _rectangularRangeSliderTrackShape = MXFunctionInvoke(
    "RectangularRangeSliderTrackShape",
    (
    ) =>
      RectangularRangeSliderTrackShape(
    ),
);
var _roundedRectRangeSliderTrackShape = MXFunctionInvoke(
    "RoundedRectRangeSliderTrackShape",
    (
    ) =>
      RoundedRectRangeSliderTrackShape(
    ),
);
var _roundSliderTickMarkShape = MXFunctionInvoke(
    "RoundSliderTickMarkShape",
    (
      {
      double tickMarkRadius,
      }
    ) =>
      RoundSliderTickMarkShape(
      tickMarkRadius: tickMarkRadius?.toDouble(),
    ),
);
var _roundRangeSliderTickMarkShape = MXFunctionInvoke(
    "RoundRangeSliderTickMarkShape",
    (
      {
      double tickMarkRadius,
      }
    ) =>
      RoundRangeSliderTickMarkShape(
      tickMarkRadius: tickMarkRadius?.toDouble(),
    ),
);
var _roundSliderThumbShape = MXFunctionInvoke(
    "RoundSliderThumbShape",
    (
      {
      double enabledThumbRadius = 10.0,
      double disabledThumbRadius,
      }
    ) =>
      RoundSliderThumbShape(
      enabledThumbRadius: enabledThumbRadius?.toDouble(),
      disabledThumbRadius: disabledThumbRadius?.toDouble(),
    ),
);
var _roundRangeSliderThumbShape = MXFunctionInvoke(
    "RoundRangeSliderThumbShape",
    (
      {
      double enabledThumbRadius = 10.0,
      double disabledThumbRadius,
      }
    ) =>
      RoundRangeSliderThumbShape(
      enabledThumbRadius: enabledThumbRadius?.toDouble(),
      disabledThumbRadius: disabledThumbRadius?.toDouble(),
    ),
);
var _roundSliderOverlayShape = MXFunctionInvoke(
    "RoundSliderOverlayShape",
    (
      {
      double overlayRadius = 24.0,
      }
    ) =>
      RoundSliderOverlayShape(
      overlayRadius: overlayRadius?.toDouble(),
    ),
);
var _paddleSliderValueIndicatorShape = MXFunctionInvoke(
    "PaddleSliderValueIndicatorShape",
    (
    ) =>
      PaddleSliderValueIndicatorShape(
    ),
);
var _paddleRangeSliderValueIndicatorShape = MXFunctionInvoke(
    "PaddleRangeSliderValueIndicatorShape",
    (
    ) =>
      PaddleRangeSliderValueIndicatorShape(
    ),
);
var _rangeValues = MXFunctionInvoke(
    "RangeValues",
    (
      {
      double start,
      double end,
      }
    ) =>
      RangeValues(
      start,
      end,
    ),
);
var _rangeLabels = MXFunctionInvoke(
    "RangeLabels",
    (
      {
      String start,
      String end,
      }
    ) =>
      RangeLabels(
      start,
      end,
    ),
);
var _popupMenuThemeData = MXFunctionInvoke(
    "PopupMenuThemeData",
    (
      {
      Color color,
      ShapeBorder shape,
      double elevation,
      TextStyle textStyle,
      }
    ) =>
      PopupMenuThemeData(
      color: color,
      shape: shape,
      elevation: elevation?.toDouble(),
      textStyle: textStyle,
    ),
);
var _popupMenuTheme = MXFunctionInvoke(
    "PopupMenuTheme",
    (
      {
      Key key,
      PopupMenuThemeData data,
      Widget child,
      }
    ) =>
      PopupMenuTheme(
      key: key,
      data: data,
      child: child,
    ),
);
var _fadeUpwardsPageTransitionsBuilder = MXFunctionInvoke(
    "FadeUpwardsPageTransitionsBuilder",
    (
    ) =>
      FadeUpwardsPageTransitionsBuilder(
    ),
);
var _openUpwardsPageTransitionsBuilder = MXFunctionInvoke(
    "OpenUpwardsPageTransitionsBuilder",
    (
    ) =>
      OpenUpwardsPageTransitionsBuilder(
    ),
);
var _zoomPageTransitionsBuilder = MXFunctionInvoke(
    "ZoomPageTransitionsBuilder",
    (
    ) =>
      ZoomPageTransitionsBuilder(
    ),
);
var _cupertinoPageTransitionsBuilder = MXFunctionInvoke(
    "CupertinoPageTransitionsBuilder",
    (
    ) =>
      CupertinoPageTransitionsBuilder(
    ),
);
var _pageTransitionsTheme = MXFunctionInvoke(
    "PageTransitionsTheme",
    (
      {
      Map<TargetPlatform, PageTransitionsBuilder> builders,
      }
    ) =>
      PageTransitionsTheme(
      builders: builders,
    ),
);
var _navigationRail = MXFunctionInvoke(
    "NavigationRail",
    (
      {
      Color backgroundColor,
      bool extended = false,
      Widget leading,
      Widget trailing,
      List<NavigationRailDestination> destinations,
      int selectedIndex,
      dynamic onDestinationSelected,
      double elevation,
      double groupAlignment,
      NavigationRailLabelType labelType,
      TextStyle unselectedLabelTextStyle,
      TextStyle selectedLabelTextStyle,
      IconThemeData unselectedIconTheme,
      IconThemeData selectedIconTheme,
      double minWidth,
      double minExtendedWidth,
      }
    ) =>
      NavigationRail(
      backgroundColor: backgroundColor,
      extended: extended,
      leading: leading,
      trailing: trailing,
      destinations: destinations,
      selectedIndex: selectedIndex,
      onDestinationSelected: createValueChangedGenericClosure<int>(_navigationRail.buildOwner, onDestinationSelected),
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
var _navigationRailLabelType = MXFunctionInvoke(
    "NavigationRailLabelType",
    ({Map args}) => MXNavigationRailLabelType.parse(args),
  );
var _navigationRailDestination = MXFunctionInvoke(
    "NavigationRailDestination",
    (
      {
      Widget icon,
      Widget selectedIcon,
      Widget label,
      }
    ) =>
      NavigationRailDestination(
      icon: icon,
      selectedIcon: selectedIcon,
      label: label,
    ),
);
var _navigationRailThemeData = MXFunctionInvoke(
    "NavigationRailThemeData",
    (
      {
      Color backgroundColor,
      double elevation,
      TextStyle unselectedLabelTextStyle,
      TextStyle selectedLabelTextStyle,
      IconThemeData unselectedIconTheme,
      IconThemeData selectedIconTheme,
      double groupAlignment,
      NavigationRailLabelType labelType,
      }
    ) =>
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
var _navigationRailTheme = MXFunctionInvoke(
    "NavigationRailTheme",
    (
      {
      Key key,
      NavigationRailThemeData data,
      Widget child,
      }
    ) =>
      NavigationRailTheme(
      key: key,
      data: data,
      child: child,
    ),
);
var _floatingLabelBehavior = MXFunctionInvoke(
    "FloatingLabelBehavior",
    ({Map args}) => MXFloatingLabelBehavior.parse(args),
  );
var _inputDecorator = MXFunctionInvoke(
    "InputDecorator",
    (
      {
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
      }
    ) =>
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
var _inputDecoration = MXFunctionInvoke(
    "InputDecoration",
    (
      {
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
      }
    ) =>
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
var _inputDecoration_collapsed = MXFunctionInvoke(
  "inputDecoration.collapsed",
    (
      {
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
      }
    ) =>
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
var _inputDecorationTheme = MXFunctionInvoke(
    "InputDecorationTheme",
    (
      {
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
      }
    ) =>
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
var _inkHighlight = MXFunctionInvoke(
    "InkHighlight",
    (
      {
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
      }
    ) =>
      InkHighlight(
      controller: controller,
      referenceBox: referenceBox,
      color: color,
      textDirection: textDirection,
      shape: shape,
      borderRadius: borderRadius,
      customBorder: customBorder,
      rectCallback: rectCallback,
      onRemoved: createVoidCallbackClosure(_inkHighlight.buildOwner, onRemoved),
      fadeDuration: fadeDuration,
    ),
);
var _inkResponse = MXFunctionInvoke(
    "InkResponse",
    (
      {
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
      double radius,
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
      }
    ) =>
      InkResponse(
      key: key,
      child: child,
      onTap: createVoidCallbackClosure(_inkResponse.buildOwner, onTap),
      onTapDown: createValueChangedGenericClosure<TapDownDetails>(_inkResponse.buildOwner, onTapDown),
      onTapCancel: createVoidCallbackClosure(_inkResponse.buildOwner, onTapCancel),
      onDoubleTap: createVoidCallbackClosure(_inkResponse.buildOwner, onDoubleTap),
      onLongPress: createVoidCallbackClosure(_inkResponse.buildOwner, onLongPress),
      onHighlightChanged: createValueChangedGenericClosure<bool>(_inkResponse.buildOwner, onHighlightChanged),
      onHover: createValueChangedGenericClosure<bool>(_inkResponse.buildOwner, onHover),
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
      onFocusChange: createValueChangedGenericClosure<bool>(_inkResponse.buildOwner, onFocusChange),
      autofocus: autofocus,
    ),
);
var _inkWell = MXFunctionInvoke(
    "InkWell",
    (
      {
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
      double radius,
      BorderRadius borderRadius,
      ShapeBorder customBorder,
      bool enableFeedback = true,
      bool excludeFromSemantics = false,
      FocusNode focusNode,
      bool canRequestFocus = true,
      dynamic onFocusChange,
      bool autofocus = false,
      }
    ) =>
      InkWell(
      key: key,
      child: child,
      onTap: createVoidCallbackClosure(_inkWell.buildOwner, onTap),
      onDoubleTap: createVoidCallbackClosure(_inkWell.buildOwner, onDoubleTap),
      onLongPress: createVoidCallbackClosure(_inkWell.buildOwner, onLongPress),
      onTapDown: createValueChangedGenericClosure<TapDownDetails>(_inkWell.buildOwner, onTapDown),
      onTapCancel: createVoidCallbackClosure(_inkWell.buildOwner, onTapCancel),
      onHighlightChanged: createValueChangedGenericClosure<bool>(_inkWell.buildOwner, onHighlightChanged),
      onHover: createValueChangedGenericClosure<bool>(_inkWell.buildOwner, onHover),
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
      onFocusChange: createValueChangedGenericClosure<bool>(_inkWell.buildOwner, onFocusChange),
      autofocus: autofocus,
    ),
);
var _inkSplash = MXFunctionInvoke(
    "InkSplash",
    (
      {
      MaterialInkController controller,
      RenderBox referenceBox,
      TextDirection textDirection,
      Offset position,
      Color color,
      bool containedInkWell = false,
      dynamic rectCallback,
      BorderRadius borderRadius,
      ShapeBorder customBorder,
      double radius,
      dynamic onRemoved,
      }
    ) =>
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
      onRemoved: createVoidCallbackClosure(_inkSplash.buildOwner, onRemoved),
    ),
);
var _dividerThemeData = MXFunctionInvoke(
    "DividerThemeData",
    (
      {
      Color color,
      double space,
      double thickness,
      double indent,
      double endIndent,
      }
    ) =>
      DividerThemeData(
      color: color,
      space: space?.toDouble(),
      thickness: thickness?.toDouble(),
      indent: indent?.toDouble(),
      endIndent: endIndent?.toDouble(),
    ),
);
var _dividerTheme = MXFunctionInvoke(
    "DividerTheme",
    (
      {
      Key key,
      DividerThemeData data,
      Widget child,
      }
    ) =>
      DividerTheme(
      key: key,
      data: data,
      child: child,
    ),
);
var _dialogTheme = MXFunctionInvoke(
    "DialogTheme",
    (
      {
      Color backgroundColor,
      double elevation,
      ShapeBorder shape,
      TextStyle titleTextStyle,
      TextStyle contentTextStyle,
      }
    ) =>
      DialogTheme(
      backgroundColor: backgroundColor,
      elevation: elevation?.toDouble(),
      shape: shape,
      titleTextStyle: titleTextStyle,
      contentTextStyle: contentTextStyle,
    ),
);
var _chipTheme = MXFunctionInvoke(
    "ChipTheme",
    (
      {
      Key key,
      ChipThemeData data,
      Widget child,
      }
    ) =>
      ChipTheme(
      key: key,
      data: data,
      child: child,
    ),
);
var _chipThemeData = MXFunctionInvoke(
    "ChipThemeData",
    (
      {
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
      double elevation,
      double pressElevation,
      }
    ) =>
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
var _chipThemeData_fromDefaults = MXFunctionInvoke(
  "chipThemeData.fromDefaults",
    (
      {
      Brightness brightness,
      Color primaryColor,
      Color secondaryColor,
      TextStyle labelStyle,
      }
    ) =>
      ChipThemeData.fromDefaults(
      brightness: brightness,
      primaryColor: primaryColor,
      secondaryColor: secondaryColor,
      labelStyle: labelStyle,
    ),
);
var _cardTheme = MXFunctionInvoke(
    "CardTheme",
    (
      {
      Clip clipBehavior,
      Color color,
      Color shadowColor,
      double elevation,
      EdgeInsetsGeometry margin,
      ShapeBorder shape,
      }
    ) =>
      CardTheme(
      clipBehavior: clipBehavior,
      color: color,
      shadowColor: shadowColor,
      elevation: elevation?.toDouble(),
      margin: margin,
      shape: shape,
    ),
);
var _bottomAppBarTheme = MXFunctionInvoke(
    "BottomAppBarTheme",
    (
      {
      Color color,
      double elevation,
      NotchedShape shape,
      }
    ) =>
      BottomAppBarTheme(
      color: color,
      elevation: elevation?.toDouble(),
      shape: shape,
    ),
);
var _materialBannerThemeData = MXFunctionInvoke(
    "MaterialBannerThemeData",
    (
      {
      Color backgroundColor,
      TextStyle contentTextStyle,
      EdgeInsetsGeometry padding,
      EdgeInsetsGeometry leadingPadding,
      }
    ) =>
      MaterialBannerThemeData(
      backgroundColor: backgroundColor,
      contentTextStyle: contentTextStyle,
      padding: padding,
      leadingPadding: leadingPadding,
    ),
);
var _materialBannerTheme = MXFunctionInvoke(
    "MaterialBannerTheme",
    (
      {
      Key key,
      MaterialBannerThemeData data,
      Widget child,
      }
    ) =>
      MaterialBannerTheme(
      key: key,
      data: data,
      child: child,
    ),
);
var _materialTapTargetSize = MXFunctionInvoke(
    "MaterialTapTargetSize",
    ({Map args}) => MXMaterialTapTargetSize.parse(args),
  );
var _themeData = MXFunctionInvoke(
    "ThemeData",
    (
      {
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
      }
    ) =>
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
var _themeData_from = MXFunctionInvoke(
  "themeData.from",
    (
      {
      ColorScheme colorScheme,
      TextTheme textTheme,
      }
    ) =>
      ThemeData.from(
      colorScheme: colorScheme,
      textTheme: textTheme,
    ),
);
var _themeData_light = MXFunctionInvoke(
  "themeData.light",
    (
    ) =>
      ThemeData.light(
    ),
);
var _themeData_dark = MXFunctionInvoke(
  "themeData.dark",
    (
    ) =>
      ThemeData.dark(
    ),
);
var _themeData_fallback = MXFunctionInvoke(
  "themeData.fallback",
    (
    ) =>
      ThemeData.fallback(
    ),
);
var _themeData_raw = MXFunctionInvoke(
  "themeData.raw",
    (
      {
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
      }
    ) =>
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
var _materialBasedCupertinoThemeData = MXFunctionInvoke(
    "MaterialBasedCupertinoThemeData",
    (
      {
      ThemeData materialTheme,
      }
    ) =>
      MaterialBasedCupertinoThemeData(
      materialTheme: materialTheme,
    ),
);
var _visualDensity = MXFunctionInvoke(
    "VisualDensity",
    (
      {
      double horizontal = 0.0,
      double vertical = 0.0,
      }
    ) =>
      VisualDensity(
      horizontal: horizontal?.toDouble(),
      vertical: vertical?.toDouble(),
    ),
);
var _colorScheme = MXFunctionInvoke(
    "ColorScheme",
    (
      {
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
      }
    ) =>
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
var _colorScheme_fromSwatch = MXFunctionInvoke(
  "colorScheme.fromSwatch",
    (
      {
      MaterialColor primarySwatch,
      Color primaryColorDark,
      Color accentColor,
      Color cardColor,
      Color backgroundColor,
      Color errorColor,
      Brightness brightness = Brightness.light,
      }
    ) =>
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
var _colorScheme_light = MXFunctionInvoke(
  "colorScheme.light",
    (
      {
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
      }
    ) =>
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
var _colorScheme_dark = MXFunctionInvoke(
  "colorScheme.dark",
    (
      {
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
      }
    ) =>
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
var _buttonTextTheme = MXFunctionInvoke(
    "ButtonTextTheme",
    ({Map args}) => MXButtonTextTheme.parse(args),
  );
var _buttonBarLayoutBehavior = MXFunctionInvoke(
    "ButtonBarLayoutBehavior",
    ({Map args}) => MXButtonBarLayoutBehavior.parse(args),
  );
var _buttonTheme = MXFunctionInvoke(
    "ButtonTheme",
    (
      {
      Key key,
      ButtonTextTheme textTheme = ButtonTextTheme.normal,
      ButtonBarLayoutBehavior layoutBehavior = ButtonBarLayoutBehavior.padded,
      double minWidth = 88.0,
      double height = 36.0,
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
      }
    ) =>
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
var _buttonTheme_fromButtonThemeData = MXFunctionInvoke(
  "buttonTheme.fromButtonThemeData",
    (
      {
      Key key,
      ButtonThemeData data,
      Widget child,
      }
    ) =>
      ButtonTheme.fromButtonThemeData(
      key: key,
      data: data,
      child: child,
    ),
);
var _buttonTheme_bar = MXFunctionInvoke(
  "buttonTheme.bar",
    (
      {
      Key key,
      ButtonTextTheme textTheme = ButtonTextTheme.accent,
      double minWidth = 64.0,
      double height = 36.0,
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
      }
    ) =>
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
var _buttonThemeData = MXFunctionInvoke(
    "ButtonThemeData",
    (
      {
      ButtonTextTheme textTheme = ButtonTextTheme.normal,
      double minWidth = 88.0,
      double height = 36.0,
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
      }
    ) =>
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
var _buttonBarThemeData = MXFunctionInvoke(
    "ButtonBarThemeData",
    (
      {
      MainAxisAlignment alignment,
      MainAxisSize mainAxisSize,
      ButtonTextTheme buttonTextTheme,
      double buttonMinWidth,
      double buttonHeight,
      EdgeInsetsGeometry buttonPadding,
      bool buttonAlignedDropdown,
      ButtonBarLayoutBehavior layoutBehavior,
      VerticalDirection overflowDirection,
      }
    ) =>
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
var _buttonBarTheme = MXFunctionInvoke(
    "ButtonBarTheme",
    (
      {
      Key key,
      ButtonBarThemeData data,
      Widget child,
      }
    ) =>
      ButtonBarTheme(
      key: key,
      data: data,
      child: child,
    ),
);
var _buttonBar = MXFunctionInvoke(
    "ButtonBar",
    (
      {
      Key key,
      MainAxisAlignment alignment,
      MainAxisSize mainAxisSize,
      ButtonTextTheme buttonTextTheme,
      double buttonMinWidth,
      double buttonHeight,
      EdgeInsetsGeometry buttonPadding,
      bool buttonAlignedDropdown,
      ButtonBarLayoutBehavior layoutBehavior,
      VerticalDirection overflowDirection,
      double overflowButtonSpacing,
      List<Widget> children,
      }
    ) =>
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
var _bottomSheet = MXFunctionInvoke(
    "BottomSheet",
    (
      {
      Key key,
      AnimationController animationController,
      bool enableDrag = true,
      dynamic onDragStart,
      dynamic onDragEnd,
      Color backgroundColor,
      double elevation,
      ShapeBorder shape,
      Clip clipBehavior,
      dynamic onClosing,
      dynamic builder,
      }
    ) =>
      BottomSheet(
      key: key,
      animationController: animationController,
      enableDrag: enableDrag,
      onDragStart: createValueChangedGenericClosure<DragStartDetails>(_bottomSheet.buildOwner, onDragStart),
      onDragEnd: createValueChangedGenericClosure<DragEndDetails>(_bottomSheet.buildOwner, onDragEnd),
      backgroundColor: backgroundColor,
      elevation: elevation?.toDouble(),
      shape: shape,
      clipBehavior: clipBehavior,
      onClosing: createVoidCallbackClosure(_bottomSheet.buildOwner, onClosing),
      builder: createGenericValueGenericClosure<Widget, BuildContext>(_bottomSheet.buildOwner, builder),
    ),
);
var _scaffoldPrelayoutGeometry = MXFunctionInvoke(
    "ScaffoldPrelayoutGeometry",
    (
      {
      Size bottomSheetSize,
      double contentBottom,
      double contentTop,
      Size floatingActionButtonSize,
      EdgeInsets minInsets,
      Size scaffoldSize,
      Size snackBarSize,
      TextDirection textDirection,
      }
    ) =>
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
var _scaffoldGeometry = MXFunctionInvoke(
    "ScaffoldGeometry",
    (
      {
      double bottomNavigationBarTop,
      Rect floatingActionButtonArea,
      }
    ) =>
      ScaffoldGeometry(
      bottomNavigationBarTop: bottomNavigationBarTop?.toDouble(),
      floatingActionButtonArea: floatingActionButtonArea,
    ),
);
var _scaffold = MXFunctionInvoke(
    "Scaffold",
    (
      {
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
      double drawerEdgeDragWidth,
      bool drawerEnableOpenDragGesture = true,
      bool endDrawerEnableOpenDragGesture = true,
      }
    ) =>
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
var _scaffoldState = MXFunctionInvoke(
    "ScaffoldState",
    (
    ) =>
      ScaffoldState(
    ),
);
var _materialType = MXFunctionInvoke(
    "MaterialType",
    ({Map args}) => MXMaterialType.parse(args),
  );
var _material = MXFunctionInvoke(
    "Material",
    (
      {
      Key key,
      MaterialType type = MaterialType.canvas,
      double elevation = 0.0,
      Color color,
      Color shadowColor,
      TextStyle textStyle,
      BorderRadiusGeometry borderRadius,
      ShapeBorder shape,
      bool borderOnForeground = true,
      Clip clipBehavior = Clip.none,
      Duration animationDuration,
      Widget child,
      }
    ) =>
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
var _shapeBorderTween = MXFunctionInvoke(
    "ShapeBorderTween",
    (
      {
      ShapeBorder begin,
      ShapeBorder end,
      }
    ) =>
      ShapeBorderTween(
      begin: begin,
      end: end,
    ),
);
var _reorderableListView = MXFunctionInvoke(
    "ReorderableListView",
    (
      {
      Key key,
      Widget header,
      List<Widget> children,
      dynamic onReorder,
      ScrollController scrollController,
      Axis scrollDirection = Axis.vertical,
      EdgeInsets padding,
      bool reverse = false,
      }
    ) =>
      ReorderableListView(
      key: key,
      header: header,
      children: children,
      onReorder: null,
      scrollController: scrollController,
      scrollDirection: scrollDirection,
      padding: padding,
      reverse: reverse,
    ),
);
var _defaultMaterialLocalizations = MXFunctionInvoke(
    "DefaultMaterialLocalizations",
    (
    ) =>
      DefaultMaterialLocalizations(
    ),
);
var _theme = MXFunctionInvoke(
    "Theme",
    (
      {
      Key key,
      ThemeData data,
      bool isMaterialAppTheme = false,
      Widget child,
      }
    ) =>
      Theme(
      key: key,
      data: data,
      isMaterialAppTheme: isMaterialAppTheme,
      child: child,
    ),
);
var _themeDataTween = MXFunctionInvoke(
    "ThemeDataTween",
    (
      {
      ThemeData begin,
      ThemeData end,
      }
    ) =>
      ThemeDataTween(
      begin: begin,
      end: end,
    ),
);
var _animatedTheme = MXFunctionInvoke(
    "AnimatedTheme",
    (
      {
      Key key,
      ThemeData data,
      bool isMaterialAppTheme = false,
      Curve curve,
      Duration duration,
      dynamic onEnd,
      Widget child,
      }
    ) =>
      AnimatedTheme(
      key: key,
      data: data,
      isMaterialAppTheme: isMaterialAppTheme,
      curve: curve,
      duration: duration,
      onEnd: createVoidCallbackClosure(_animatedTheme.buildOwner, onEnd),
      child: child,
    ),
);
var _appBarTheme = MXFunctionInvoke(
    "AppBarTheme",
    (
      {
      Brightness brightness,
      Color color,
      double elevation,
      IconThemeData iconTheme,
      IconThemeData actionsIconTheme,
      TextTheme textTheme,
      }
    ) =>
      AppBarTheme(
      brightness: brightness,
      color: color,
      elevation: elevation?.toDouble(),
      iconTheme: iconTheme,
      actionsIconTheme: actionsIconTheme,
      textTheme: textTheme,
    ),
);
var _appBar = MXFunctionInvoke(
    "AppBar",
    (
      {
      Key key,
      Widget leading,
      bool automaticallyImplyLeading = true,
      Widget title,
      List<Widget> actions,
      Widget flexibleSpace,
      PreferredSizeWidget bottom,
      double elevation,
      ShapeBorder shape,
      Color backgroundColor,
      Brightness brightness,
      IconThemeData iconTheme,
      IconThemeData actionsIconTheme,
      TextTheme textTheme,
      bool primary = true,
      bool centerTitle,
      bool excludeHeaderSemantics = false,
      double titleSpacing = 16.0,
      double toolbarOpacity = 1.0,
      double bottomOpacity = 1.0,
      }
    ) =>
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
var _sliverAppBar = MXFunctionInvoke(
    "SliverAppBar",
    (
      {
      Key key,
      Widget leading,
      bool automaticallyImplyLeading = true,
      Widget title,
      List<Widget> actions,
      Widget flexibleSpace,
      PreferredSizeWidget bottom,
      double elevation,
      bool forceElevated = false,
      Color backgroundColor,
      Brightness brightness,
      IconThemeData iconTheme,
      IconThemeData actionsIconTheme,
      TextTheme textTheme,
      bool primary = true,
      bool centerTitle,
      bool excludeHeaderSemantics = false,
      double titleSpacing = 16.0,
      double expandedHeight,
      bool floating = false,
      bool pinned = false,
      bool snap = false,
      bool stretch = false,
      double stretchTriggerOffset = 100.0,
      dynamic onStretchTrigger,
      ShapeBorder shape,
      }
    ) =>
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
