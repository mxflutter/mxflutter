'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const ui = dart_sdk.ui;
const _interceptors = dart_sdk._interceptors;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const editable_text = packages__flutter__src__widgets__actions.src__widgets__editable_text;
const navigator = packages__flutter__src__widgets__actions.src__widgets__navigator;
const widget_inspector = packages__flutter__src__widgets__actions.src__widgets__widget_inspector;
const safe_area = packages__flutter__src__widgets__actions.src__widgets__safe_area;
const scroll_view = packages__flutter__src__widgets__actions.src__widgets__scroll_view;
const basic = packages__flutter__src__widgets__actions.src__widgets__basic;
const image = packages__flutter__src__widgets__actions.src__widgets__image;
const text = packages__flutter__src__widgets__actions.src__widgets__text;
const container = packages__flutter__src__widgets__actions.src__widgets__container;
const packages__flutter__material = require('packages/flutter/material');
const scaffold = packages__flutter__material.src__material__scaffold;
const app_bar = packages__flutter__material.src__material__app_bar;
const colors = packages__flutter__material.src__material__colors;
const icon_button = packages__flutter__material.src__material__icon_button;
const back_button = packages__flutter__material.src__material__back_button;
const material_localizations = packages__flutter__material.src__material__material_localizations;
const theme = packages__flutter__material.src__material__theme;
const text_field = packages__flutter__material.src__material__text_field;
const input_decorator = packages__flutter__material.src__material__input_decorator;
const button_bar = packages__flutter__material.src__material__button_bar;
const flat_button = packages__flutter__material.src__material__flat_button;
const raised_button = packages__flutter__material.src__material__raised_button;
const packages__flutter__src__painting___network_image_web = require('packages/flutter/src/painting/_network_image_web');
const edge_insets = packages__flutter__src__painting___network_image_web.src__painting__edge_insets;
const beveled_rectangle_border = packages__flutter__src__painting___network_image_web.src__painting__beveled_rectangle_border;
const border_radius = packages__flutter__src__painting___network_image_web.src__painting__border_radius;
const borders = packages__flutter__src__painting___network_image_web.src__painting__borders;
const shape_decoration = packages__flutter__src__painting___network_image_web.src__painting__shape_decoration;
const packages__flutter_gallery__demo__shrine__colors = require('packages/flutter_gallery/demo/shrine/colors');
const colors$ = packages__flutter_gallery__demo__shrine__colors.demo__shrine__colors;
const login = Object.create(dart.library);
let VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
let JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C0() {
    return C0 = dart.const({
      __proto__: back_button.BackButtonIcon.prototype,
      [Widget_key]: null
    });
  },
  get C12() {
    return C12 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 24,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 24
    });
  },
  get C13() {
    return C13 = dart.const({
      __proto__: basic.SizedBox.prototype,
      [Widget_key]: null,
      [SingleChildRenderObjectWidget_child]: null,
      [SizedBox_height]: 80,
      [SizedBox_width]: null
    });
  },
  get C17() {
    return C17 = dart.const({
      __proto__: basic.SizedBox.prototype,
      [Widget_key]: null,
      [SingleChildRenderObjectWidget_child]: null,
      [SizedBox_height]: 16,
      [SizedBox_width]: null
    });
  },
  get C25() {
    return C25 = dart.const({
      __proto__: basic.SizedBox.prototype,
      [Widget_key]: null,
      [SingleChildRenderObjectWidget_child]: null,
      [SizedBox_height]: 120,
      [SizedBox_width]: null
    });
  },
  get C26() {
    return C26 = dart.const({
      __proto__: input_decorator.InputDecoration.prototype,
      [InputDecoration_alignLabelWithHint]: null,
      [InputDecoration_semanticCounterText]: null,
      [InputDecoration_enabled]: true,
      [InputDecoration_border]: null,
      [InputDecoration_enabledBorder]: null,
      [InputDecoration_disabledBorder]: null,
      [InputDecoration_focusedErrorBorder]: null,
      [InputDecoration_focusedBorder]: null,
      [InputDecoration_errorBorder]: null,
      [InputDecoration_hoverColor]: null,
      [InputDecoration_focusColor]: null,
      [InputDecoration_fillColor]: null,
      [InputDecoration_filled]: null,
      [InputDecoration_counterStyle]: null,
      [InputDecoration_counter]: null,
      [InputDecoration_counterText]: null,
      [InputDecoration_suffixStyle]: null,
      [InputDecoration_suffixText]: null,
      [InputDecoration_suffix]: null,
      [InputDecoration_suffixIcon]: null,
      [InputDecoration_prefixStyle]: null,
      [InputDecoration_prefixText]: null,
      [InputDecoration_prefix]: null,
      [InputDecoration_prefixIcon]: null,
      [InputDecoration_isCollapsed]: false,
      [InputDecoration_contentPadding]: null,
      [InputDecoration_isDense]: null,
      [InputDecoration_hasFloatingPlaceholder]: true,
      [InputDecoration_errorMaxLines]: null,
      [InputDecoration_errorStyle]: null,
      [InputDecoration_errorText]: null,
      [InputDecoration_hintMaxLines]: null,
      [InputDecoration_hintStyle]: null,
      [InputDecoration_hintText]: null,
      [InputDecoration_helperMaxLines]: null,
      [InputDecoration_helperStyle]: null,
      [InputDecoration_helperText]: null,
      [InputDecoration_labelStyle]: null,
      [InputDecoration_labelText]: "Username",
      [InputDecoration_icon]: null
    });
  },
  get C39() {
    return C39 = dart.const({
      __proto__: basic.SizedBox.prototype,
      [Widget_key]: null,
      [SingleChildRenderObjectWidget_child]: null,
      [SizedBox_height]: 12,
      [SizedBox_width]: null
    });
  },
  get C40() {
    return C40 = dart.const({
      __proto__: input_decorator.InputDecoration.prototype,
      [InputDecoration_alignLabelWithHint]: null,
      [InputDecoration_semanticCounterText]: null,
      [InputDecoration_enabled]: true,
      [InputDecoration_border]: null,
      [InputDecoration_enabledBorder]: null,
      [InputDecoration_disabledBorder]: null,
      [InputDecoration_focusedErrorBorder]: null,
      [InputDecoration_focusedBorder]: null,
      [InputDecoration_errorBorder]: null,
      [InputDecoration_hoverColor]: null,
      [InputDecoration_focusColor]: null,
      [InputDecoration_fillColor]: null,
      [InputDecoration_filled]: null,
      [InputDecoration_counterStyle]: null,
      [InputDecoration_counter]: null,
      [InputDecoration_counterText]: null,
      [InputDecoration_suffixStyle]: null,
      [InputDecoration_suffixText]: null,
      [InputDecoration_suffix]: null,
      [InputDecoration_suffixIcon]: null,
      [InputDecoration_prefixStyle]: null,
      [InputDecoration_prefixText]: null,
      [InputDecoration_prefix]: null,
      [InputDecoration_prefixIcon]: null,
      [InputDecoration_isCollapsed]: false,
      [InputDecoration_contentPadding]: null,
      [InputDecoration_isDense]: null,
      [InputDecoration_hasFloatingPlaceholder]: true,
      [InputDecoration_errorMaxLines]: null,
      [InputDecoration_errorStyle]: null,
      [InputDecoration_errorText]: null,
      [InputDecoration_hintMaxLines]: null,
      [InputDecoration_hintStyle]: null,
      [InputDecoration_hintText]: null,
      [InputDecoration_helperMaxLines]: null,
      [InputDecoration_helperStyle]: null,
      [InputDecoration_helperText]: null,
      [InputDecoration_labelStyle]: null,
      [InputDecoration_labelText]: "Password",
      [InputDecoration_icon]: null
    });
  },
  get C53() {
    return C53 = dart.const({
      __proto__: text.Text.prototype,
      [Widget_key]: null,
      [Text_textWidthBasis]: null,
      [Text_semanticsLabel]: null,
      [Text_maxLines]: null,
      [Text_textScaleFactor]: null,
      [Text_overflow]: null,
      [Text_softWrap]: null,
      [Text_locale]: null,
      [Text_textDirection]: null,
      [Text_textAlign]: null,
      [Text_strutStyle]: null,
      [Text_style]: null,
      [Text_textSpan]: null,
      [Text_data]: "CANCEL"
    });
  },
  get C56() {
    return C56 = dart.const({
      __proto__: ui.Radius.prototype,
      [Radius_y]: 7,
      [Radius_x]: 7
    });
  },
  get C55() {
    return C55 = dart.const({
      __proto__: border_radius.BorderRadius.prototype,
      [BorderRadius_bottomRight]: C56 || CT.C56,
      [BorderRadius_bottomLeft]: C56 || CT.C56,
      [BorderRadius_topRight]: C56 || CT.C56,
      [BorderRadius_topLeft]: C56 || CT.C56
    });
  },
  get C58() {
    return C58 = dart.const({
      __proto__: borders.BorderStyle.prototype,
      [_name]: "BorderStyle.none",
      index: 0
    });
  },
  get C59() {
    return C59 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4278190080.0
    });
  },
  get C57() {
    return C57 = dart.const({
      __proto__: borders.BorderSide.prototype,
      [BorderSide_style]: C58 || CT.C58,
      [BorderSide_width]: 0,
      [BorderSide_color]: C59 || CT.C59
    });
  },
  get C54() {
    return C54 = dart.const({
      __proto__: beveled_rectangle_border.BeveledRectangleBorder.prototype,
      [BeveledRectangleBorder_borderRadius]: C55 || CT.C55,
      [BeveledRectangleBorder_side]: C57 || CT.C57
    });
  },
  get C65() {
    return C65 = dart.const({
      __proto__: text.Text.prototype,
      [Widget_key]: null,
      [Text_textWidthBasis]: null,
      [Text_semanticsLabel]: null,
      [Text_maxLines]: null,
      [Text_textScaleFactor]: null,
      [Text_overflow]: null,
      [Text_softWrap]: null,
      [Text_locale]: null,
      [Text_textDirection]: null,
      [Text_textAlign]: null,
      [Text_strutStyle]: null,
      [Text_style]: null,
      [Text_textSpan]: null,
      [Text_data]: "NEXT"
    });
  },
  get C92() {
    return C92 = dart.const({
      __proto__: borders.BorderStyle.prototype,
      [_name]: "BorderStyle.solid",
      index: 1
    });
  },
  get C93() {
    return C93 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4282657581.0
    });
  },
  get C91() {
    return C91 = dart.const({
      __proto__: borders.BorderSide.prototype,
      [BorderSide_style]: C92 || CT.C92,
      [BorderSide_width]: 0.5,
      [BorderSide_color]: C93 || CT.C93
    });
  },
  get C90() {
    return C90 = dart.const({
      __proto__: beveled_rectangle_border.BeveledRectangleBorder.prototype,
      [BeveledRectangleBorder_borderRadius]: C55 || CT.C55,
      [BeveledRectangleBorder_side]: C91 || CT.C91
    });
  },
  get C89() {
    return C89 = dart.const({
      __proto__: shape_decoration.ShapeDecoration.prototype,
      [ShapeDecoration_shape]: C90 || CT.C90,
      [ShapeDecoration_shadows]: null,
      [ShapeDecoration_image]: null,
      [ShapeDecoration_gradient]: null,
      [ShapeDecoration_color]: null
    });
  }
});
login.LoginPage = class LoginPage extends framework.StatefulWidget {
  createState() {
    return new login._LoginPageState.new();
  }
};
(login.LoginPage.new = function(opts) {
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  login.LoginPage.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = login.LoginPage.prototype;
dart.addTypeTests(login.LoginPage);
dart.setMethodSignature(login.LoginPage, () => ({
  __proto__: dart.getMethods(login.LoginPage.__proto__),
  createState: dart.fnType(login._LoginPageState, [])
}));
dart.setLibraryUri(login.LoginPage, "package:flutter_gallery/demo/shrine/login.dart");
const _usernameController = dart.privateName(login, "_usernameController");
const _passwordController = dart.privateName(login, "_passwordController");
const Widget_key = dart.privateName(framework, "Widget.key");
let C0;
const _Location_parameterLocations = dart.privateName(widget_inspector, "_Location.parameterLocations");
const _Location_name = dart.privateName(widget_inspector, "_Location.name");
const _Location_column = dart.privateName(widget_inspector, "_Location.column");
const _Location_line = dart.privateName(widget_inspector, "_Location.line");
const _Location_file = dart.privateName(widget_inspector, "_Location.file");
const EdgeInsets_bottom = dart.privateName(edge_insets, "EdgeInsets.bottom");
const EdgeInsets_right = dart.privateName(edge_insets, "EdgeInsets.right");
const EdgeInsets_top = dart.privateName(edge_insets, "EdgeInsets.top");
const EdgeInsets_left = dart.privateName(edge_insets, "EdgeInsets.left");
let C12;
const SingleChildRenderObjectWidget_child = dart.privateName(framework, "SingleChildRenderObjectWidget.child");
const SizedBox_height = dart.privateName(basic, "SizedBox.height");
const SizedBox_width = dart.privateName(basic, "SizedBox.width");
let C13;
let C17;
let C25;
const InputDecoration_alignLabelWithHint = dart.privateName(input_decorator, "InputDecoration.alignLabelWithHint");
const InputDecoration_semanticCounterText = dart.privateName(input_decorator, "InputDecoration.semanticCounterText");
const InputDecoration_enabled = dart.privateName(input_decorator, "InputDecoration.enabled");
const InputDecoration_border = dart.privateName(input_decorator, "InputDecoration.border");
const InputDecoration_enabledBorder = dart.privateName(input_decorator, "InputDecoration.enabledBorder");
const InputDecoration_disabledBorder = dart.privateName(input_decorator, "InputDecoration.disabledBorder");
const InputDecoration_focusedErrorBorder = dart.privateName(input_decorator, "InputDecoration.focusedErrorBorder");
const InputDecoration_focusedBorder = dart.privateName(input_decorator, "InputDecoration.focusedBorder");
const InputDecoration_errorBorder = dart.privateName(input_decorator, "InputDecoration.errorBorder");
const InputDecoration_hoverColor = dart.privateName(input_decorator, "InputDecoration.hoverColor");
const InputDecoration_focusColor = dart.privateName(input_decorator, "InputDecoration.focusColor");
const InputDecoration_fillColor = dart.privateName(input_decorator, "InputDecoration.fillColor");
const InputDecoration_filled = dart.privateName(input_decorator, "InputDecoration.filled");
const InputDecoration_counterStyle = dart.privateName(input_decorator, "InputDecoration.counterStyle");
const InputDecoration_counter = dart.privateName(input_decorator, "InputDecoration.counter");
const InputDecoration_counterText = dart.privateName(input_decorator, "InputDecoration.counterText");
const InputDecoration_suffixStyle = dart.privateName(input_decorator, "InputDecoration.suffixStyle");
const InputDecoration_suffixText = dart.privateName(input_decorator, "InputDecoration.suffixText");
const InputDecoration_suffix = dart.privateName(input_decorator, "InputDecoration.suffix");
const InputDecoration_suffixIcon = dart.privateName(input_decorator, "InputDecoration.suffixIcon");
const InputDecoration_prefixStyle = dart.privateName(input_decorator, "InputDecoration.prefixStyle");
const InputDecoration_prefixText = dart.privateName(input_decorator, "InputDecoration.prefixText");
const InputDecoration_prefix = dart.privateName(input_decorator, "InputDecoration.prefix");
const InputDecoration_prefixIcon = dart.privateName(input_decorator, "InputDecoration.prefixIcon");
const InputDecoration_isCollapsed = dart.privateName(input_decorator, "InputDecoration.isCollapsed");
const InputDecoration_contentPadding = dart.privateName(input_decorator, "InputDecoration.contentPadding");
const InputDecoration_isDense = dart.privateName(input_decorator, "InputDecoration.isDense");
const InputDecoration_hasFloatingPlaceholder = dart.privateName(input_decorator, "InputDecoration.hasFloatingPlaceholder");
const InputDecoration_errorMaxLines = dart.privateName(input_decorator, "InputDecoration.errorMaxLines");
const InputDecoration_errorStyle = dart.privateName(input_decorator, "InputDecoration.errorStyle");
const InputDecoration_errorText = dart.privateName(input_decorator, "InputDecoration.errorText");
const InputDecoration_hintMaxLines = dart.privateName(input_decorator, "InputDecoration.hintMaxLines");
const InputDecoration_hintStyle = dart.privateName(input_decorator, "InputDecoration.hintStyle");
const InputDecoration_hintText = dart.privateName(input_decorator, "InputDecoration.hintText");
const InputDecoration_helperMaxLines = dart.privateName(input_decorator, "InputDecoration.helperMaxLines");
const InputDecoration_helperStyle = dart.privateName(input_decorator, "InputDecoration.helperStyle");
const InputDecoration_helperText = dart.privateName(input_decorator, "InputDecoration.helperText");
const InputDecoration_labelStyle = dart.privateName(input_decorator, "InputDecoration.labelStyle");
const InputDecoration_labelText = dart.privateName(input_decorator, "InputDecoration.labelText");
const InputDecoration_icon = dart.privateName(input_decorator, "InputDecoration.icon");
let C26;
let C39;
let C40;
const Text_textWidthBasis = dart.privateName(text, "Text.textWidthBasis");
const Text_semanticsLabel = dart.privateName(text, "Text.semanticsLabel");
const Text_maxLines = dart.privateName(text, "Text.maxLines");
const Text_textScaleFactor = dart.privateName(text, "Text.textScaleFactor");
const Text_overflow = dart.privateName(text, "Text.overflow");
const Text_softWrap = dart.privateName(text, "Text.softWrap");
const Text_locale = dart.privateName(text, "Text.locale");
const Text_textDirection = dart.privateName(text, "Text.textDirection");
const Text_textAlign = dart.privateName(text, "Text.textAlign");
const Text_strutStyle = dart.privateName(text, "Text.strutStyle");
const Text_style = dart.privateName(text, "Text.style");
const Text_textSpan = dart.privateName(text, "Text.textSpan");
const Text_data = dart.privateName(text, "Text.data");
let C53;
const Radius_y = dart.privateName(ui, "Radius.y");
const Radius_x = dart.privateName(ui, "Radius.x");
let C56;
const BorderRadius_bottomRight = dart.privateName(border_radius, "BorderRadius.bottomRight");
const BorderRadius_bottomLeft = dart.privateName(border_radius, "BorderRadius.bottomLeft");
const BorderRadius_topRight = dart.privateName(border_radius, "BorderRadius.topRight");
const BorderRadius_topLeft = dart.privateName(border_radius, "BorderRadius.topLeft");
let C55;
const BeveledRectangleBorder_borderRadius = dart.privateName(beveled_rectangle_border, "BeveledRectangleBorder.borderRadius");
const _name = dart.privateName(borders, "_name");
let C58;
const BorderSide_style = dart.privateName(borders, "BorderSide.style");
const BorderSide_width = dart.privateName(borders, "BorderSide.width");
const Color_value = dart.privateName(ui, "Color.value");
let C59;
const BorderSide_color = dart.privateName(borders, "BorderSide.color");
let C57;
const BeveledRectangleBorder_side = dart.privateName(beveled_rectangle_border, "BeveledRectangleBorder.side");
let C54;
let C65;
let C92;
let C93;
let C91;
let C90;
const ShapeDecoration_shape = dart.privateName(shape_decoration, "ShapeDecoration.shape");
const ShapeDecoration_shadows = dart.privateName(shape_decoration, "ShapeDecoration.shadows");
const ShapeDecoration_image = dart.privateName(shape_decoration, "ShapeDecoration.image");
const ShapeDecoration_gradient = dart.privateName(shape_decoration, "ShapeDecoration.gradient");
const ShapeDecoration_color = dart.privateName(shape_decoration, "ShapeDecoration.color");
let C89;
login._LoginPageState = class _LoginPageState extends framework.State$(login.LoginPage) {
  build(context) {
    return new scaffold.Scaffold.new({appBar: new app_bar.AppBar.new({elevation: 0.0, backgroundColor: colors.Colors.white, brightness: ui.Brightness.light, leading: new icon_button.IconButton.new({icon: C0 || CT.C0, tooltip: material_localizations.MaterialLocalizations.of(context).backButtonTooltip, onPressed: dart.fn(() => {
            navigator.Navigator.of(context, {rootNavigator: true}).pop(core.Object);
          }, VoidToNull()), $creationLocationd_0dea112b090073317d4: C1 || CT.C1}), $creationLocationd_0dea112b090073317d4: C6 || CT.C6}), body: new safe_area.SafeArea.new({child: new scroll_view.ListView.new({padding: C12 || CT.C12, children: JSArrayOfWidget().of([C13 || CT.C13, new basic.Column.new({children: JSArrayOfWidget().of([new image.Image.asset("packages/shrine_images/diamond.png", {$creationLocationd_0dea112b090073317d4: C14 || CT.C14}), C17 || CT.C17, new text.Text.new("SHRINE", {style: theme.Theme.of(context).textTheme.headline, $creationLocationd_0dea112b090073317d4: C18 || CT.C18})]), $creationLocationd_0dea112b090073317d4: C22 || CT.C22}), C25 || CT.C25, new login.PrimaryColorOverride.new({color: colors$.kShrineBrown900, child: new container.Container.new({decoration: login._LoginPageState._decoration, child: new text_field.TextField.new({controller: this[_usernameController], decoration: C26 || CT.C26, $creationLocationd_0dea112b090073317d4: C27 || CT.C27}), $creationLocationd_0dea112b090073317d4: C31 || CT.C31}), $creationLocationd_0dea112b090073317d4: C35 || CT.C35}), C39 || CT.C39, new login.PrimaryColorOverride.new({color: colors$.kShrineBrown900, child: new container.Container.new({decoration: login._LoginPageState._decoration, child: new text_field.TextField.new({controller: this[_passwordController], decoration: C40 || CT.C40, $creationLocationd_0dea112b090073317d4: C41 || CT.C41}), $creationLocationd_0dea112b090073317d4: C45 || CT.C45}), $creationLocationd_0dea112b090073317d4: C49 || CT.C49}), new basic.Wrap.new({children: JSArrayOfWidget().of([new button_bar.ButtonBar.new({children: JSArrayOfWidget().of([new flat_button.FlatButton.new({child: C53 || CT.C53, shape: C54 || CT.C54, onPressed: dart.fn(() => {
                        navigator.Navigator.of(context, {rootNavigator: true}).pop(core.Object);
                      }, VoidToNull()), $creationLocationd_0dea112b090073317d4: C60 || CT.C60}), new raised_button.RaisedButton.new({child: C65 || CT.C65, elevation: 8.0, shape: C54 || CT.C54, onPressed: dart.fn(() => {
                        navigator.Navigator.pop(core.Object, context);
                      }, VoidToNull()), $creationLocationd_0dea112b090073317d4: C66 || CT.C66})]), $creationLocationd_0dea112b090073317d4: C72 || CT.C72})]), $creationLocationd_0dea112b090073317d4: C75 || CT.C75})]), $creationLocationd_0dea112b090073317d4: C78 || CT.C78}), $creationLocationd_0dea112b090073317d4: C82 || CT.C82}), $creationLocationd_0dea112b090073317d4: C85 || CT.C85});
  }
};
(login._LoginPageState.new = function() {
  this[_usernameController] = new editable_text.TextEditingController.new();
  this[_passwordController] = new editable_text.TextEditingController.new();
  login._LoginPageState.__proto__.new.call(this);
  ;
}).prototype = login._LoginPageState.prototype;
dart.addTypeTests(login._LoginPageState);
dart.setMethodSignature(login._LoginPageState, () => ({
  __proto__: dart.getMethods(login._LoginPageState.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(login._LoginPageState, "package:flutter_gallery/demo/shrine/login.dart");
dart.setFieldSignature(login._LoginPageState, () => ({
  __proto__: dart.getFields(login._LoginPageState.__proto__),
  [_usernameController]: dart.finalFieldType(editable_text.TextEditingController),
  [_passwordController]: dart.finalFieldType(editable_text.TextEditingController)
}));
dart.defineLazy(login._LoginPageState, {
  /*login._LoginPageState._decoration*/get _decoration() {
    return C89 || CT.C89;
  }
});
const color$ = dart.privateName(login, "PrimaryColorOverride.color");
const child$ = dart.privateName(login, "PrimaryColorOverride.child");
login.PrimaryColorOverride = class PrimaryColorOverride extends framework.StatelessWidget {
  get color() {
    return this[color$];
  }
  set color(value) {
    super.color = value;
  }
  get child() {
    return this[child$];
  }
  set child(value) {
    super.child = value;
  }
  build(context) {
    return new theme.Theme.new({child: this.child, data: theme.Theme.of(context).copyWith({primaryColor: this.color}), $creationLocationd_0dea112b090073317d4: C94 || CT.C94});
  }
};
(login.PrimaryColorOverride.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let color = opts && 'color' in opts ? opts.color : null;
  let child = opts && 'child' in opts ? opts.child : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[color$] = color;
  this[child$] = child;
  login.PrimaryColorOverride.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = login.PrimaryColorOverride.prototype;
dart.addTypeTests(login.PrimaryColorOverride);
dart.setMethodSignature(login.PrimaryColorOverride, () => ({
  __proto__: dart.getMethods(login.PrimaryColorOverride.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(login.PrimaryColorOverride, "package:flutter_gallery/demo/shrine/login.dart");
dart.setFieldSignature(login.PrimaryColorOverride, () => ({
  __proto__: dart.getFields(login.PrimaryColorOverride.__proto__),
  color: dart.finalFieldType(ui.Color),
  child: dart.finalFieldType(framework.Widget)
}));
dart.trackLibraries("packages/flutter_gallery/demo/shrine/login", {
  "package:flutter_gallery/demo/shrine/login.dart": login
}, {
}, '{"version":3,"sourceRoot":"","sources":["login.dart"],"names":[],"mappings":";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;AAUmC;EAAiB;;;;;;AACpD;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;QAa4B;AACxB,UAAO,oCACG,mCACK,sBACa,iCACD,8BACd,4DAEwB,AAAY,gDAAT,OAAO,gCAC9B;AAIuC,YAAtC,AAAiC,uBAA9B,OAAO,kBAAiB;gJAIrC,mCACG,gEAEa,qCAEhB,gCACoB,sBACV,sBAAM,+GAEZ,kBACE,kBACa,AAAY,AAAU,eAAnB,OAAO,yJAK7B,2CACS,gCACA,yCACO,0CACL,0CACO,gPAQlB,2CACS,gCACA,yCACO,0CACL,0CACO,iOAOlB,8BACoB,sBAChB,wCACoB,sBAChB,uFAKa;AAKuC,wBAAtC,AAAiC,uBAA9B,OAAO,kBAAiB;iGAGzC,qEAEa,sCAIA;AACa,wBAAZ,qCAAI,OAAO;;EAW3C;;;EAvG4B,4BAAsB;EACtB,4BAAsB;;;AAuGpD;;;;;;;;;;;;;IAtG+B,iCAAW;;;;;;;EA2G5B;;;;;;EACC;;;;;;QAGa;AACxB,UAAO,6BACE,kBACK,AAAY,eAAT,OAAO,0BAAyB;EAEnD;;;MAXgC;MAAU;MAAY;;EAAZ;EAAY;AAAU,4DAAW,GAAG;;AAAC","file":"login.ddc.js"}');
// Exports:
exports.demo__shrine__login = login;

//# sourceMappingURL=login.ddc.js.map
