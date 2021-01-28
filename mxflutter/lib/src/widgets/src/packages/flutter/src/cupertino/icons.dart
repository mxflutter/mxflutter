//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/cupertino/icons.dart';
import 'package:flutter/widgets.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerIconsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_cupertinoIconsIconFont.funName] = _cupertinoIconsIconFont;
  m[_cupertinoIconsIconFontPackage.funName] = _cupertinoIconsIconFontPackage;
  m[_cupertinoIconsLeftChevron.funName] = _cupertinoIconsLeftChevron;
  m[_cupertinoIconsRightChevron.funName] = _cupertinoIconsRightChevron;
  m[_cupertinoIconsShare.funName] = _cupertinoIconsShare;
  m[_cupertinoIconsShareSolid.funName] = _cupertinoIconsShareSolid;
  m[_cupertinoIconsBook.funName] = _cupertinoIconsBook;
  m[_cupertinoIconsBookSolid.funName] = _cupertinoIconsBookSolid;
  m[_cupertinoIconsBookmark.funName] = _cupertinoIconsBookmark;
  m[_cupertinoIconsBookmarkSolid.funName] = _cupertinoIconsBookmarkSolid;
  m[_cupertinoIconsInfo.funName] = _cupertinoIconsInfo;
  m[_cupertinoIconsReply.funName] = _cupertinoIconsReply;
  m[_cupertinoIconsConversationBubble.funName] = _cupertinoIconsConversationBubble;
  m[_cupertinoIconsProfileCircled.funName] = _cupertinoIconsProfileCircled;
  m[_cupertinoIconsPlusCircled.funName] = _cupertinoIconsPlusCircled;
  m[_cupertinoIconsMinusCircled.funName] = _cupertinoIconsMinusCircled;
  m[_cupertinoIconsFlag.funName] = _cupertinoIconsFlag;
  m[_cupertinoIconsSearch.funName] = _cupertinoIconsSearch;
  m[_cupertinoIconsCheckMark.funName] = _cupertinoIconsCheckMark;
  m[_cupertinoIconsCheckMarkCircled.funName] = _cupertinoIconsCheckMarkCircled;
  m[_cupertinoIconsCheckMarkCircledSolid.funName] = _cupertinoIconsCheckMarkCircledSolid;
  m[_cupertinoIconsCircle.funName] = _cupertinoIconsCircle;
  m[_cupertinoIconsCircleFilled.funName] = _cupertinoIconsCircleFilled;
  m[_cupertinoIconsBack.funName] = _cupertinoIconsBack;
  m[_cupertinoIconsForward.funName] = _cupertinoIconsForward;
  m[_cupertinoIconsHome.funName] = _cupertinoIconsHome;
  m[_cupertinoIconsShoppingCart.funName] = _cupertinoIconsShoppingCart;
  m[_cupertinoIconsEllipsis.funName] = _cupertinoIconsEllipsis;
  m[_cupertinoIconsPhone.funName] = _cupertinoIconsPhone;
  m[_cupertinoIconsPhoneSolid.funName] = _cupertinoIconsPhoneSolid;
  m[_cupertinoIconsDownArrow.funName] = _cupertinoIconsDownArrow;
  m[_cupertinoIconsUpArrow.funName] = _cupertinoIconsUpArrow;
  m[_cupertinoIconsBatteryCharging.funName] = _cupertinoIconsBatteryCharging;
  m[_cupertinoIconsBatteryEmpty.funName] = _cupertinoIconsBatteryEmpty;
  m[_cupertinoIconsBatteryFull.funName] = _cupertinoIconsBatteryFull;
  m[_cupertinoIconsBattery75Percent.funName] = _cupertinoIconsBattery75Percent;
  m[_cupertinoIconsBattery25Percent.funName] = _cupertinoIconsBattery25Percent;
  m[_cupertinoIconsBluetooth.funName] = _cupertinoIconsBluetooth;
  m[_cupertinoIconsRestart.funName] = _cupertinoIconsRestart;
  m[_cupertinoIconsReplyAll.funName] = _cupertinoIconsReplyAll;
  m[_cupertinoIconsReplyThickSolid.funName] = _cupertinoIconsReplyThickSolid;
  m[_cupertinoIconsShareUp.funName] = _cupertinoIconsShareUp;
  m[_cupertinoIconsShuffle.funName] = _cupertinoIconsShuffle;
  m[_cupertinoIconsShuffleMedium.funName] = _cupertinoIconsShuffleMedium;
  m[_cupertinoIconsShuffleThick.funName] = _cupertinoIconsShuffleThick;
  m[_cupertinoIconsPhotoCamera.funName] = _cupertinoIconsPhotoCamera;
  m[_cupertinoIconsPhotoCameraSolid.funName] = _cupertinoIconsPhotoCameraSolid;
  m[_cupertinoIconsVideoCamera.funName] = _cupertinoIconsVideoCamera;
  m[_cupertinoIconsVideoCameraSolid.funName] = _cupertinoIconsVideoCameraSolid;
  m[_cupertinoIconsSwitchCamera.funName] = _cupertinoIconsSwitchCamera;
  m[_cupertinoIconsSwitchCameraSolid.funName] = _cupertinoIconsSwitchCameraSolid;
  m[_cupertinoIconsCollections.funName] = _cupertinoIconsCollections;
  m[_cupertinoIconsCollectionsSolid.funName] = _cupertinoIconsCollectionsSolid;
  m[_cupertinoIconsFolder.funName] = _cupertinoIconsFolder;
  m[_cupertinoIconsFolderSolid.funName] = _cupertinoIconsFolderSolid;
  m[_cupertinoIconsFolderOpen.funName] = _cupertinoIconsFolderOpen;
  m[_cupertinoIconsDelete.funName] = _cupertinoIconsDelete;
  m[_cupertinoIconsDeleteSolid.funName] = _cupertinoIconsDeleteSolid;
  m[_cupertinoIconsDeleteSimple.funName] = _cupertinoIconsDeleteSimple;
  m[_cupertinoIconsPen.funName] = _cupertinoIconsPen;
  m[_cupertinoIconsPencil.funName] = _cupertinoIconsPencil;
  m[_cupertinoIconsCreate.funName] = _cupertinoIconsCreate;
  m[_cupertinoIconsCreateSolid.funName] = _cupertinoIconsCreateSolid;
  m[_cupertinoIconsRefresh.funName] = _cupertinoIconsRefresh;
  m[_cupertinoIconsRefreshCircled.funName] = _cupertinoIconsRefreshCircled;
  m[_cupertinoIconsRefreshCircledSolid.funName] = _cupertinoIconsRefreshCircledSolid;
  m[_cupertinoIconsRefreshThin.funName] = _cupertinoIconsRefreshThin;
  m[_cupertinoIconsRefreshThick.funName] = _cupertinoIconsRefreshThick;
  m[_cupertinoIconsRefreshBold.funName] = _cupertinoIconsRefreshBold;
  m[_cupertinoIconsClearThick.funName] = _cupertinoIconsClearThick;
  m[_cupertinoIconsClearThickCircled.funName] = _cupertinoIconsClearThickCircled;
  m[_cupertinoIconsClear.funName] = _cupertinoIconsClear;
  m[_cupertinoIconsClearCircled.funName] = _cupertinoIconsClearCircled;
  m[_cupertinoIconsClearCircledSolid.funName] = _cupertinoIconsClearCircledSolid;
  m[_cupertinoIconsAdd.funName] = _cupertinoIconsAdd;
  m[_cupertinoIconsAddCircled.funName] = _cupertinoIconsAddCircled;
  m[_cupertinoIconsAddCircledSolid.funName] = _cupertinoIconsAddCircledSolid;
  m[_cupertinoIconsGear.funName] = _cupertinoIconsGear;
  m[_cupertinoIconsGearSolid.funName] = _cupertinoIconsGearSolid;
  m[_cupertinoIconsGearBig.funName] = _cupertinoIconsGearBig;
  m[_cupertinoIconsSettings.funName] = _cupertinoIconsSettings;
  m[_cupertinoIconsSettingsSolid.funName] = _cupertinoIconsSettingsSolid;
  m[_cupertinoIconsMusicNote.funName] = _cupertinoIconsMusicNote;
  m[_cupertinoIconsDoubleMusicNote.funName] = _cupertinoIconsDoubleMusicNote;
  m[_cupertinoIconsPlayArrow.funName] = _cupertinoIconsPlayArrow;
  m[_cupertinoIconsPlayArrowSolid.funName] = _cupertinoIconsPlayArrowSolid;
  m[_cupertinoIconsPause.funName] = _cupertinoIconsPause;
  m[_cupertinoIconsPauseSolid.funName] = _cupertinoIconsPauseSolid;
  m[_cupertinoIconsLoop.funName] = _cupertinoIconsLoop;
  m[_cupertinoIconsLoopThick.funName] = _cupertinoIconsLoopThick;
  m[_cupertinoIconsVolumeDown.funName] = _cupertinoIconsVolumeDown;
  m[_cupertinoIconsVolumeMute.funName] = _cupertinoIconsVolumeMute;
  m[_cupertinoIconsVolumeOff.funName] = _cupertinoIconsVolumeOff;
  m[_cupertinoIconsVolumeUp.funName] = _cupertinoIconsVolumeUp;
  m[_cupertinoIconsFullscreen.funName] = _cupertinoIconsFullscreen;
  m[_cupertinoIconsFullscreenExit.funName] = _cupertinoIconsFullscreenExit;
  m[_cupertinoIconsMicOff.funName] = _cupertinoIconsMicOff;
  m[_cupertinoIconsMic.funName] = _cupertinoIconsMic;
  m[_cupertinoIconsMicSolid.funName] = _cupertinoIconsMicSolid;
  m[_cupertinoIconsClock.funName] = _cupertinoIconsClock;
  m[_cupertinoIconsClockSolid.funName] = _cupertinoIconsClockSolid;
  m[_cupertinoIconsTime.funName] = _cupertinoIconsTime;
  m[_cupertinoIconsTimeSolid.funName] = _cupertinoIconsTimeSolid;
  m[_cupertinoIconsPadlock.funName] = _cupertinoIconsPadlock;
  m[_cupertinoIconsPadlockSolid.funName] = _cupertinoIconsPadlockSolid;
  m[_cupertinoIconsEye.funName] = _cupertinoIconsEye;
  m[_cupertinoIconsEyeSolid.funName] = _cupertinoIconsEyeSolid;
  m[_cupertinoIconsPerson.funName] = _cupertinoIconsPerson;
  m[_cupertinoIconsPersonSolid.funName] = _cupertinoIconsPersonSolid;
  m[_cupertinoIconsPersonAdd.funName] = _cupertinoIconsPersonAdd;
  m[_cupertinoIconsPersonAddSolid.funName] = _cupertinoIconsPersonAddSolid;
  m[_cupertinoIconsGroup.funName] = _cupertinoIconsGroup;
  m[_cupertinoIconsGroupSolid.funName] = _cupertinoIconsGroupSolid;
  m[_cupertinoIconsMail.funName] = _cupertinoIconsMail;
  m[_cupertinoIconsMailSolid.funName] = _cupertinoIconsMailSolid;
  m[_cupertinoIconsLocation.funName] = _cupertinoIconsLocation;
  m[_cupertinoIconsLocationSolid.funName] = _cupertinoIconsLocationSolid;
  m[_cupertinoIconsTag.funName] = _cupertinoIconsTag;
  m[_cupertinoIconsTagSolid.funName] = _cupertinoIconsTagSolid;
  m[_cupertinoIconsTags.funName] = _cupertinoIconsTags;
  m[_cupertinoIconsTagsSolid.funName] = _cupertinoIconsTagsSolid;
  m[_cupertinoIconsBus.funName] = _cupertinoIconsBus;
  m[_cupertinoIconsCar.funName] = _cupertinoIconsCar;
  m[_cupertinoIconsCarDetailed.funName] = _cupertinoIconsCarDetailed;
  m[_cupertinoIconsTrainStyleOne.funName] = _cupertinoIconsTrainStyleOne;
  m[_cupertinoIconsTrainStyleTwo.funName] = _cupertinoIconsTrainStyleTwo;
  m[_cupertinoIconsPaw.funName] = _cupertinoIconsPaw;
  m[_cupertinoIconsPawSolid.funName] = _cupertinoIconsPawSolid;
  m[_cupertinoIconsGameController.funName] = _cupertinoIconsGameController;
  m[_cupertinoIconsGameControllerSolid.funName] = _cupertinoIconsGameControllerSolid;
  m[_cupertinoIconsLabFlask.funName] = _cupertinoIconsLabFlask;
  m[_cupertinoIconsLabFlaskSolid.funName] = _cupertinoIconsLabFlaskSolid;
  m[_cupertinoIconsHeart.funName] = _cupertinoIconsHeart;
  m[_cupertinoIconsHeartSolid.funName] = _cupertinoIconsHeartSolid;
  m[_cupertinoIconsBell.funName] = _cupertinoIconsBell;
  m[_cupertinoIconsBellSolid.funName] = _cupertinoIconsBellSolid;
  m[_cupertinoIconsNews.funName] = _cupertinoIconsNews;
  m[_cupertinoIconsNewsSolid.funName] = _cupertinoIconsNewsSolid;
  m[_cupertinoIconsBrightness.funName] = _cupertinoIconsBrightness;
  m[_cupertinoIconsBrightnessSolid.funName] = _cupertinoIconsBrightnessSolid;
  return m;
}

