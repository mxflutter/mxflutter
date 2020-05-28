//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

const dart_sdk = require('dart_sdk');
const dart = dart_sdk.dart;

let frameworkExports = require("./js_flutter_framework.js");
let basicExports = require("./js_flutter_basic_types.js");
let materialExports = require("./js_flutter_material.js");
let layoutExports = require("./js_flutter_layout.js");

let textExports = require("./js_flutter_text.js");
let imageExports = require("./js_flutter_image.js");
let animationExports = require("./js_flutter_animation.js");


let src__material__theme_data = Object.create(null);
src__material__theme_data.ThemeData = frameworkExports.ThemeData;
src__material__theme_data.MaterialTapTargetSize = materialExports.MaterialTapTargetSize;
exports.src__material__theme_data = src__material__theme_data;

let src__material__scaffold = Object.create(null);
src__material__scaffold.Scaffold = materialExports.Scaffold;
src__material__scaffold.ScaffoldState = materialExports.ScaffoldState;
exports.src__material__scaffold = src__material__scaffold;

let src__material__app_bar = Object.create(null);
src__material__app_bar.AppBar = materialExports.AppBar;
src__material__app_bar.SliverAppBar = layoutExports.SliverAppBar;
exports.src__material__app_bar = src__material__app_bar;

let src__material__theme = Object.create(null);
src__material__theme.Theme = frameworkExports.Theme;
exports.src__material__theme = src__material__theme;

let src__material__floating_action_button = Object.create(null);
src__material__floating_action_button.FloatingActionButton = materialExports.FloatingActionButton;
exports.src__material__floating_action_button = src__material__floating_action_button;

let src__material__flat_button = Object.create(null);
src__material__flat_button.FlatButton = materialExports.FlatButton;
src__material__flat_button._FlatButtonWithIcon = materialExports.FlatButtonWithIcon;
exports.src__material__flat_button = src__material__flat_button;

let src__material__raised_button = Object.create(null);
src__material__raised_button.RaisedButton = materialExports.RaisedButton;
src__material__raised_button._RaisedButtonWithIcon = materialExports.RaisedButtonWithIcon;
exports.src__material__raised_button = src__material__raised_button;

let src__material__icon_button = Object.create(null);
src__material__icon_button.IconButton = materialExports.IconButton;
exports.src__material__icon_button = src__material__icon_button;

let src__material__button_bar = Object.create(null);
src__material__button_bar.ButtonBar = materialExports.ButtonBar;
exports.src__material__button_bar = src__material__button_bar;

let src__material__flexible_space_bar = Object.create(null);
src__material__flexible_space_bar.FlexibleSpaceBar = materialExports.FlexibleSpaceBar;
src__material__flexible_space_bar.StretchMode = materialExports.StretchMode;
src__material__flexible_space_bar.CollapseMode = materialExports.CollapseMode;
exports.src__material__flexible_space_bar = src__material__flexible_space_bar;

let src__material__button = Object.create(null);
src__material__button.RawMaterialButton = materialExports.RawMaterialButton;
exports.src__material__button = src__material__button;

let src__material__tabs = Object.create(null);
src__material__tabs.TabBar = materialExports.TabBar;
src__material__tabs.Tab = materialExports.Tab;
src__material__tabs.TabBarView = materialExports.TabBarView;
src__material__tabs.TabBarIndicatorSize = basicExports.TabBarIndicatorSize;
exports.src__material__tabs = src__material__tabs;

let src__material__list_tile = Object.create(null);
src__material__list_tile.ListTile = layoutExports.ListTile;
exports.src__material__list_tile = src__material__list_tile;

let src__material__input_decorator = Object.create(null);
src__material__input_decorator.InputDecorationTheme = basicExports.InputDecorationTheme;
src__material__input_decorator.InputDecoration = textExports.InputDecoration;
exports.src__material__input_decorator = src__material__input_decorator;

let src__material__floating_action_button_location = Object.create(null);
src__material__floating_action_button_location.FloatingActionButtonLocation = basicExports.FloatingActionButtonLocation;
exports.src__material__floating_action_button_location = src__material__floating_action_button_location;

let src__material__button_theme = Object.create(null);
src__material__button_theme.ButtonTextTheme = basicExports.ButtonTextTheme;
exports.src__material__button_theme = src__material__button_theme;

let src__material__material = Object.create(null);
src__material__material.Material = materialExports.Material;
exports.src__material__material = src__material__material;