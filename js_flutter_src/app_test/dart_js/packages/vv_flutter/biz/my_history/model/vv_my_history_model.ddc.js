'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const notification_listener = packages__flutter__src__widgets__actions.src__widgets__notification_listener;
const vv_my_history_model = Object.create(dart.library);
const $_get = dartx._get;
const $toString = dartx.toString;
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C0() {
    return C0 = dart.const({
      __proto__: vv_my_history_model.ClickCellOptionType.prototype,
      [_name$]: "ClickCellOptionType.ClickCellOptionType_YiTuoSan",
      index: 0
    });
  },
  get C1() {
    return C1 = dart.const({
      __proto__: vv_my_history_model.ClickCellOptionType.prototype,
      [_name$]: "ClickCellOptionType.ClickCellOptionType_Clicked",
      index: 1
    });
  },
  get C2() {
    return C2 = dart.const({
      __proto__: vv_my_history_model.ClickCellOptionType.prototype,
      [_name$]: "ClickCellOptionType.ClickCellOptionType_Unclick",
      index: 2
    });
  },
  get C3() {
    return C3 = dart.constList([C0 || CT.C0, C1 || CT.C1, C2 || CT.C2], vv_my_history_model.ClickCellOptionType);
  }
});
const _name$ = dart.privateName(vv_my_history_model, "_name");
let C0;
let C1;
let C2;
let C3;
vv_my_history_model.ClickCellOptionType = class ClickCellOptionType extends core.Object {
  toString() {
    return this[_name$];
  }
};
(vv_my_history_model.ClickCellOptionType.new = function(index, _name) {
  this.index = index;
  this[_name$] = _name;
}).prototype = vv_my_history_model.ClickCellOptionType.prototype;
dart.defineExtensionMethods(vv_my_history_model.ClickCellOptionType, ['toString']);
vv_my_history_model.ClickCellOptionType.ClickCellOptionType_YiTuoSan = C0 || CT.C0;
vv_my_history_model.ClickCellOptionType.ClickCellOptionType_Clicked = C1 || CT.C1;
vv_my_history_model.ClickCellOptionType.ClickCellOptionType_Unclick = C2 || CT.C2;
vv_my_history_model.ClickCellOptionType.values = C3 || CT.C3;
const sectionTitle$ = dart.privateName(vv_my_history_model, "VVMyHistoryPageCellModel.sectionTitle");
const title$ = dart.privateName(vv_my_history_model, "VVMyHistoryPageCellModel.title");
const duration$ = dart.privateName(vv_my_history_model, "VVMyHistoryPageCellModel.duration");
const coverImageUrl$ = dart.privateName(vv_my_history_model, "VVMyHistoryPageCellModel.coverImageUrl");
const section$ = dart.privateName(vv_my_history_model, "VVMyHistoryPageCellModel.section");
const row$ = dart.privateName(vv_my_history_model, "VVMyHistoryPageCellModel.row");
vv_my_history_model.VVMyHistoryPageCellModel = class VVMyHistoryPageCellModel extends core.Object {
  get sectionTitle() {
    return this[sectionTitle$];
  }
  set sectionTitle(value) {
    super.sectionTitle = value;
  }
  get title() {
    return this[title$];
  }
  set title(value) {
    super.title = value;
  }
  get duration() {
    return this[duration$];
  }
  set duration(value) {
    super.duration = value;
  }
  get coverImageUrl() {
    return this[coverImageUrl$];
  }
  set coverImageUrl(value) {
    super.coverImageUrl = value;
  }
  get section() {
    return this[section$];
  }
  set section(value) {
    this[section$] = value;
  }
  get row() {
    return this[row$];
  }
  set row(value) {
    this[row$] = value;
  }
  getSectionRowKey() {
    return dart.toString(this.section) + "_" + dart.toString(this.row);
  }
};
(vv_my_history_model.VVMyHistoryPageCellModel.new = function(opts) {
  let sectionTitle = opts && 'sectionTitle' in opts ? opts.sectionTitle : null;
  let title = opts && 'title' in opts ? opts.title : null;
  let duration = opts && 'duration' in opts ? opts.duration : null;
  let coverImageUrl = opts && 'coverImageUrl' in opts ? opts.coverImageUrl : null;
  let section = opts && 'section' in opts ? opts.section : null;
  let row = opts && 'row' in opts ? opts.row : null;
  this[sectionTitle$] = sectionTitle;
  this[title$] = title;
  this[duration$] = duration;
  this[coverImageUrl$] = coverImageUrl;
  this[section$] = section;
  this[row$] = row;
}).prototype = vv_my_history_model.VVMyHistoryPageCellModel.prototype;
(vv_my_history_model.VVMyHistoryPageCellModel.fromJson = function(json) {
  this[row$] = null;
  this[section$] = null;
  this[sectionTitle$] = core.String._check(json[$_get]("sectionTitle"));
  this[title$] = core.String._check(json[$_get]("title"));
  this[duration$] = core.String._check(json[$_get]("duration"));
  this[coverImageUrl$] = core.String._check(json[$_get]("coverImageUrl"));
}).prototype = vv_my_history_model.VVMyHistoryPageCellModel.prototype;
const sectionRowKey$ = dart.privateName(vv_my_history_model, "ClickCellNotification.sectionRowKey");
const optionType$ = dart.privateName(vv_my_history_model, "ClickCellNotification.optionType");
vv_my_history_model.ClickCellNotification = class ClickCellNotification extends notification_listener.Notification {
  get sectionRowKey() {
    return this[sectionRowKey$];
  }
  set sectionRowKey(value) {
    super.sectionRowKey = value;
  }
  get optionType() {
    return this[optionType$];
  }
  set optionType(value) {
    super.optionType = value;
  }
};
(vv_my_history_model.ClickCellNotification.new = function(sectionRowKey, optionType) {
  this[sectionRowKey$] = sectionRowKey;
  this[optionType$] = optionType;
  vv_my_history_model.ClickCellNotification.__proto__.new.call(this);
}).prototype = vv_my_history_model.ClickCellNotification.prototype;
// Exports:
exports.biz__my_history__model__vv_my_history_model = vv_my_history_model;

//# sourceMappingURL=vv_my_history_model.ddc.js.map