var _cupertinoIconsIconFont = MXFunctionInvoke("CupertinoIcons.iconFont", () => CupertinoIcons.iconFont);
var _cupertinoIconsIconFontPackage =
    MXFunctionInvoke("CupertinoIcons.iconFontPackage", () => CupertinoIcons.iconFontPackage);
var _cupertinoIconsLeftChevron = MXFunctionInvoke("CupertinoIcons.left_chevron", () => CupertinoIcons.left_chevron);
var _cupertinoIconsRightChevron = MXFunctionInvoke("CupertinoIcons.right_chevron", () => CupertinoIcons.right_chevron);
var _cupertinoIconsShare = MXFunctionInvoke("CupertinoIcons.share", () => CupertinoIcons.share);
var _cupertinoIconsShareSolid = MXFunctionInvoke("CupertinoIcons.share_solid", () => CupertinoIcons.share_solid);
var _cupertinoIconsBook = MXFunctionInvoke("CupertinoIcons.book", () => CupertinoIcons.book);
var _cupertinoIconsBookSolid = MXFunctionInvoke("CupertinoIcons.book_solid", () => CupertinoIcons.book_solid);
var _cupertinoIconsBookmark = MXFunctionInvoke("CupertinoIcons.bookmark", () => CupertinoIcons.bookmark);
var _cupertinoIconsBookmarkSolid =
    MXFunctionInvoke("CupertinoIcons.bookmark_solid", () => CupertinoIcons.bookmark_solid);
