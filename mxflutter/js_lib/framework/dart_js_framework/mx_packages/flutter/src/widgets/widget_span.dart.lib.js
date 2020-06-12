//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

'use strict';

let frameworkExports = require("./js_flutter_framework.js");
let basicExports = require("./js_flutter_basic_types.js");
let materialExports = require("./js_flutter_material.js");
let layoutExports = require("./js_flutter_layout.js");
let textExports = require("./js_flutter_text.js");
let imageExports = require("./js_flutter_image.js");
let animationExports = require("./js_flutter_animation.js");

let src__widgets__framework = Object.create(null);
src__widgets__framework.StatefulWidget = frameworkExports.MXJSStatefulWidget;
src__widgets__framework.StatelessWidget  = frameworkExports.MXJSStatelessWidget;
// src__widgets__framework.Widget = frameworkExports.MXJSStatefulWidget;
src__widgets__framework.Widget = basicExports.DartClass;
src__widgets__framework.State$ = function(opt) {
    return frameworkExports.MXJSWidgetState;
};
src__widgets__framework.GlobalKey$ = function(opt) {
    return frameworkExports.GlobalKey;
};
exports.src__widgets__framework = src__widgets__framework;

let src__widgets__text = Object.create(null);
src__widgets__text.Text = textExports.Text;
src__widgets__text.DefaultTextStyle = textExports.DefaultTextStyle;
exports.src__widgets__text = src__widgets__text;

let src__widgets__basic = Object.create(null);
src__widgets__basic.Center = layoutExports.Center;
src__widgets__basic.Column = layoutExports.Column;
src__widgets__basic.Padding = layoutExports.Padding;
src__widgets__basic.Align = layoutExports.Align;
src__widgets__basic.FittedBox = layoutExports.FittedBox;
src__widgets__basic.AspectRatio = layoutExports.AspectRatio;
src__widgets__basic.ConstrainedBox = layoutExports.ConstrainedBox;
src__widgets__basic.Baseline = layoutExports.Baseline;
src__widgets__basic.FractionallySizedBox = layoutExports.FractionallySizedBox;
src__widgets__basic.IntrinsicHeight = layoutExports.IntrinsicHeight;
src__widgets__basic.IntrinsicWidth = layoutExports.IntrinsicWidth;
src__widgets__basic.LimitedBox = layoutExports.LimitedBox;
src__widgets__basic.Offstage = layoutExports.Offstage;
src__widgets__basic.SizedBox = layoutExports.SizedBox;
src__widgets__basic.OverflowBox = layoutExports.OverflowBox;
src__widgets__basic.SizedOverflowBox = layoutExports.SizedOverflowBox;
src__widgets__basic.Transform = layoutExports.Transform;
src__widgets__basic.CustomSingleChildLayout = layoutExports.CustomSingleChildLayout;
src__widgets__basic.Row = layoutExports.Row;
src__widgets__basic.Stack = layoutExports.Stack;
src__widgets__basic.IndexedStack = layoutExports.IndexedStack;
src__widgets__basic.Flow = layoutExports.Flow;
src__widgets__basic.Wrap = layoutExports.Wrap;
src__widgets__basic.ListBody = layoutExports.ListBody;
src__widgets__basic.CustomMultiChildLayout = layoutExports.CustomMultiChildLayout;
src__widgets__basic.SliverPadding = layoutExports.SliverPadding;
src__widgets__basic.Expanded = layoutExports.Expanded;
src__widgets__basic.RichText = textExports.RichText;
src__widgets__basic.MergeSemantics = materialExports.MergeSemantics;
src__widgets__basic.Semantics = materialExports.Semantics;
src__widgets__basic.Builder = materialExports.Builder;
src__widgets__basic.Positioned = basicExports.Positioned;
src__widgets__basic.Opacity = basicExports.Opacity;
src__widgets__basic.SliverToBoxAdapter = layoutExports.SliverToBoxAdapter;
src__widgets__basic.ClipRRect = basicExports.ClipRRect;
exports.src__widgets__basic = src__widgets__basic;

