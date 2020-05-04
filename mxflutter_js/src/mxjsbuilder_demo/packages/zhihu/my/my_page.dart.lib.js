'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const _interceptors = dart_sdk._interceptors;
const ui = dart_sdk.ui;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__widgets__widget_span$46dart = require('packages/flutter/src/widgets/widget_span.dart');
const framework = packages__flutter__src__widgets__widget_span$46dart.src__widgets__framework;
const container = packages__flutter__src__widgets__widget_span$46dart.src__widgets__container;
const navigator = packages__flutter__src__widgets__widget_span$46dart.src__widgets__navigator;
const basic = packages__flutter__src__widgets__widget_span$46dart.src__widgets__basic;
const text = packages__flutter__src__widgets__widget_span$46dart.src__widgets__text;
const media_query = packages__flutter__src__widgets__widget_span$46dart.src__widgets__media_query;
const packages__flutter__src__material__icon_button$46dart = require('packages/flutter/src/material/icon_button.dart');
const flat_button = packages__flutter__src__material__icon_button$46dart.src__material__flat_button;
const list_tile = packages__flutter__src__material__icon_button$46dart.src__material__list_tile;
const theme_data = packages__flutter__src__material__icon_button$46dart.src__material__theme_data;
const scaffold = packages__flutter__src__material__icon_button$46dart.src__material__scaffold;
const app_bar = packages__flutter__src__material__icon_button$46dart.src__material__app_bar;
const packages__flutter__src__material__page$46dart = require('packages/flutter/src/material/page.dart');
const page = packages__flutter__src__material__page$46dart.src__material__page;
const packages__zhihu__home__search_page$46dart = require('packages/zhihu/home/search_page.dart');
const search_page = packages__zhihu__home__search_page$46dart.home__search_page;
const packages__flutter__src__widgets__icon$46dart = require('packages/flutter/src/widgets/icon.dart');
const icon = packages__flutter__src__widgets__icon$46dart.src__widgets__icon;
const packages__flutter__src__material__icons$46dart = require('packages/flutter/src/material/icons.dart');
const icons = packages__flutter__src__material__icons$46dart.src__material__icons;
const packages__flutter__src__painting__edge_insets$46dart = require('packages/flutter/src/painting/edge_insets.dart');
const edge_insets = packages__flutter__src__painting__edge_insets$46dart.src__painting__edge_insets;
const packages__flutter__src__painting__box_decoration$46dart = require('packages/flutter/src/painting/box_decoration.dart');
const box_decoration = packages__flutter__src__painting__box_decoration$46dart.src__painting__box_decoration;
const packages__flutter__src__painting__border_radius$46dart = require('packages/flutter/src/painting/border_radius.dart');
const border_radius = packages__flutter__src__painting__border_radius$46dart.src__painting__border_radius;
const packages__zhihu__global_config$46dart = require('packages/zhihu/global_config.dart');
const global_config = packages__zhihu__global_config$46dart.global_config;
const packages__flutter__src__material__colors$46dart = require('packages/flutter/src/material/colors.dart');
const colors = packages__flutter__src__material__colors$46dart.src__material__colors;
const packages__flutter__src__material__circle_avatar$46dart = require('packages/flutter/src/material/circle_avatar.dart');
const circle_avatar = packages__flutter__src__material__circle_avatar$46dart.src__material__circle_avatar;
const packages__flutter__src__painting___network_image_web$46dart = require('packages/flutter/src/painting/_network_image_web.dart');
const _network_image_web = packages__flutter__src__painting___network_image_web$46dart.src__painting___network_image_web;
const packages__flutter__src__rendering__flex$46dart = require('packages/flutter/src/rendering/flex.dart');
const flex = packages__flutter__src__rendering__flex$46dart.src__rendering__flex;
const packages__flutter__src__painting__strut_style$46dart = require('packages/flutter/src/painting/strut_style.dart');
const text_style = packages__flutter__src__painting__strut_style$46dart.src__painting__text_style;
const packages__flutter__src__painting__box_border$46dart = require('packages/flutter/src/painting/box_border.dart');
const box_border = packages__flutter__src__painting__box_border$46dart.src__painting__box_border;
const packages__flutter__src__painting__borders$46dart = require('packages/flutter/src/painting/borders.dart');
const borders = packages__flutter__src__painting__borders$46dart.src__painting__borders;
const packages__flutter__src__widgets__single_child_scroll_view$46dart = require('packages/flutter/src/widgets/single_child_scroll_view.dart');
const single_child_scroll_view = packages__flutter__src__widgets__single_child_scroll_view$46dart.src__widgets__single_child_scroll_view;
const packages__flutter__src__painting__basic_types$46dart = require('packages/flutter/src/painting/basic_types.dart');
const basic_types = packages__flutter__src__painting__basic_types$46dart.src__painting__basic_types;
const packages__flutter__src__painting__decoration_image$46dart = require('packages/flutter/src/painting/decoration_image.dart');
const decoration_image = packages__flutter__src__painting__decoration_image$46dart.src__painting__decoration_image;
const packages__flutter__src__painting__alignment$46dart = require('packages/flutter/src/painting/alignment.dart');
const alignment = packages__flutter__src__painting__alignment$46dart.src__painting__alignment;
const packages__flutter__src__material__app$46dart = require('packages/flutter/src/material/app.dart');
const app = packages__flutter__src__material__app$46dart.src__material__app;
var my_page = Object.create(dart.library);
var BuildContextToSearchPage = () => (BuildContextToSearchPage = dart.constFn(dart.fnType(search_page.SearchPage, [framework.BuildContext])))();
var VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
var JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
const CT = Object.create(null);
var L0 = "package:zhihu/my/my_page.dart";
dart.defineLazy(CT, {
  get C0() {
    return C0 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 26,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 0
    });
  },
  get C2() {
    return C2 = dart.const({
      __proto__: ui.Radius.prototype,
      [Radius_y]: 4,
      [Radius_x]: 4
    });
  },
  get C1() {
    return C1 = dart.const({
      __proto__: border_radius.BorderRadius.prototype,
      [BorderRadius_bottomRight]: C2 || CT.C2,
      [BorderRadius_bottomLeft]: C2 || CT.C2,
      [BorderRadius_topRight]: C2 || CT.C2,
      [BorderRadius_topLeft]: C2 || CT.C2
    });
  },
  get C3() {
    return C3 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 6,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 10,
      [EdgeInsets_left]: 0
    });
  },
  get C4() {
    return C4 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 8,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 12,
      [EdgeInsets_left]: 0
    });
  },
  get C5() {
    return C5 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 16,
      [EdgeInsets_right]: 16,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 16
    });
  },
  get C6() {
    return C6 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 2,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 0
    });
  },
  get C7() {
    return C7 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 2,
      [EdgeInsets_left]: 0
    });
  },
  get C8() {
    return C8 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 6,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 6,
      [EdgeInsets_left]: 0
    });
  },
  get C9() {
    return C9 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 6,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 0
    });
  },
  get C10() {
    return C10 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 16,
      [EdgeInsets_left]: 0
    });
  },
  get C11() {
    return C11 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 20,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 16
    });
  },
  get C12() {
    return C12 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 8
    });
  },
  get C13() {
    return C13 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 16
    });
  },
  get C14() {
    return C14 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 6,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 0
    });
  },
  get C16() {
    return C16 = dart.const({
      __proto__: ui.Radius.prototype,
      [Radius_y]: 6,
      [Radius_x]: 6
    });
  },
  get C15() {
    return C15 = dart.const({
      __proto__: border_radius.BorderRadius.prototype,
      [BorderRadius_bottomRight]: C16 || CT.C16,
      [BorderRadius_bottomLeft]: C16 || CT.C16,
      [BorderRadius_topRight]: C16 || CT.C16,
      [BorderRadius_topLeft]: C16 || CT.C16
    });
  },
  get C17() {
    return C17 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 10
    });
  },
  get C18() {
    return C18 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 6,
      [EdgeInsets_left]: 0
    });
  },
  get C19() {
    return C19 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 10,
      [EdgeInsets_right]: 10,
      [EdgeInsets_top]: 10,
      [EdgeInsets_left]: 10
    });
  }
}, false);
my_page.MyPage = class MyPage extends framework.StatefulWidget {
  createState() {
    return new my_page._MyPageState.new();
  }
};
(my_page.MyPage.new = function() {
  my_page.MyPage.__proto__.new.call(this);
  ;
}).prototype = my_page.MyPage.prototype;
dart.addTypeTests(my_page.MyPage);
dart.addTypeCaches(my_page.MyPage);
dart.setMethodSignature(my_page.MyPage, () => ({
  __proto__: dart.getMethods(my_page.MyPage.__proto__),
  createState: dart.fnType(my_page._MyPageState, [])
}));
dart.setLibraryUri(my_page.MyPage, L0);
var EdgeInsets_bottom = dart.privateName(edge_insets, "EdgeInsets.bottom");
var EdgeInsets_right = dart.privateName(edge_insets, "EdgeInsets.right");
var EdgeInsets_top = dart.privateName(edge_insets, "EdgeInsets.top");
var EdgeInsets_left = dart.privateName(edge_insets, "EdgeInsets.left");
var C0;
var Radius_y = dart.privateName(ui, "Radius.y");
var Radius_x = dart.privateName(ui, "Radius.x");
var C2;
var BorderRadius_bottomRight = dart.privateName(border_radius, "BorderRadius.bottomRight");
var BorderRadius_bottomLeft = dart.privateName(border_radius, "BorderRadius.bottomLeft");
var BorderRadius_topRight = dart.privateName(border_radius, "BorderRadius.topRight");
var BorderRadius_topLeft = dart.privateName(border_radius, "BorderRadius.topLeft");
var C1;
var C3;
var C4;
var C5;
var C6;
var C7;
var C8;
var C9;
var C10;
var C11;
var C12;
var C13;
var C14;
var C16;
var C15;
var C17;
var C18;
var C19;
my_page._MyPageState = class _MyPageState extends framework.State$(my_page.MyPage) {
  barSearch() {
    return new container.Container.new({child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
          navigator.Navigator.of(this.context).push(dart.dynamic, new page.MaterialPageRoute.new({builder: dart.fn(context => new search_page.SearchPage.new(), BuildContextToSearchPage())}));
        }, VoidToNull()), child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({child: new icon.Icon.new(icons.Icons.search, {size: 18.0}), margin: C0 || CT.C0}), new basic.Expanded.new({child: new container.Container.new({child: new text.Text.new("搜索知乎内容")})}), new container.Container.new({child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                }, VoidToNull()), child: new icon.Icon.new(icons.Icons.settings_overscan, {size: 18.0})}), width: 40.0})])})}), decoration: new box_decoration.BoxDecoration.new({borderRadius: C1 || CT.C1, color: global_config.GlobalConfig.searchBackgroundColor})});
  }
  myInfoCard() {
    return new container.Container.new({color: global_config.GlobalConfig.cardBackgroundColor, margin: C3 || CT.C3, padding: C4 || CT.C4, child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({margin: C5 || CT.C5, decoration: new box_decoration.BoxDecoration.new({color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white10 : new ui.Color.new(4294309365), borderRadius: new border_radius.BorderRadius.all(new ui.Radius.circular(6.0))}), child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
              }, VoidToNull()), child: new container.Container.new({child: new list_tile.ListTile.new({leading: new container.Container.new({child: new circle_avatar.CircleAvatar.new({backgroundImage: new _network_image_web.NetworkImage.new("https://pic1.zhimg.com/v2-ec7ed574da66e1b495fcad2cc3d71cb9_xl.jpg"), radius: 20.0})}), title: new container.Container.new({margin: C6 || CT.C6, child: new text.Text.new("learner")}), subtitle: new container.Container.new({margin: C7 || CT.C7, child: new text.Text.new("查看或编辑个人主页")})})})})}), new container.Container.new({child: new basic.Row.new({mainAxisAlignment: flex.MainAxisAlignment.center, children: JSArrayOfWidget().of([new container.Container.new({width: (dart.notNull(media_query.MediaQuery.of(this.context).size.width) - 6.0) / 4, child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                    }, VoidToNull()), child: new container.Container.new({height: 50.0, child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({child: new text.Text.new("57", {style: new text_style.TextStyle.new({fontSize: 16.0, color: global_config.GlobalConfig.fontColor})})}), new container.Container.new({child: new text.Text.new("我的创作", {style: new text_style.TextStyle.new({fontSize: 12.0, color: global_config.GlobalConfig.fontColor})})})])})})})}), new container.Container.new({height: 14.0, width: 1.0, decoration: new box_decoration.BoxDecoration.new({border: new box_border.BorderDirectional.new({start: new borders.BorderSide.new({color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white12 : colors.Colors.black12, width: 1.0})})})}), new container.Container.new({width: (dart.notNull(media_query.MediaQuery.of(this.context).size.width) - 6.0) / 4, child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                    }, VoidToNull()), child: new container.Container.new({height: 50.0, child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({child: new text.Text.new("210", {style: new text_style.TextStyle.new({fontSize: 16.0, color: global_config.GlobalConfig.fontColor})})}), new container.Container.new({child: new text.Text.new("关注", {style: new text_style.TextStyle.new({fontSize: 12.0, color: global_config.GlobalConfig.fontColor})})})])})})})}), new container.Container.new({height: 14.0, width: 1.0, decoration: new box_decoration.BoxDecoration.new({border: new box_border.BorderDirectional.new({start: new borders.BorderSide.new({color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white12 : colors.Colors.black12, width: 1.0})})})}), new container.Container.new({width: (dart.notNull(media_query.MediaQuery.of(this.context).size.width) - 6.0) / 4, child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                    }, VoidToNull()), child: new container.Container.new({height: 50.0, child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({child: new text.Text.new("18", {style: new text_style.TextStyle.new({fontSize: 16.0, color: global_config.GlobalConfig.fontColor})})}), new container.Container.new({child: new text.Text.new("我的收藏", {style: new text_style.TextStyle.new({fontSize: 12.0, color: global_config.GlobalConfig.fontColor})})})])})})})}), new container.Container.new({height: 14.0, width: 1.0, decoration: new box_decoration.BoxDecoration.new({border: new box_border.BorderDirectional.new({start: new borders.BorderSide.new({color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white12 : colors.Colors.black12, width: 1.0})})})}), new container.Container.new({width: (dart.notNull(media_query.MediaQuery.of(this.context).size.width) - 6.0) / 4, child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                    }, VoidToNull()), child: new container.Container.new({height: 50.0, child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({child: new text.Text.new("33", {style: new text_style.TextStyle.new({fontSize: 16.0, color: global_config.GlobalConfig.fontColor})})}), new container.Container.new({child: new text.Text.new("最近浏览", {style: new text_style.TextStyle.new({fontSize: 12.0, color: global_config.GlobalConfig.fontColor})})})])})})})})])})})])})});
  }
  myServiceCard() {
    return new container.Container.new({color: global_config.GlobalConfig.cardBackgroundColor, margin: C8 || CT.C8, padding: C4 || CT.C4, child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({child: new basic.Row.new({mainAxisAlignment: flex.MainAxisAlignment.center, children: JSArrayOfWidget().of([new container.Container.new({width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 4, child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                    }, VoidToNull()), child: new container.Container.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({margin: C9 || CT.C9, child: new circle_avatar.CircleAvatar.new({radius: 20.0, child: new icon.Icon.new(icons.Icons.book, {color: colors.Colors.white}), backgroundColor: colors.Colors.green})}), new container.Container.new({child: new text.Text.new("我的书架", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor, fontSize: 14.0})})})])})})})}), new container.Container.new({width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 4, child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                    }, VoidToNull()), child: new container.Container.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({margin: C9 || CT.C9, child: new circle_avatar.CircleAvatar.new({radius: 20.0, child: new icon.Icon.new(icons.Icons.flash_on, {color: colors.Colors.white}), backgroundColor: colors.Colors.blue})}), new container.Container.new({child: new text.Text.new("我的 Live", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor, fontSize: 14.0})})})])})})})}), new container.Container.new({width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 4, child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                    }, VoidToNull()), child: new container.Container.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({margin: C9 || CT.C9, child: new circle_avatar.CircleAvatar.new({radius: 20.0, child: new icon.Icon.new(icons.Icons.free_breakfast, {color: colors.Colors.white}), backgroundColor: new ui.Color.new(4289105746)})}), new container.Container.new({child: new text.Text.new("私家课", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor, fontSize: 14.0})})})])})})})}), new container.Container.new({width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 4, child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                    }, VoidToNull()), child: new container.Container.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({margin: C9 || CT.C9, child: new circle_avatar.CircleAvatar.new({radius: 20.0, child: new icon.Icon.new(icons.Icons.attach_money, {color: colors.Colors.white}), backgroundColor: new ui.Color.new(4281686683)})}), new container.Container.new({child: new text.Text.new("付费咨询", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor, fontSize: 14.0})})})])})})})})])})}), new container.Container.new({margin: C10 || CT.C10, child: new basic.Row.new({mainAxisAlignment: flex.MainAxisAlignment.start, children: JSArrayOfWidget().of([new container.Container.new({width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 4, child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                    }, VoidToNull()), child: new container.Container.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({margin: C9 || CT.C9, child: new circle_avatar.CircleAvatar.new({radius: 20.0, child: new icon.Icon.new(icons.Icons.shop, {color: colors.Colors.white}), backgroundColor: new ui.Color.new(4278750644)})}), new container.Container.new({child: new text.Text.new("已购", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor, fontSize: 14.0})})})])})})})}), new container.Container.new({width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 4, child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                    }, VoidToNull()), child: new container.Container.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({margin: C9 || CT.C9, child: new circle_avatar.CircleAvatar.new({radius: 20.0, child: new icon.Icon.new(icons.Icons.radio, {color: colors.Colors.white}), backgroundColor: colors.Colors.blue})}), new container.Container.new({child: new text.Text.new("余额礼卷", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor, fontSize: 14.0})})})])})})})}), new container.Container.new({width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 4, child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                    }, VoidToNull()), child: new container.Container.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({margin: C9 || CT.C9, child: new circle_avatar.CircleAvatar.new({radius: 20.0, child: new icon.Icon.new(icons.Icons.wifi_tethering, {color: colors.Colors.white}), backgroundColor: new ui.Color.new(4278360639)})}), new container.Container.new({child: new text.Text.new("服务", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor, fontSize: 14.0})})})])})})})})])})})])})});
  }
  settingCard() {
    return new container.Container.new({color: global_config.GlobalConfig.cardBackgroundColor, margin: C8 || CT.C8, padding: C4 || CT.C4, child: new basic.Row.new({mainAxisAlignment: flex.MainAxisAlignment.start, children: JSArrayOfWidget().of([new container.Container.new({width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 4, child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
              }, VoidToNull()), child: new container.Container.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({margin: C9 || CT.C9, child: new circle_avatar.CircleAvatar.new({radius: 20.0, child: new icon.Icon.new(icons.Icons.invert_colors, {color: colors.Colors.white}), backgroundColor: new ui.Color.new(4290283520)})}), new container.Container.new({child: new text.Text.new("社区建设", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor, fontSize: 14.0})})})])})})})}), new container.Container.new({width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 4, child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
              }, VoidToNull()), child: new container.Container.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({margin: C9 || CT.C9, child: new circle_avatar.CircleAvatar.new({radius: 20.0, child: new icon.Icon.new(icons.Icons.golf_course, {color: colors.Colors.white}), backgroundColor: new ui.Color.new(4284703085)})}), new container.Container.new({child: new text.Text.new("反馈", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor, fontSize: 14.0})})})])})})})}), new container.Container.new({width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 4, child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                this.setState(dart.fn(() => {
                  if (dart.equals(global_config.GlobalConfig.dark, true)) {
                    global_config.GlobalConfig.themeData = theme_data.ThemeData.new({primaryColor: colors.Colors.white, scaffoldBackgroundColor: new ui.Color.new(4293651435)});
                    global_config.GlobalConfig.searchBackgroundColor = new ui.Color.new(4293651435);
                    global_config.GlobalConfig.cardBackgroundColor = colors.Colors.white;
                    global_config.GlobalConfig.fontColor = colors.Colors.black54;
                    global_config.GlobalConfig.dark = false;
                  } else {
                    global_config.GlobalConfig.themeData = theme_data.ThemeData.dark();
                    global_config.GlobalConfig.searchBackgroundColor = colors.Colors.white10;
                    global_config.GlobalConfig.cardBackgroundColor = new ui.Color.new(4280427042);
                    global_config.GlobalConfig.fontColor = colors.Colors.white30;
                    global_config.GlobalConfig.dark = true;
                  }
                }, VoidToNull()));
              }, VoidToNull()), child: new container.Container.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({margin: C9 || CT.C9, child: new circle_avatar.CircleAvatar.new({radius: 20.0, child: new icon.Icon.new(dart.equals(global_config.GlobalConfig.dark, true) ? icons.Icons.wb_sunny : icons.Icons.brightness_2, {color: colors.Colors.white}), backgroundColor: new ui.Color.new(4290275853)})}), new container.Container.new({child: new text.Text.new(dart.equals(global_config.GlobalConfig.dark, true) ? "日间模式" : "夜间模式", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor, fontSize: 14.0})})})])})})})}), new container.Container.new({width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 4, child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
              }, VoidToNull()), child: new container.Container.new({child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({margin: C9 || CT.C9, child: new circle_avatar.CircleAvatar.new({radius: 20.0, child: new icon.Icon.new(icons.Icons.perm_data_setting, {color: colors.Colors.white}), backgroundColor: new ui.Color.new(4284703337)})}), new container.Container.new({child: new text.Text.new("设置", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor, fontSize: 14.0})})})])})})})})])})});
  }
  videoCard() {
    return new container.Container.new({color: global_config.GlobalConfig.cardBackgroundColor, margin: C8 || CT.C8, padding: C4 || CT.C4, child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({margin: C11 || CT.C11, child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({child: new circle_avatar.CircleAvatar.new({radius: 20.0, child: new icon.Icon.new(icons.Icons.videocam, {color: colors.Colors.white}), backgroundColor: new ui.Color.new(4289947909)})}), new basic.Expanded.new({child: new container.Container.new({margin: C12 || CT.C12, child: new text.Text.new("视频创作", {style: new text_style.TextStyle.new({fontSize: 18.0})})})}), new container.Container.new({child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                    }, VoidToNull()), child: new text.Text.new("拍一个", {style: new text_style.TextStyle.new({color: colors.Colors.blue})})})})])})}), new container.Container.new({margin: C13 || CT.C13, child: new single_child_scroll_view.SingleChildScrollView.new({scrollDirection: basic_types.Axis.horizontal, child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 2.5, margin: C14 || CT.C14, child: new basic.AspectRatio.new({aspectRatio: 4.0 / 2.0, child: new container.Container.new({foregroundDecoration: new box_decoration.BoxDecoration.new({image: new decoration_image.DecorationImage.new({image: new _network_image_web.NetworkImage.new("https://pic2.zhimg.com/50/v2-5942a51e6b834f10074f8d50be5bbd4d_400x224.jpg"), centerSlice: new ui.Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0)}), borderRadius: C15 || CT.C15})})})}), new container.Container.new({margin: C14 || CT.C14, width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 2.5, child: new basic.AspectRatio.new({aspectRatio: 4.0 / 2.0, child: new container.Container.new({foregroundDecoration: new box_decoration.BoxDecoration.new({image: new decoration_image.DecorationImage.new({image: new _network_image_web.NetworkImage.new("https://pic3.zhimg.com/50/v2-7fc9a1572c6fc72a3dea0b73a9be36e7_400x224.jpg"), centerSlice: new ui.Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0)}), borderRadius: C15 || CT.C15})})})}), new container.Container.new({margin: C14 || CT.C14, width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 2.5, child: new basic.AspectRatio.new({aspectRatio: 4.0 / 2.0, child: new container.Container.new({foregroundDecoration: new box_decoration.BoxDecoration.new({image: new decoration_image.DecorationImage.new({image: new _network_image_web.NetworkImage.new("https://pic4.zhimg.com/50/v2-898f43a488b606061c877ac2a471e221_400x224.jpg"), centerSlice: new ui.Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0)}), borderRadius: C15 || CT.C15})})})}), new container.Container.new({width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 2.5, child: new basic.AspectRatio.new({aspectRatio: 4.0 / 2.0, child: new container.Container.new({foregroundDecoration: new box_decoration.BoxDecoration.new({image: new decoration_image.DecorationImage.new({image: new _network_image_web.NetworkImage.new("https://pic1.zhimg.com/50/v2-0008057d1ad2bd813aea4fc247959e63_400x224.jpg"), centerSlice: new ui.Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0)}), borderRadius: C15 || CT.C15})})})})])})})})])})});
  }
  ideaCard() {
    return new container.Container.new({color: global_config.GlobalConfig.cardBackgroundColor, margin: C8 || CT.C8, padding: C4 || CT.C4, child: new basic.Column.new({children: JSArrayOfWidget().of([new container.Container.new({margin: C11 || CT.C11, child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({child: new circle_avatar.CircleAvatar.new({radius: 20.0, child: new icon.Icon.new(icons.Icons.all_inclusive, {color: colors.Colors.white}), backgroundColor: colors.Colors.blue})}), new basic.Expanded.new({child: new container.Container.new({margin: C12 || CT.C12, child: new text.Text.new("想法", {style: new text_style.TextStyle.new({fontSize: 18.0})})})}), new container.Container.new({child: new flat_button.FlatButton.new({onPressed: dart.fn(() => {
                    }, VoidToNull()), child: new text.Text.new("去往想法首页", {style: new text_style.TextStyle.new({color: colors.Colors.blue})})})})])})}), new container.Container.new({margin: C13 || CT.C13, child: new single_child_scroll_view.SingleChildScrollView.new({scrollDirection: basic_types.Axis.horizontal, child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({margin: C14 || CT.C14, decoration: new box_decoration.BoxDecoration.new({color: global_config.GlobalConfig.searchBackgroundColor, borderRadius: new border_radius.BorderRadius.all(new ui.Radius.circular(6.0))}), child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({padding: C17 || CT.C17, child: new basic.Column.new({children: JSArrayOfWidget().of([new basic.Align.new({alignment: alignment.Alignment.centerLeft, child: new container.Container.new({child: new text.Text.new("苹果 WWDC 2018 正在举行", {style: new text_style.TextStyle.new({color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white70 : colors.Colors.black, fontSize: 16.0})})})}), new basic.Align.new({alignment: alignment.Alignment.centerLeft, child: new container.Container.new({margin: C18 || CT.C18, child: new text.Text.new("软件更新意料之中，硬件之谜...", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor})})})})])})}), new container.Container.new({margin: C19 || CT.C19, width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 5, child: new basic.AspectRatio.new({aspectRatio: 1.0 / 1.0, child: new container.Container.new({foregroundDecoration: new box_decoration.BoxDecoration.new({image: new decoration_image.DecorationImage.new({image: new _network_image_web.NetworkImage.new("https://pic2.zhimg.com/50/v2-55039fa535f3fe06365c0fcdaa9e3847_400x224.jpg"), centerSlice: new ui.Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0)}), borderRadius: C15 || CT.C15})})})})])})}), new container.Container.new({margin: C14 || CT.C14, decoration: new box_decoration.BoxDecoration.new({color: global_config.GlobalConfig.searchBackgroundColor, borderRadius: new border_radius.BorderRadius.all(new ui.Radius.circular(6.0))}), child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({padding: C17 || CT.C17, child: new basic.Column.new({children: JSArrayOfWidget().of([new basic.Align.new({alignment: alignment.Alignment.centerLeft, child: new container.Container.new({child: new text.Text.new("此刻你的桌子是什么样子？", {style: new text_style.TextStyle.new({color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white70 : colors.Colors.black, fontSize: 16.0})})})}), new basic.Align.new({alignment: alignment.Alignment.centerLeft, child: new container.Container.new({margin: C18 || CT.C18, child: new text.Text.new("晒一晒你的书桌/办公桌", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor})})})})])})}), new container.Container.new({margin: C19 || CT.C19, width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 5, child: new basic.AspectRatio.new({aspectRatio: 1.0 / 1.0, child: new container.Container.new({foregroundDecoration: new box_decoration.BoxDecoration.new({image: new decoration_image.DecorationImage.new({image: new _network_image_web.NetworkImage.new("https://pic3.zhimg.com/v2-b4551f702970ff37709cdd7fd884de5e_294x245|adx4.png"), centerSlice: new ui.Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0)}), borderRadius: C15 || CT.C15})})})})])})}), new container.Container.new({margin: C14 || CT.C14, decoration: new box_decoration.BoxDecoration.new({color: global_config.GlobalConfig.searchBackgroundColor, borderRadius: new border_radius.BorderRadius.all(new ui.Radius.circular(6.0))}), child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({padding: C17 || CT.C17, child: new basic.Column.new({children: JSArrayOfWidget().of([new basic.Align.new({alignment: alignment.Alignment.centerLeft, child: new container.Container.new({child: new text.Text.new("关于高考你印象最深的是...", {style: new text_style.TextStyle.new({color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white70 : colors.Colors.black, fontSize: 16.0})})})}), new basic.Align.new({alignment: alignment.Alignment.centerLeft, child: new container.Container.new({margin: C18 || CT.C18, child: new text.Text.new("聊聊你的高三生活", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor})})})})])})}), new container.Container.new({margin: C19 || CT.C19, width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 5, child: new basic.AspectRatio.new({aspectRatio: 1.0 / 1.0, child: new container.Container.new({foregroundDecoration: new box_decoration.BoxDecoration.new({image: new decoration_image.DecorationImage.new({image: new _network_image_web.NetworkImage.new("https://pic2.zhimg.com/50/v2-ce2e01a047e4aba9bfabf8469cfd3e75_400x224.jpg"), centerSlice: new ui.Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0)}), borderRadius: C15 || CT.C15})})})})])})}), new container.Container.new({margin: C14 || CT.C14, decoration: new box_decoration.BoxDecoration.new({color: global_config.GlobalConfig.searchBackgroundColor, borderRadius: new border_radius.BorderRadius.all(new ui.Radius.circular(6.0))}), child: new basic.Row.new({children: JSArrayOfWidget().of([new container.Container.new({padding: C17 || CT.C17, child: new basic.Column.new({children: JSArrayOfWidget().of([new basic.Align.new({alignment: alignment.Alignment.centerLeft, child: new container.Container.new({child: new text.Text.new("夏天一定要吃的食物有哪些", {style: new text_style.TextStyle.new({color: dart.equals(global_config.GlobalConfig.dark, true) ? colors.Colors.white70 : colors.Colors.black, fontSize: 16.0})})})}), new basic.Align.new({alignment: alignment.Alignment.centerLeft, child: new container.Container.new({margin: C18 || CT.C18, child: new text.Text.new("最适合夏天吃的那种", {style: new text_style.TextStyle.new({color: global_config.GlobalConfig.fontColor})})})})])})}), new container.Container.new({margin: C19 || CT.C19, width: dart.notNull(media_query.MediaQuery.of(this.context).size.width) / 5, child: new basic.AspectRatio.new({aspectRatio: 1.0 / 1.0, child: new container.Container.new({foregroundDecoration: new box_decoration.BoxDecoration.new({image: new decoration_image.DecorationImage.new({image: new _network_image_web.NetworkImage.new("https://pic1.zhimg.com/50/v2-bb3806c2ced60e5b7f38a0aa06b89511_400x224.jpg"), centerSlice: new ui.Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0)}), borderRadius: C15 || CT.C15})})})})])})})])})})})])})});
  }
  build(context) {
    return new app.MaterialApp.new({theme: global_config.GlobalConfig.themeData, home: new scaffold.Scaffold.new({appBar: new app_bar.AppBar.new({title: this.barSearch()}), body: new single_child_scroll_view.SingleChildScrollView.new({child: new container.Container.new({child: new basic.Column.new({children: JSArrayOfWidget().of([this.myInfoCard(), this.myServiceCard(), this.settingCard(), this.videoCard(), this.ideaCard()])})})})})});
  }
};
(my_page._MyPageState.new = function() {
  my_page._MyPageState.__proto__.new.call(this);
  ;
}).prototype = my_page._MyPageState.prototype;
dart.addTypeTests(my_page._MyPageState);
dart.addTypeCaches(my_page._MyPageState);
dart.setMethodSignature(my_page._MyPageState, () => ({
  __proto__: dart.getMethods(my_page._MyPageState.__proto__),
  barSearch: dart.fnType(framework.Widget, []),
  myInfoCard: dart.fnType(framework.Widget, []),
  myServiceCard: dart.fnType(framework.Widget, []),
  settingCard: dart.fnType(framework.Widget, []),
  videoCard: dart.fnType(framework.Widget, []),
  ideaCard: dart.fnType(framework.Widget, []),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(my_page._MyPageState, L0);
// Exports:
exports.my__my_page = my_page;

//# sourceMappingURL=my_page.dart.lib.js.map
