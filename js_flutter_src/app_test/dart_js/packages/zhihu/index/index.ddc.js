"use strict";
const dart_sdk = require("dart_sdk");
const core = dart_sdk.core;
const _interceptors = dart_sdk._interceptors;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__widgets__actions = require("packages/flutter/src/widgets/actions");
const framework =
  packages__flutter__src__widgets__actions.src__widgets__framework;
const icon = packages__flutter__src__widgets__actions.src__widgets__icon;
const widget_inspector =
  packages__flutter__src__widgets__actions.src__widgets__widget_inspector;
const text = packages__flutter__src__widgets__actions.src__widgets__text;
const bottom_navigation_bar_item =
  packages__flutter__src__widgets__actions.src__widgets__bottom_navigation_bar_item;
const basic = packages__flutter__src__widgets__actions.src__widgets__basic;
const packages__zhihu__index__navigation_icon_view = require("packages/zhihu/index/navigation_icon_view");
const navigation_icon_view =
  packages__zhihu__index__navigation_icon_view.index__navigation_icon_view;
const packages__flutter__material = require("packages/flutter/material");
const icons = packages__flutter__material.src__material__icons;
const bottom_navigation_bar =
  packages__flutter__material.src__material__bottom_navigation_bar;
const colors = packages__flutter__material.src__material__colors;
const app = packages__flutter__material.src__material__app;
const scaffold = packages__flutter__material.src__material__scaffold;
const packages__zhihu__home__home_page = require("packages/zhihu/home/home_page");
const home_page = packages__zhihu__home__home_page.home__home_page;
const packages__zhihu__idea__idea_page = require("packages/zhihu/idea/idea_page");
const idea_page = packages__zhihu__idea__idea_page.idea__idea_page;
const packages__zhihu__market__market_page = require("packages/zhihu/market/market_page");
const market_page = packages__zhihu__market__market_page.market__market_page;
const packages__zhihu__notice__notice_page = require("packages/zhihu/notice/notice_page");
const notice_page = packages__zhihu__notice__notice_page.notice__notice_page;
const packages__zhihu__my__my_page = require("packages/zhihu/my/my_page");
const my_page = packages__zhihu__my__my_page.my__my_page;
const packages__zhihu__global_config = require("packages/zhihu/global_config");
const global_config = packages__zhihu__global_config.global_config;
const index = Object.create(dart.library);
const $_get = dartx._get;
const $map = dartx.map;
const $toList = dartx.toList;
let JSArrayOfNavigationIconView = () =>
  (JSArrayOfNavigationIconView = dart.constFn(
    _interceptors.JSArray$(navigation_icon_view.NavigationIconView)
  ))();
let JSArrayOfStatefulWidget = () =>
  (JSArrayOfStatefulWidget = dart.constFn(
    _interceptors.JSArray$(framework.StatefulWidget)
  ))();