var _cupertinoIconsInfo = MXFunctionInvoke("CupertinoIcons.info", () => CupertinoIcons.info);
var _cupertinoIconsReply = MXFunctionInvoke("CupertinoIcons.reply", () => CupertinoIcons.reply);
var _cupertinoIconsConversationBubble =
    MXFunctionInvoke("CupertinoIcons.conversation_bubble", () => CupertinoIcons.conversation_bubble);
var _cupertinoIconsProfileCircled =
    MXFunctionInvoke("CupertinoIcons.profile_circled", () => CupertinoIcons.profile_circled);
var _cupertinoIconsPlusCircled = MXFunctionInvoke("CupertinoIcons.plus_circled", () => CupertinoIcons.plus_circled);
var _cupertinoIconsMinusCircled = MXFunctionInvoke("CupertinoIcons.minus_circled", () => CupertinoIcons.minus_circled);
var _cupertinoIconsFlag = MXFunctionInvoke("CupertinoIcons.flag", () => CupertinoIcons.flag);
var _cupertinoIconsSearch = MXFunctionInvoke("CupertinoIcons.search", () => CupertinoIcons.search);
var _cupertinoIconsCheckMark = MXFunctionInvoke("CupertinoIcons.check_mark", () => CupertinoIcons.check_mark);
var _cupertinoIconsCheckMarkCircled =
    MXFunctionInvoke("CupertinoIcons.check_mark_circled", () => CupertinoIcons.check_mark_circled);
