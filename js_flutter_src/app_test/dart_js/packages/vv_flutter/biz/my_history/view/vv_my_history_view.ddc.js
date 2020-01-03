'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const _interceptors = dart_sdk._interceptors;
const ui = dart_sdk.ui;
const _js_helper = dart_sdk._js_helper;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const basic = packages__flutter__src__widgets__actions.src__widgets__basic;
const gesture_detector = packages__flutter__src__widgets__actions.src__widgets__gesture_detector;
const image = packages__flutter__src__widgets__actions.src__widgets__image;
const container = packages__flutter__src__widgets__actions.src__widgets__container;
const text = packages__flutter__src__widgets__actions.src__widgets__text;
const preferred_size = packages__flutter__src__widgets__actions.src__widgets__preferred_size;
const navigator = packages__flutter__src__widgets__actions.src__widgets__navigator;
const notification_listener = packages__flutter__src__widgets__actions.src__widgets__notification_listener;
const safe_area = packages__flutter__src__widgets__actions.src__widgets__safe_area;
const scroll_view = packages__flutter__src__widgets__actions.src__widgets__scroll_view;
const packages__pull_to_refresh__pull_to_refresh = require('packages/pull_to_refresh/pull_to_refresh');
const smart_refresher = packages__pull_to_refresh__pull_to_refresh.src__smart_refresher;
const classic_indicator = packages__pull_to_refresh__pull_to_refresh.src__indicator__classic_indicator;
const packages__vv_flutter__biz__my_history__model__vv_my_history_model = require('packages/vv_flutter/biz/my_history/model/vv_my_history_model');
const vv_my_history_model = packages__vv_flutter__biz__my_history__model__vv_my_history_model.biz__my_history__model__vv_my_history_model;
const packages__vv_flutter__biz__my_history__logic__vv_my_history_logic = require('packages/vv_flutter/biz/my_history/logic/vv_my_history_logic');
const vv_my_history_logic = packages__vv_flutter__biz__my_history__logic__vv_my_history_logic.biz__my_history__logic__vv_my_history_logic;
const packages__flutter__src__painting___network_image_web = require('packages/flutter/src/painting/_network_image_web');
const edge_insets = packages__flutter__src__painting___network_image_web.src__painting__edge_insets;
const text_style = packages__flutter__src__painting___network_image_web.src__painting__text_style;
const alignment = packages__flutter__src__painting___network_image_web.src__painting__alignment;
const packages__flutter__material = require('packages/flutter/material');
const colors = packages__flutter__material.src__material__colors;
const app_bar = packages__flutter__material.src__material__app_bar;
const icon_button = packages__flutter__material.src__material__icon_button;
const app = packages__flutter__material.src__material__app;
const theme_data = packages__flutter__material.src__material__theme_data;
const scaffold = packages__flutter__material.src__material__scaffold;
const packages__flutter__src__rendering__animated_size = require('packages/flutter/src/rendering/animated_size');
const flex = packages__flutter__src__rendering__animated_size.src__rendering__flex;
const packages__vv_flutter__biz__my_history__view__vv_my_history_page_cell = require('packages/vv_flutter/biz/my_history/view/vv_my_history_page_cell');
const vv_my_history_page_cell = packages__vv_flutter__biz__my_history__view__vv_my_history_page_cell.biz__my_history__view__vv_my_history_page_cell;
const vv_my_history_view = Object.create(dart.library);
const $length = dartx.length;
const $addAll = dartx.addAll;
const $clear = dartx.clear;
const $add = dartx.add;
const $remove = dartx.remove;
const $_get = dartx._get;
let JSArrayOfVVMyHistoryPageCellModel = () => (JSArrayOfVVMyHistoryPageCellModel = dart.constFn(_interceptors.JSArray$(vv_my_history_model.VVMyHistoryPageCellModel)))();
let ListOfVVMyHistoryPageCellModel = () => (ListOfVVMyHistoryPageCellModel = dart.constFn(core.List$(vv_my_history_model.VVMyHistoryPageCellModel)))();
let VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
let ListToNull = () => (ListToNull = dart.constFn(dart.fnType(core.Null, [core.List])))();
let JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
let VoidToExpanded = () => (VoidToExpanded = dart.constFn(dart.fnType(basic.Expanded, [])))();
let IdentityMapOfString$Object = () => (IdentityMapOfString$Object = dart.constFn(_js_helper.IdentityMap$(core.String, core.Object)))();
let VoidToGestureDetector = () => (VoidToGestureDetector = dart.constFn(dart.fnType(gesture_detector.GestureDetector, [])))();
let VoidToContainer = () => (VoidToContainer = dart.constFn(dart.fnType(container.Container, [])))();
let VVMyHistoryPageCellToWidget = () => (VVMyHistoryPageCellToWidget = dart.constFn(dart.fnType(framework.Widget, [vv_my_history_page_cell.VVMyHistoryPageCell])))();
let intToWidget = () => (intToWidget = dart.constFn(dart.fnType(framework.Widget, [core.int])))();
let VoidToString = () => (VoidToString = dart.constFn(dart.fnType(core.String, [])))();
let VoidToWidget = () => (VoidToWidget = dart.constFn(dart.fnType(framework.Widget, [])))();
let NotificationListenerOfClickCellNotification = () => (NotificationListenerOfClickCellNotification = dart.constFn(notification_listener.NotificationListener$(vv_my_history_model.ClickCellNotification)))();
let ClickCellNotificationTobool = () => (ClickCellNotificationTobool = dart.constFn(dart.fnType(core.bool, [vv_my_history_model.ClickCellNotification])))();
let BuildContextAndintToWidget = () => (BuildContextAndintToWidget = dart.constFn(dart.fnType(framework.Widget, [framework.BuildContext, core.int])))();
let LoadStatusTobool = () => (LoadStatusTobool = dart.constFn(dart.fnType(core.bool, [smart_refresher.LoadStatus])))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C0() {
    return C0 = dart.const({
      __proto__: vv_my_history_model.ClickCellOptionType.prototype,
      [_name]: "ClickCellOptionType.ClickCellOptionType_Clicked",
      index: 1
    });
  },
  get C1() {
    return C1 = dart.const({
      __proto__: vv_my_history_model.ClickCellOptionType.prototype,
      [_name]: "ClickCellOptionType.ClickCellOptionType_Unclick",
      index: 2
    });
  },
  get C2() {
    return C2 = dart.const({
      __proto__: vv_my_history_model.ClickCellOptionType.prototype,
      [_name]: "ClickCellOptionType.ClickCellOptionType_YiTuoSan",
      index: 0
    });
  }
});
vv_my_history_view.VVMyHistoryPage = class VVMyHistoryPage extends framework.StatefulWidget {
  createState() {
    return new vv_my_history_view._VVMyHistoryPageState.new();
  }
};
(vv_my_history_view.VVMyHistoryPage.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  vv_my_history_view.VVMyHistoryPage.__proto__.new.call(this, {key: key});
}).prototype = vv_my_history_view.VVMyHistoryPage.prototype;
const _logic = dart.privateName(vv_my_history_view, "_logic");
const _refreshController = dart.privateName(vv_my_history_view, "_refreshController");
const _initLogic = dart.privateName(vv_my_history_view, "_initLogic");
const _name = dart.privateName(vv_my_history_model, "_name");
let C0;
let C1;
let C2;
vv_my_history_view._VVMyHistoryPageState = class _VVMyHistoryPageState extends framework.State$(vv_my_history_view.VVMyHistoryPage) {
  [_initLogic]() {
    this[_logic] = new vv_my_history_logic.VVMyHistoryLogic.new(dart.fn(historyList => {
      this.cellModels = ListOfVVMyHistoryPageCellModel()._check(historyList);
      this.setState(dart.fn(() => {
      }, VoidToNull()));
    }, ListToNull()), dart.fn(() => {
      if (dart.test(this[_logic].success)) {
        if (dart.notNull(this[_logic].isEnd) > 0) {
          this[_refreshController].loadNoData();
        } else {
          this[_refreshController].loadComplete();
        }
      } else {
        this[_refreshController].loadFailed();
      }
    }, VoidToNull()));
  }
  initState() {
    super.initState();
    this[_initLogic]();
    this[_logic].registerEventChannel();
  }
  build(context) {
    const _getBottomBarSelectView = () => {
      return new basic.Expanded.new({child: new gesture_detector.GestureDetector.new({onTap: dart.fn(() => {
            this.setState(dart.fn(() => {
              this[_logic].isAllSelected = !dart.test(this[_logic].isAllSelected);
              if (dart.test(this[_logic].isAllSelected)) {
                for (let model of this.cellModels) {
                  this[_logic].selectSectionRowKeys.add(model.getSectionRowKey());
                }
              } else {
                this[_logic].selectSectionRowKeys.clear();
              }
            }, VoidToNull()));
          }, VoidToNull()), child: new basic.Row.new({children: JSArrayOfWidget().of([new image.Image.asset(dart.test(this[_logic].isAllSelected) ? "assets/images/myfavoritecell_checked@2x.png" : "assets/images/myfavoritecell_uncheck@2x.png", {width: 24.0, height: 24.0}), new container.Container.new({padding: new edge_insets.EdgeInsets.only({left: 12.0}), child: new text.Text.new("全选", {style: new text_style.TextStyle.new({fontSize: 17.0, color: new ui.Color.fromRGBO(76, 76, 76, 1.0)})})})])})})});
    };
    dart.fn(_getBottomBarSelectView, VoidToExpanded());
    const _getBottomBarDeleteView = () => {
      let delectCount = this[_logic].selectSectionRowKeys[$length];
      return new gesture_detector.GestureDetector.new({onTap: dart.fn(() => {
          if (delectCount === 0) {
            return;
          }
          let deleteSectionRowKeys = [];
          deleteSectionRowKeys[$addAll](this[_logic].selectSectionRowKeys);
          this.setState(dart.fn(() => {
            if (dart.test(this[_logic].isAllSelected)) {
              this[_logic].invokeMethod("kDeleteHistoryMethod", new (IdentityMapOfString$Object()).from(["_logic.isAllSelected", "1", "deleteSectionRowKeys", deleteSectionRowKeys]));
              this.cellModels[$clear]();
              this[_logic].isAllSelected = false;
              this.isEditMode = false;
              this.editButtonText = "编辑";
            } else {
              this[_logic].invokeMethod("kDeleteHistoryMethod", new (IdentityMapOfString$Object()).from(["_logic.isAllSelected", "0", "deleteSectionRowKeys", deleteSectionRowKeys]));
              let deleteModels = [];
              for (let model of this.cellModels) {
                if (dart.test(this[_logic].selectSectionRowKeys.contains(model.getSectionRowKey()))) {
                  deleteModels[$add](model);
                }
              }
              for (let model of deleteModels) {
                this.cellModels[$remove](model);
              }
            }
            this[_logic].selectSectionRowKeys.clear();
          }, VoidToNull()));
        }, VoidToNull()), child: dart.notNull(delectCount) > 0 ? new container.Container.new({padding: new edge_insets.EdgeInsets.only({right: 12.0}), child: new text.Text.new("删除(" + dart.str(delectCount) + ")", {style: new text_style.TextStyle.new({fontSize: 17.0, color: colors.Colors.red})})}) : new container.Container.new({padding: new edge_insets.EdgeInsets.only({right: 12.0}), child: new text.Text.new("删除", {style: new text_style.TextStyle.new({fontSize: 17.0, color: colors.Colors.grey})})})});
    };
    dart.fn(_getBottomBarDeleteView, VoidToGestureDetector());
    const _getBottomBarView = () => {
      if (dart.test(this.isEditMode)) {
        return new container.Container.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({height: 0.5, color: new ui.Color.fromRGBO(229, 229, 229, 1.0)}), new container.Container.new({height: 50.0, padding: new edge_insets.EdgeInsets.only({left: 12.0}), child: new basic.Row.new({children: JSArrayOfWidget().of([_getBottomBarSelectView(), _getBottomBarDeleteView()])})})])})});
      }
      return new container.Container.new();
    };
    dart.fn(_getBottomBarView, VoidToContainer());
    function _addHeaderForCell(cell) {
      return new basic.Column.new({crossAxisAlignment: flex.CrossAxisAlignment.start, mainAxisAlignment: flex.MainAxisAlignment.center, children: JSArrayOfWidget().of([new container.Container.new({height: 32.0, padding: new edge_insets.EdgeInsets.only({left: 16.0}), alignment: alignment.Alignment.centerLeft, child: new text.Text.new(cell.model.sectionTitle, {style: new text_style.TextStyle.new({fontWeight: ui.FontWeight.bold, fontSize: 14.0, color: new ui.Color.fromRGBO(38, 38, 38, 1.0)})})}), cell])});
    }
    dart.fn(_addHeaderForCell, VVMyHistoryPageCellToWidget());
    const _getRow = index => {
      let model = this.cellModels[$_get](index);
      let cell = new vv_my_history_page_cell.VVMyHistoryPageCell.new({model: model, isEditMode: this.isEditMode, isSelected: dart.test(this[_logic].isAllSelected) ? true : this[_logic].selectSectionRowKeys.contains(model.getSectionRowKey())});
      if (model.row === 0) {
        return _addHeaderForCell(cell);
      }
      return cell;
    };
    dart.fn(_getRow, intToWidget());
    const _getNoDataText = () => {
      let result = "";
      if (this[_logic].isEnd === 1) {
        result = "没有更多历史";
      } else if (this[_logic].isEnd === 2) {
        result = "最多纪录1000条浏览历史";
      } else if (this[_logic].isEnd === 3) {
        result = "仅展示近半年的浏览记录";
      }
      return result;
    };
    dart.fn(_getNoDataText, VoidToString());
    const _getScaffoldAppBar = () => {
      return new preferred_size.PreferredSize.new({preferredSize: new ui.Size.fromHeight(44.0), child: new app_bar.AppBar.new({leading: new icon_button.IconButton.new({icon: new image.Image.asset("assets/images/navigation_go_back_grey@2x.png", {width: 12.0, height: 24.0}), onPressed: dart.fn(() => {
              navigator.Navigator.pop(core.Object, context);
              this[_logic].invokeMethod("kPopViewControllerAnimated");
            }, VoidToNull())}), title: new text.Text.new("观看历史", {style: new text_style.TextStyle.new({fontSize: 18.0, fontWeight: ui.FontWeight.normal, color: colors.Colors.black})}), actions: JSArrayOfWidget().of([new container.Container.new({width: 60.0, height: 44.0, alignment: alignment.Alignment.center, child: new gesture_detector.GestureDetector.new({onTap: dart.fn(() => {
                  if (this.cellModels[$length] === 0) {
                    return;
                  }
                  this.setState(dart.fn(() => {
                    this.isEditMode = !dart.test(this.isEditMode);
                    if (dart.test(this.isEditMode)) {
                      this.editButtonText = "取消";
                    } else {
                      this.editButtonText = "编辑";
                      this[_logic].selectSectionRowKeys.clear();
                      this[_logic].isAllSelected = false;
                    }
                  }, VoidToNull()));
                }, VoidToNull()), child: new text.Text.new(this.editButtonText, {style: new text_style.TextStyle.new({fontSize: 16.0, fontWeight: ui.FontWeight.normal, color: dart.notNull(this.cellModels[$length]) > 0 ? colors.Colors.black : colors.Colors.grey})})})})]), elevation: 0.5})});
    };
    dart.fn(_getScaffoldAppBar, VoidToWidget());
    const _getScaffoldBody = () => {
      return new (NotificationListenerOfClickCellNotification()).new({onNotification: dart.fn(notification => {
          switch (notification.optionType) {
            case C0 || CT.C0:
            {
              if (!dart.test(this[_logic].selectSectionRowKeys.contains(notification.sectionRowKey))) {
                this.setState(dart.fn(() => {
                  this[_logic].selectSectionRowKeys.add(notification.sectionRowKey);
                  if (this[_logic].selectSectionRowKeys[$length] == this.cellModels[$length]) {
                    this[_logic].isAllSelected = true;
                  }
                }, VoidToNull()));
              }
              break;
            }
            case C1 || CT.C1:
            {
              if (dart.test(this[_logic].selectSectionRowKeys.contains(notification.sectionRowKey))) {
                this.setState(dart.fn(() => {
                  this[_logic].selectSectionRowKeys.remove(notification.sectionRowKey);
                  if (dart.test(this[_logic].isAllSelected) && this[_logic].selectSectionRowKeys[$length] != this.cellModels[$length]) {
                    this[_logic].isAllSelected = false;
                  }
                }, VoidToNull()));
              }
              break;
            }
            case C2 || CT.C2:
            {
              this[_logic].invokeMethod("kEnterYiTuoSanMethod", notification.sectionRowKey);
              break;
            }
          }
          return true;
        }, ClickCellNotificationTobool()), child: new safe_area.SafeArea.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new basic.Expanded.new({child: new smart_refresher.SmartRefresher.new({controller: this[_refreshController], enablePullUp: true, enablePullDown: false, footer: new classic_indicator.ClassicFooter.new({failedIcon: null, canLoadingIcon: null, idleIcon: null, noMoreIcon: null, loadingIcon: null, canLoadingText: "", failedText: "网络错误，请重试", noDataText: _getNoDataText(), loadingText: "", idleText: "上拉加载更多"}), child: new scroll_view.ListView.builder({itemCount: this.cellModels[$length], itemBuilder: dart.fn((context, position) => _getRow(position), BuildContextAndintToWidget())}), onLoading: dart.fn(() => {
                    this[_logic].invokeMethod("kRequestMyHistoryListMethod");
                  }, VoidToNull())})}), _getBottomBarView()])})})});
    };
    dart.fn(_getScaffoldBody, VoidToWidget());
    return new smart_refresher.RefreshConfiguration.new({footerTriggerDistance: 400.0, /*shouldFooterFollowWhenNotFull: dart.fn(state => true, LoadStatusTobool()),*/ child: new app.MaterialApp.new({theme: theme_data.ThemeData.new({primaryColor: colors.Colors.white}), home: new scaffold.Scaffold.new({appBar: preferred_size.PreferredSizeWidget._check(_getScaffoldAppBar()), body: _getScaffoldBody()})})});
  }
};
(vv_my_history_view._VVMyHistoryPageState.new = function() {
  this.editButtonText = "编辑";
  this.isEditMode = false;
  this[_logic] = null;
  this[_refreshController] = new smart_refresher.RefreshController.new();
  this.cellModels = JSArrayOfVVMyHistoryPageCellModel().of([new vv_my_history_model.VVMyHistoryPageCellModel.new({coverImageUrl: "https://helpx.adobe.com/content/dam/help/en/stock/how-to/visual-reverse-image-search/jcr_content/main-pars/image/visual-reverse-image-search-v2_intro.jpg", title: "王思聪被取消限制消费令", duration: "01:33", sectionTitle: "5小时前", section: 0, row: 0}), new vv_my_history_model.VVMyHistoryPageCellModel.new({coverImageUrl: "https://images.unsplash.com/photo-1499084732479-de2c02d45fcc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80", title: "滴滴顺风车回复运行首日, 乘客等半小时没车, 客服: 审核严格 车, 客服: 审核严格车, 客服: 审核严格车, 客服: 审核严格车, 客服: 审核严格车, 客服: 审核严格", duration: "01:41", sectionTitle: "7天前fs", section: 1, row: 0}), new vv_my_history_model.VVMyHistoryPageCellModel.new({coverImageUrl: "https://cdn.pixabay.com/photo/2017/01/20/00/30/maldives-1993704__340.jpg", title: "过程中，可以通过鼠标指针，实时查看指定的对象的值", duration: "01:42", sectionTitle: "7天前fs", section: 1, row: 1})]);
  vv_my_history_view._VVMyHistoryPageState.__proto__.new.call(this);
}).prototype = vv_my_history_view._VVMyHistoryPageState.prototype;
// Exports:
exports.biz__my_history__view__vv_my_history_view = vv_my_history_view;

//# sourceMappingURL=vv_my_history_view.ddc.js.map