let src__widgets__editable_text = Object.create(null);
src__widgets__editable_text.TextEditingController = textExports.TextEditingController;
exports.src__widgets__editable_text = src__widgets__editable_text;

let src__widgets__table = Object.create(null);
src__widgets__table.Table = layoutExports.Table;
src__widgets__table.TableCell = layoutExports.TableCell;
src__widgets__table.Table$ = function() {
    return layoutExports.Table;
};
src__widgets__table.TableRow = basicExports.TableRow;
exports.src__widgets__table = src__widgets__table;

let src__widgets__sliver = Object.create(null);
src__widgets__sliver.SliverGrid = layoutExports.SliverGrid;
src__widgets__sliver.SliverList = layoutExports.SliverList;
src__widgets__sliver.SliverFixedExtentList = layoutExports.SliverFixedExtentList;
src__widgets__sliver.SliverChildListDelegate = layoutExports.SliverChildListDelegate;
src__widgets__sliver.SliverChildBuilderDelegate = layoutExports.SliverChildBuilderDelegate;
exports.src__widgets__sliver = src__widgets__sliver;

let src__widgets__gesture_detector = Object.create(null);
src__widgets__gesture_detector.GestureDetector  = layoutExports.GestureDetector;
exports.src__widgets__gesture_detector = src__widgets__gesture_detector;

let src__widgets__container = Object.create(null);
src__widgets__container.DecoratedBox  = layoutExports.DecoratedBox;
src__widgets__container.Container  = layoutExports.Container;
exports.src__widgets__container = src__widgets__container;

let src__widgets__image = Object.create(null);
src__widgets__image.Image = imageExports.Image;
exports.src__widgets__image = src__widgets__image;

let src__widgets__media_query = Object.create(null);
src__widgets__media_query.MediaQuery = frameworkExports.MediaQuery;
src__widgets__media_query.MediaQueryData = frameworkExports.MediaQueryData;
exports.src__widgets__media_query = src__widgets__media_query;

let src__widgets__scroll_controller = Object.create(null);
src__widgets__scroll_controller.ScrollController = layoutExports.ScrollController;
exports.src__widgets__scroll_controller = src__widgets__scroll_controller;

let src__widgets__scroll_physics = Object.create(null);
src__widgets__scroll_physics.ScrollPhysics = layoutExports.ScrollPhysics;
src__widgets__scroll_physics.ClampingScrollPhysics = layoutExports.ClampingScrollPhysics;
src__widgets__scroll_physics.AlwaysScrollableScrollPhysics = layoutExports.AlwaysScrollableScrollPhysics;
src__widgets__scroll_physics.NeverScrollableScrollPhysics = layoutExports.NeverScrollableScrollPhysics;
exports.src__widgets__scroll_physics = src__widgets__scroll_physics;

let src__widgets__transitions = Object.create(null);
src__widgets__transitions.AnimatedBuilder = animationExports.AnimatedBuilder;
src__widgets__transitions.FadeTransition = animationExports.FadeTransition;
src__widgets__transitions.SlideTransition = animationExports.SlideTransition;
exports.src__widgets__transitions = src__widgets__transitions;

let src__widgets__widget_inspector = Object.create(null);
exports.src__widgets__widget_inspector = src__widgets__widget_inspector;

let src__widgets__navigator = Object.create(null);
src__widgets__navigator.Navigator = materialExports.Navigator;
src__widgets__navigator.RouteSettings = materialExports.RouteSettings;
exports.src__widgets__navigator = src__widgets__navigator;

let src__widgets__notification_listener = Object.create(null);
src__widgets__notification_listener.NotificationListener = basicExports.NotificationListener;
src__widgets__notification_listener.NotificationListener$ = function() {
    return basicExports.NotificationListener;
};
src__widgets__notification_listener.Notification = basicExports.Notification;
exports.src__widgets__notification_listener = src__widgets__notification_listener;