var _cupertinoIconsCheckMarkCircledSolid =
    MXFunctionInvoke("CupertinoIcons.check_mark_circled_solid", () => CupertinoIcons.check_mark_circled_solid);
var _cupertinoIconsCircle = MXFunctionInvoke("CupertinoIcons.circle", () => CupertinoIcons.circle);
var _cupertinoIconsCircleFilled = MXFunctionInvoke("CupertinoIcons.circle_filled", () => CupertinoIcons.circle_filled);
var _cupertinoIconsBack = MXFunctionInvoke("CupertinoIcons.back", () => CupertinoIcons.back);
var _cupertinoIconsForward = MXFunctionInvoke("CupertinoIcons.forward", () => CupertinoIcons.forward);
var _cupertinoIconsHome = MXFunctionInvoke("CupertinoIcons.home", () => CupertinoIcons.home);
var _cupertinoIconsShoppingCart = MXFunctionInvoke("CupertinoIcons.shopping_cart", () => CupertinoIcons.shopping_cart);
var _cupertinoIconsEllipsis = MXFunctionInvoke("CupertinoIcons.ellipsis", () => CupertinoIcons.ellipsis);
var _cupertinoIconsPhone = MXFunctionInvoke("CupertinoIcons.phone", () => CupertinoIcons.phone);
var _cupertinoIconsPhoneSolid = MXFunctionInvoke("CupertinoIcons.phone_solid", () => CupertinoIcons.phone_solid);
var _cupertinoIconsDownArrow = MXFunctionInvoke("CupertinoIcons.down_arrow", () => CupertinoIcons.down_arrow);
var _cupertinoIconsUpArrow = MXFunctionInvoke("CupertinoIcons.up_arrow", () => CupertinoIcons.up_arrow);
var _cupertinoIconsBatteryCharging =
    MXFunctionInvoke("CupertinoIcons.battery_charging", () => CupertinoIcons.battery_charging);
