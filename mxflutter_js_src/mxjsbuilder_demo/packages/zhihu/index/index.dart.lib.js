'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const _interceptors = dart_sdk._interceptors;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__widgets__widget_span$46dart = require('packages/flutter/src/widgets/widget_span.dart');
const framework = packages__flutter__src__widgets__widget_span$46dart.src__widgets__framework;
const text = packages__flutter__src__widgets__widget_span$46dart.src__widgets__text;
const basic = packages__flutter__src__widgets__widget_span$46dart.src__widgets__basic;
const packages__zhihu__index__navigation_icon_view$46dart = require('packages/zhihu/index/navigation_icon_view.dart');
const navigation_icon_view = packages__zhihu__index__navigation_icon_view$46dart.index__navigation_icon_view;
const packages__flutter__src__widgets__icon$46dart = require('packages/flutter/src/widgets/icon.dart');
const icon = packages__flutter__src__widgets__icon$46dart.src__widgets__icon;
const packages__flutter__src__material__icons$46dart = require('packages/flutter/src/material/icons.dart');
const icons = packages__flutter__src__material__icons$46dart.src__material__icons;
const packages__zhihu__home__home_page$46dart = require('packages/zhihu/home/home_page.dart');
const home_page = packages__zhihu__home__home_page$46dart.home__home_page;
const packages__zhihu__idea__idea_page$46dart = require('packages/zhihu/idea/idea_page.dart');
const idea_page = packages__zhihu__idea__idea_page$46dart.idea__idea_page;
const packages__zhihu__market__market_page$46dart = require('packages/zhihu/market/market_page.dart');
const market_page = packages__zhihu__market__market_page$46dart.market__market_page;
const packages__zhihu__notice__notice_page$46dart = require('packages/zhihu/notice/notice_page.dart');
const notice_page = packages__zhihu__notice__notice_page$46dart.notice__notice_page;
const packages__zhihu__my__my_page$46dart = require('packages/zhihu/my/my_page.dart');
const my_page = packages__zhihu__my__my_page$46dart.my__my_page;
const packages__flutter__src__material__bottom_navigation_bar$46dart = require('packages/flutter/src/material/bottom_navigation_bar.dart');
const bottom_navigation_bar = packages__flutter__src__material__bottom_navigation_bar$46dart.src__material__bottom_navigation_bar;
const packages__flutter__src__widgets__bottom_navigation_bar_item$46dart = require('packages/flutter/src/widgets/bottom_navigation_bar_item.dart');
const bottom_navigation_bar_item = packages__flutter__src__widgets__bottom_navigation_bar_item$46dart.src__widgets__bottom_navigation_bar_item;
const packages__flutter__src__material__colors$46dart = require('packages/flutter/src/material/colors.dart');
const colors = packages__flutter__src__material__colors$46dart.src__material__colors;
const packages__flutter__src__material__app$46dart = require('packages/flutter/src/material/app.dart');
const app = packages__flutter__src__material__app$46dart.src__material__app;
const packages__flutter__src__material__icon_button$46dart = require('packages/flutter/src/material/icon_button.dart');
const scaffold = packages__flutter__src__material__icon_button$46dart.src__material__scaffold;
const packages__zhihu__global_config$46dart = require('packages/zhihu/global_config.dart');
const global_config = packages__zhihu__global_config$46dart.global_config;
var index = Object.create(dart.library);
var $_get = dartx._get;
var $map = dartx.map;
var $toList = dartx.toList;
var JSArrayOfNavigationIconView = () => (JSArrayOfNavigationIconView = dart.constFn(_interceptors.JSArray$(navigation_icon_view.NavigationIconView)))();
var JSArrayOfStatefulWidget = () => (JSArrayOfStatefulWidget = dart.constFn(_interceptors.JSArray$(framework.StatefulWidget)))();
var VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
var NavigationIconViewToBottomNavigationBarItem = () => (NavigationIconViewToBottomNavigationBarItem = dart.constFn(dart.fnType(bottom_navigation_bar_item.BottomNavigationBarItem, [navigation_icon_view.NavigationIconView])))();
var intToNull = () => (intToNull = dart.constFn(dart.fnType(core.Null, [core.int])))();
const CT = Object.create(null);
var L0 = "package:zhihu/index/index.dart";
index.Index = class Index extends framework.StatefulWidget {
  createState() {
    return new index._IndexState.new();
  }
};
(index.Index.new = function() {
  index.Index.__proto__.new.call(this);
  ;
}).prototype = index.Index.prototype;
dart.addTypeTests(index.Index);
dart.addTypeCaches(index.Index);
dart.setMethodSignature(index.Index, () => ({
  __proto__: dart.getMethods(index.Index.__proto__),
  createState: dart.fnType(framework.State$(index.Index), [])
}));
dart.setLibraryUri(index.Index, L0);
var _currentIndex = dart.privateName(index, "_currentIndex");
var _navigationViews = dart.privateName(index, "_navigationViews");
var _pageList = dart.privateName(index, "_pageList");
var _currentPage = dart.privateName(index, "_currentPage");
var _rebuild = dart.privateName(index, "_rebuild");
index._IndexState = class _IndexState extends framework.State$(index.Index) {
  initState() {
    super.initState();
    this[_navigationViews] = JSArrayOfNavigationIconView().of([new navigation_icon_view.NavigationIconView.new({icon: new icon.Icon.new(icons.Icons.assignment), title: new text.Text.new("首页")}), new navigation_icon_view.NavigationIconView.new({icon: new icon.Icon.new(icons.Icons.all_inclusive), title: new text.Text.new("想法")}), new navigation_icon_view.NavigationIconView.new({icon: new icon.Icon.new(icons.Icons.add_shopping_cart), title: new text.Text.new("市场")}), new navigation_icon_view.NavigationIconView.new({icon: new icon.Icon.new(icons.Icons.add_alert), title: new text.Text.new("通知")}), new navigation_icon_view.NavigationIconView.new({icon: new icon.Icon.new(icons.Icons.perm_identity), title: new text.Text.new("我的")})]);
    this[_pageList] = JSArrayOfStatefulWidget().of([new home_page.HomePage.new(), new idea_page.IdeaPage.new(), new market_page.MarketPage.new(), new notice_page.NoticePage.new(), new my_page.MyPage.new()]);
    this[_currentPage] = this[_pageList][$_get](this[_currentIndex]);
  }
  [_rebuild]() {
    this.setState(dart.fn(() => {
    }, VoidToNull()));
  }
  dispose() {
    super.dispose();
  }
  build(context) {
    let bottomNavigationBar = new bottom_navigation_bar.BottomNavigationBar.new({items: this[_navigationViews][$map](bottom_navigation_bar_item.BottomNavigationBarItem, dart.fn(navigationIconView => navigationIconView.item, NavigationIconViewToBottomNavigationBarItem()))[$toList](), currentIndex: this[_currentIndex], fixedColor: colors.Colors.blue, type: bottom_navigation_bar.BottomNavigationBarType.fixed, onTap: dart.fn(index => {
        this.setState(dart.fn(() => {
          this[_currentIndex] = index;
          this[_currentPage] = this[_pageList][$_get](this[_currentIndex]);
        }, VoidToNull()));
      }, intToNull())});
    return new app.MaterialApp.new({home: new scaffold.Scaffold.new({body: new basic.Center.new({child: this[_currentPage]}), bottomNavigationBar: bottomNavigationBar}), theme: global_config.GlobalConfig.themeData});
  }
};
(index._IndexState.new = function() {
  this[_currentIndex] = 0;
  this[_navigationViews] = null;
  this[_pageList] = null;
  this[_currentPage] = null;
  index._IndexState.__proto__.new.call(this);
  ;
}).prototype = index._IndexState.prototype;
dart.addTypeTests(index._IndexState);
dart.addTypeCaches(index._IndexState);
dart.setMethodSignature(index._IndexState, () => ({
  __proto__: dart.getMethods(index._IndexState.__proto__),
  [_rebuild]: dart.fnType(dart.void, []),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(index._IndexState, L0);
dart.setFieldSignature(index._IndexState, () => ({
  __proto__: dart.getFields(index._IndexState.__proto__),
  [_currentIndex]: dart.fieldType(core.int),
  [_navigationViews]: dart.fieldType(core.List$(navigation_icon_view.NavigationIconView)),
  [_pageList]: dart.fieldType(core.List$(framework.StatefulWidget)),
  [_currentPage]: dart.fieldType(framework.StatefulWidget)
}));
// Exports:
exports.index__index = index;

//# sourceMappingURL=index.dart.lib.js.map
