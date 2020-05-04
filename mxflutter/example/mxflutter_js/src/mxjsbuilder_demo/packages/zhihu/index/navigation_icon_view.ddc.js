'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const bottom_navigation_bar_item = packages__flutter__src__widgets__actions.src__widgets__bottom_navigation_bar_item;
const navigation_icon_view = Object.create(dart.library);
const CT = Object.create(null);
const item = dart.privateName(navigation_icon_view, "NavigationIconView.item");
navigation_icon_view.NavigationIconView = class NavigationIconView extends core.Object {
  get item() {
    return this[item];
  }
  set item(value) {
    super.item = value;
  }
};
(navigation_icon_view.NavigationIconView.new = function(opts) {
  let icon = opts && 'icon' in opts ? opts.icon : null;
  let title = opts && 'title' in opts ? opts.title : null;
  let vsync = opts && 'vsync' in opts ? opts.vsync : null;
  this[item] = new bottom_navigation_bar_item.BottomNavigationBarItem.new({icon: icon, title: title});
}).prototype = navigation_icon_view.NavigationIconView.prototype;
// Exports:
exports.index__navigation_icon_view = navigation_icon_view;

//# sourceMappingURL=navigation_icon_view.ddc.js.map