var _cupertinoIconsBatteryEmpty = MXFunctionInvoke("CupertinoIcons.battery_empty", () => CupertinoIcons.battery_empty);
var _cupertinoIconsBatteryFull = MXFunctionInvoke("CupertinoIcons.battery_full", () => CupertinoIcons.battery_full);
var _cupertinoIconsBattery75Percent =
    MXFunctionInvoke("CupertinoIcons.battery_75_percent", () => CupertinoIcons.battery_75_percent);
var _cupertinoIconsBattery25Percent =
    MXFunctionInvoke("CupertinoIcons.battery_25_percent", () => CupertinoIcons.battery_25_percent);
var _cupertinoIconsBluetooth = MXFunctionInvoke("CupertinoIcons.bluetooth", () => CupertinoIcons.bluetooth);
var _cupertinoIconsRestart = MXFunctionInvoke("CupertinoIcons.restart", () => CupertinoIcons.restart);
var _cupertinoIconsReplyAll = MXFunctionInvoke("CupertinoIcons.reply_all", () => CupertinoIcons.reply_all);
var _cupertinoIconsReplyThickSolid =
    MXFunctionInvoke("CupertinoIcons.reply_thick_solid", () => CupertinoIcons.reply_thick_solid);
var _cupertinoIconsShareUp = MXFunctionInvoke("CupertinoIcons.share_up", () => CupertinoIcons.share_up);
var _cupertinoIconsShuffle = MXFunctionInvoke("CupertinoIcons.shuffle", () => CupertinoIcons.shuffle);
var _cupertinoIconsShuffleMedium =
    MXFunctionInvoke("CupertinoIcons.shuffle_medium", () => CupertinoIcons.shuffle_medium);
var _cupertinoIconsShuffleThick = MXFunctionInvoke("CupertinoIcons.shuffle_thick", () => CupertinoIcons.shuffle_thick);
var _cupertinoIconsPhotoCamera = MXFunctionInvoke("CupertinoIcons.photo_camera", () => CupertinoIcons.photo_camera);
var _cupertinoIconsPhotoCameraSolid =
    MXFunctionInvoke("CupertinoIcons.photo_camera_solid", () => CupertinoIcons.photo_camera_solid);
var _cupertinoIconsVideoCamera = MXFunctionInvoke("CupertinoIcons.video_camera", () => CupertinoIcons.video_camera);
var _cupertinoIconsVideoCameraSolid =
    MXFunctionInvoke("CupertinoIcons.video_camera_solid", () => CupertinoIcons.video_camera_solid);
var _cupertinoIconsSwitchCamera = MXFunctionInvoke("CupertinoIcons.switch_camera", () => CupertinoIcons.switch_camera);
var _cupertinoIconsSwitchCameraSolid =
    MXFunctionInvoke("CupertinoIcons.switch_camera_solid", () => CupertinoIcons.switch_camera_solid);
