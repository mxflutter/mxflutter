'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const collection = dart_sdk.collection;
const _interceptors = dart_sdk._interceptors;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__gestures__arena = require('packages/flutter/src/gestures/arena');
const platform_channel = packages__flutter__src__gestures__arena.src__services__platform_channel;
const packages__vv_flutter__biz__my_history__model__vv_my_history_model = require('packages/vv_flutter/biz/my_history/model/vv_my_history_model');
const vv_my_history_model = packages__vv_flutter__biz__my_history__model__vv_my_history_model.biz__my_history__model__vv_my_history_model;
const vv_my_history_logic = Object.create(dart.library);
const $_get = dartx._get;
const $length = dartx.length;
const $add = dartx.add;
let _IdentityHashSetOfString = () => (_IdentityHashSetOfString = dart.constFn(collection._IdentityHashSet$(core.String)))();
let JSArrayOfVVMyHistoryPageCellModel = () => (JSArrayOfVVMyHistoryPageCellModel = dart.constFn(_interceptors.JSArray$(vv_my_history_model.VVMyHistoryPageCellModel)))();
const CT = Object.create(null);
const _methodChannel = dart.privateName(vv_my_history_logic, "_methodChannel");
const _reloadListEventChannel = dart.privateName(vv_my_history_logic, "_reloadListEventChannel");
const _endRefreshEventChannel = dart.privateName(vv_my_history_logic, "_endRefreshEventChannel");
const _onReloadListEvent = dart.privateName(vv_my_history_logic, "_onReloadListEvent");
const _onReloadListEventError = dart.privateName(vv_my_history_logic, "_onReloadListEventError");
const _onEndRefreshEvent = dart.privateName(vv_my_history_logic, "_onEndRefreshEvent");
const _onEndRefreshEventError = dart.privateName(vv_my_history_logic, "_onEndRefreshEventError");
const reloadListCompletion$ = dart.privateName(vv_my_history_logic, "VVMyHistoryLogic.reloadListCompletion");
const endRefreshCompletion$ = dart.privateName(vv_my_history_logic, "VVMyHistoryLogic.endRefreshCompletion");
const isEnd = dart.privateName(vv_my_history_logic, "VVMyHistoryLogic.isEnd");
const success = dart.privateName(vv_my_history_logic, "VVMyHistoryLogic.success");
const isAllSelected = dart.privateName(vv_my_history_logic, "VVMyHistoryLogic.isAllSelected");
const selectSectionRowKeys = dart.privateName(vv_my_history_logic, "VVMyHistoryLogic.selectSectionRowKeys");
vv_my_history_logic.VVMyHistoryLogic = class VVMyHistoryLogic extends core.Object {
  get reloadListCompletion() {
    return this[reloadListCompletion$];
  }
  set reloadListCompletion(value) {
    super.reloadListCompletion = value;
  }
  get endRefreshCompletion() {
    return this[endRefreshCompletion$];
  }
  set endRefreshCompletion(value) {
    super.endRefreshCompletion = value;
  }
  get isEnd() {
    return this[isEnd];
  }
  set isEnd(value) {
    this[isEnd] = value;
  }
  get success() {
    return this[success];
  }
  set success(value) {
    this[success] = value;
  }
  get isAllSelected() {
    return this[isAllSelected];
  }
  set isAllSelected(value) {
    this[isAllSelected] = value;
  }
  get selectSectionRowKeys() {
    return this[selectSectionRowKeys];
  }
  set selectSectionRowKeys(value) {
    super.selectSectionRowKeys = value;
  }
  invokeMethod(methodName, $arguments) {
    if ($arguments === void 0) $arguments = null;
    this[_methodChannel].invokeMethod(dart.dynamic, methodName, $arguments);
  }
  registerEventChannel() {
    this[_reloadListEventChannel].receiveBroadcastStream().listen(dart.bind(this, _onReloadListEvent), {onError: dart.bind(this, _onReloadListEventError)});
    this[_endRefreshEventChannel].receiveBroadcastStream().listen(dart.bind(this, _onEndRefreshEvent), {onError: dart.bind(this, _onEndRefreshEventError)});
  }
  [_onReloadListEvent](event) {
    let result = core.Map._check(event);
    if (dart.test(this.isAllSelected)) {
      this.selectSectionRowKeys.clear();
    }
    let historyList = JSArrayOfVVMyHistoryPageCellModel().of([]);
    let resultList = core.List._check(result[$_get]("historyList"));
    for (let i = 0; i < dart.notNull(resultList[$length]); i = i + 1) {
      let sectionArray = core.List._check(resultList[$_get](i));
      for (let j = 0; j < dart.notNull(sectionArray[$length]); j = j + 1) {
        let item = core.Map._check(sectionArray[$_get](j));
        let covertData = new vv_my_history_model.VVMyHistoryPageCellModel.fromJson(item);
        covertData.section = i;
        covertData.row = j;
        historyList[$add](covertData);
        if (dart.test(this.isAllSelected)) {
          this.selectSectionRowKeys.add(covertData.getSectionRowKey());
        }
      }
    }
    this.reloadListCompletion(historyList);
  }
  [_onEndRefreshEvent](event) {
    let result = core.Map._check(event);
    this.isEnd = core.int._check(result[$_get]("isEnd"));
    this.success = dart.equals(result[$_get]("success"), 1);
    this.endRefreshCompletion();
  }
  [_onReloadListEventError](error) {
  }
  [_onEndRefreshEventError](error) {
  }
};
(vv_my_history_logic.VVMyHistoryLogic.new = function(reloadListCompletion, endRefreshCompletion) {
  this[isAllSelected] = false;
  this[selectSectionRowKeys] = new (_IdentityHashSetOfString()).new();
  this[reloadListCompletion$] = reloadListCompletion;
  this[endRefreshCompletion$] = endRefreshCompletion;
  this[_methodChannel] = new platform_channel.MethodChannel.new("kMyTabChannel");
  this[_reloadListEventChannel] = new platform_channel.EventChannel.new("kReloadListEvent");
  this[_endRefreshEventChannel] = new platform_channel.EventChannel.new("kEndRefreshEvent");
  this[isEnd] = 0;
  this[success] = false;
}).prototype = vv_my_history_logic.VVMyHistoryLogic.prototype;
// Exports:
exports.biz__my_history__logic__vv_my_history_logic = vv_my_history_logic;

//# sourceMappingURL=vv_my_history_logic.ddc.js.map