let VoidToNull = () =>
  (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
let NavigationIconViewToBottomNavigationBarItem = () =>
  (NavigationIconViewToBottomNavigationBarItem = dart.constFn(
    dart.fnType(bottom_navigation_bar_item.BottomNavigationBarItem, [
      navigation_icon_view.NavigationIconView
    ])
  ))();
let intToNull = () =>
  (intToNull = dart.constFn(dart.fnType(core.Null, [core.int])))();
const CT = Object.create(null);
index.Index = class Index extends framework.StatefulWidget {
  createState() {
    return new index._IndexState.new();
  }
};
(index.Index.new = function(opts) {
  let $36creationLocationd_0dea112b090073317d4 =
    opts && "$creationLocationd_0dea112b090073317d4" in opts
      ? opts.$creationLocationd_0dea112b090073317d4
      : null;
  index.Index.__proto__.new.call(this, {
    $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4
  });
}).prototype = index.Index.prototype;
dart.setLibraryUri(index.Index, "package:zhihu/index/index.dart");
const _currentIndex = dart.privateName(index, "_currentIndex");
const _navigationViews = dart.privateName(index, "_navigationViews");
const _pageList = dart.privateName(index, "_pageList");
const _currentPage = dart.privateName(index, "_currentPage");
const _Location_parameterLocations = dart.privateName(
  widget_inspector,
  "_Location.parameterLocations"
);
const _Location_name = dart.privateName(widget_inspector, "_Location.name");
const _Location_column = dart.privateName(widget_inspector, "_Location.column");
const _Location_line = dart.privateName(widget_inspector, "_Location.line");
const _Location_file = dart.privateName(widget_inspector, "_Location.file");
const _rebuild = dart.privateName(index, "_rebuild");
index._IndexState = class _IndexState extends framework.State$(index.Index) {
  [_rebuild]() {
    this.setState(dart.fn(() => {}, VoidToNull()));
  }
  initState() {
    this[_navigationViews] = JSArrayOfNavigationIconView().of([
      new navigation_icon_view.NavigationIconView.new({
        icon: new icon.Icon.new(icons.Icons.assignment, {
          $creationLocationd_0dea112b090073317d4: {}
        }),
        title: new text.Text.new("首页", {
          $creationLocationd_0dea112b090073317d4: {}
        })
      }),
      new navigation_icon_view.NavigationIconView.new({
        icon: new icon.Icon.new(icons.Icons.all_inclusive, {
          $creationLocationd_0dea112b090073317d4: {}
        }),
        title: new text.Text.new("想法", {
          $creationLocationd_0dea112b090073317d4: {}
        })
      }),
      new navigation_icon_view.NavigationIconView.new({
        icon: new icon.Icon.new(icons.Icons.add_shopping_cart, {
          $creationLocationd_0dea112b090073317d4: {}
        }),
        title: new text.Text.new("市场", {
          $creationLocationd_0dea112b090073317d4: {}
        })
      }),
      new navigation_icon_view.NavigationIconView.new({
        icon: new icon.Icon.new(icons.Icons.add_alert, {
          $creationLocationd_0dea112b090073317d4: {}
        }),
        title: new text.Text.new("通知", {
          $creationLocationd_0dea112b090073317d4: {}
        })
      }),
      new navigation_icon_view.NavigationIconView.new({
        icon: new icon.Icon.new(icons.Icons.perm_identity, {
          $creationLocationd_0dea112b090073317d4: {}
        }),
        title: new text.Text.new("我的", {
          $creationLocationd_0dea112b090073317d4: {}
        })
      })
    ]);
    this[_pageList] = JSArrayOfStatefulWidget().of([
      new home_page.HomePage.new({
        $creationLocationd_0dea112b090073317d4: {}
      }),
      new idea_page.IdeaPage.new({
        $creationLocationd_0dea112b090073317d4: {}
      }),
      new market_page.MarketPage.new({
        $creationLocationd_0dea112b090073317d4: {}
      }),
      new notice_page.NoticePage.new({
        $creationLocationd_0dea112b090073317d4: {}
      }),
      new my_page.MyPage.new({ $creationLocationd_0dea112b090073317d4: {} })
    ]);
    this[_currentPage] = this[_pageList][$_get](this[_currentIndex]);
  }
  dispose() {
    super.dispose();
  }
  build(context) {
    let bottomNavigationBar = new bottom_navigation_bar.BottomNavigationBar.new(
      {
        items: this[_navigationViews][$map](
          bottom_navigation_bar_item.BottomNavigationBarItem,
          dart.fn(
            navigationIconView => navigationIconView.item,
            NavigationIconViewToBottomNavigationBarItem()
          )
        )[$toList](),
        currentIndex: this[_currentIndex],
        fixedColor: colors.Colors.blue,
        type: bottom_navigation_bar.BottomNavigationBarType.fixed,
        onTap: dart.fn(index => {
          this.setState(
            dart.fn(() => {
              this[_currentIndex] = index;
              this[_currentPage] = this[_pageList][$_get](this[_currentIndex]);
            }, VoidToNull())
          );
        }, intToNull()),
        $creationLocationd_0dea112b090073317d4: {}
      }
    );
    return new app.MaterialApp.new({
      home: new scaffold.Scaffold.new({
        body: new basic.Center.new({
          child: this[_currentPage],
          $creationLocationd_0dea112b090073317d4: {}
        }),
        bottomNavigationBar: bottomNavigationBar,
        $creationLocationd_0dea112b090073317d4: {}
      }),
      theme: global_config.GlobalConfig.themeData,
      $creationLocationd_0dea112b090073317d4: {}
    });
  }
};
(index._IndexState.new = function() {
  this[_currentIndex] = 0;
  this[_navigationViews] = null;
  this[_pageList] = null;
  this[_currentPage] = null;
  index._IndexState.__proto__.new.call(this);
}).prototype = index._IndexState.prototype;
dart.setLibraryUri(index._IndexState, "package:zhihu/index/index.dart");
// Exports:
exports.index__index = index;

//# sourceMappingURL=index.ddc.js.map