var _cupertinoIconsCollections = MXFunctionInvoke("CupertinoIcons.collections", () => CupertinoIcons.collections);
var _cupertinoIconsCollectionsSolid =
    MXFunctionInvoke("CupertinoIcons.collections_solid", () => CupertinoIcons.collections_solid);
var _cupertinoIconsFolder = MXFunctionInvoke("CupertinoIcons.folder", () => CupertinoIcons.folder);
var _cupertinoIconsFolderSolid = MXFunctionInvoke("CupertinoIcons.folder_solid", () => CupertinoIcons.folder_solid);
var _cupertinoIconsFolderOpen = MXFunctionInvoke("CupertinoIcons.folder_open", () => CupertinoIcons.folder_open);
var _cupertinoIconsDelete = MXFunctionInvoke("CupertinoIcons.delete", () => CupertinoIcons.delete);
var _cupertinoIconsDeleteSolid = MXFunctionInvoke("CupertinoIcons.delete_solid", () => CupertinoIcons.delete_solid);
var _cupertinoIconsDeleteSimple = MXFunctionInvoke("CupertinoIcons.delete_simple", () => CupertinoIcons.delete_simple);
var _cupertinoIconsPen = MXFunctionInvoke("CupertinoIcons.pen", () => CupertinoIcons.pen);
var _cupertinoIconsPencil = MXFunctionInvoke("CupertinoIcons.pencil", () => CupertinoIcons.pencil);
var _cupertinoIconsCreate = MXFunctionInvoke("CupertinoIcons.create", () => CupertinoIcons.create);
var _cupertinoIconsCreateSolid = MXFunctionInvoke("CupertinoIcons.create_solid", () => CupertinoIcons.create_solid);
var _cupertinoIconsRefresh = MXFunctionInvoke("CupertinoIcons.refresh", () => CupertinoIcons.refresh);
var _cupertinoIconsRefreshCircled =
    MXFunctionInvoke("CupertinoIcons.refresh_circled", () => CupertinoIcons.refresh_circled);
var _cupertinoIconsRefreshCircledSolid =
    MXFunctionInvoke("CupertinoIcons.refresh_circled_solid", () => CupertinoIcons.refresh_circled_solid);
var _cupertinoIconsRefreshThin = MXFunctionInvoke("CupertinoIcons.refresh_thin", () => CupertinoIcons.refresh_thin);
var _cupertinoIconsRefreshThick = MXFunctionInvoke("CupertinoIcons.refresh_thick", () => CupertinoIcons.refresh_thick);
var _cupertinoIconsRefreshBold = MXFunctionInvoke("CupertinoIcons.refresh_bold", () => CupertinoIcons.refresh_bold);
var _cupertinoIconsClearThick = MXFunctionInvoke("CupertinoIcons.clear_thick", () => CupertinoIcons.clear_thick);
var _cupertinoIconsClearThickCircled =
    MXFunctionInvoke("CupertinoIcons.clear_thick_circled", () => CupertinoIcons.clear_thick_circled);
var _cupertinoIconsClear = MXFunctionInvoke("CupertinoIcons.clear", () => CupertinoIcons.clear);
var _cupertinoIconsClearCircled = MXFunctionInvoke("CupertinoIcons.clear_circled", () => CupertinoIcons.clear_circled);
var _cupertinoIconsClearCircledSolid =
    MXFunctionInvoke("CupertinoIcons.clear_circled_solid", () => CupertinoIcons.clear_circled_solid);
var _cupertinoIconsAdd = MXFunctionInvoke("CupertinoIcons.add", () => CupertinoIcons.add);
var _cupertinoIconsAddCircled = MXFunctionInvoke("CupertinoIcons.add_circled", () => CupertinoIcons.add_circled);
var _cupertinoIconsAddCircledSolid =
    MXFunctionInvoke("CupertinoIcons.add_circled_solid", () => CupertinoIcons.add_circled_solid);
var _cupertinoIconsGear = MXFunctionInvoke("CupertinoIcons.gear", () => CupertinoIcons.gear);
var _cupertinoIconsGearSolid = MXFunctionInvoke("CupertinoIcons.gear_solid", () => CupertinoIcons.gear_solid);
var _cupertinoIconsGearBig = MXFunctionInvoke("CupertinoIcons.gear_big", () => CupertinoIcons.gear_big);
var _cupertinoIconsSettings = MXFunctionInvoke("CupertinoIcons.settings", () => CupertinoIcons.settings);
var _cupertinoIconsSettingsSolid =
    MXFunctionInvoke("CupertinoIcons.settings_solid", () => CupertinoIcons.settings_solid);
