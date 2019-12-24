'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const ui = dart_sdk.ui;
const _interceptors = dart_sdk._interceptors;
const async = dart_sdk.async;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__material = require('packages/flutter/material');
const time = packages__flutter__material.src__material__time;
const theme$ = packages__flutter__material.src__material__theme;
const ink_well = packages__flutter__material.src__material__ink_well;
const date_picker = packages__flutter__material.src__material__date_picker;
const time_picker = packages__flutter__material.src__material__time_picker;
const dialog = packages__flutter__material.src__material__dialog;
const flat_button = packages__flutter__material.src__material__flat_button;
const scaffold = packages__flutter__material.src__material__scaffold;
const app_bar = packages__flutter__material.src__material__app_bar;
const colors = packages__flutter__material.src__material__colors;
const scrollbar = packages__flutter__material.src__material__scrollbar;
const text_field = packages__flutter__material.src__material__text_field;
const input_decorator = packages__flutter__material.src__material__input_decorator;
const checkbox = packages__flutter__material.src__material__checkbox;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const text = packages__flutter__src__widgets__actions.src__widgets__text;
const basic = packages__flutter__src__widgets__actions.src__widgets__basic;
const container = packages__flutter__src__widgets__actions.src__widgets__container;
const widget_inspector = packages__flutter__src__widgets__actions.src__widgets__widget_inspector;
const icon = packages__flutter__src__widgets__actions.src__widgets__icon;
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const icon_data = packages__flutter__src__widgets__actions.src__widgets__icon_data;
const navigator = packages__flutter__src__widgets__actions.src__widgets__navigator;
const form = packages__flutter__src__widgets__actions.src__widgets__form;
const scroll_view = packages__flutter__src__widgets__actions.src__widgets__scroll_view;
const packages__flutter__src__painting___network_image_web = require('packages/flutter/src/painting/_network_image_web');
const edge_insets = packages__flutter__src__painting___network_image_web.src__painting__edge_insets;
const box_decoration = packages__flutter__src__painting___network_image_web.src__painting__box_decoration;
const box_border = packages__flutter__src__painting___network_image_web.src__painting__box_border;
const borders = packages__flutter__src__painting___network_image_web.src__painting__borders;
const alignment = packages__flutter__src__painting___network_image_web.src__painting__alignment;
const packages__flutter__src__rendering__animated_size = require('packages/flutter/src/rendering/animated_size');
const flex = packages__flutter__src__rendering__animated_size.src__rendering__flex;
const packages__intl__intl = require('packages/intl/intl');
const intl = packages__intl__intl.intl;
const full_screen_dialog_demo = Object.create(dart.library);
const $isNotEmpty = dartx.isNotEmpty;
const $map = dartx.map;
const $toList = dartx.toList;
let DateTimeToNull = () => (DateTimeToNull = dart.constFn(dart.fnType(core.Null, [core.DateTime])))();
let VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
let JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
let TimeOfDayToNull = () => (TimeOfDayToNull = dart.constFn(dart.fnType(core.Null, [time.TimeOfDay])))();
let BuildContextToAlertDialog = () => (BuildContextToAlertDialog = dart.constFn(dart.fnType(dialog.AlertDialog, [framework.BuildContext])))();
let StringToNull = () => (StringToNull = dart.constFn(dart.fnType(core.Null, [core.String])))();
let boolToNull = () => (boolToNull = dart.constFn(dart.fnType(core.Null, [core.bool])))();
let WidgetToContainer = () => (WidgetToContainer = dart.constFn(dart.fnType(container.Container, [framework.Widget])))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C0() {
    return C0 = dart.const({
      __proto__: full_screen_dialog_demo.DismissDialogAction.prototype,
      [_name$]: "DismissDialogAction.cancel",
      index: 0
    });
  },
  get C1() {
    return C1 = dart.const({
      __proto__: full_screen_dialog_demo.DismissDialogAction.prototype,
      [_name$]: "DismissDialogAction.discard",
      index: 1
    });
  },
  get C2() {
    return C2 = dart.const({
      __proto__: full_screen_dialog_demo.DismissDialogAction.prototype,
      [_name$]: "DismissDialogAction.save",
      index: 2
    });
  },
  get C3() {
    return C3 = dart.constList([C0 || CT.C0, C1 || CT.C1, C2 || CT.C2], full_screen_dialog_demo.DismissDialogAction);
  },
  get C4() {
    return C4 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 8,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 8,
      [EdgeInsets_left]: 0
    });
  },
  get C5() {
    return C5 = dart.const({
      __proto__: core.Duration.prototype,
      [Duration__duration]: 2592000000000.0
    });
  },
  get C10() {
    return C10 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 2315255808.0
    });
  },
  get C11() {
    return C11 = dart.const({
      __proto__: icon_data.IconData.prototype,
      [IconData_matchTextDirection]: false,
      [IconData_fontPackage]: null,
      [IconData_fontFamily]: "MaterialIcons",
      [IconData_codePoint]: 58821
    });
  },
  get C9() {
    return C9 = dart.const({
      __proto__: icon.Icon.prototype,
      [Widget_key]: null,
      [Icon_textDirection]: null,
      [Icon_semanticLabel]: null,
      [Icon_color]: C10 || CT.C10,
      [Icon_size]: null,
      [Icon_icon]: C11 || CT.C11
    });
  },
  get C28() {
    return C28 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 8
    });
  },
  get C56() {
    return C56 = dart.const({
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
  get C61() {
    return C61 = dart.const({
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
      [Text_data]: "DISCARD"
    });
  },
  get C85() {
    return C85 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 16,
      [EdgeInsets_right]: 16,
      [EdgeInsets_top]: 16,
      [EdgeInsets_left]: 16
    });
  },
  get C86() {
    return C86 = dart.const({
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
      [InputDecoration_filled]: true,
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
      [InputDecoration_labelText]: "Event name",
      [InputDecoration_icon]: null
    });
  },
  get C97() {
    return C97 = dart.const({
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
      [InputDecoration_filled]: true,
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
      [InputDecoration_hintText]: "Where is the event?",
      [InputDecoration_helperMaxLines]: null,
      [InputDecoration_helperStyle]: null,
      [InputDecoration_helperText]: null,
      [InputDecoration_labelStyle]: null,
      [InputDecoration_labelText]: "Location",
      [InputDecoration_icon]: null
    });
  },
  get C127() {
    return C127 = dart.const({
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
      [Text_data]: "All-day"
    });
  }
});
const _name$ = dart.privateName(full_screen_dialog_demo, "_name");
let C0;
let C1;
let C2;
let C3;
full_screen_dialog_demo.DismissDialogAction = class DismissDialogAction extends core.Object {
  toString() {
    return this[_name$];
  }
};
(full_screen_dialog_demo.DismissDialogAction.new = function(index, _name) {
  this.index = index;
  this[_name$] = _name;
  ;
}).prototype = full_screen_dialog_demo.DismissDialogAction.prototype;
dart.addTypeTests(full_screen_dialog_demo.DismissDialogAction);
dart.setLibraryUri(full_screen_dialog_demo.DismissDialogAction, "package:flutter_gallery/demo/material/full_screen_dialog_demo.dart");
dart.setFieldSignature(full_screen_dialog_demo.DismissDialogAction, () => ({
  __proto__: dart.getFields(full_screen_dialog_demo.DismissDialogAction.__proto__),
  index: dart.finalFieldType(core.int),
  [_name$]: dart.finalFieldType(core.String)
}));
dart.defineExtensionMethods(full_screen_dialog_demo.DismissDialogAction, ['toString']);
full_screen_dialog_demo.DismissDialogAction.cancel = C0 || CT.C0;
full_screen_dialog_demo.DismissDialogAction.discard = C1 || CT.C1;
full_screen_dialog_demo.DismissDialogAction.save = C2 || CT.C2;
full_screen_dialog_demo.DismissDialogAction.values = C3 || CT.C3;
const EdgeInsets_bottom = dart.privateName(edge_insets, "EdgeInsets.bottom");
const EdgeInsets_right = dart.privateName(edge_insets, "EdgeInsets.right");
const EdgeInsets_top = dart.privateName(edge_insets, "EdgeInsets.top");
const EdgeInsets_left = dart.privateName(edge_insets, "EdgeInsets.left");
let C4;
const Duration__duration = dart.privateName(core, "Duration._duration");
let C5;
const _Location_parameterLocations = dart.privateName(widget_inspector, "_Location.parameterLocations");
const _Location_name = dart.privateName(widget_inspector, "_Location.name");
const _Location_column = dart.privateName(widget_inspector, "_Location.column");
const _Location_line = dart.privateName(widget_inspector, "_Location.line");
const _Location_file = dart.privateName(widget_inspector, "_Location.file");
const Widget_key = dart.privateName(framework, "Widget.key");
const Icon_textDirection = dart.privateName(icon, "Icon.textDirection");
const Icon_semanticLabel = dart.privateName(icon, "Icon.semanticLabel");
const Color_value = dart.privateName(ui, "Color.value");
let C10;
const Icon_color = dart.privateName(icon, "Icon.color");
const Icon_size = dart.privateName(icon, "Icon.size");
const IconData_matchTextDirection = dart.privateName(icon_data, "IconData.matchTextDirection");
const IconData_fontPackage = dart.privateName(icon_data, "IconData.fontPackage");
const IconData_fontFamily = dart.privateName(icon_data, "IconData.fontFamily");
const IconData_codePoint = dart.privateName(icon_data, "IconData.codePoint");
let C11;
const Icon_icon = dart.privateName(icon, "Icon.icon");
let C9;
let C28;
const date = dart.privateName(full_screen_dialog_demo, "DateTimeItem.date");
const time$ = dart.privateName(full_screen_dialog_demo, "DateTimeItem.time");
const onChanged$ = dart.privateName(full_screen_dialog_demo, "DateTimeItem.onChanged");
full_screen_dialog_demo.DateTimeItem = class DateTimeItem extends framework.StatelessWidget {
  get date() {
    return this[date];
  }
  set date(value) {
    super.date = value;
  }
  get time() {
    return this[time$];
  }
  set time(value) {
    super.time = value;
  }
  get onChanged() {
    return this[onChanged$];
  }
  set onChanged(value) {
    super.onChanged = value;
  }
  build(context) {
    let theme = theme$.Theme.of(context);
    return new text.DefaultTextStyle.new({style: theme.textTheme.subhead, child: new basic.Row.new({children: JSArrayOfWidget().of([new basic.Expanded.new({child: new container.Container.new({padding: C4 || CT.C4, decoration: new box_decoration.BoxDecoration.new({border: new box_border.Border.new({bottom: new borders.BorderSide.new({color: theme.dividerColor})})}), child: new ink_well.InkWell.new({onTap: dart.fn(() => {
                  date_picker.showDatePicker({context: context, initialDate: this.date, firstDate: this.date.subtract(C5 || CT.C5), lastDate: this.date.add(C5 || CT.C5)}).then(dart.void, dart.fn(value => {
                    if (value != null) this.onChanged(new core.DateTime.new(value.year, value.month, value.day, this.time.hour, this.time.minute));
                  }, DateTimeToNull()));
                }, VoidToNull()), child: new basic.Row.new({mainAxisAlignment: flex.MainAxisAlignment.spaceBetween, children: JSArrayOfWidget().of([new text.Text.new(new intl.DateFormat.new("EEE, MMM d yyyy").format(this.date), {$creationLocationd_0dea112b090073317d4: C6 || CT.C6}), C9 || CT.C9]), $creationLocationd_0dea112b090073317d4: C12 || CT.C12}), $creationLocationd_0dea112b090073317d4: C16 || CT.C16}), $creationLocationd_0dea112b090073317d4: C20 || CT.C20}), $creationLocationd_0dea112b090073317d4: C25 || CT.C25}), new container.Container.new({margin: C28 || CT.C28, padding: C4 || CT.C4, decoration: new box_decoration.BoxDecoration.new({border: new box_border.Border.new({bottom: new borders.BorderSide.new({color: theme.dividerColor})})}), child: new ink_well.InkWell.new({onTap: dart.fn(() => {
                time_picker.showTimePicker({context: context, initialTime: this.time}).then(dart.void, dart.fn(value => {
                  if (value != null) this.onChanged(new core.DateTime.new(this.date.year, this.date.month, this.date.day, value.hour, value.minute));
                }, TimeOfDayToNull()));
              }, VoidToNull()), child: new basic.Row.new({children: JSArrayOfWidget().of([new text.Text.new(dart.str(this.time.format(context)), {$creationLocationd_0dea112b090073317d4: C29 || CT.C29}), C9 || CT.C9]), $creationLocationd_0dea112b090073317d4: C32 || CT.C32}), $creationLocationd_0dea112b090073317d4: C35 || CT.C35}), $creationLocationd_0dea112b090073317d4: C39 || CT.C39})]), $creationLocationd_0dea112b090073317d4: C45 || CT.C45}), $creationLocationd_0dea112b090073317d4: C48 || CT.C48});
  }
};
(full_screen_dialog_demo.DateTimeItem.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let dateTime = opts && 'dateTime' in opts ? opts.dateTime : null;
  let onChanged = opts && 'onChanged' in opts ? opts.onChanged : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[onChanged$] = onChanged;
  if (!(onChanged != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/material/full_screen_dialog_demo.dart", 21, 14, "onChanged != null");
  this[date] = new core.DateTime.new(dateTime.year, dateTime.month, dateTime.day);
  this[time$] = new time.TimeOfDay.new({hour: dateTime.hour, minute: dateTime.minute});
  full_screen_dialog_demo.DateTimeItem.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = full_screen_dialog_demo.DateTimeItem.prototype;
dart.addTypeTests(full_screen_dialog_demo.DateTimeItem);
dart.setMethodSignature(full_screen_dialog_demo.DateTimeItem, () => ({
  __proto__: dart.getMethods(full_screen_dialog_demo.DateTimeItem.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(full_screen_dialog_demo.DateTimeItem, "package:flutter_gallery/demo/material/full_screen_dialog_demo.dart");
dart.setFieldSignature(full_screen_dialog_demo.DateTimeItem, () => ({
  __proto__: dart.getFields(full_screen_dialog_demo.DateTimeItem.__proto__),
  date: dart.finalFieldType(core.DateTime),
  time: dart.finalFieldType(time.TimeOfDay),
  onChanged: dart.finalFieldType(dart.fnType(dart.void, [core.DateTime]))
}));
full_screen_dialog_demo.FullScreenDialogDemo = class FullScreenDialogDemo extends framework.StatefulWidget {
  createState() {
    return new full_screen_dialog_demo.FullScreenDialogDemoState.new();
  }
};
(full_screen_dialog_demo.FullScreenDialogDemo.new = function(opts) {
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  full_screen_dialog_demo.FullScreenDialogDemo.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = full_screen_dialog_demo.FullScreenDialogDemo.prototype;
dart.addTypeTests(full_screen_dialog_demo.FullScreenDialogDemo);
dart.setMethodSignature(full_screen_dialog_demo.FullScreenDialogDemo, () => ({
  __proto__: dart.getMethods(full_screen_dialog_demo.FullScreenDialogDemo.__proto__),
  createState: dart.fnType(full_screen_dialog_demo.FullScreenDialogDemoState, [])
}));
dart.setLibraryUri(full_screen_dialog_demo.FullScreenDialogDemo, "package:flutter_gallery/demo/material/full_screen_dialog_demo.dart");
const _fromDateTime = dart.privateName(full_screen_dialog_demo, "_fromDateTime");
const _toDateTime = dart.privateName(full_screen_dialog_demo, "_toDateTime");
const _allDayValue = dart.privateName(full_screen_dialog_demo, "_allDayValue");
const _saveNeeded = dart.privateName(full_screen_dialog_demo, "_saveNeeded");
const _hasLocation = dart.privateName(full_screen_dialog_demo, "_hasLocation");
const _hasName = dart.privateName(full_screen_dialog_demo, "_hasName");
const _eventName = dart.privateName(full_screen_dialog_demo, "_eventName");
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
let C56;
let C61;
const _onWillPop = dart.privateName(full_screen_dialog_demo, "_onWillPop");
let C85;
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
let C86;
let C97;
let C127;
full_screen_dialog_demo.FullScreenDialogDemoState = class FullScreenDialogDemoState extends framework.State$(full_screen_dialog_demo.FullScreenDialogDemo) {
  [_onWillPop]() {
    return async.async(core.bool, (function* _onWillPop() {
      let t0;
      this[_saveNeeded] = dart.test(this[_hasLocation]) || dart.test(this[_hasName]) || dart.test(this[_saveNeeded]);
      if (!dart.test(this[_saveNeeded])) return true;
      let theme = theme$.Theme.of(this.context);
      let dialogTextStyle = theme.textTheme.subhead.copyWith({color: theme.textTheme.caption.color});
      t0 = (yield dialog.showDialog(core.bool, {context: this.context, builder: dart.fn(context => new dialog.AlertDialog.new({content: new text.Text.new("Discard new event?", {style: dialogTextStyle, $creationLocationd_0dea112b090073317d4: C52 || CT.C52}), actions: JSArrayOfWidget().of([new flat_button.FlatButton.new({child: C56 || CT.C56, onPressed: dart.fn(() => {
                navigator.Navigator.of(context).pop(core.bool, false);
              }, VoidToNull()), $creationLocationd_0dea112b090073317d4: C57 || CT.C57}), new flat_button.FlatButton.new({child: C61 || CT.C61, onPressed: dart.fn(() => {
                navigator.Navigator.of(context).pop(core.bool, true);
              }, VoidToNull()), $creationLocationd_0dea112b090073317d4: C62 || CT.C62})]), $creationLocationd_0dea112b090073317d4: C66 || CT.C66}), BuildContextToAlertDialog())}));
      return t0 == null ? false : t0;
    }).bind(this));
  }
  build(context) {
    let theme = theme$.Theme.of(context);
    return new scaffold.Scaffold.new({appBar: new app_bar.AppBar.new({title: new text.Text.new(dart.test(this[_hasName]) ? this[_eventName] : "Event Name TBD", {$creationLocationd_0dea112b090073317d4: C70 || CT.C70}), actions: JSArrayOfWidget().of([new flat_button.FlatButton.new({child: new text.Text.new("SAVE", {style: theme.textTheme.body1.copyWith({color: colors.Colors.white}), $creationLocationd_0dea112b090073317d4: C73 || CT.C73}), onPressed: dart.fn(() => {
              navigator.Navigator.pop(full_screen_dialog_demo.DismissDialogAction, context, full_screen_dialog_demo.DismissDialogAction.save);
            }, VoidToNull()), $creationLocationd_0dea112b090073317d4: C77 || CT.C77})]), $creationLocationd_0dea112b090073317d4: C81 || CT.C81}), body: new form.Form.new({onWillPop: dart.bind(this, _onWillPop), child: new scrollbar.Scrollbar.new({child: new scroll_view.ListView.new({padding: C85 || CT.C85, children: JSArrayOfWidget().of([new container.Container.new({padding: C4 || CT.C4, alignment: alignment.Alignment.bottomLeft, child: new text_field.TextField.new({decoration: C86 || CT.C86, style: theme.textTheme.headline, onChanged: dart.fn(value => {
                    this.setState(dart.fn(() => {
                      this[_hasName] = value[$isNotEmpty];
                      if (dart.test(this[_hasName])) {
                        this[_eventName] = value;
                      }
                    }, VoidToNull()));
                  }, StringToNull()), $creationLocationd_0dea112b090073317d4: C87 || CT.C87}), $creationLocationd_0dea112b090073317d4: C92 || CT.C92}), new container.Container.new({padding: C4 || CT.C4, alignment: alignment.Alignment.bottomLeft, child: new text_field.TextField.new({decoration: C97 || CT.C97, onChanged: dart.fn(value => {
                    this.setState(dart.fn(() => {
                      this[_hasLocation] = value[$isNotEmpty];
                    }, VoidToNull()));
                  }, StringToNull()), $creationLocationd_0dea112b090073317d4: C98 || CT.C98}), $creationLocationd_0dea112b090073317d4: C102 || CT.C102}), new basic.Column.new({crossAxisAlignment: flex.CrossAxisAlignment.start, children: JSArrayOfWidget().of([new text.Text.new("From", {style: theme.textTheme.caption, $creationLocationd_0dea112b090073317d4: C107 || CT.C107}), new full_screen_dialog_demo.DateTimeItem.new({dateTime: this[_fromDateTime], onChanged: dart.fn(value => {
                      this.setState(dart.fn(() => {
                        this[_fromDateTime] = value;
                        this[_saveNeeded] = true;
                      }, VoidToNull()));
                    }, DateTimeToNull()), $creationLocationd_0dea112b090073317d4: C111 || CT.C111})]), $creationLocationd_0dea112b090073317d4: C115 || CT.C115}), new basic.Column.new({crossAxisAlignment: flex.CrossAxisAlignment.start, children: JSArrayOfWidget().of([new text.Text.new("To", {style: theme.textTheme.caption, $creationLocationd_0dea112b090073317d4: C119 || CT.C119}), new full_screen_dialog_demo.DateTimeItem.new({dateTime: this[_toDateTime], onChanged: dart.fn(value => {
                      this.setState(dart.fn(() => {
                        this[_toDateTime] = value;
                        this[_saveNeeded] = true;
                      }, VoidToNull()));
                    }, DateTimeToNull()), $creationLocationd_0dea112b090073317d4: C123 || CT.C123}), C127 || CT.C127]), $creationLocationd_0dea112b090073317d4: C128 || CT.C128}), new container.Container.new({decoration: new box_decoration.BoxDecoration.new({border: new box_border.Border.new({bottom: new borders.BorderSide.new({color: theme.dividerColor})})}), child: new basic.Row.new({children: JSArrayOfWidget().of([new checkbox.Checkbox.new({value: this[_allDayValue], onChanged: dart.fn(value => {
                        this.setState(dart.fn(() => {
                          this[_allDayValue] = value;
                          this[_saveNeeded] = true;
                        }, VoidToNull()));
                      }, boolToNull()), $creationLocationd_0dea112b090073317d4: C132 || CT.C132}), C127 || CT.C127]), $creationLocationd_0dea112b090073317d4: C136 || CT.C136}), $creationLocationd_0dea112b090073317d4: C139 || CT.C139})])[$map](framework.Widget, dart.fn(child => new container.Container.new({padding: C4 || CT.C4, height: 96.0, child: child, $creationLocationd_0dea112b090073317d4: C143 || CT.C143}), WidgetToContainer()))[$toList](), $creationLocationd_0dea112b090073317d4: C148 || CT.C148}), $creationLocationd_0dea112b090073317d4: C152 || CT.C152}), $creationLocationd_0dea112b090073317d4: C155 || CT.C155}), $creationLocationd_0dea112b090073317d4: C159 || CT.C159});
  }
};
(full_screen_dialog_demo.FullScreenDialogDemoState.new = function() {
  this[_fromDateTime] = new core.DateTime.now();
  this[_toDateTime] = new core.DateTime.now();
  this[_allDayValue] = false;
  this[_saveNeeded] = false;
  this[_hasLocation] = false;
  this[_hasName] = false;
  this[_eventName] = null;
  full_screen_dialog_demo.FullScreenDialogDemoState.__proto__.new.call(this);
  ;
}).prototype = full_screen_dialog_demo.FullScreenDialogDemoState.prototype;
dart.addTypeTests(full_screen_dialog_demo.FullScreenDialogDemoState);
dart.setMethodSignature(full_screen_dialog_demo.FullScreenDialogDemoState, () => ({
  __proto__: dart.getMethods(full_screen_dialog_demo.FullScreenDialogDemoState.__proto__),
  [_onWillPop]: dart.fnType(async.Future$(core.bool), []),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(full_screen_dialog_demo.FullScreenDialogDemoState, "package:flutter_gallery/demo/material/full_screen_dialog_demo.dart");
dart.setFieldSignature(full_screen_dialog_demo.FullScreenDialogDemoState, () => ({
  __proto__: dart.getFields(full_screen_dialog_demo.FullScreenDialogDemoState.__proto__),
  [_fromDateTime]: dart.fieldType(core.DateTime),
  [_toDateTime]: dart.fieldType(core.DateTime),
  [_allDayValue]: dart.fieldType(core.bool),
  [_saveNeeded]: dart.fieldType(core.bool),
  [_hasLocation]: dart.fieldType(core.bool),
  [_hasName]: dart.fieldType(core.bool),
  [_eventName]: dart.fieldType(core.String)
}));
dart.trackLibraries("packages/flutter_gallery/demo/material/full_screen_dialog_demo", {
  "package:flutter_gallery/demo/material/full_screen_dialog_demo.dart": full_screen_dialog_demo
}, {
}, '{"version":3,"sourceRoot":"","sources":["full_screen_dialog_demo.dart"],"names":[],"mappings":"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","file":"full_screen_dialog_demo.ddc.js"}');
// Exports:
exports.demo__material__full_screen_dialog_demo = full_screen_dialog_demo;

//# sourceMappingURL=full_screen_dialog_demo.ddc.js.map
