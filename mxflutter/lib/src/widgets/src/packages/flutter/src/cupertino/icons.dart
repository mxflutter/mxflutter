//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/icons.dart';
import 'package:flutter/widgets.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerIconsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_cupertinoIcons_iconFont.funName] = _cupertinoIcons_iconFont;
  m[_cupertinoIcons_iconFontPackage.funName] = _cupertinoIcons_iconFontPackage;
  m[_cupertinoIcons_leftchevron.funName] = _cupertinoIcons_leftchevron;
  m[_cupertinoIcons_rightchevron.funName] = _cupertinoIcons_rightchevron;
  m[_cupertinoIcons_share.funName] = _cupertinoIcons_share;
  m[_cupertinoIcons_sharesolid.funName] = _cupertinoIcons_sharesolid;
  m[_cupertinoIcons_book.funName] = _cupertinoIcons_book;
  m[_cupertinoIcons_booksolid.funName] = _cupertinoIcons_booksolid;
  m[_cupertinoIcons_bookmark.funName] = _cupertinoIcons_bookmark;
  m[_cupertinoIcons_bookmarksolid.funName] = _cupertinoIcons_bookmarksolid;
  m[_cupertinoIcons_info.funName] = _cupertinoIcons_info;
  m[_cupertinoIcons_reply.funName] = _cupertinoIcons_reply;
  m[_cupertinoIcons_conversationbubble.funName] = _cupertinoIcons_conversationbubble;
  m[_cupertinoIcons_profilecircled.funName] = _cupertinoIcons_profilecircled;
  m[_cupertinoIcons_pluscircled.funName] = _cupertinoIcons_pluscircled;
  m[_cupertinoIcons_minuscircled.funName] = _cupertinoIcons_minuscircled;
  m[_cupertinoIcons_flag.funName] = _cupertinoIcons_flag;
  m[_cupertinoIcons_search.funName] = _cupertinoIcons_search;
  m[_cupertinoIcons_checkmark.funName] = _cupertinoIcons_checkmark;
  m[_cupertinoIcons_checkmarkcircled.funName] = _cupertinoIcons_checkmarkcircled;
  m[_cupertinoIcons_checkmarkcircledsolid.funName] = _cupertinoIcons_checkmarkcircledsolid;
  m[_cupertinoIcons_circle.funName] = _cupertinoIcons_circle;
  m[_cupertinoIcons_circlefilled.funName] = _cupertinoIcons_circlefilled;
  m[_cupertinoIcons_back.funName] = _cupertinoIcons_back;
  m[_cupertinoIcons_forward.funName] = _cupertinoIcons_forward;
  m[_cupertinoIcons_home.funName] = _cupertinoIcons_home;
  m[_cupertinoIcons_shoppingcart.funName] = _cupertinoIcons_shoppingcart;
  m[_cupertinoIcons_ellipsis.funName] = _cupertinoIcons_ellipsis;
  m[_cupertinoIcons_phone.funName] = _cupertinoIcons_phone;
  m[_cupertinoIcons_phonesolid.funName] = _cupertinoIcons_phonesolid;
  m[_cupertinoIcons_downarrow.funName] = _cupertinoIcons_downarrow;
  m[_cupertinoIcons_uparrow.funName] = _cupertinoIcons_uparrow;
  m[_cupertinoIcons_batterycharging.funName] = _cupertinoIcons_batterycharging;
  m[_cupertinoIcons_batteryempty.funName] = _cupertinoIcons_batteryempty;
  m[_cupertinoIcons_batteryfull.funName] = _cupertinoIcons_batteryfull;
  m[_cupertinoIcons_battery75percent.funName] = _cupertinoIcons_battery75percent;
  m[_cupertinoIcons_battery25percent.funName] = _cupertinoIcons_battery25percent;
  m[_cupertinoIcons_bluetooth.funName] = _cupertinoIcons_bluetooth;
  m[_cupertinoIcons_restart.funName] = _cupertinoIcons_restart;
  m[_cupertinoIcons_replyall.funName] = _cupertinoIcons_replyall;
  m[_cupertinoIcons_replythicksolid.funName] = _cupertinoIcons_replythicksolid;
  m[_cupertinoIcons_shareup.funName] = _cupertinoIcons_shareup;
  m[_cupertinoIcons_shuffle.funName] = _cupertinoIcons_shuffle;
  m[_cupertinoIcons_shufflemedium.funName] = _cupertinoIcons_shufflemedium;
  m[_cupertinoIcons_shufflethick.funName] = _cupertinoIcons_shufflethick;
  m[_cupertinoIcons_photocamera.funName] = _cupertinoIcons_photocamera;
  m[_cupertinoIcons_photocamerasolid.funName] = _cupertinoIcons_photocamerasolid;
  m[_cupertinoIcons_videocamera.funName] = _cupertinoIcons_videocamera;
  m[_cupertinoIcons_videocamerasolid.funName] = _cupertinoIcons_videocamerasolid;
  m[_cupertinoIcons_switchcamera.funName] = _cupertinoIcons_switchcamera;
  m[_cupertinoIcons_switchcamerasolid.funName] = _cupertinoIcons_switchcamerasolid;
  m[_cupertinoIcons_collections.funName] = _cupertinoIcons_collections;
  m[_cupertinoIcons_collectionssolid.funName] = _cupertinoIcons_collectionssolid;
  m[_cupertinoIcons_folder.funName] = _cupertinoIcons_folder;
  m[_cupertinoIcons_foldersolid.funName] = _cupertinoIcons_foldersolid;
  m[_cupertinoIcons_folderopen.funName] = _cupertinoIcons_folderopen;
  m[_cupertinoIcons_delete.funName] = _cupertinoIcons_delete;
  m[_cupertinoIcons_deletesolid.funName] = _cupertinoIcons_deletesolid;
  m[_cupertinoIcons_deletesimple.funName] = _cupertinoIcons_deletesimple;
  m[_cupertinoIcons_pen.funName] = _cupertinoIcons_pen;
  m[_cupertinoIcons_pencil.funName] = _cupertinoIcons_pencil;
  m[_cupertinoIcons_create.funName] = _cupertinoIcons_create;
  m[_cupertinoIcons_createsolid.funName] = _cupertinoIcons_createsolid;
  m[_cupertinoIcons_refresh.funName] = _cupertinoIcons_refresh;
  m[_cupertinoIcons_refreshcircled.funName] = _cupertinoIcons_refreshcircled;
  m[_cupertinoIcons_refreshcircledsolid.funName] = _cupertinoIcons_refreshcircledsolid;
  m[_cupertinoIcons_refreshthin.funName] = _cupertinoIcons_refreshthin;
  m[_cupertinoIcons_refreshthick.funName] = _cupertinoIcons_refreshthick;
  m[_cupertinoIcons_refreshbold.funName] = _cupertinoIcons_refreshbold;
  m[_cupertinoIcons_clearthick.funName] = _cupertinoIcons_clearthick;
  m[_cupertinoIcons_clearthickcircled.funName] = _cupertinoIcons_clearthickcircled;
  m[_cupertinoIcons_clear.funName] = _cupertinoIcons_clear;
  m[_cupertinoIcons_clearcircled.funName] = _cupertinoIcons_clearcircled;
  m[_cupertinoIcons_clearcircledsolid.funName] = _cupertinoIcons_clearcircledsolid;
  m[_cupertinoIcons_add.funName] = _cupertinoIcons_add;
  m[_cupertinoIcons_addcircled.funName] = _cupertinoIcons_addcircled;
  m[_cupertinoIcons_addcircledsolid.funName] = _cupertinoIcons_addcircledsolid;
  m[_cupertinoIcons_gear.funName] = _cupertinoIcons_gear;
  m[_cupertinoIcons_gearsolid.funName] = _cupertinoIcons_gearsolid;
  m[_cupertinoIcons_gearbig.funName] = _cupertinoIcons_gearbig;
  m[_cupertinoIcons_settings.funName] = _cupertinoIcons_settings;
  m[_cupertinoIcons_settingssolid.funName] = _cupertinoIcons_settingssolid;
  m[_cupertinoIcons_musicnote.funName] = _cupertinoIcons_musicnote;
  m[_cupertinoIcons_doublemusicnote.funName] = _cupertinoIcons_doublemusicnote;
  m[_cupertinoIcons_playarrow.funName] = _cupertinoIcons_playarrow;
  m[_cupertinoIcons_playarrowsolid.funName] = _cupertinoIcons_playarrowsolid;
  m[_cupertinoIcons_pause.funName] = _cupertinoIcons_pause;
  m[_cupertinoIcons_pausesolid.funName] = _cupertinoIcons_pausesolid;
  m[_cupertinoIcons_loop.funName] = _cupertinoIcons_loop;
  m[_cupertinoIcons_loopthick.funName] = _cupertinoIcons_loopthick;
  m[_cupertinoIcons_volumedown.funName] = _cupertinoIcons_volumedown;
  m[_cupertinoIcons_volumemute.funName] = _cupertinoIcons_volumemute;
  m[_cupertinoIcons_volumeoff.funName] = _cupertinoIcons_volumeoff;
  m[_cupertinoIcons_volumeup.funName] = _cupertinoIcons_volumeup;
  m[_cupertinoIcons_fullscreen.funName] = _cupertinoIcons_fullscreen;
  m[_cupertinoIcons_fullscreenexit.funName] = _cupertinoIcons_fullscreenexit;
  m[_cupertinoIcons_micoff.funName] = _cupertinoIcons_micoff;
  m[_cupertinoIcons_mic.funName] = _cupertinoIcons_mic;
  m[_cupertinoIcons_micsolid.funName] = _cupertinoIcons_micsolid;
  m[_cupertinoIcons_clock.funName] = _cupertinoIcons_clock;
  m[_cupertinoIcons_clocksolid.funName] = _cupertinoIcons_clocksolid;
  m[_cupertinoIcons_time.funName] = _cupertinoIcons_time;
  m[_cupertinoIcons_timesolid.funName] = _cupertinoIcons_timesolid;
  m[_cupertinoIcons_padlock.funName] = _cupertinoIcons_padlock;
  m[_cupertinoIcons_padlocksolid.funName] = _cupertinoIcons_padlocksolid;
  m[_cupertinoIcons_eye.funName] = _cupertinoIcons_eye;
  m[_cupertinoIcons_eyesolid.funName] = _cupertinoIcons_eyesolid;
  m[_cupertinoIcons_person.funName] = _cupertinoIcons_person;
  m[_cupertinoIcons_personsolid.funName] = _cupertinoIcons_personsolid;
  m[_cupertinoIcons_personadd.funName] = _cupertinoIcons_personadd;
  m[_cupertinoIcons_personaddsolid.funName] = _cupertinoIcons_personaddsolid;
  m[_cupertinoIcons_group.funName] = _cupertinoIcons_group;
  m[_cupertinoIcons_groupsolid.funName] = _cupertinoIcons_groupsolid;
  m[_cupertinoIcons_mail.funName] = _cupertinoIcons_mail;
  m[_cupertinoIcons_mailsolid.funName] = _cupertinoIcons_mailsolid;
  m[_cupertinoIcons_location.funName] = _cupertinoIcons_location;
  m[_cupertinoIcons_locationsolid.funName] = _cupertinoIcons_locationsolid;
  m[_cupertinoIcons_tag.funName] = _cupertinoIcons_tag;
  m[_cupertinoIcons_tagsolid.funName] = _cupertinoIcons_tagsolid;
  m[_cupertinoIcons_tags.funName] = _cupertinoIcons_tags;
  m[_cupertinoIcons_tagssolid.funName] = _cupertinoIcons_tagssolid;
  m[_cupertinoIcons_bus.funName] = _cupertinoIcons_bus;
  m[_cupertinoIcons_car.funName] = _cupertinoIcons_car;
  m[_cupertinoIcons_cardetailed.funName] = _cupertinoIcons_cardetailed;
  m[_cupertinoIcons_trainstyleone.funName] = _cupertinoIcons_trainstyleone;
  m[_cupertinoIcons_trainstyletwo.funName] = _cupertinoIcons_trainstyletwo;
  m[_cupertinoIcons_paw.funName] = _cupertinoIcons_paw;
  m[_cupertinoIcons_pawsolid.funName] = _cupertinoIcons_pawsolid;
  m[_cupertinoIcons_gamecontroller.funName] = _cupertinoIcons_gamecontroller;
  m[_cupertinoIcons_gamecontrollersolid.funName] = _cupertinoIcons_gamecontrollersolid;
  m[_cupertinoIcons_labflask.funName] = _cupertinoIcons_labflask;
  m[_cupertinoIcons_labflasksolid.funName] = _cupertinoIcons_labflasksolid;
  m[_cupertinoIcons_heart.funName] = _cupertinoIcons_heart;
  m[_cupertinoIcons_heartsolid.funName] = _cupertinoIcons_heartsolid;
  m[_cupertinoIcons_bell.funName] = _cupertinoIcons_bell;
  m[_cupertinoIcons_bellsolid.funName] = _cupertinoIcons_bellsolid;
  m[_cupertinoIcons_news.funName] = _cupertinoIcons_news;
  m[_cupertinoIcons_newssolid.funName] = _cupertinoIcons_newssolid;
  m[_cupertinoIcons_brightness.funName] = _cupertinoIcons_brightness;
  m[_cupertinoIcons_brightnesssolid.funName] = _cupertinoIcons_brightnesssolid;
  return m;
}
var _cupertinoIcons_iconFont = MXFunctionInvoke(
  "CupertinoIcons.iconFont",
    (
    ) =>
      CupertinoIcons.iconFont
);
var _cupertinoIcons_iconFontPackage = MXFunctionInvoke(
  "CupertinoIcons.iconFontPackage",
    (
    ) =>
      CupertinoIcons.iconFontPackage
);
var _cupertinoIcons_leftchevron = MXFunctionInvoke(
  "CupertinoIcons.leftchevron",
    (
    ) =>
      CupertinoIcons.leftchevron
);
var _cupertinoIcons_rightchevron = MXFunctionInvoke(
  "CupertinoIcons.rightchevron",
    (
    ) =>
      CupertinoIcons.rightchevron
);
var _cupertinoIcons_share = MXFunctionInvoke(
  "CupertinoIcons.share",
    (
    ) =>
      CupertinoIcons.share
);
var _cupertinoIcons_sharesolid = MXFunctionInvoke(
  "CupertinoIcons.sharesolid",
    (
    ) =>
      CupertinoIcons.sharesolid
);
var _cupertinoIcons_book = MXFunctionInvoke(
  "CupertinoIcons.book",
    (
    ) =>
      CupertinoIcons.book
);
var _cupertinoIcons_booksolid = MXFunctionInvoke(
  "CupertinoIcons.booksolid",
    (
    ) =>
      CupertinoIcons.booksolid
);
var _cupertinoIcons_bookmark = MXFunctionInvoke(
  "CupertinoIcons.bookmark",
    (
    ) =>
      CupertinoIcons.bookmark
);
var _cupertinoIcons_bookmarksolid = MXFunctionInvoke(
  "CupertinoIcons.bookmarksolid",
    (
    ) =>
      CupertinoIcons.bookmarksolid
);
var _cupertinoIcons_info = MXFunctionInvoke(
  "CupertinoIcons.info",
    (
    ) =>
      CupertinoIcons.info
);
var _cupertinoIcons_reply = MXFunctionInvoke(
  "CupertinoIcons.reply",
    (
    ) =>
      CupertinoIcons.reply
);
var _cupertinoIcons_conversationbubble = MXFunctionInvoke(
  "CupertinoIcons.conversationbubble",
    (
    ) =>
      CupertinoIcons.conversationbubble
);
var _cupertinoIcons_profilecircled = MXFunctionInvoke(
  "CupertinoIcons.profilecircled",
    (
    ) =>
      CupertinoIcons.profilecircled
);
var _cupertinoIcons_pluscircled = MXFunctionInvoke(
  "CupertinoIcons.pluscircled",
    (
    ) =>
      CupertinoIcons.pluscircled
);
var _cupertinoIcons_minuscircled = MXFunctionInvoke(
  "CupertinoIcons.minuscircled",
    (
    ) =>
      CupertinoIcons.minuscircled
);
var _cupertinoIcons_flag = MXFunctionInvoke(
  "CupertinoIcons.flag",
    (
    ) =>
      CupertinoIcons.flag
);
var _cupertinoIcons_search = MXFunctionInvoke(
  "CupertinoIcons.search",
    (
    ) =>
      CupertinoIcons.search
);
var _cupertinoIcons_checkmark = MXFunctionInvoke(
  "CupertinoIcons.checkmark",
    (
    ) =>
      CupertinoIcons.checkmark
);
var _cupertinoIcons_checkmarkcircled = MXFunctionInvoke(
  "CupertinoIcons.checkmarkcircled",
    (
    ) =>
      CupertinoIcons.checkmarkcircled
);
var _cupertinoIcons_checkmarkcircledsolid = MXFunctionInvoke(
  "CupertinoIcons.checkmarkcircledsolid",
    (
    ) =>
      CupertinoIcons.checkmarkcircledsolid
);
var _cupertinoIcons_circle = MXFunctionInvoke(
  "CupertinoIcons.circle",
    (
    ) =>
      CupertinoIcons.circle
);
var _cupertinoIcons_circlefilled = MXFunctionInvoke(
  "CupertinoIcons.circlefilled",
    (
    ) =>
      CupertinoIcons.circlefilled
);
var _cupertinoIcons_back = MXFunctionInvoke(
  "CupertinoIcons.back",
    (
    ) =>
      CupertinoIcons.back
);
var _cupertinoIcons_forward = MXFunctionInvoke(
  "CupertinoIcons.forward",
    (
    ) =>
      CupertinoIcons.forward
);
var _cupertinoIcons_home = MXFunctionInvoke(
  "CupertinoIcons.home",
    (
    ) =>
      CupertinoIcons.home
);
var _cupertinoIcons_shoppingcart = MXFunctionInvoke(
  "CupertinoIcons.shoppingcart",
    (
    ) =>
      CupertinoIcons.shoppingcart
);
var _cupertinoIcons_ellipsis = MXFunctionInvoke(
  "CupertinoIcons.ellipsis",
    (
    ) =>
      CupertinoIcons.ellipsis
);
var _cupertinoIcons_phone = MXFunctionInvoke(
  "CupertinoIcons.phone",
    (
    ) =>
      CupertinoIcons.phone
);
var _cupertinoIcons_phonesolid = MXFunctionInvoke(
  "CupertinoIcons.phonesolid",
    (
    ) =>
      CupertinoIcons.phonesolid
);
var _cupertinoIcons_downarrow = MXFunctionInvoke(
  "CupertinoIcons.downarrow",
    (
    ) =>
      CupertinoIcons.downarrow
);
var _cupertinoIcons_uparrow = MXFunctionInvoke(
  "CupertinoIcons.uparrow",
    (
    ) =>
      CupertinoIcons.uparrow
);
var _cupertinoIcons_batterycharging = MXFunctionInvoke(
  "CupertinoIcons.batterycharging",
    (
    ) =>
      CupertinoIcons.batterycharging
);
var _cupertinoIcons_batteryempty = MXFunctionInvoke(
  "CupertinoIcons.batteryempty",
    (
    ) =>
      CupertinoIcons.batteryempty
);
var _cupertinoIcons_batteryfull = MXFunctionInvoke(
  "CupertinoIcons.batteryfull",
    (
    ) =>
      CupertinoIcons.batteryfull
);
var _cupertinoIcons_battery75percent = MXFunctionInvoke(
  "CupertinoIcons.battery75percent",
    (
    ) =>
      CupertinoIcons.battery75percent
);
var _cupertinoIcons_battery25percent = MXFunctionInvoke(
  "CupertinoIcons.battery25percent",
    (
    ) =>
      CupertinoIcons.battery25percent
);
var _cupertinoIcons_bluetooth = MXFunctionInvoke(
  "CupertinoIcons.bluetooth",
    (
    ) =>
      CupertinoIcons.bluetooth
);
var _cupertinoIcons_restart = MXFunctionInvoke(
  "CupertinoIcons.restart",
    (
    ) =>
      CupertinoIcons.restart
);
var _cupertinoIcons_replyall = MXFunctionInvoke(
  "CupertinoIcons.replyall",
    (
    ) =>
      CupertinoIcons.replyall
);
var _cupertinoIcons_replythicksolid = MXFunctionInvoke(
  "CupertinoIcons.replythicksolid",
    (
    ) =>
      CupertinoIcons.replythicksolid
);
var _cupertinoIcons_shareup = MXFunctionInvoke(
  "CupertinoIcons.shareup",
    (
    ) =>
      CupertinoIcons.shareup
);
var _cupertinoIcons_shuffle = MXFunctionInvoke(
  "CupertinoIcons.shuffle",
    (
    ) =>
      CupertinoIcons.shuffle
);
var _cupertinoIcons_shufflemedium = MXFunctionInvoke(
  "CupertinoIcons.shufflemedium",
    (
    ) =>
      CupertinoIcons.shufflemedium
);
var _cupertinoIcons_shufflethick = MXFunctionInvoke(
  "CupertinoIcons.shufflethick",
    (
    ) =>
      CupertinoIcons.shufflethick
);
var _cupertinoIcons_photocamera = MXFunctionInvoke(
  "CupertinoIcons.photocamera",
    (
    ) =>
      CupertinoIcons.photocamera
);
var _cupertinoIcons_photocamerasolid = MXFunctionInvoke(
  "CupertinoIcons.photocamerasolid",
    (
    ) =>
      CupertinoIcons.photocamerasolid
);
var _cupertinoIcons_videocamera = MXFunctionInvoke(
  "CupertinoIcons.videocamera",
    (
    ) =>
      CupertinoIcons.videocamera
);
var _cupertinoIcons_videocamerasolid = MXFunctionInvoke(
  "CupertinoIcons.videocamerasolid",
    (
    ) =>
      CupertinoIcons.videocamerasolid
);
var _cupertinoIcons_switchcamera = MXFunctionInvoke(
  "CupertinoIcons.switchcamera",
    (
    ) =>
      CupertinoIcons.switchcamera
);
var _cupertinoIcons_switchcamerasolid = MXFunctionInvoke(
  "CupertinoIcons.switchcamerasolid",
    (
    ) =>
      CupertinoIcons.switchcamerasolid
);
var _cupertinoIcons_collections = MXFunctionInvoke(
  "CupertinoIcons.collections",
    (
    ) =>
      CupertinoIcons.collections
);
var _cupertinoIcons_collectionssolid = MXFunctionInvoke(
  "CupertinoIcons.collectionssolid",
    (
    ) =>
      CupertinoIcons.collectionssolid
);
var _cupertinoIcons_folder = MXFunctionInvoke(
  "CupertinoIcons.folder",
    (
    ) =>
      CupertinoIcons.folder
);
var _cupertinoIcons_foldersolid = MXFunctionInvoke(
  "CupertinoIcons.foldersolid",
    (
    ) =>
      CupertinoIcons.foldersolid
);
var _cupertinoIcons_folderopen = MXFunctionInvoke(
  "CupertinoIcons.folderopen",
    (
    ) =>
      CupertinoIcons.folderopen
);
var _cupertinoIcons_delete = MXFunctionInvoke(
  "CupertinoIcons.delete",
    (
    ) =>
      CupertinoIcons.delete
);
var _cupertinoIcons_deletesolid = MXFunctionInvoke(
  "CupertinoIcons.deletesolid",
    (
    ) =>
      CupertinoIcons.deletesolid
);
var _cupertinoIcons_deletesimple = MXFunctionInvoke(
  "CupertinoIcons.deletesimple",
    (
    ) =>
      CupertinoIcons.deletesimple
);
var _cupertinoIcons_pen = MXFunctionInvoke(
  "CupertinoIcons.pen",
    (
    ) =>
      CupertinoIcons.pen
);
var _cupertinoIcons_pencil = MXFunctionInvoke(
  "CupertinoIcons.pencil",
    (
    ) =>
      CupertinoIcons.pencil
);
var _cupertinoIcons_create = MXFunctionInvoke(
  "CupertinoIcons.create",
    (
    ) =>
      CupertinoIcons.create
);
var _cupertinoIcons_createsolid = MXFunctionInvoke(
  "CupertinoIcons.createsolid",
    (
    ) =>
      CupertinoIcons.createsolid
);
var _cupertinoIcons_refresh = MXFunctionInvoke(
  "CupertinoIcons.refresh",
    (
    ) =>
      CupertinoIcons.refresh
);
var _cupertinoIcons_refreshcircled = MXFunctionInvoke(
  "CupertinoIcons.refreshcircled",
    (
    ) =>
      CupertinoIcons.refreshcircled
);
var _cupertinoIcons_refreshcircledsolid = MXFunctionInvoke(
  "CupertinoIcons.refreshcircledsolid",
    (
    ) =>
      CupertinoIcons.refreshcircledsolid
);
var _cupertinoIcons_refreshthin = MXFunctionInvoke(
  "CupertinoIcons.refreshthin",
    (
    ) =>
      CupertinoIcons.refreshthin
);
var _cupertinoIcons_refreshthick = MXFunctionInvoke(
  "CupertinoIcons.refreshthick",
    (
    ) =>
      CupertinoIcons.refreshthick
);
var _cupertinoIcons_refreshbold = MXFunctionInvoke(
  "CupertinoIcons.refreshbold",
    (
    ) =>
      CupertinoIcons.refreshbold
);
var _cupertinoIcons_clearthick = MXFunctionInvoke(
  "CupertinoIcons.clearthick",
    (
    ) =>
      CupertinoIcons.clearthick
);
var _cupertinoIcons_clearthickcircled = MXFunctionInvoke(
  "CupertinoIcons.clearthickcircled",
    (
    ) =>
      CupertinoIcons.clearthickcircled
);
var _cupertinoIcons_clear = MXFunctionInvoke(
  "CupertinoIcons.clear",
    (
    ) =>
      CupertinoIcons.clear
);
var _cupertinoIcons_clearcircled = MXFunctionInvoke(
  "CupertinoIcons.clearcircled",
    (
    ) =>
      CupertinoIcons.clearcircled
);
var _cupertinoIcons_clearcircledsolid = MXFunctionInvoke(
  "CupertinoIcons.clearcircledsolid",
    (
    ) =>
      CupertinoIcons.clearcircledsolid
);
var _cupertinoIcons_add = MXFunctionInvoke(
  "CupertinoIcons.add",
    (
    ) =>
      CupertinoIcons.add
);
var _cupertinoIcons_addcircled = MXFunctionInvoke(
  "CupertinoIcons.addcircled",
    (
    ) =>
      CupertinoIcons.addcircled
);
var _cupertinoIcons_addcircledsolid = MXFunctionInvoke(
  "CupertinoIcons.addcircledsolid",
    (
    ) =>
      CupertinoIcons.addcircledsolid
);
var _cupertinoIcons_gear = MXFunctionInvoke(
  "CupertinoIcons.gear",
    (
    ) =>
      CupertinoIcons.gear
);
var _cupertinoIcons_gearsolid = MXFunctionInvoke(
  "CupertinoIcons.gearsolid",
    (
    ) =>
      CupertinoIcons.gearsolid
);
var _cupertinoIcons_gearbig = MXFunctionInvoke(
  "CupertinoIcons.gearbig",
    (
    ) =>
      CupertinoIcons.gearbig
);
var _cupertinoIcons_settings = MXFunctionInvoke(
  "CupertinoIcons.settings",
    (
    ) =>
      CupertinoIcons.settings
);
var _cupertinoIcons_settingssolid = MXFunctionInvoke(
  "CupertinoIcons.settingssolid",
    (
    ) =>
      CupertinoIcons.settingssolid
);
var _cupertinoIcons_musicnote = MXFunctionInvoke(
  "CupertinoIcons.musicnote",
    (
    ) =>
      CupertinoIcons.musicnote
);
var _cupertinoIcons_doublemusicnote = MXFunctionInvoke(
  "CupertinoIcons.doublemusicnote",
    (
    ) =>
      CupertinoIcons.doublemusicnote
);
var _cupertinoIcons_playarrow = MXFunctionInvoke(
  "CupertinoIcons.playarrow",
    (
    ) =>
      CupertinoIcons.playarrow
);
var _cupertinoIcons_playarrowsolid = MXFunctionInvoke(
  "CupertinoIcons.playarrowsolid",
    (
    ) =>
      CupertinoIcons.playarrowsolid
);
var _cupertinoIcons_pause = MXFunctionInvoke(
  "CupertinoIcons.pause",
    (
    ) =>
      CupertinoIcons.pause
);
var _cupertinoIcons_pausesolid = MXFunctionInvoke(
  "CupertinoIcons.pausesolid",
    (
    ) =>
      CupertinoIcons.pausesolid
);
var _cupertinoIcons_loop = MXFunctionInvoke(
  "CupertinoIcons.loop",
    (
    ) =>
      CupertinoIcons.loop
);
var _cupertinoIcons_loopthick = MXFunctionInvoke(
  "CupertinoIcons.loopthick",
    (
    ) =>
      CupertinoIcons.loopthick
);
var _cupertinoIcons_volumedown = MXFunctionInvoke(
  "CupertinoIcons.volumedown",
    (
    ) =>
      CupertinoIcons.volumedown
);
var _cupertinoIcons_volumemute = MXFunctionInvoke(
  "CupertinoIcons.volumemute",
    (
    ) =>
      CupertinoIcons.volumemute
);
var _cupertinoIcons_volumeoff = MXFunctionInvoke(
  "CupertinoIcons.volumeoff",
    (
    ) =>
      CupertinoIcons.volumeoff
);
var _cupertinoIcons_volumeup = MXFunctionInvoke(
  "CupertinoIcons.volumeup",
    (
    ) =>
      CupertinoIcons.volumeup
);
var _cupertinoIcons_fullscreen = MXFunctionInvoke(
  "CupertinoIcons.fullscreen",
    (
    ) =>
      CupertinoIcons.fullscreen
);
var _cupertinoIcons_fullscreenexit = MXFunctionInvoke(
  "CupertinoIcons.fullscreenexit",
    (
    ) =>
      CupertinoIcons.fullscreenexit
);
var _cupertinoIcons_micoff = MXFunctionInvoke(
  "CupertinoIcons.micoff",
    (
    ) =>
      CupertinoIcons.micoff
);
var _cupertinoIcons_mic = MXFunctionInvoke(
  "CupertinoIcons.mic",
    (
    ) =>
      CupertinoIcons.mic
);
var _cupertinoIcons_micsolid = MXFunctionInvoke(
  "CupertinoIcons.micsolid",
    (
    ) =>
      CupertinoIcons.micsolid
);
var _cupertinoIcons_clock = MXFunctionInvoke(
  "CupertinoIcons.clock",
    (
    ) =>
      CupertinoIcons.clock
);
var _cupertinoIcons_clocksolid = MXFunctionInvoke(
  "CupertinoIcons.clocksolid",
    (
    ) =>
      CupertinoIcons.clocksolid
);
var _cupertinoIcons_time = MXFunctionInvoke(
  "CupertinoIcons.time",
    (
    ) =>
      CupertinoIcons.time
);
var _cupertinoIcons_timesolid = MXFunctionInvoke(
  "CupertinoIcons.timesolid",
    (
    ) =>
      CupertinoIcons.timesolid
);
var _cupertinoIcons_padlock = MXFunctionInvoke(
  "CupertinoIcons.padlock",
    (
    ) =>
      CupertinoIcons.padlock
);
var _cupertinoIcons_padlocksolid = MXFunctionInvoke(
  "CupertinoIcons.padlocksolid",
    (
    ) =>
      CupertinoIcons.padlocksolid
);
var _cupertinoIcons_eye = MXFunctionInvoke(
  "CupertinoIcons.eye",
    (
    ) =>
      CupertinoIcons.eye
);
var _cupertinoIcons_eyesolid = MXFunctionInvoke(
  "CupertinoIcons.eyesolid",
    (
    ) =>
      CupertinoIcons.eyesolid
);
var _cupertinoIcons_person = MXFunctionInvoke(
  "CupertinoIcons.person",
    (
    ) =>
      CupertinoIcons.person
);
var _cupertinoIcons_personsolid = MXFunctionInvoke(
  "CupertinoIcons.personsolid",
    (
    ) =>
      CupertinoIcons.personsolid
);
var _cupertinoIcons_personadd = MXFunctionInvoke(
  "CupertinoIcons.personadd",
    (
    ) =>
      CupertinoIcons.personadd
);
var _cupertinoIcons_personaddsolid = MXFunctionInvoke(
  "CupertinoIcons.personaddsolid",
    (
    ) =>
      CupertinoIcons.personaddsolid
);
var _cupertinoIcons_group = MXFunctionInvoke(
  "CupertinoIcons.group",
    (
    ) =>
      CupertinoIcons.group
);
var _cupertinoIcons_groupsolid = MXFunctionInvoke(
  "CupertinoIcons.groupsolid",
    (
    ) =>
      CupertinoIcons.groupsolid
);
var _cupertinoIcons_mail = MXFunctionInvoke(
  "CupertinoIcons.mail",
    (
    ) =>
      CupertinoIcons.mail
);
var _cupertinoIcons_mailsolid = MXFunctionInvoke(
  "CupertinoIcons.mailsolid",
    (
    ) =>
      CupertinoIcons.mailsolid
);
var _cupertinoIcons_location = MXFunctionInvoke(
  "CupertinoIcons.location",
    (
    ) =>
      CupertinoIcons.location
);
var _cupertinoIcons_locationsolid = MXFunctionInvoke(
  "CupertinoIcons.locationsolid",
    (
    ) =>
      CupertinoIcons.locationsolid
);
var _cupertinoIcons_tag = MXFunctionInvoke(
  "CupertinoIcons.tag",
    (
    ) =>
      CupertinoIcons.tag
);
var _cupertinoIcons_tagsolid = MXFunctionInvoke(
  "CupertinoIcons.tagsolid",
    (
    ) =>
      CupertinoIcons.tagsolid
);
var _cupertinoIcons_tags = MXFunctionInvoke(
  "CupertinoIcons.tags",
    (
    ) =>
      CupertinoIcons.tags
);
var _cupertinoIcons_tagssolid = MXFunctionInvoke(
  "CupertinoIcons.tagssolid",
    (
    ) =>
      CupertinoIcons.tagssolid
);
var _cupertinoIcons_bus = MXFunctionInvoke(
  "CupertinoIcons.bus",
    (
    ) =>
      CupertinoIcons.bus
);
var _cupertinoIcons_car = MXFunctionInvoke(
  "CupertinoIcons.car",
    (
    ) =>
      CupertinoIcons.car
);
var _cupertinoIcons_cardetailed = MXFunctionInvoke(
  "CupertinoIcons.cardetailed",
    (
    ) =>
      CupertinoIcons.cardetailed
);
var _cupertinoIcons_trainstyleone = MXFunctionInvoke(
  "CupertinoIcons.trainstyleone",
    (
    ) =>
      CupertinoIcons.trainstyleone
);
var _cupertinoIcons_trainstyletwo = MXFunctionInvoke(
  "CupertinoIcons.trainstyletwo",
    (
    ) =>
      CupertinoIcons.trainstyletwo
);
var _cupertinoIcons_paw = MXFunctionInvoke(
  "CupertinoIcons.paw",
    (
    ) =>
      CupertinoIcons.paw
);
var _cupertinoIcons_pawsolid = MXFunctionInvoke(
  "CupertinoIcons.pawsolid",
    (
    ) =>
      CupertinoIcons.pawsolid
);
var _cupertinoIcons_gamecontroller = MXFunctionInvoke(
  "CupertinoIcons.gamecontroller",
    (
    ) =>
      CupertinoIcons.gamecontroller
);
var _cupertinoIcons_gamecontrollersolid = MXFunctionInvoke(
  "CupertinoIcons.gamecontrollersolid",
    (
    ) =>
      CupertinoIcons.gamecontrollersolid
);
var _cupertinoIcons_labflask = MXFunctionInvoke(
  "CupertinoIcons.labflask",
    (
    ) =>
      CupertinoIcons.labflask
);
var _cupertinoIcons_labflasksolid = MXFunctionInvoke(
  "CupertinoIcons.labflasksolid",
    (
    ) =>
      CupertinoIcons.labflasksolid
);
var _cupertinoIcons_heart = MXFunctionInvoke(
  "CupertinoIcons.heart",
    (
    ) =>
      CupertinoIcons.heart
);
var _cupertinoIcons_heartsolid = MXFunctionInvoke(
  "CupertinoIcons.heartsolid",
    (
    ) =>
      CupertinoIcons.heartsolid
);
var _cupertinoIcons_bell = MXFunctionInvoke(
  "CupertinoIcons.bell",
    (
    ) =>
      CupertinoIcons.bell
);
var _cupertinoIcons_bellsolid = MXFunctionInvoke(
  "CupertinoIcons.bellsolid",
    (
    ) =>
      CupertinoIcons.bellsolid
);
var _cupertinoIcons_news = MXFunctionInvoke(
  "CupertinoIcons.news",
    (
    ) =>
      CupertinoIcons.news
);
var _cupertinoIcons_newssolid = MXFunctionInvoke(
  "CupertinoIcons.newssolid",
    (
    ) =>
      CupertinoIcons.newssolid
);
var _cupertinoIcons_brightness = MXFunctionInvoke(
  "CupertinoIcons.brightness",
    (
    ) =>
      CupertinoIcons.brightness
);
var _cupertinoIcons_brightnesssolid = MXFunctionInvoke(
  "CupertinoIcons.brightnesssolid",
    (
    ) =>
      CupertinoIcons.brightnesssolid
);