var _cupertinoIconsMusicNote = MXFunctionInvoke("CupertinoIcons.music_note", () => CupertinoIcons.music_note);
var _cupertinoIconsDoubleMusicNote =
    MXFunctionInvoke("CupertinoIcons.double_music_note", () => CupertinoIcons.double_music_note);
var _cupertinoIconsPlayArrow = MXFunctionInvoke("CupertinoIcons.play_arrow", () => CupertinoIcons.play_arrow);
var _cupertinoIconsPlayArrowSolid =
    MXFunctionInvoke("CupertinoIcons.play_arrow_solid", () => CupertinoIcons.play_arrow_solid);
var _cupertinoIconsPause = MXFunctionInvoke("CupertinoIcons.pause", () => CupertinoIcons.pause);
var _cupertinoIconsPauseSolid = MXFunctionInvoke("CupertinoIcons.pause_solid", () => CupertinoIcons.pause_solid);
var _cupertinoIconsLoop = MXFunctionInvoke("CupertinoIcons.loop", () => CupertinoIcons.loop);
var _cupertinoIconsLoopThick = MXFunctionInvoke("CupertinoIcons.loop_thick", () => CupertinoIcons.loop_thick);
var _cupertinoIconsVolumeDown = MXFunctionInvoke("CupertinoIcons.volume_down", () => CupertinoIcons.volume_down);
var _cupertinoIconsVolumeMute = MXFunctionInvoke("CupertinoIcons.volume_mute", () => CupertinoIcons.volume_mute);
var _cupertinoIconsVolumeOff = MXFunctionInvoke("CupertinoIcons.volume_off", () => CupertinoIcons.volume_off);
var _cupertinoIconsVolumeUp = MXFunctionInvoke("CupertinoIcons.volume_up", () => CupertinoIcons.volume_up);
var _cupertinoIconsFullscreen = MXFunctionInvoke("CupertinoIcons.fullscreen", () => CupertinoIcons.fullscreen);
var _cupertinoIconsFullscreenExit =
    MXFunctionInvoke("CupertinoIcons.fullscreen_exit", () => CupertinoIcons.fullscreen_exit);
var _cupertinoIconsMicOff = MXFunctionInvoke("CupertinoIcons.mic_off", () => CupertinoIcons.mic_off);
var _cupertinoIconsMic = MXFunctionInvoke("CupertinoIcons.mic", () => CupertinoIcons.mic);
var _cupertinoIconsMicSolid = MXFunctionInvoke("CupertinoIcons.mic_solid", () => CupertinoIcons.mic_solid);
var _cupertinoIconsClock = MXFunctionInvoke("CupertinoIcons.clock", () => CupertinoIcons.clock);
var _cupertinoIconsClockSolid = MXFunctionInvoke("CupertinoIcons.clock_solid", () => CupertinoIcons.clock_solid);
var _cupertinoIconsTime = MXFunctionInvoke("CupertinoIcons.time", () => CupertinoIcons.time);
var _cupertinoIconsTimeSolid = MXFunctionInvoke("CupertinoIcons.time_solid", () => CupertinoIcons.time_solid);
var _cupertinoIconsPadlock = MXFunctionInvoke("CupertinoIcons.padlock", () => CupertinoIcons.padlock);
var _cupertinoIconsPadlockSolid = MXFunctionInvoke("CupertinoIcons.padlock_solid", () => CupertinoIcons.padlock_solid);
var _cupertinoIconsEye = MXFunctionInvoke("CupertinoIcons.eye", () => CupertinoIcons.eye);
var _cupertinoIconsEyeSolid = MXFunctionInvoke("CupertinoIcons.eye_solid", () => CupertinoIcons.eye_solid);
var _cupertinoIconsPerson = MXFunctionInvoke("CupertinoIcons.person", () => CupertinoIcons.person);
var _cupertinoIconsPersonSolid = MXFunctionInvoke("CupertinoIcons.person_solid", () => CupertinoIcons.person_solid);
var _cupertinoIconsPersonAdd = MXFunctionInvoke("CupertinoIcons.person_add", () => CupertinoIcons.person_add);
var _cupertinoIconsPersonAddSolid =
    MXFunctionInvoke("CupertinoIcons.person_add_solid", () => CupertinoIcons.person_add_solid);
