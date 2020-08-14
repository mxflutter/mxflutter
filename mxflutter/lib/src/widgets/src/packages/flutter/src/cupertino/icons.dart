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
  m[_cupertinoIcons_left_chevron.funName] = _cupertinoIcons_left_chevron;
  m[_cupertinoIcons_right_chevron.funName] = _cupertinoIcons_right_chevron;
  m[_cupertinoIcons_share.funName] = _cupertinoIcons_share;
  m[_cupertinoIcons_share_solid.funName] = _cupertinoIcons_share_solid;
  m[_cupertinoIcons_book.funName] = _cupertinoIcons_book;
  m[_cupertinoIcons_book_solid.funName] = _cupertinoIcons_book_solid;
  m[_cupertinoIcons_bookmark.funName] = _cupertinoIcons_bookmark;
  m[_cupertinoIcons_bookmark_solid.funName] = _cupertinoIcons_bookmark_solid;
  m[_cupertinoIcons_info.funName] = _cupertinoIcons_info;
  m[_cupertinoIcons_reply.funName] = _cupertinoIcons_reply;
  m[_cupertinoIcons_conversation_bubble.funName] = _cupertinoIcons_conversation_bubble;
  m[_cupertinoIcons_profile_circled.funName] = _cupertinoIcons_profile_circled;
  m[_cupertinoIcons_plus_circled.funName] = _cupertinoIcons_plus_circled;
  m[_cupertinoIcons_minus_circled.funName] = _cupertinoIcons_minus_circled;
  m[_cupertinoIcons_flag.funName] = _cupertinoIcons_flag;
  m[_cupertinoIcons_search.funName] = _cupertinoIcons_search;
  m[_cupertinoIcons_check_mark.funName] = _cupertinoIcons_check_mark;
  m[_cupertinoIcons_check_mark_circled.funName] = _cupertinoIcons_check_mark_circled;
  m[_cupertinoIcons_check_mark_circled_solid.funName] = _cupertinoIcons_check_mark_circled_solid;
  m[_cupertinoIcons_circle.funName] = _cupertinoIcons_circle;
  m[_cupertinoIcons_circle_filled.funName] = _cupertinoIcons_circle_filled;
  m[_cupertinoIcons_back.funName] = _cupertinoIcons_back;
  m[_cupertinoIcons_forward.funName] = _cupertinoIcons_forward;
  m[_cupertinoIcons_home.funName] = _cupertinoIcons_home;
  m[_cupertinoIcons_shopping_cart.funName] = _cupertinoIcons_shopping_cart;
  m[_cupertinoIcons_ellipsis.funName] = _cupertinoIcons_ellipsis;
  m[_cupertinoIcons_phone.funName] = _cupertinoIcons_phone;
  m[_cupertinoIcons_phone_solid.funName] = _cupertinoIcons_phone_solid;
  m[_cupertinoIcons_down_arrow.funName] = _cupertinoIcons_down_arrow;
  m[_cupertinoIcons_up_arrow.funName] = _cupertinoIcons_up_arrow;
  m[_cupertinoIcons_battery_charging.funName] = _cupertinoIcons_battery_charging;
  m[_cupertinoIcons_battery_empty.funName] = _cupertinoIcons_battery_empty;
  m[_cupertinoIcons_battery_full.funName] = _cupertinoIcons_battery_full;
  m[_cupertinoIcons_battery_75_percent.funName] = _cupertinoIcons_battery_75_percent;
  m[_cupertinoIcons_battery_25_percent.funName] = _cupertinoIcons_battery_25_percent;
  m[_cupertinoIcons_bluetooth.funName] = _cupertinoIcons_bluetooth;
  m[_cupertinoIcons_restart.funName] = _cupertinoIcons_restart;
  m[_cupertinoIcons_reply_all.funName] = _cupertinoIcons_reply_all;
  m[_cupertinoIcons_reply_thick_solid.funName] = _cupertinoIcons_reply_thick_solid;
  m[_cupertinoIcons_share_up.funName] = _cupertinoIcons_share_up;
  m[_cupertinoIcons_shuffle.funName] = _cupertinoIcons_shuffle;
  m[_cupertinoIcons_shuffle_medium.funName] = _cupertinoIcons_shuffle_medium;
  m[_cupertinoIcons_shuffle_thick.funName] = _cupertinoIcons_shuffle_thick;
  m[_cupertinoIcons_photo_camera.funName] = _cupertinoIcons_photo_camera;
  m[_cupertinoIcons_photo_camera_solid.funName] = _cupertinoIcons_photo_camera_solid;
  m[_cupertinoIcons_video_camera.funName] = _cupertinoIcons_video_camera;
  m[_cupertinoIcons_video_camera_solid.funName] = _cupertinoIcons_video_camera_solid;
  m[_cupertinoIcons_switch_camera.funName] = _cupertinoIcons_switch_camera;
  m[_cupertinoIcons_switch_camera_solid.funName] = _cupertinoIcons_switch_camera_solid;
  m[_cupertinoIcons_collections.funName] = _cupertinoIcons_collections;
  m[_cupertinoIcons_collections_solid.funName] = _cupertinoIcons_collections_solid;
  m[_cupertinoIcons_folder.funName] = _cupertinoIcons_folder;
  m[_cupertinoIcons_folder_solid.funName] = _cupertinoIcons_folder_solid;
  m[_cupertinoIcons_folder_open.funName] = _cupertinoIcons_folder_open;
  m[_cupertinoIcons_delete.funName] = _cupertinoIcons_delete;
  m[_cupertinoIcons_delete_solid.funName] = _cupertinoIcons_delete_solid;
  m[_cupertinoIcons_delete_simple.funName] = _cupertinoIcons_delete_simple;
  m[_cupertinoIcons_pen.funName] = _cupertinoIcons_pen;
  m[_cupertinoIcons_pencil.funName] = _cupertinoIcons_pencil;
  m[_cupertinoIcons_create.funName] = _cupertinoIcons_create;
  m[_cupertinoIcons_create_solid.funName] = _cupertinoIcons_create_solid;
  m[_cupertinoIcons_refresh.funName] = _cupertinoIcons_refresh;
  m[_cupertinoIcons_refresh_circled.funName] = _cupertinoIcons_refresh_circled;
  m[_cupertinoIcons_refresh_circled_solid.funName] = _cupertinoIcons_refresh_circled_solid;
  m[_cupertinoIcons_refresh_thin.funName] = _cupertinoIcons_refresh_thin;
  m[_cupertinoIcons_refresh_thick.funName] = _cupertinoIcons_refresh_thick;
  m[_cupertinoIcons_refresh_bold.funName] = _cupertinoIcons_refresh_bold;
  m[_cupertinoIcons_clear_thick.funName] = _cupertinoIcons_clear_thick;
  m[_cupertinoIcons_clear_thick_circled.funName] = _cupertinoIcons_clear_thick_circled;
  m[_cupertinoIcons_clear.funName] = _cupertinoIcons_clear;
  m[_cupertinoIcons_clear_circled.funName] = _cupertinoIcons_clear_circled;
  m[_cupertinoIcons_clear_circled_solid.funName] = _cupertinoIcons_clear_circled_solid;
  m[_cupertinoIcons_add.funName] = _cupertinoIcons_add;
  m[_cupertinoIcons_add_circled.funName] = _cupertinoIcons_add_circled;
  m[_cupertinoIcons_add_circled_solid.funName] = _cupertinoIcons_add_circled_solid;
  m[_cupertinoIcons_gear.funName] = _cupertinoIcons_gear;
  m[_cupertinoIcons_gear_solid.funName] = _cupertinoIcons_gear_solid;
  m[_cupertinoIcons_gear_big.funName] = _cupertinoIcons_gear_big;
  m[_cupertinoIcons_settings.funName] = _cupertinoIcons_settings;
  m[_cupertinoIcons_settings_solid.funName] = _cupertinoIcons_settings_solid;
  m[_cupertinoIcons_music_note.funName] = _cupertinoIcons_music_note;
  m[_cupertinoIcons_double_music_note.funName] = _cupertinoIcons_double_music_note;
  m[_cupertinoIcons_play_arrow.funName] = _cupertinoIcons_play_arrow;
  m[_cupertinoIcons_play_arrow_solid.funName] = _cupertinoIcons_play_arrow_solid;
  m[_cupertinoIcons_pause.funName] = _cupertinoIcons_pause;
  m[_cupertinoIcons_pause_solid.funName] = _cupertinoIcons_pause_solid;
  m[_cupertinoIcons_loop.funName] = _cupertinoIcons_loop;
  m[_cupertinoIcons_loop_thick.funName] = _cupertinoIcons_loop_thick;
  m[_cupertinoIcons_volume_down.funName] = _cupertinoIcons_volume_down;
  m[_cupertinoIcons_volume_mute.funName] = _cupertinoIcons_volume_mute;
  m[_cupertinoIcons_volume_off.funName] = _cupertinoIcons_volume_off;
  m[_cupertinoIcons_volume_up.funName] = _cupertinoIcons_volume_up;
  m[_cupertinoIcons_fullscreen.funName] = _cupertinoIcons_fullscreen;
  m[_cupertinoIcons_fullscreen_exit.funName] = _cupertinoIcons_fullscreen_exit;
  m[_cupertinoIcons_mic_off.funName] = _cupertinoIcons_mic_off;
  m[_cupertinoIcons_mic.funName] = _cupertinoIcons_mic;
  m[_cupertinoIcons_mic_solid.funName] = _cupertinoIcons_mic_solid;
  m[_cupertinoIcons_clock.funName] = _cupertinoIcons_clock;
  m[_cupertinoIcons_clock_solid.funName] = _cupertinoIcons_clock_solid;
  m[_cupertinoIcons_time.funName] = _cupertinoIcons_time;
  m[_cupertinoIcons_time_solid.funName] = _cupertinoIcons_time_solid;
  m[_cupertinoIcons_padlock.funName] = _cupertinoIcons_padlock;
  m[_cupertinoIcons_padlock_solid.funName] = _cupertinoIcons_padlock_solid;
  m[_cupertinoIcons_eye.funName] = _cupertinoIcons_eye;
  m[_cupertinoIcons_eye_solid.funName] = _cupertinoIcons_eye_solid;
  m[_cupertinoIcons_person.funName] = _cupertinoIcons_person;
  m[_cupertinoIcons_person_solid.funName] = _cupertinoIcons_person_solid;
  m[_cupertinoIcons_person_add.funName] = _cupertinoIcons_person_add;
  m[_cupertinoIcons_person_add_solid.funName] = _cupertinoIcons_person_add_solid;
  m[_cupertinoIcons_group.funName] = _cupertinoIcons_group;
  m[_cupertinoIcons_group_solid.funName] = _cupertinoIcons_group_solid;
  m[_cupertinoIcons_mail.funName] = _cupertinoIcons_mail;
  m[_cupertinoIcons_mail_solid.funName] = _cupertinoIcons_mail_solid;
  m[_cupertinoIcons_location.funName] = _cupertinoIcons_location;
  m[_cupertinoIcons_location_solid.funName] = _cupertinoIcons_location_solid;
  m[_cupertinoIcons_tag.funName] = _cupertinoIcons_tag;
  m[_cupertinoIcons_tag_solid.funName] = _cupertinoIcons_tag_solid;
  m[_cupertinoIcons_tags.funName] = _cupertinoIcons_tags;
  m[_cupertinoIcons_tags_solid.funName] = _cupertinoIcons_tags_solid;
  m[_cupertinoIcons_bus.funName] = _cupertinoIcons_bus;
  m[_cupertinoIcons_car.funName] = _cupertinoIcons_car;
  m[_cupertinoIcons_car_detailed.funName] = _cupertinoIcons_car_detailed;
  m[_cupertinoIcons_train_style_one.funName] = _cupertinoIcons_train_style_one;
  m[_cupertinoIcons_train_style_two.funName] = _cupertinoIcons_train_style_two;
  m[_cupertinoIcons_paw.funName] = _cupertinoIcons_paw;
  m[_cupertinoIcons_paw_solid.funName] = _cupertinoIcons_paw_solid;
  m[_cupertinoIcons_game_controller.funName] = _cupertinoIcons_game_controller;
  m[_cupertinoIcons_game_controller_solid.funName] = _cupertinoIcons_game_controller_solid;
  m[_cupertinoIcons_lab_flask.funName] = _cupertinoIcons_lab_flask;
  m[_cupertinoIcons_lab_flask_solid.funName] = _cupertinoIcons_lab_flask_solid;
  m[_cupertinoIcons_heart.funName] = _cupertinoIcons_heart;
  m[_cupertinoIcons_heart_solid.funName] = _cupertinoIcons_heart_solid;
  m[_cupertinoIcons_bell.funName] = _cupertinoIcons_bell;
  m[_cupertinoIcons_bell_solid.funName] = _cupertinoIcons_bell_solid;
  m[_cupertinoIcons_news.funName] = _cupertinoIcons_news;
  m[_cupertinoIcons_news_solid.funName] = _cupertinoIcons_news_solid;
  m[_cupertinoIcons_brightness.funName] = _cupertinoIcons_brightness;
  m[_cupertinoIcons_brightness_solid.funName] = _cupertinoIcons_brightness_solid;
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
var _cupertinoIcons_left_chevron = MXFunctionInvoke(
  "CupertinoIcons.left_chevron",
    (
    ) =>
      CupertinoIcons.left_chevron
);
var _cupertinoIcons_right_chevron = MXFunctionInvoke(
  "CupertinoIcons.right_chevron",
    (
    ) =>
      CupertinoIcons.right_chevron
);
var _cupertinoIcons_share = MXFunctionInvoke(
  "CupertinoIcons.share",
    (
    ) =>
      CupertinoIcons.share
);
var _cupertinoIcons_share_solid = MXFunctionInvoke(
  "CupertinoIcons.share_solid",
    (
    ) =>
      CupertinoIcons.share_solid
);
var _cupertinoIcons_book = MXFunctionInvoke(
  "CupertinoIcons.book",
    (
    ) =>
      CupertinoIcons.book
);
var _cupertinoIcons_book_solid = MXFunctionInvoke(
  "CupertinoIcons.book_solid",
    (
    ) =>
      CupertinoIcons.book_solid
);
var _cupertinoIcons_bookmark = MXFunctionInvoke(
  "CupertinoIcons.bookmark",
    (
    ) =>
      CupertinoIcons.bookmark
);
var _cupertinoIcons_bookmark_solid = MXFunctionInvoke(
  "CupertinoIcons.bookmark_solid",
    (
    ) =>
      CupertinoIcons.bookmark_solid
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
var _cupertinoIcons_conversation_bubble = MXFunctionInvoke(
  "CupertinoIcons.conversation_bubble",
    (
    ) =>
      CupertinoIcons.conversation_bubble
);
var _cupertinoIcons_profile_circled = MXFunctionInvoke(
  "CupertinoIcons.profile_circled",
    (
    ) =>
      CupertinoIcons.profile_circled
);
var _cupertinoIcons_plus_circled = MXFunctionInvoke(
  "CupertinoIcons.plus_circled",
    (
    ) =>
      CupertinoIcons.plus_circled
);
var _cupertinoIcons_minus_circled = MXFunctionInvoke(
  "CupertinoIcons.minus_circled",
    (
    ) =>
      CupertinoIcons.minus_circled
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
var _cupertinoIcons_check_mark = MXFunctionInvoke(
  "CupertinoIcons.check_mark",
    (
    ) =>
      CupertinoIcons.check_mark
);
var _cupertinoIcons_check_mark_circled = MXFunctionInvoke(
  "CupertinoIcons.check_mark_circled",
    (
    ) =>
      CupertinoIcons.check_mark_circled
);
var _cupertinoIcons_check_mark_circled_solid = MXFunctionInvoke(
  "CupertinoIcons.check_mark_circled_solid",
    (
    ) =>
      CupertinoIcons.check_mark_circled_solid
);
var _cupertinoIcons_circle = MXFunctionInvoke(
  "CupertinoIcons.circle",
    (
    ) =>
      CupertinoIcons.circle
);
var _cupertinoIcons_circle_filled = MXFunctionInvoke(
  "CupertinoIcons.circle_filled",
    (
    ) =>
      CupertinoIcons.circle_filled
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
var _cupertinoIcons_shopping_cart = MXFunctionInvoke(
  "CupertinoIcons.shopping_cart",
    (
    ) =>
      CupertinoIcons.shopping_cart
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
var _cupertinoIcons_phone_solid = MXFunctionInvoke(
  "CupertinoIcons.phone_solid",
    (
    ) =>
      CupertinoIcons.phone_solid
);
var _cupertinoIcons_down_arrow = MXFunctionInvoke(
  "CupertinoIcons.down_arrow",
    (
    ) =>
      CupertinoIcons.down_arrow
);
var _cupertinoIcons_up_arrow = MXFunctionInvoke(
  "CupertinoIcons.up_arrow",
    (
    ) =>
      CupertinoIcons.up_arrow
);
var _cupertinoIcons_battery_charging = MXFunctionInvoke(
  "CupertinoIcons.battery_charging",
    (
    ) =>
      CupertinoIcons.battery_charging
);
var _cupertinoIcons_battery_empty = MXFunctionInvoke(
  "CupertinoIcons.battery_empty",
    (
    ) =>
      CupertinoIcons.battery_empty
);
var _cupertinoIcons_battery_full = MXFunctionInvoke(
  "CupertinoIcons.battery_full",
    (
    ) =>
      CupertinoIcons.battery_full
);
var _cupertinoIcons_battery_75_percent = MXFunctionInvoke(
  "CupertinoIcons.battery_75_percent",
    (
    ) =>
      CupertinoIcons.battery_75_percent
);
var _cupertinoIcons_battery_25_percent = MXFunctionInvoke(
  "CupertinoIcons.battery_25_percent",
    (
    ) =>
      CupertinoIcons.battery_25_percent
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
var _cupertinoIcons_reply_all = MXFunctionInvoke(
  "CupertinoIcons.reply_all",
    (
    ) =>
      CupertinoIcons.reply_all
);
var _cupertinoIcons_reply_thick_solid = MXFunctionInvoke(
  "CupertinoIcons.reply_thick_solid",
    (
    ) =>
      CupertinoIcons.reply_thick_solid
);
var _cupertinoIcons_share_up = MXFunctionInvoke(
  "CupertinoIcons.share_up",
    (
    ) =>
      CupertinoIcons.share_up
);
var _cupertinoIcons_shuffle = MXFunctionInvoke(
  "CupertinoIcons.shuffle",
    (
    ) =>
      CupertinoIcons.shuffle
);
var _cupertinoIcons_shuffle_medium = MXFunctionInvoke(
  "CupertinoIcons.shuffle_medium",
    (
    ) =>
      CupertinoIcons.shuffle_medium
);
var _cupertinoIcons_shuffle_thick = MXFunctionInvoke(
  "CupertinoIcons.shuffle_thick",
    (
    ) =>
      CupertinoIcons.shuffle_thick
);
var _cupertinoIcons_photo_camera = MXFunctionInvoke(
  "CupertinoIcons.photo_camera",
    (
    ) =>
      CupertinoIcons.photo_camera
);
var _cupertinoIcons_photo_camera_solid = MXFunctionInvoke(
  "CupertinoIcons.photo_camera_solid",
    (
    ) =>
      CupertinoIcons.photo_camera_solid
);
var _cupertinoIcons_video_camera = MXFunctionInvoke(
  "CupertinoIcons.video_camera",
    (
    ) =>
      CupertinoIcons.video_camera
);
var _cupertinoIcons_video_camera_solid = MXFunctionInvoke(
  "CupertinoIcons.video_camera_solid",
    (
    ) =>
      CupertinoIcons.video_camera_solid
);
var _cupertinoIcons_switch_camera = MXFunctionInvoke(
  "CupertinoIcons.switch_camera",
    (
    ) =>
      CupertinoIcons.switch_camera
);
var _cupertinoIcons_switch_camera_solid = MXFunctionInvoke(
  "CupertinoIcons.switch_camera_solid",
    (
    ) =>
      CupertinoIcons.switch_camera_solid
);
var _cupertinoIcons_collections = MXFunctionInvoke(
  "CupertinoIcons.collections",
    (
    ) =>
      CupertinoIcons.collections
);
var _cupertinoIcons_collections_solid = MXFunctionInvoke(
  "CupertinoIcons.collections_solid",
    (
    ) =>
      CupertinoIcons.collections_solid
);
var _cupertinoIcons_folder = MXFunctionInvoke(
  "CupertinoIcons.folder",
    (
    ) =>
      CupertinoIcons.folder
);
var _cupertinoIcons_folder_solid = MXFunctionInvoke(
  "CupertinoIcons.folder_solid",
    (
    ) =>
      CupertinoIcons.folder_solid
);
var _cupertinoIcons_folder_open = MXFunctionInvoke(
  "CupertinoIcons.folder_open",
    (
    ) =>
      CupertinoIcons.folder_open
);
var _cupertinoIcons_delete = MXFunctionInvoke(
  "CupertinoIcons.delete",
    (
    ) =>
      CupertinoIcons.delete
);
var _cupertinoIcons_delete_solid = MXFunctionInvoke(
  "CupertinoIcons.delete_solid",
    (
    ) =>
      CupertinoIcons.delete_solid
);
var _cupertinoIcons_delete_simple = MXFunctionInvoke(
  "CupertinoIcons.delete_simple",
    (
    ) =>
      CupertinoIcons.delete_simple
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
var _cupertinoIcons_create_solid = MXFunctionInvoke(
  "CupertinoIcons.create_solid",
    (
    ) =>
      CupertinoIcons.create_solid
);
var _cupertinoIcons_refresh = MXFunctionInvoke(
  "CupertinoIcons.refresh",
    (
    ) =>
      CupertinoIcons.refresh
);
var _cupertinoIcons_refresh_circled = MXFunctionInvoke(
  "CupertinoIcons.refresh_circled",
    (
    ) =>
      CupertinoIcons.refresh_circled
);
var _cupertinoIcons_refresh_circled_solid = MXFunctionInvoke(
  "CupertinoIcons.refresh_circled_solid",
    (
    ) =>
      CupertinoIcons.refresh_circled_solid
);
var _cupertinoIcons_refresh_thin = MXFunctionInvoke(
  "CupertinoIcons.refresh_thin",
    (
    ) =>
      CupertinoIcons.refresh_thin
);
var _cupertinoIcons_refresh_thick = MXFunctionInvoke(
  "CupertinoIcons.refresh_thick",
    (
    ) =>
      CupertinoIcons.refresh_thick
);
var _cupertinoIcons_refresh_bold = MXFunctionInvoke(
  "CupertinoIcons.refresh_bold",
    (
    ) =>
      CupertinoIcons.refresh_bold
);
var _cupertinoIcons_clear_thick = MXFunctionInvoke(
  "CupertinoIcons.clear_thick",
    (
    ) =>
      CupertinoIcons.clear_thick
);
var _cupertinoIcons_clear_thick_circled = MXFunctionInvoke(
  "CupertinoIcons.clear_thick_circled",
    (
    ) =>
      CupertinoIcons.clear_thick_circled
);
var _cupertinoIcons_clear = MXFunctionInvoke(
  "CupertinoIcons.clear",
    (
    ) =>
      CupertinoIcons.clear
);
var _cupertinoIcons_clear_circled = MXFunctionInvoke(
  "CupertinoIcons.clear_circled",
    (
    ) =>
      CupertinoIcons.clear_circled
);
var _cupertinoIcons_clear_circled_solid = MXFunctionInvoke(
  "CupertinoIcons.clear_circled_solid",
    (
    ) =>
      CupertinoIcons.clear_circled_solid
);
var _cupertinoIcons_add = MXFunctionInvoke(
  "CupertinoIcons.add",
    (
    ) =>
      CupertinoIcons.add
);
var _cupertinoIcons_add_circled = MXFunctionInvoke(
  "CupertinoIcons.add_circled",
    (
    ) =>
      CupertinoIcons.add_circled
);
var _cupertinoIcons_add_circled_solid = MXFunctionInvoke(
  "CupertinoIcons.add_circled_solid",
    (
    ) =>
      CupertinoIcons.add_circled_solid
);
var _cupertinoIcons_gear = MXFunctionInvoke(
  "CupertinoIcons.gear",
    (
    ) =>
      CupertinoIcons.gear
);
var _cupertinoIcons_gear_solid = MXFunctionInvoke(
  "CupertinoIcons.gear_solid",
    (
    ) =>
      CupertinoIcons.gear_solid
);
var _cupertinoIcons_gear_big = MXFunctionInvoke(
  "CupertinoIcons.gear_big",
    (
    ) =>
      CupertinoIcons.gear_big
);
var _cupertinoIcons_settings = MXFunctionInvoke(
  "CupertinoIcons.settings",
    (
    ) =>
      CupertinoIcons.settings
);
var _cupertinoIcons_settings_solid = MXFunctionInvoke(
  "CupertinoIcons.settings_solid",
    (
    ) =>
      CupertinoIcons.settings_solid
);
var _cupertinoIcons_music_note = MXFunctionInvoke(
  "CupertinoIcons.music_note",
    (
    ) =>
      CupertinoIcons.music_note
);
var _cupertinoIcons_double_music_note = MXFunctionInvoke(
  "CupertinoIcons.double_music_note",
    (
    ) =>
      CupertinoIcons.double_music_note
);
var _cupertinoIcons_play_arrow = MXFunctionInvoke(
  "CupertinoIcons.play_arrow",
    (
    ) =>
      CupertinoIcons.play_arrow
);
var _cupertinoIcons_play_arrow_solid = MXFunctionInvoke(
  "CupertinoIcons.play_arrow_solid",
    (
    ) =>
      CupertinoIcons.play_arrow_solid
);
var _cupertinoIcons_pause = MXFunctionInvoke(
  "CupertinoIcons.pause",
    (
    ) =>
      CupertinoIcons.pause
);
var _cupertinoIcons_pause_solid = MXFunctionInvoke(
  "CupertinoIcons.pause_solid",
    (
    ) =>
      CupertinoIcons.pause_solid
);
var _cupertinoIcons_loop = MXFunctionInvoke(
  "CupertinoIcons.loop",
    (
    ) =>
      CupertinoIcons.loop
);
var _cupertinoIcons_loop_thick = MXFunctionInvoke(
  "CupertinoIcons.loop_thick",
    (
    ) =>
      CupertinoIcons.loop_thick
);
var _cupertinoIcons_volume_down = MXFunctionInvoke(
  "CupertinoIcons.volume_down",
    (
    ) =>
      CupertinoIcons.volume_down
);
var _cupertinoIcons_volume_mute = MXFunctionInvoke(
  "CupertinoIcons.volume_mute",
    (
    ) =>
      CupertinoIcons.volume_mute
);
var _cupertinoIcons_volume_off = MXFunctionInvoke(
  "CupertinoIcons.volume_off",
    (
    ) =>
      CupertinoIcons.volume_off
);
var _cupertinoIcons_volume_up = MXFunctionInvoke(
  "CupertinoIcons.volume_up",
    (
    ) =>
      CupertinoIcons.volume_up
);
var _cupertinoIcons_fullscreen = MXFunctionInvoke(
  "CupertinoIcons.fullscreen",
    (
    ) =>
      CupertinoIcons.fullscreen
);
var _cupertinoIcons_fullscreen_exit = MXFunctionInvoke(
  "CupertinoIcons.fullscreen_exit",
    (
    ) =>
      CupertinoIcons.fullscreen_exit
);
var _cupertinoIcons_mic_off = MXFunctionInvoke(
  "CupertinoIcons.mic_off",
    (
    ) =>
      CupertinoIcons.mic_off
);
var _cupertinoIcons_mic = MXFunctionInvoke(
  "CupertinoIcons.mic",
    (
    ) =>
      CupertinoIcons.mic
);
var _cupertinoIcons_mic_solid = MXFunctionInvoke(
  "CupertinoIcons.mic_solid",
    (
    ) =>
      CupertinoIcons.mic_solid
);
var _cupertinoIcons_clock = MXFunctionInvoke(
  "CupertinoIcons.clock",
    (
    ) =>
      CupertinoIcons.clock
);
var _cupertinoIcons_clock_solid = MXFunctionInvoke(
  "CupertinoIcons.clock_solid",
    (
    ) =>
      CupertinoIcons.clock_solid
);
var _cupertinoIcons_time = MXFunctionInvoke(
  "CupertinoIcons.time",
    (
    ) =>
      CupertinoIcons.time
);
var _cupertinoIcons_time_solid = MXFunctionInvoke(
  "CupertinoIcons.time_solid",
    (
    ) =>
      CupertinoIcons.time_solid
);
var _cupertinoIcons_padlock = MXFunctionInvoke(
  "CupertinoIcons.padlock",
    (
    ) =>
      CupertinoIcons.padlock
);
var _cupertinoIcons_padlock_solid = MXFunctionInvoke(
  "CupertinoIcons.padlock_solid",
    (
    ) =>
      CupertinoIcons.padlock_solid
);
var _cupertinoIcons_eye = MXFunctionInvoke(
  "CupertinoIcons.eye",
    (
    ) =>
      CupertinoIcons.eye
);
var _cupertinoIcons_eye_solid = MXFunctionInvoke(
  "CupertinoIcons.eye_solid",
    (
    ) =>
      CupertinoIcons.eye_solid
);
var _cupertinoIcons_person = MXFunctionInvoke(
  "CupertinoIcons.person",
    (
    ) =>
      CupertinoIcons.person
);
var _cupertinoIcons_person_solid = MXFunctionInvoke(
  "CupertinoIcons.person_solid",
    (
    ) =>
      CupertinoIcons.person_solid
);
var _cupertinoIcons_person_add = MXFunctionInvoke(
  "CupertinoIcons.person_add",
    (
    ) =>
      CupertinoIcons.person_add
);
var _cupertinoIcons_person_add_solid = MXFunctionInvoke(
  "CupertinoIcons.person_add_solid",
    (
    ) =>
      CupertinoIcons.person_add_solid
);
var _cupertinoIcons_group = MXFunctionInvoke(
  "CupertinoIcons.group",
    (
    ) =>
      CupertinoIcons.group
);
var _cupertinoIcons_group_solid = MXFunctionInvoke(
  "CupertinoIcons.group_solid",
    (
    ) =>
      CupertinoIcons.group_solid
);
var _cupertinoIcons_mail = MXFunctionInvoke(
  "CupertinoIcons.mail",
    (
    ) =>
      CupertinoIcons.mail
);
var _cupertinoIcons_mail_solid = MXFunctionInvoke(
  "CupertinoIcons.mail_solid",
    (
    ) =>
      CupertinoIcons.mail_solid
);
var _cupertinoIcons_location = MXFunctionInvoke(
  "CupertinoIcons.location",
    (
    ) =>
      CupertinoIcons.location
);
var _cupertinoIcons_location_solid = MXFunctionInvoke(
  "CupertinoIcons.location_solid",
    (
    ) =>
      CupertinoIcons.location_solid
);
var _cupertinoIcons_tag = MXFunctionInvoke(
  "CupertinoIcons.tag",
    (
    ) =>
      CupertinoIcons.tag
);
var _cupertinoIcons_tag_solid = MXFunctionInvoke(
  "CupertinoIcons.tag_solid",
    (
    ) =>
      CupertinoIcons.tag_solid
);
var _cupertinoIcons_tags = MXFunctionInvoke(
  "CupertinoIcons.tags",
    (
    ) =>
      CupertinoIcons.tags
);
var _cupertinoIcons_tags_solid = MXFunctionInvoke(
  "CupertinoIcons.tags_solid",
    (
    ) =>
      CupertinoIcons.tags_solid
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
var _cupertinoIcons_car_detailed = MXFunctionInvoke(
  "CupertinoIcons.car_detailed",
    (
    ) =>
      CupertinoIcons.car_detailed
);
var _cupertinoIcons_train_style_one = MXFunctionInvoke(
  "CupertinoIcons.train_style_one",
    (
    ) =>
      CupertinoIcons.train_style_one
);
var _cupertinoIcons_train_style_two = MXFunctionInvoke(
  "CupertinoIcons.train_style_two",
    (
    ) =>
      CupertinoIcons.train_style_two
);
var _cupertinoIcons_paw = MXFunctionInvoke(
  "CupertinoIcons.paw",
    (
    ) =>
      CupertinoIcons.paw
);
var _cupertinoIcons_paw_solid = MXFunctionInvoke(
  "CupertinoIcons.paw_solid",
    (
    ) =>
      CupertinoIcons.paw_solid
);
var _cupertinoIcons_game_controller = MXFunctionInvoke(
  "CupertinoIcons.game_controller",
    (
    ) =>
      CupertinoIcons.game_controller
);
var _cupertinoIcons_game_controller_solid = MXFunctionInvoke(
  "CupertinoIcons.game_controller_solid",
    (
    ) =>
      CupertinoIcons.game_controller_solid
);
var _cupertinoIcons_lab_flask = MXFunctionInvoke(
  "CupertinoIcons.lab_flask",
    (
    ) =>
      CupertinoIcons.lab_flask
);
var _cupertinoIcons_lab_flask_solid = MXFunctionInvoke(
  "CupertinoIcons.lab_flask_solid",
    (
    ) =>
      CupertinoIcons.lab_flask_solid
);
var _cupertinoIcons_heart = MXFunctionInvoke(
  "CupertinoIcons.heart",
    (
    ) =>
      CupertinoIcons.heart
);
var _cupertinoIcons_heart_solid = MXFunctionInvoke(
  "CupertinoIcons.heart_solid",
    (
    ) =>
      CupertinoIcons.heart_solid
);
var _cupertinoIcons_bell = MXFunctionInvoke(
  "CupertinoIcons.bell",
    (
    ) =>
      CupertinoIcons.bell
);
var _cupertinoIcons_bell_solid = MXFunctionInvoke(
  "CupertinoIcons.bell_solid",
    (
    ) =>
      CupertinoIcons.bell_solid
);
var _cupertinoIcons_news = MXFunctionInvoke(
  "CupertinoIcons.news",
    (
    ) =>
      CupertinoIcons.news
);
var _cupertinoIcons_news_solid = MXFunctionInvoke(
  "CupertinoIcons.news_solid",
    (
    ) =>
      CupertinoIcons.news_solid
);
var _cupertinoIcons_brightness = MXFunctionInvoke(
  "CupertinoIcons.brightness",
    (
    ) =>
      CupertinoIcons.brightness
);
var _cupertinoIcons_brightness_solid = MXFunctionInvoke(
  "CupertinoIcons.brightness_solid",
    (
    ) =>
      CupertinoIcons.brightness_solid
);