var _cupertinoIconsGroup = MXFunctionInvoke("CupertinoIcons.group", () => CupertinoIcons.group);
var _cupertinoIconsGroupSolid = MXFunctionInvoke("CupertinoIcons.group_solid", () => CupertinoIcons.group_solid);
var _cupertinoIconsMail = MXFunctionInvoke("CupertinoIcons.mail", () => CupertinoIcons.mail);
var _cupertinoIconsMailSolid = MXFunctionInvoke("CupertinoIcons.mail_solid", () => CupertinoIcons.mail_solid);
var _cupertinoIconsLocation = MXFunctionInvoke("CupertinoIcons.location", () => CupertinoIcons.location);
var _cupertinoIconsLocationSolid =
    MXFunctionInvoke("CupertinoIcons.location_solid", () => CupertinoIcons.location_solid);
var _cupertinoIconsTag = MXFunctionInvoke("CupertinoIcons.tag", () => CupertinoIcons.tag);
var _cupertinoIconsTagSolid = MXFunctionInvoke("CupertinoIcons.tag_solid", () => CupertinoIcons.tag_solid);
var _cupertinoIconsTags = MXFunctionInvoke("CupertinoIcons.tags", () => CupertinoIcons.tags);
var _cupertinoIconsTagsSolid = MXFunctionInvoke("CupertinoIcons.tags_solid", () => CupertinoIcons.tags_solid);
var _cupertinoIconsBus = MXFunctionInvoke("CupertinoIcons.bus", () => CupertinoIcons.bus);
var _cupertinoIconsCar = MXFunctionInvoke("CupertinoIcons.car", () => CupertinoIcons.car);
var _cupertinoIconsCarDetailed = MXFunctionInvoke("CupertinoIcons.car_detailed", () => CupertinoIcons.car_detailed);
var _cupertinoIconsTrainStyleOne =
    MXFunctionInvoke("CupertinoIcons.train_style_one", () => CupertinoIcons.train_style_one);
var _cupertinoIconsTrainStyleTwo =
    MXFunctionInvoke("CupertinoIcons.train_style_two", () => CupertinoIcons.train_style_two);
var _cupertinoIconsPaw = MXFunctionInvoke("CupertinoIcons.paw", () => CupertinoIcons.paw);
var _cupertinoIconsPawSolid = MXFunctionInvoke("CupertinoIcons.paw_solid", () => CupertinoIcons.paw_solid);
var _cupertinoIconsGameController =
    MXFunctionInvoke("CupertinoIcons.game_controller", () => CupertinoIcons.game_controller);
var _cupertinoIconsGameControllerSolid =
    MXFunctionInvoke("CupertinoIcons.game_controller_solid", () => CupertinoIcons.game_controller_solid);
var _cupertinoIconsLabFlask = MXFunctionInvoke("CupertinoIcons.lab_flask", () => CupertinoIcons.lab_flask);
var _cupertinoIconsLabFlaskSolid =
    MXFunctionInvoke("CupertinoIcons.lab_flask_solid", () => CupertinoIcons.lab_flask_solid);
var _cupertinoIconsHeart = MXFunctionInvoke("CupertinoIcons.heart", () => CupertinoIcons.heart);
var _cupertinoIconsHeartSolid = MXFunctionInvoke("CupertinoIcons.heart_solid", () => CupertinoIcons.heart_solid);
var _cupertinoIconsBell = MXFunctionInvoke("CupertinoIcons.bell", () => CupertinoIcons.bell);
var _cupertinoIconsBellSolid = MXFunctionInvoke("CupertinoIcons.bell_solid", () => CupertinoIcons.bell_solid);
var _cupertinoIconsNews = MXFunctionInvoke("CupertinoIcons.news", () => CupertinoIcons.news);
var _cupertinoIconsNewsSolid = MXFunctionInvoke("CupertinoIcons.news_solid", () => CupertinoIcons.news_solid);
var _cupertinoIconsBrightness = MXFunctionInvoke("CupertinoIcons.brightness", () => CupertinoIcons.brightness);
var _cupertinoIconsBrightnessSolid =
    MXFunctionInvoke("CupertinoIcons.brightness_solid", () => CupertinoIcons.brightness_solid);
