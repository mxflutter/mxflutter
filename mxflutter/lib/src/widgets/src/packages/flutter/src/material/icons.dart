//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/icons.dart';
import 'package:flutter/widgets.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerIconsSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_icons_threesixty.funName] = _icons_threesixty;
  m[_icons_threedrotation.funName] = _icons_threedrotation;
  m[_icons_fourk.funName] = _icons_fourk;
  m[_icons_acunit.funName] = _icons_acunit;
  m[_icons_accessalarm.funName] = _icons_accessalarm;
  m[_icons_accessalarms.funName] = _icons_accessalarms;
  m[_icons_accesstime.funName] = _icons_accesstime;
  m[_icons_accessibility.funName] = _icons_accessibility;
  m[_icons_accessibilitynew.funName] = _icons_accessibilitynew;
  m[_icons_accessible.funName] = _icons_accessible;
  m[_icons_accessibleforward.funName] = _icons_accessibleforward;
  m[_icons_accountbalance.funName] = _icons_accountbalance;
  m[_icons_accountbalancewallet.funName] = _icons_accountbalancewallet;
  m[_icons_accountbox.funName] = _icons_accountbox;
  m[_icons_accountcircle.funName] = _icons_accountcircle;
  m[_icons_adb.funName] = _icons_adb;
  m[_icons_add.funName] = _icons_add;
  m[_icons_addaphoto.funName] = _icons_addaphoto;
  m[_icons_addalarm.funName] = _icons_addalarm;
  m[_icons_addalert.funName] = _icons_addalert;
  m[_icons_addbox.funName] = _icons_addbox;
  m[_icons_addcall.funName] = _icons_addcall;
  m[_icons_addcircle.funName] = _icons_addcircle;
  m[_icons_addcircleoutline.funName] = _icons_addcircleoutline;
  m[_icons_addcomment.funName] = _icons_addcomment;
  m[_icons_addlocation.funName] = _icons_addlocation;
  m[_icons_addphotoalternate.funName] = _icons_addphotoalternate;
  m[_icons_addshoppingcart.funName] = _icons_addshoppingcart;
  m[_icons_addtohomescreen.funName] = _icons_addtohomescreen;
  m[_icons_addtophotos.funName] = _icons_addtophotos;
  m[_icons_addtoqueue.funName] = _icons_addtoqueue;
  m[_icons_adjust.funName] = _icons_adjust;
  m[_icons_airlineseatflat.funName] = _icons_airlineseatflat;
  m[_icons_airlineseatflatangled.funName] = _icons_airlineseatflatangled;
  m[_icons_airlineseatindividualsuite.funName] = _icons_airlineseatindividualsuite;
  m[_icons_airlineseatlegroomextra.funName] = _icons_airlineseatlegroomextra;
  m[_icons_airlineseatlegroomnormal.funName] = _icons_airlineseatlegroomnormal;
  m[_icons_airlineseatlegroomreduced.funName] = _icons_airlineseatlegroomreduced;
  m[_icons_airlineseatreclineextra.funName] = _icons_airlineseatreclineextra;
  m[_icons_airlineseatreclinenormal.funName] = _icons_airlineseatreclinenormal;
  m[_icons_airplanemodeactive.funName] = _icons_airplanemodeactive;
  m[_icons_airplanemodeinactive.funName] = _icons_airplanemodeinactive;
  m[_icons_airplay.funName] = _icons_airplay;
  m[_icons_airportshuttle.funName] = _icons_airportshuttle;
  m[_icons_alarm.funName] = _icons_alarm;
  m[_icons_alarmadd.funName] = _icons_alarmadd;
  m[_icons_alarmoff.funName] = _icons_alarmoff;
  m[_icons_alarmon.funName] = _icons_alarmon;
  m[_icons_album.funName] = _icons_album;
  m[_icons_allinclusive.funName] = _icons_allinclusive;
  m[_icons_allout.funName] = _icons_allout;
  m[_icons_alternateemail.funName] = _icons_alternateemail;
  m[_icons_android.funName] = _icons_android;
  m[_icons_announcement.funName] = _icons_announcement;
  m[_icons_apps.funName] = _icons_apps;
  m[_icons_archive.funName] = _icons_archive;
  m[_icons_arrowback.funName] = _icons_arrowback;
  m[_icons_arrowbackios.funName] = _icons_arrowbackios;
  m[_icons_arrowdownward.funName] = _icons_arrowdownward;
  m[_icons_arrowdropdown.funName] = _icons_arrowdropdown;
  m[_icons_arrowdropdowncircle.funName] = _icons_arrowdropdowncircle;
  m[_icons_arrowdropup.funName] = _icons_arrowdropup;
  m[_icons_arrowforward.funName] = _icons_arrowforward;
  m[_icons_arrowforwardios.funName] = _icons_arrowforwardios;
  m[_icons_arrowleft.funName] = _icons_arrowleft;
  m[_icons_arrowright.funName] = _icons_arrowright;
  m[_icons_arrowupward.funName] = _icons_arrowupward;
  m[_icons_arttrack.funName] = _icons_arttrack;
  m[_icons_aspectratio.funName] = _icons_aspectratio;
  m[_icons_assessment.funName] = _icons_assessment;
  m[_icons_assignment.funName] = _icons_assignment;
  m[_icons_assignmentind.funName] = _icons_assignmentind;
  m[_icons_assignmentlate.funName] = _icons_assignmentlate;
  m[_icons_assignmentreturn.funName] = _icons_assignmentreturn;
  m[_icons_assignmentreturned.funName] = _icons_assignmentreturned;
  m[_icons_assignmentturnedin.funName] = _icons_assignmentturnedin;
  m[_icons_assistant.funName] = _icons_assistant;
  m[_icons_assistantphoto.funName] = _icons_assistantphoto;
  m[_icons_atm.funName] = _icons_atm;
  m[_icons_attachfile.funName] = _icons_attachfile;
  m[_icons_attachmoney.funName] = _icons_attachmoney;
  m[_icons_attachment.funName] = _icons_attachment;
  m[_icons_audiotrack.funName] = _icons_audiotrack;
  m[_icons_autorenew.funName] = _icons_autorenew;
  m[_icons_avtimer.funName] = _icons_avtimer;
  m[_icons_backspace.funName] = _icons_backspace;
  m[_icons_backup.funName] = _icons_backup;
  m[_icons_batteryalert.funName] = _icons_batteryalert;
  m[_icons_batterychargingfull.funName] = _icons_batterychargingfull;
  m[_icons_batteryfull.funName] = _icons_batteryfull;
  m[_icons_batterystd.funName] = _icons_batterystd;
  m[_icons_batteryunknown.funName] = _icons_batteryunknown;
  m[_icons_beachaccess.funName] = _icons_beachaccess;
  m[_icons_beenhere.funName] = _icons_beenhere;
  m[_icons_block.funName] = _icons_block;
  m[_icons_bluetooth.funName] = _icons_bluetooth;
  m[_icons_bluetoothaudio.funName] = _icons_bluetoothaudio;
  m[_icons_bluetoothconnected.funName] = _icons_bluetoothconnected;
  m[_icons_bluetoothdisabled.funName] = _icons_bluetoothdisabled;
  m[_icons_bluetoothsearching.funName] = _icons_bluetoothsearching;
  m[_icons_blurcircular.funName] = _icons_blurcircular;
  m[_icons_blurlinear.funName] = _icons_blurlinear;
  m[_icons_bluroff.funName] = _icons_bluroff;
  m[_icons_bluron.funName] = _icons_bluron;
  m[_icons_book.funName] = _icons_book;
  m[_icons_bookmark.funName] = _icons_bookmark;
  m[_icons_bookmarkborder.funName] = _icons_bookmarkborder;
  m[_icons_borderall.funName] = _icons_borderall;
  m[_icons_borderbottom.funName] = _icons_borderbottom;
  m[_icons_borderclear.funName] = _icons_borderclear;
  m[_icons_bordercolor.funName] = _icons_bordercolor;
  m[_icons_borderhorizontal.funName] = _icons_borderhorizontal;
  m[_icons_borderinner.funName] = _icons_borderinner;
  m[_icons_borderleft.funName] = _icons_borderleft;
  m[_icons_borderouter.funName] = _icons_borderouter;
  m[_icons_borderright.funName] = _icons_borderright;
  m[_icons_borderstyle.funName] = _icons_borderstyle;
  m[_icons_bordertop.funName] = _icons_bordertop;
  m[_icons_bordervertical.funName] = _icons_bordervertical;
  m[_icons_brandingwatermark.funName] = _icons_brandingwatermark;
  m[_icons_brightness1.funName] = _icons_brightness1;
  m[_icons_brightness2.funName] = _icons_brightness2;
  m[_icons_brightness3.funName] = _icons_brightness3;
  m[_icons_brightness4.funName] = _icons_brightness4;
  m[_icons_brightness5.funName] = _icons_brightness5;
  m[_icons_brightness6.funName] = _icons_brightness6;
  m[_icons_brightness7.funName] = _icons_brightness7;
  m[_icons_brightnessauto.funName] = _icons_brightnessauto;
  m[_icons_brightnesshigh.funName] = _icons_brightnesshigh;
  m[_icons_brightnesslow.funName] = _icons_brightnesslow;
  m[_icons_brightnessmedium.funName] = _icons_brightnessmedium;
  m[_icons_brokenimage.funName] = _icons_brokenimage;
  m[_icons_brush.funName] = _icons_brush;
  m[_icons_bubblechart.funName] = _icons_bubblechart;
  m[_icons_bugreport.funName] = _icons_bugreport;
  m[_icons_build.funName] = _icons_build;
  m[_icons_burstmode.funName] = _icons_burstmode;
  m[_icons_business.funName] = _icons_business;
  m[_icons_businesscenter.funName] = _icons_businesscenter;
  m[_icons_cached.funName] = _icons_cached;
  m[_icons_cake.funName] = _icons_cake;
  m[_icons_calendartoday.funName] = _icons_calendartoday;
  m[_icons_calendarviewday.funName] = _icons_calendarviewday;
  m[_icons_call.funName] = _icons_call;
  m[_icons_callend.funName] = _icons_callend;
  m[_icons_callmade.funName] = _icons_callmade;
  m[_icons_callmerge.funName] = _icons_callmerge;
  m[_icons_callmissed.funName] = _icons_callmissed;
  m[_icons_callmissedoutgoing.funName] = _icons_callmissedoutgoing;
  m[_icons_callreceived.funName] = _icons_callreceived;
  m[_icons_callsplit.funName] = _icons_callsplit;
  m[_icons_calltoaction.funName] = _icons_calltoaction;
  m[_icons_camera.funName] = _icons_camera;
  m[_icons_cameraalt.funName] = _icons_cameraalt;
  m[_icons_cameraenhance.funName] = _icons_cameraenhance;
  m[_icons_camerafront.funName] = _icons_camerafront;
  m[_icons_camerarear.funName] = _icons_camerarear;
  m[_icons_cameraroll.funName] = _icons_cameraroll;
  m[_icons_cancel.funName] = _icons_cancel;
  m[_icons_cardgiftcard.funName] = _icons_cardgiftcard;
  m[_icons_cardmembership.funName] = _icons_cardmembership;
  m[_icons_cardtravel.funName] = _icons_cardtravel;
  m[_icons_casino.funName] = _icons_casino;
  m[_icons_cast.funName] = _icons_cast;
  m[_icons_castconnected.funName] = _icons_castconnected;
  m[_icons_category.funName] = _icons_category;
  m[_icons_centerfocusstrong.funName] = _icons_centerfocusstrong;
  m[_icons_centerfocusweak.funName] = _icons_centerfocusweak;
  m[_icons_changehistory.funName] = _icons_changehistory;
  m[_icons_chat.funName] = _icons_chat;
  m[_icons_chatbubble.funName] = _icons_chatbubble;
  m[_icons_chatbubbleoutline.funName] = _icons_chatbubbleoutline;
  m[_icons_check.funName] = _icons_check;
  m[_icons_checkbox.funName] = _icons_checkbox;
  m[_icons_checkboxoutlineblank.funName] = _icons_checkboxoutlineblank;
  m[_icons_checkcircle.funName] = _icons_checkcircle;
  m[_icons_checkcircleoutline.funName] = _icons_checkcircleoutline;
  m[_icons_chevronleft.funName] = _icons_chevronleft;
  m[_icons_chevronright.funName] = _icons_chevronright;
  m[_icons_childcare.funName] = _icons_childcare;
  m[_icons_childfriendly.funName] = _icons_childfriendly;
  m[_icons_chromereadermode.funName] = _icons_chromereadermode;
  m[_icons_class.funName] = _icons_class;
  m[_icons_clear.funName] = _icons_clear;
  m[_icons_clearall.funName] = _icons_clearall;
  m[_icons_close.funName] = _icons_close;
  m[_icons_closedcaption.funName] = _icons_closedcaption;
  m[_icons_cloud.funName] = _icons_cloud;
  m[_icons_cloudcircle.funName] = _icons_cloudcircle;
  m[_icons_clouddone.funName] = _icons_clouddone;
  m[_icons_clouddownload.funName] = _icons_clouddownload;
  m[_icons_cloudoff.funName] = _icons_cloudoff;
  m[_icons_cloudqueue.funName] = _icons_cloudqueue;
  m[_icons_cloudupload.funName] = _icons_cloudupload;
  m[_icons_code.funName] = _icons_code;
  m[_icons_collections.funName] = _icons_collections;
  m[_icons_collectionsbookmark.funName] = _icons_collectionsbookmark;
  m[_icons_colorlens.funName] = _icons_colorlens;
  m[_icons_colorize.funName] = _icons_colorize;
  m[_icons_comment.funName] = _icons_comment;
  m[_icons_compare.funName] = _icons_compare;
  m[_icons_comparearrows.funName] = _icons_comparearrows;
  m[_icons_computer.funName] = _icons_computer;
  m[_icons_confirmationnumber.funName] = _icons_confirmationnumber;
  m[_icons_contactmail.funName] = _icons_contactmail;
  m[_icons_contactphone.funName] = _icons_contactphone;
  m[_icons_contacts.funName] = _icons_contacts;
  m[_icons_contentcopy.funName] = _icons_contentcopy;
  m[_icons_contentcut.funName] = _icons_contentcut;
  m[_icons_contentpaste.funName] = _icons_contentpaste;
  m[_icons_controlpoint.funName] = _icons_controlpoint;
  m[_icons_controlpointduplicate.funName] = _icons_controlpointduplicate;
  m[_icons_copyright.funName] = _icons_copyright;
  m[_icons_create.funName] = _icons_create;
  m[_icons_createnewfolder.funName] = _icons_createnewfolder;
  m[_icons_creditcard.funName] = _icons_creditcard;
  m[_icons_crop.funName] = _icons_crop;
  m[_icons_crop169.funName] = _icons_crop169;
  m[_icons_crop32.funName] = _icons_crop32;
  m[_icons_crop54.funName] = _icons_crop54;
  m[_icons_crop75.funName] = _icons_crop75;
  m[_icons_cropdin.funName] = _icons_cropdin;
  m[_icons_cropfree.funName] = _icons_cropfree;
  m[_icons_croplandscape.funName] = _icons_croplandscape;
  m[_icons_croporiginal.funName] = _icons_croporiginal;
  m[_icons_cropportrait.funName] = _icons_cropportrait;
  m[_icons_croprotate.funName] = _icons_croprotate;
  m[_icons_cropsquare.funName] = _icons_cropsquare;
  m[_icons_dashboard.funName] = _icons_dashboard;
  m[_icons_datausage.funName] = _icons_datausage;
  m[_icons_daterange.funName] = _icons_daterange;
  m[_icons_dehaze.funName] = _icons_dehaze;
  m[_icons_delete.funName] = _icons_delete;
  m[_icons_deleteforever.funName] = _icons_deleteforever;
  m[_icons_deleteoutline.funName] = _icons_deleteoutline;
  m[_icons_deletesweep.funName] = _icons_deletesweep;
  m[_icons_departureboard.funName] = _icons_departureboard;
  m[_icons_description.funName] = _icons_description;
  m[_icons_desktopmac.funName] = _icons_desktopmac;
  m[_icons_desktopwindows.funName] = _icons_desktopwindows;
  m[_icons_details.funName] = _icons_details;
  m[_icons_developerboard.funName] = _icons_developerboard;
  m[_icons_developermode.funName] = _icons_developermode;
  m[_icons_devicehub.funName] = _icons_devicehub;
  m[_icons_deviceunknown.funName] = _icons_deviceunknown;
  m[_icons_devices.funName] = _icons_devices;
  m[_icons_devicesother.funName] = _icons_devicesother;
  m[_icons_dialersip.funName] = _icons_dialersip;
  m[_icons_dialpad.funName] = _icons_dialpad;
  m[_icons_directions.funName] = _icons_directions;
  m[_icons_directionsbike.funName] = _icons_directionsbike;
  m[_icons_directionsboat.funName] = _icons_directionsboat;
  m[_icons_directionsbus.funName] = _icons_directionsbus;
  m[_icons_directionscar.funName] = _icons_directionscar;
  m[_icons_directionsrailway.funName] = _icons_directionsrailway;
  m[_icons_directionsrun.funName] = _icons_directionsrun;
  m[_icons_directionssubway.funName] = _icons_directionssubway;
  m[_icons_directionstransit.funName] = _icons_directionstransit;
  m[_icons_directionswalk.funName] = _icons_directionswalk;
  m[_icons_discfull.funName] = _icons_discfull;
  m[_icons_dns.funName] = _icons_dns;
  m[_icons_donotdisturb.funName] = _icons_donotdisturb;
  m[_icons_donotdisturbalt.funName] = _icons_donotdisturbalt;
  m[_icons_donotdisturboff.funName] = _icons_donotdisturboff;
  m[_icons_donotdisturbon.funName] = _icons_donotdisturbon;
  m[_icons_dock.funName] = _icons_dock;
  m[_icons_domain.funName] = _icons_domain;
  m[_icons_done.funName] = _icons_done;
  m[_icons_doneall.funName] = _icons_doneall;
  m[_icons_doneoutline.funName] = _icons_doneoutline;
  m[_icons_donutlarge.funName] = _icons_donutlarge;
  m[_icons_donutsmall.funName] = _icons_donutsmall;
  m[_icons_drafts.funName] = _icons_drafts;
  m[_icons_draghandle.funName] = _icons_draghandle;
  m[_icons_driveeta.funName] = _icons_driveeta;
  m[_icons_dvr.funName] = _icons_dvr;
  m[_icons_edit.funName] = _icons_edit;
  m[_icons_editattributes.funName] = _icons_editattributes;
  m[_icons_editlocation.funName] = _icons_editlocation;
  m[_icons_eject.funName] = _icons_eject;
  m[_icons_email.funName] = _icons_email;
  m[_icons_enhancedencryption.funName] = _icons_enhancedencryption;
  m[_icons_equalizer.funName] = _icons_equalizer;
  m[_icons_error.funName] = _icons_error;
  m[_icons_erroroutline.funName] = _icons_erroroutline;
  m[_icons_eurosymbol.funName] = _icons_eurosymbol;
  m[_icons_evstation.funName] = _icons_evstation;
  m[_icons_event.funName] = _icons_event;
  m[_icons_eventavailable.funName] = _icons_eventavailable;
  m[_icons_eventbusy.funName] = _icons_eventbusy;
  m[_icons_eventnote.funName] = _icons_eventnote;
  m[_icons_eventseat.funName] = _icons_eventseat;
  m[_icons_exittoapp.funName] = _icons_exittoapp;
  m[_icons_expandless.funName] = _icons_expandless;
  m[_icons_expandmore.funName] = _icons_expandmore;
  m[_icons_explicit.funName] = _icons_explicit;
  m[_icons_explore.funName] = _icons_explore;
  m[_icons_exposure.funName] = _icons_exposure;
  m[_icons_exposureneg1.funName] = _icons_exposureneg1;
  m[_icons_exposureneg2.funName] = _icons_exposureneg2;
  m[_icons_exposureplus1.funName] = _icons_exposureplus1;
  m[_icons_exposureplus2.funName] = _icons_exposureplus2;
  m[_icons_exposurezero.funName] = _icons_exposurezero;
  m[_icons_extension.funName] = _icons_extension;
  m[_icons_face.funName] = _icons_face;
  m[_icons_fastforward.funName] = _icons_fastforward;
  m[_icons_fastrewind.funName] = _icons_fastrewind;
  m[_icons_fastfood.funName] = _icons_fastfood;
  m[_icons_favorite.funName] = _icons_favorite;
  m[_icons_favoriteborder.funName] = _icons_favoriteborder;
  m[_icons_featuredplaylist.funName] = _icons_featuredplaylist;
  m[_icons_featuredvideo.funName] = _icons_featuredvideo;
  m[_icons_feedback.funName] = _icons_feedback;
  m[_icons_fiberdvr.funName] = _icons_fiberdvr;
  m[_icons_fibermanualrecord.funName] = _icons_fibermanualrecord;
  m[_icons_fibernew.funName] = _icons_fibernew;
  m[_icons_fiberpin.funName] = _icons_fiberpin;
  m[_icons_fibersmartrecord.funName] = _icons_fibersmartrecord;
  m[_icons_filedownload.funName] = _icons_filedownload;
  m[_icons_fileupload.funName] = _icons_fileupload;
  m[_icons_filter.funName] = _icons_filter;
  m[_icons_filter1.funName] = _icons_filter1;
  m[_icons_filter2.funName] = _icons_filter2;
  m[_icons_filter3.funName] = _icons_filter3;
  m[_icons_filter4.funName] = _icons_filter4;
  m[_icons_filter5.funName] = _icons_filter5;
  m[_icons_filter6.funName] = _icons_filter6;
  m[_icons_filter7.funName] = _icons_filter7;
  m[_icons_filter8.funName] = _icons_filter8;
  m[_icons_filter9.funName] = _icons_filter9;
  m[_icons_filter9plus.funName] = _icons_filter9plus;
  m[_icons_filterbandw.funName] = _icons_filterbandw;
  m[_icons_filtercenterfocus.funName] = _icons_filtercenterfocus;
  m[_icons_filterdrama.funName] = _icons_filterdrama;
  m[_icons_filterframes.funName] = _icons_filterframes;
  m[_icons_filterhdr.funName] = _icons_filterhdr;
  m[_icons_filterlist.funName] = _icons_filterlist;
  m[_icons_filternone.funName] = _icons_filternone;
  m[_icons_filtertiltshift.funName] = _icons_filtertiltshift;
  m[_icons_filtervintage.funName] = _icons_filtervintage;
  m[_icons_findinpage.funName] = _icons_findinpage;
  m[_icons_findreplace.funName] = _icons_findreplace;
  m[_icons_fingerprint.funName] = _icons_fingerprint;
  m[_icons_firstpage.funName] = _icons_firstpage;
  m[_icons_fitnesscenter.funName] = _icons_fitnesscenter;
  m[_icons_flag.funName] = _icons_flag;
  m[_icons_flare.funName] = _icons_flare;
  m[_icons_flashauto.funName] = _icons_flashauto;
  m[_icons_flashoff.funName] = _icons_flashoff;
  m[_icons_flashon.funName] = _icons_flashon;
  m[_icons_flight.funName] = _icons_flight;
  m[_icons_flightland.funName] = _icons_flightland;
  m[_icons_flighttakeoff.funName] = _icons_flighttakeoff;
  m[_icons_flip.funName] = _icons_flip;
  m[_icons_fliptoback.funName] = _icons_fliptoback;
  m[_icons_fliptofront.funName] = _icons_fliptofront;
  m[_icons_folder.funName] = _icons_folder;
  m[_icons_folderopen.funName] = _icons_folderopen;
  m[_icons_foldershared.funName] = _icons_foldershared;
  m[_icons_folderspecial.funName] = _icons_folderspecial;
  m[_icons_fontdownload.funName] = _icons_fontdownload;
  m[_icons_formataligncenter.funName] = _icons_formataligncenter;
  m[_icons_formatalignjustify.funName] = _icons_formatalignjustify;
  m[_icons_formatalignleft.funName] = _icons_formatalignleft;
  m[_icons_formatalignright.funName] = _icons_formatalignright;
  m[_icons_formatbold.funName] = _icons_formatbold;
  m[_icons_formatclear.funName] = _icons_formatclear;
  m[_icons_formatcolorfill.funName] = _icons_formatcolorfill;
  m[_icons_formatcolorreset.funName] = _icons_formatcolorreset;
  m[_icons_formatcolortext.funName] = _icons_formatcolortext;
  m[_icons_formatindentdecrease.funName] = _icons_formatindentdecrease;
  m[_icons_formatindentincrease.funName] = _icons_formatindentincrease;
  m[_icons_formatitalic.funName] = _icons_formatitalic;
  m[_icons_formatlinespacing.funName] = _icons_formatlinespacing;
  m[_icons_formatlistbulleted.funName] = _icons_formatlistbulleted;
  m[_icons_formatlistnumbered.funName] = _icons_formatlistnumbered;
  m[_icons_formatlistnumberedrtl.funName] = _icons_formatlistnumberedrtl;
  m[_icons_formatpaint.funName] = _icons_formatpaint;
  m[_icons_formatquote.funName] = _icons_formatquote;
  m[_icons_formatshapes.funName] = _icons_formatshapes;
  m[_icons_formatsize.funName] = _icons_formatsize;
  m[_icons_formatstrikethrough.funName] = _icons_formatstrikethrough;
  m[_icons_formattextdirectionltor.funName] = _icons_formattextdirectionltor;
  m[_icons_formattextdirectionrtol.funName] = _icons_formattextdirectionrtol;
  m[_icons_formatunderlined.funName] = _icons_formatunderlined;
  m[_icons_forum.funName] = _icons_forum;
  m[_icons_forward.funName] = _icons_forward;
  m[_icons_forward10.funName] = _icons_forward10;
  m[_icons_forward30.funName] = _icons_forward30;
  m[_icons_forward5.funName] = _icons_forward5;
  m[_icons_freebreakfast.funName] = _icons_freebreakfast;
  m[_icons_fullscreen.funName] = _icons_fullscreen;
  m[_icons_fullscreenexit.funName] = _icons_fullscreenexit;
  m[_icons_functions.funName] = _icons_functions;
  m[_icons_gtranslate.funName] = _icons_gtranslate;
  m[_icons_gamepad.funName] = _icons_gamepad;
  m[_icons_games.funName] = _icons_games;
  m[_icons_gavel.funName] = _icons_gavel;
  m[_icons_gesture.funName] = _icons_gesture;
  m[_icons_getapp.funName] = _icons_getapp;
  m[_icons_gif.funName] = _icons_gif;
  m[_icons_golfcourse.funName] = _icons_golfcourse;
  m[_icons_gpsfixed.funName] = _icons_gpsfixed;
  m[_icons_gpsnotfixed.funName] = _icons_gpsnotfixed;
  m[_icons_gpsoff.funName] = _icons_gpsoff;
  m[_icons_grade.funName] = _icons_grade;
  m[_icons_gradient.funName] = _icons_gradient;
  m[_icons_grain.funName] = _icons_grain;
  m[_icons_graphiceq.funName] = _icons_graphiceq;
  m[_icons_gridoff.funName] = _icons_gridoff;
  m[_icons_gridon.funName] = _icons_gridon;
  m[_icons_group.funName] = _icons_group;
  m[_icons_groupadd.funName] = _icons_groupadd;
  m[_icons_groupwork.funName] = _icons_groupwork;
  m[_icons_hd.funName] = _icons_hd;
  m[_icons_hdroff.funName] = _icons_hdroff;
  m[_icons_hdron.funName] = _icons_hdron;
  m[_icons_hdrstrong.funName] = _icons_hdrstrong;
  m[_icons_hdrweak.funName] = _icons_hdrweak;
  m[_icons_headset.funName] = _icons_headset;
  m[_icons_headsetmic.funName] = _icons_headsetmic;
  m[_icons_headsetoff.funName] = _icons_headsetoff;
  m[_icons_healing.funName] = _icons_healing;
  m[_icons_hearing.funName] = _icons_hearing;
  m[_icons_help.funName] = _icons_help;
  m[_icons_helpoutline.funName] = _icons_helpoutline;
  m[_icons_highquality.funName] = _icons_highquality;
  m[_icons_highlight.funName] = _icons_highlight;
  m[_icons_highlightoff.funName] = _icons_highlightoff;
  m[_icons_history.funName] = _icons_history;
  m[_icons_home.funName] = _icons_home;
  m[_icons_hottub.funName] = _icons_hottub;
  m[_icons_hotel.funName] = _icons_hotel;
  m[_icons_hourglassempty.funName] = _icons_hourglassempty;
  m[_icons_hourglassfull.funName] = _icons_hourglassfull;
  m[_icons_http.funName] = _icons_http;
  m[_icons_https.funName] = _icons_https;
  m[_icons_image.funName] = _icons_image;
  m[_icons_imageaspectratio.funName] = _icons_imageaspectratio;
  m[_icons_importcontacts.funName] = _icons_importcontacts;
  m[_icons_importexport.funName] = _icons_importexport;
  m[_icons_importantdevices.funName] = _icons_importantdevices;
  m[_icons_inbox.funName] = _icons_inbox;
  m[_icons_indeterminatecheckbox.funName] = _icons_indeterminatecheckbox;
  m[_icons_info.funName] = _icons_info;
  m[_icons_infooutline.funName] = _icons_infooutline;
  m[_icons_input.funName] = _icons_input;
  m[_icons_insertchart.funName] = _icons_insertchart;
  m[_icons_insertcomment.funName] = _icons_insertcomment;
  m[_icons_insertdrivefile.funName] = _icons_insertdrivefile;
  m[_icons_insertemoticon.funName] = _icons_insertemoticon;
  m[_icons_insertinvitation.funName] = _icons_insertinvitation;
  m[_icons_insertlink.funName] = _icons_insertlink;
  m[_icons_insertphoto.funName] = _icons_insertphoto;
  m[_icons_invertcolors.funName] = _icons_invertcolors;
  m[_icons_invertcolorsoff.funName] = _icons_invertcolorsoff;
  m[_icons_iso.funName] = _icons_iso;
  m[_icons_keyboard.funName] = _icons_keyboard;
  m[_icons_keyboardarrowdown.funName] = _icons_keyboardarrowdown;
  m[_icons_keyboardarrowleft.funName] = _icons_keyboardarrowleft;
  m[_icons_keyboardarrowright.funName] = _icons_keyboardarrowright;
  m[_icons_keyboardarrowup.funName] = _icons_keyboardarrowup;
  m[_icons_keyboardbackspace.funName] = _icons_keyboardbackspace;
  m[_icons_keyboardcapslock.funName] = _icons_keyboardcapslock;
  m[_icons_keyboardhide.funName] = _icons_keyboardhide;
  m[_icons_keyboardreturn.funName] = _icons_keyboardreturn;
  m[_icons_keyboardtab.funName] = _icons_keyboardtab;
  m[_icons_keyboardvoice.funName] = _icons_keyboardvoice;
  m[_icons_kitchen.funName] = _icons_kitchen;
  m[_icons_label.funName] = _icons_label;
  m[_icons_labelimportant.funName] = _icons_labelimportant;
  m[_icons_labeloutline.funName] = _icons_labeloutline;
  m[_icons_landscape.funName] = _icons_landscape;
  m[_icons_language.funName] = _icons_language;
  m[_icons_laptop.funName] = _icons_laptop;
  m[_icons_laptopchromebook.funName] = _icons_laptopchromebook;
  m[_icons_laptopmac.funName] = _icons_laptopmac;
  m[_icons_laptopwindows.funName] = _icons_laptopwindows;
  m[_icons_lastpage.funName] = _icons_lastpage;
  m[_icons_launch.funName] = _icons_launch;
  m[_icons_layers.funName] = _icons_layers;
  m[_icons_layersclear.funName] = _icons_layersclear;
  m[_icons_leakadd.funName] = _icons_leakadd;
  m[_icons_leakremove.funName] = _icons_leakremove;
  m[_icons_lens.funName] = _icons_lens;
  m[_icons_libraryadd.funName] = _icons_libraryadd;
  m[_icons_librarybooks.funName] = _icons_librarybooks;
  m[_icons_librarymusic.funName] = _icons_librarymusic;
  m[_icons_lightbulboutline.funName] = _icons_lightbulboutline;
  m[_icons_linestyle.funName] = _icons_linestyle;
  m[_icons_lineweight.funName] = _icons_lineweight;
  m[_icons_linearscale.funName] = _icons_linearscale;
  m[_icons_link.funName] = _icons_link;
  m[_icons_linkoff.funName] = _icons_linkoff;
  m[_icons_linkedcamera.funName] = _icons_linkedcamera;
  m[_icons_list.funName] = _icons_list;
  m[_icons_livehelp.funName] = _icons_livehelp;
  m[_icons_livetv.funName] = _icons_livetv;
  m[_icons_localactivity.funName] = _icons_localactivity;
  m[_icons_localairport.funName] = _icons_localairport;
  m[_icons_localatm.funName] = _icons_localatm;
  m[_icons_localbar.funName] = _icons_localbar;
  m[_icons_localcafe.funName] = _icons_localcafe;
  m[_icons_localcarwash.funName] = _icons_localcarwash;
  m[_icons_localconveniencestore.funName] = _icons_localconveniencestore;
  m[_icons_localdining.funName] = _icons_localdining;
  m[_icons_localdrink.funName] = _icons_localdrink;
  m[_icons_localflorist.funName] = _icons_localflorist;
  m[_icons_localgasstation.funName] = _icons_localgasstation;
  m[_icons_localgrocerystore.funName] = _icons_localgrocerystore;
  m[_icons_localhospital.funName] = _icons_localhospital;
  m[_icons_localhotel.funName] = _icons_localhotel;
  m[_icons_locallaundryservice.funName] = _icons_locallaundryservice;
  m[_icons_locallibrary.funName] = _icons_locallibrary;
  m[_icons_localmall.funName] = _icons_localmall;
  m[_icons_localmovies.funName] = _icons_localmovies;
  m[_icons_localoffer.funName] = _icons_localoffer;
  m[_icons_localparking.funName] = _icons_localparking;
  m[_icons_localpharmacy.funName] = _icons_localpharmacy;
  m[_icons_localphone.funName] = _icons_localphone;
  m[_icons_localpizza.funName] = _icons_localpizza;
  m[_icons_localplay.funName] = _icons_localplay;
  m[_icons_localpostoffice.funName] = _icons_localpostoffice;
  m[_icons_localprintshop.funName] = _icons_localprintshop;
  m[_icons_localsee.funName] = _icons_localsee;
  m[_icons_localshipping.funName] = _icons_localshipping;
  m[_icons_localtaxi.funName] = _icons_localtaxi;
  m[_icons_locationcity.funName] = _icons_locationcity;
  m[_icons_locationdisabled.funName] = _icons_locationdisabled;
  m[_icons_locationoff.funName] = _icons_locationoff;
  m[_icons_locationon.funName] = _icons_locationon;
  m[_icons_locationsearching.funName] = _icons_locationsearching;
  m[_icons_lock.funName] = _icons_lock;
  m[_icons_lockopen.funName] = _icons_lockopen;
  m[_icons_lockoutline.funName] = _icons_lockoutline;
  m[_icons_looks.funName] = _icons_looks;
  m[_icons_looks3.funName] = _icons_looks3;
  m[_icons_looks4.funName] = _icons_looks4;
  m[_icons_looks5.funName] = _icons_looks5;
  m[_icons_looks6.funName] = _icons_looks6;
  m[_icons_looksone.funName] = _icons_looksone;
  m[_icons_lookstwo.funName] = _icons_lookstwo;
  m[_icons_loop.funName] = _icons_loop;
  m[_icons_loupe.funName] = _icons_loupe;
  m[_icons_lowpriority.funName] = _icons_lowpriority;
  m[_icons_loyalty.funName] = _icons_loyalty;
  m[_icons_mail.funName] = _icons_mail;
  m[_icons_mailoutline.funName] = _icons_mailoutline;
  m[_icons_map.funName] = _icons_map;
  m[_icons_markunread.funName] = _icons_markunread;
  m[_icons_markunreadmailbox.funName] = _icons_markunreadmailbox;
  m[_icons_maximize.funName] = _icons_maximize;
  m[_icons_memory.funName] = _icons_memory;
  m[_icons_menu.funName] = _icons_menu;
  m[_icons_mergetype.funName] = _icons_mergetype;
  m[_icons_message.funName] = _icons_message;
  m[_icons_mic.funName] = _icons_mic;
  m[_icons_micnone.funName] = _icons_micnone;
  m[_icons_micoff.funName] = _icons_micoff;
  m[_icons_minimize.funName] = _icons_minimize;
  m[_icons_missedvideocall.funName] = _icons_missedvideocall;
  m[_icons_mms.funName] = _icons_mms;
  m[_icons_mobilescreenshare.funName] = _icons_mobilescreenshare;
  m[_icons_modecomment.funName] = _icons_modecomment;
  m[_icons_modeedit.funName] = _icons_modeedit;
  m[_icons_monetizationon.funName] = _icons_monetizationon;
  m[_icons_moneyoff.funName] = _icons_moneyoff;
  m[_icons_monochromephotos.funName] = _icons_monochromephotos;
  m[_icons_mood.funName] = _icons_mood;
  m[_icons_moodbad.funName] = _icons_moodbad;
  m[_icons_more.funName] = _icons_more;
  m[_icons_morehoriz.funName] = _icons_morehoriz;
  m[_icons_morevert.funName] = _icons_morevert;
  m[_icons_motorcycle.funName] = _icons_motorcycle;
  m[_icons_mouse.funName] = _icons_mouse;
  m[_icons_movetoinbox.funName] = _icons_movetoinbox;
  m[_icons_movie.funName] = _icons_movie;
  m[_icons_moviecreation.funName] = _icons_moviecreation;
  m[_icons_moviefilter.funName] = _icons_moviefilter;
  m[_icons_multilinechart.funName] = _icons_multilinechart;
  m[_icons_musicnote.funName] = _icons_musicnote;
  m[_icons_musicvideo.funName] = _icons_musicvideo;
  m[_icons_mylocation.funName] = _icons_mylocation;
  m[_icons_nature.funName] = _icons_nature;
  m[_icons_naturepeople.funName] = _icons_naturepeople;
  m[_icons_navigatebefore.funName] = _icons_navigatebefore;
  m[_icons_navigatenext.funName] = _icons_navigatenext;
  m[_icons_navigation.funName] = _icons_navigation;
  m[_icons_nearme.funName] = _icons_nearme;
  m[_icons_networkcell.funName] = _icons_networkcell;
  m[_icons_networkcheck.funName] = _icons_networkcheck;
  m[_icons_networklocked.funName] = _icons_networklocked;
  m[_icons_networkwifi.funName] = _icons_networkwifi;
  m[_icons_newreleases.funName] = _icons_newreleases;
  m[_icons_nextweek.funName] = _icons_nextweek;
  m[_icons_nfc.funName] = _icons_nfc;
  m[_icons_noencryption.funName] = _icons_noencryption;
  m[_icons_nosim.funName] = _icons_nosim;
  m[_icons_notinterested.funName] = _icons_notinterested;
  m[_icons_notlistedlocation.funName] = _icons_notlistedlocation;
  m[_icons_note.funName] = _icons_note;
  m[_icons_noteadd.funName] = _icons_noteadd;
  m[_icons_notificationimportant.funName] = _icons_notificationimportant;
  m[_icons_notifications.funName] = _icons_notifications;
  m[_icons_notificationsactive.funName] = _icons_notificationsactive;
  m[_icons_notificationsnone.funName] = _icons_notificationsnone;
  m[_icons_notificationsoff.funName] = _icons_notificationsoff;
  m[_icons_notificationspaused.funName] = _icons_notificationspaused;
  m[_icons_offlinebolt.funName] = _icons_offlinebolt;
  m[_icons_offlinepin.funName] = _icons_offlinepin;
  m[_icons_ondemandvideo.funName] = _icons_ondemandvideo;
  m[_icons_opacity.funName] = _icons_opacity;
  m[_icons_openinbrowser.funName] = _icons_openinbrowser;
  m[_icons_openinnew.funName] = _icons_openinnew;
  m[_icons_openwith.funName] = _icons_openwith;
  m[_icons_outlinedflag.funName] = _icons_outlinedflag;
  m[_icons_pages.funName] = _icons_pages;
  m[_icons_pageview.funName] = _icons_pageview;
  m[_icons_palette.funName] = _icons_palette;
  m[_icons_pantool.funName] = _icons_pantool;
  m[_icons_panorama.funName] = _icons_panorama;
  m[_icons_panoramafisheye.funName] = _icons_panoramafisheye;
  m[_icons_panoramahorizontal.funName] = _icons_panoramahorizontal;
  m[_icons_panoramavertical.funName] = _icons_panoramavertical;
  m[_icons_panoramawideangle.funName] = _icons_panoramawideangle;
  m[_icons_partymode.funName] = _icons_partymode;
  m[_icons_pause.funName] = _icons_pause;
  m[_icons_pausecirclefilled.funName] = _icons_pausecirclefilled;
  m[_icons_pausecircleoutline.funName] = _icons_pausecircleoutline;
  m[_icons_payment.funName] = _icons_payment;
  m[_icons_people.funName] = _icons_people;
  m[_icons_peopleoutline.funName] = _icons_peopleoutline;
  m[_icons_permcameramic.funName] = _icons_permcameramic;
  m[_icons_permcontactcalendar.funName] = _icons_permcontactcalendar;
  m[_icons_permdatasetting.funName] = _icons_permdatasetting;
  m[_icons_permdeviceinformation.funName] = _icons_permdeviceinformation;
  m[_icons_permidentity.funName] = _icons_permidentity;
  m[_icons_permmedia.funName] = _icons_permmedia;
  m[_icons_permphonemsg.funName] = _icons_permphonemsg;
  m[_icons_permscanwifi.funName] = _icons_permscanwifi;
  m[_icons_person.funName] = _icons_person;
  m[_icons_personadd.funName] = _icons_personadd;
  m[_icons_personoutline.funName] = _icons_personoutline;
  m[_icons_personpin.funName] = _icons_personpin;
  m[_icons_personpincircle.funName] = _icons_personpincircle;
  m[_icons_personalvideo.funName] = _icons_personalvideo;
  m[_icons_pets.funName] = _icons_pets;
  m[_icons_phone.funName] = _icons_phone;
  m[_icons_phoneandroid.funName] = _icons_phoneandroid;
  m[_icons_phonebluetoothspeaker.funName] = _icons_phonebluetoothspeaker;
  m[_icons_phoneforwarded.funName] = _icons_phoneforwarded;
  m[_icons_phoneintalk.funName] = _icons_phoneintalk;
  m[_icons_phoneiphone.funName] = _icons_phoneiphone;
  m[_icons_phonelocked.funName] = _icons_phonelocked;
  m[_icons_phonemissed.funName] = _icons_phonemissed;
  m[_icons_phonepaused.funName] = _icons_phonepaused;
  m[_icons_phonelink.funName] = _icons_phonelink;
  m[_icons_phonelinkerase.funName] = _icons_phonelinkerase;
  m[_icons_phonelinklock.funName] = _icons_phonelinklock;
  m[_icons_phonelinkoff.funName] = _icons_phonelinkoff;
  m[_icons_phonelinkring.funName] = _icons_phonelinkring;
  m[_icons_phonelinksetup.funName] = _icons_phonelinksetup;
  m[_icons_photo.funName] = _icons_photo;
  m[_icons_photoalbum.funName] = _icons_photoalbum;
  m[_icons_photocamera.funName] = _icons_photocamera;
  m[_icons_photofilter.funName] = _icons_photofilter;
  m[_icons_photolibrary.funName] = _icons_photolibrary;
  m[_icons_photosizeselectactual.funName] = _icons_photosizeselectactual;
  m[_icons_photosizeselectlarge.funName] = _icons_photosizeselectlarge;
  m[_icons_photosizeselectsmall.funName] = _icons_photosizeselectsmall;
  m[_icons_pictureaspdf.funName] = _icons_pictureaspdf;
  m[_icons_pictureinpicture.funName] = _icons_pictureinpicture;
  m[_icons_pictureinpicturealt.funName] = _icons_pictureinpicturealt;
  m[_icons_piechart.funName] = _icons_piechart;
  m[_icons_piechartoutlined.funName] = _icons_piechartoutlined;
  m[_icons_pindrop.funName] = _icons_pindrop;
  m[_icons_place.funName] = _icons_place;
  m[_icons_playarrow.funName] = _icons_playarrow;
  m[_icons_playcirclefilled.funName] = _icons_playcirclefilled;
  m[_icons_playcircleoutline.funName] = _icons_playcircleoutline;
  m[_icons_playforwork.funName] = _icons_playforwork;
  m[_icons_playlistadd.funName] = _icons_playlistadd;
  m[_icons_playlistaddcheck.funName] = _icons_playlistaddcheck;
  m[_icons_playlistplay.funName] = _icons_playlistplay;
  m[_icons_plusone.funName] = _icons_plusone;
  m[_icons_poll.funName] = _icons_poll;
  m[_icons_polymer.funName] = _icons_polymer;
  m[_icons_pool.funName] = _icons_pool;
  m[_icons_portablewifioff.funName] = _icons_portablewifioff;
  m[_icons_portrait.funName] = _icons_portrait;
  m[_icons_power.funName] = _icons_power;
  m[_icons_powerinput.funName] = _icons_powerinput;
  m[_icons_powersettingsnew.funName] = _icons_powersettingsnew;
  m[_icons_pregnantwoman.funName] = _icons_pregnantwoman;
  m[_icons_presenttoall.funName] = _icons_presenttoall;
  m[_icons_print.funName] = _icons_print;
  m[_icons_priorityhigh.funName] = _icons_priorityhigh;
  m[_icons_public.funName] = _icons_public;
  m[_icons_publish.funName] = _icons_publish;
  m[_icons_querybuilder.funName] = _icons_querybuilder;
  m[_icons_questionanswer.funName] = _icons_questionanswer;
  m[_icons_queue.funName] = _icons_queue;
  m[_icons_queuemusic.funName] = _icons_queuemusic;
  m[_icons_queueplaynext.funName] = _icons_queueplaynext;
  m[_icons_radio.funName] = _icons_radio;
  m[_icons_radiobuttonchecked.funName] = _icons_radiobuttonchecked;
  m[_icons_radiobuttonunchecked.funName] = _icons_radiobuttonunchecked;
  m[_icons_ratereview.funName] = _icons_ratereview;
  m[_icons_receipt.funName] = _icons_receipt;
  m[_icons_recentactors.funName] = _icons_recentactors;
  m[_icons_recordvoiceover.funName] = _icons_recordvoiceover;
  m[_icons_redeem.funName] = _icons_redeem;
  m[_icons_redo.funName] = _icons_redo;
  m[_icons_refresh.funName] = _icons_refresh;
  m[_icons_remove.funName] = _icons_remove;
  m[_icons_removecircle.funName] = _icons_removecircle;
  m[_icons_removecircleoutline.funName] = _icons_removecircleoutline;
  m[_icons_removefromqueue.funName] = _icons_removefromqueue;
  m[_icons_removeredeye.funName] = _icons_removeredeye;
  m[_icons_removeshoppingcart.funName] = _icons_removeshoppingcart;
  m[_icons_reorder.funName] = _icons_reorder;
  m[_icons_repeat.funName] = _icons_repeat;
  m[_icons_repeatone.funName] = _icons_repeatone;
  m[_icons_replay.funName] = _icons_replay;
  m[_icons_replay10.funName] = _icons_replay10;
  m[_icons_replay30.funName] = _icons_replay30;
  m[_icons_replay5.funName] = _icons_replay5;
  m[_icons_reply.funName] = _icons_reply;
  m[_icons_replyall.funName] = _icons_replyall;
  m[_icons_report.funName] = _icons_report;
  m[_icons_reportoff.funName] = _icons_reportoff;
  m[_icons_reportproblem.funName] = _icons_reportproblem;
  m[_icons_restaurant.funName] = _icons_restaurant;
  m[_icons_restaurantmenu.funName] = _icons_restaurantmenu;
  m[_icons_restore.funName] = _icons_restore;
  m[_icons_restorefromtrash.funName] = _icons_restorefromtrash;
  m[_icons_restorepage.funName] = _icons_restorepage;
  m[_icons_ringvolume.funName] = _icons_ringvolume;
  m[_icons_room.funName] = _icons_room;
  m[_icons_roomservice.funName] = _icons_roomservice;
  m[_icons_rotate90degreesccw.funName] = _icons_rotate90degreesccw;
  m[_icons_rotateleft.funName] = _icons_rotateleft;
  m[_icons_rotateright.funName] = _icons_rotateright;
  m[_icons_roundedcorner.funName] = _icons_roundedcorner;
  m[_icons_router.funName] = _icons_router;
  m[_icons_rowing.funName] = _icons_rowing;
  m[_icons_rssfeed.funName] = _icons_rssfeed;
  m[_icons_rvhookup.funName] = _icons_rvhookup;
  m[_icons_satellite.funName] = _icons_satellite;
  m[_icons_save.funName] = _icons_save;
  m[_icons_savealt.funName] = _icons_savealt;
  m[_icons_scanner.funName] = _icons_scanner;
  m[_icons_scatterplot.funName] = _icons_scatterplot;
  m[_icons_schedule.funName] = _icons_schedule;
  m[_icons_school.funName] = _icons_school;
  m[_icons_score.funName] = _icons_score;
  m[_icons_screenlocklandscape.funName] = _icons_screenlocklandscape;
  m[_icons_screenlockportrait.funName] = _icons_screenlockportrait;
  m[_icons_screenlockrotation.funName] = _icons_screenlockrotation;
  m[_icons_screenrotation.funName] = _icons_screenrotation;
  m[_icons_screenshare.funName] = _icons_screenshare;
  m[_icons_sdcard.funName] = _icons_sdcard;
  m[_icons_sdstorage.funName] = _icons_sdstorage;
  m[_icons_search.funName] = _icons_search;
  m[_icons_security.funName] = _icons_security;
  m[_icons_selectall.funName] = _icons_selectall;
  m[_icons_send.funName] = _icons_send;
  m[_icons_sentimentdissatisfied.funName] = _icons_sentimentdissatisfied;
  m[_icons_sentimentneutral.funName] = _icons_sentimentneutral;
  m[_icons_sentimentsatisfied.funName] = _icons_sentimentsatisfied;
  m[_icons_sentimentverydissatisfied.funName] = _icons_sentimentverydissatisfied;
  m[_icons_sentimentverysatisfied.funName] = _icons_sentimentverysatisfied;
  m[_icons_settings.funName] = _icons_settings;
  m[_icons_settingsapplications.funName] = _icons_settingsapplications;
  m[_icons_settingsbackuprestore.funName] = _icons_settingsbackuprestore;
  m[_icons_settingsbluetooth.funName] = _icons_settingsbluetooth;
  m[_icons_settingsbrightness.funName] = _icons_settingsbrightness;
  m[_icons_settingscell.funName] = _icons_settingscell;
  m[_icons_settingsethernet.funName] = _icons_settingsethernet;
  m[_icons_settingsinputantenna.funName] = _icons_settingsinputantenna;
  m[_icons_settingsinputcomponent.funName] = _icons_settingsinputcomponent;
  m[_icons_settingsinputcomposite.funName] = _icons_settingsinputcomposite;
  m[_icons_settingsinputhdmi.funName] = _icons_settingsinputhdmi;
  m[_icons_settingsinputsvideo.funName] = _icons_settingsinputsvideo;
  m[_icons_settingsoverscan.funName] = _icons_settingsoverscan;
  m[_icons_settingsphone.funName] = _icons_settingsphone;
  m[_icons_settingspower.funName] = _icons_settingspower;
  m[_icons_settingsremote.funName] = _icons_settingsremote;
  m[_icons_settingssystemdaydream.funName] = _icons_settingssystemdaydream;
  m[_icons_settingsvoice.funName] = _icons_settingsvoice;
  m[_icons_share.funName] = _icons_share;
  m[_icons_shop.funName] = _icons_shop;
  m[_icons_shoptwo.funName] = _icons_shoptwo;
  m[_icons_shoppingbasket.funName] = _icons_shoppingbasket;
  m[_icons_shoppingcart.funName] = _icons_shoppingcart;
  m[_icons_shorttext.funName] = _icons_shorttext;
  m[_icons_showchart.funName] = _icons_showchart;
  m[_icons_shuffle.funName] = _icons_shuffle;
  m[_icons_shutterspeed.funName] = _icons_shutterspeed;
  m[_icons_signalcellular4bar.funName] = _icons_signalcellular4bar;
  m[_icons_signalcellularconnectednointernet4bar.funName] = _icons_signalcellularconnectednointernet4bar;
  m[_icons_signalcellularnosim.funName] = _icons_signalcellularnosim;
  m[_icons_signalcellularnull.funName] = _icons_signalcellularnull;
  m[_icons_signalcellularoff.funName] = _icons_signalcellularoff;
  m[_icons_signalwifi4bar.funName] = _icons_signalwifi4bar;
  m[_icons_signalwifi4barlock.funName] = _icons_signalwifi4barlock;
  m[_icons_signalwifioff.funName] = _icons_signalwifioff;
  m[_icons_simcard.funName] = _icons_simcard;
  m[_icons_simcardalert.funName] = _icons_simcardalert;
  m[_icons_skipnext.funName] = _icons_skipnext;
  m[_icons_skipprevious.funName] = _icons_skipprevious;
  m[_icons_slideshow.funName] = _icons_slideshow;
  m[_icons_slowmotionvideo.funName] = _icons_slowmotionvideo;
  m[_icons_smartphone.funName] = _icons_smartphone;
  m[_icons_smokefree.funName] = _icons_smokefree;
  m[_icons_smokingrooms.funName] = _icons_smokingrooms;
  m[_icons_sms.funName] = _icons_sms;
  m[_icons_smsfailed.funName] = _icons_smsfailed;
  m[_icons_snooze.funName] = _icons_snooze;
  m[_icons_sort.funName] = _icons_sort;
  m[_icons_sortbyalpha.funName] = _icons_sortbyalpha;
  m[_icons_spa.funName] = _icons_spa;
  m[_icons_spacebar.funName] = _icons_spacebar;
  m[_icons_speaker.funName] = _icons_speaker;
  m[_icons_speakergroup.funName] = _icons_speakergroup;
  m[_icons_speakernotes.funName] = _icons_speakernotes;
  m[_icons_speakernotesoff.funName] = _icons_speakernotesoff;
  m[_icons_speakerphone.funName] = _icons_speakerphone;
  m[_icons_spellcheck.funName] = _icons_spellcheck;
  m[_icons_star.funName] = _icons_star;
  m[_icons_starborder.funName] = _icons_starborder;
  m[_icons_starhalf.funName] = _icons_starhalf;
  m[_icons_stars.funName] = _icons_stars;
  m[_icons_staycurrentlandscape.funName] = _icons_staycurrentlandscape;
  m[_icons_staycurrentportrait.funName] = _icons_staycurrentportrait;
  m[_icons_stayprimarylandscape.funName] = _icons_stayprimarylandscape;
  m[_icons_stayprimaryportrait.funName] = _icons_stayprimaryportrait;
  m[_icons_stop.funName] = _icons_stop;
  m[_icons_stopscreenshare.funName] = _icons_stopscreenshare;
  m[_icons_storage.funName] = _icons_storage;
  m[_icons_store.funName] = _icons_store;
  m[_icons_storemalldirectory.funName] = _icons_storemalldirectory;
  m[_icons_straighten.funName] = _icons_straighten;
  m[_icons_streetview.funName] = _icons_streetview;
  m[_icons_strikethroughs.funName] = _icons_strikethroughs;
  m[_icons_style.funName] = _icons_style;
  m[_icons_subdirectoryarrowleft.funName] = _icons_subdirectoryarrowleft;
  m[_icons_subdirectoryarrowright.funName] = _icons_subdirectoryarrowright;
  m[_icons_subject.funName] = _icons_subject;
  m[_icons_subscriptions.funName] = _icons_subscriptions;
  m[_icons_subtitles.funName] = _icons_subtitles;
  m[_icons_subway.funName] = _icons_subway;
  m[_icons_supervisedusercircle.funName] = _icons_supervisedusercircle;
  m[_icons_supervisoraccount.funName] = _icons_supervisoraccount;
  m[_icons_surroundsound.funName] = _icons_surroundsound;
  m[_icons_swapcalls.funName] = _icons_swapcalls;
  m[_icons_swaphoriz.funName] = _icons_swaphoriz;
  m[_icons_swaphorizontalcircle.funName] = _icons_swaphorizontalcircle;
  m[_icons_swapvert.funName] = _icons_swapvert;
  m[_icons_swapverticalcircle.funName] = _icons_swapverticalcircle;
  m[_icons_switchcamera.funName] = _icons_switchcamera;
  m[_icons_switchvideo.funName] = _icons_switchvideo;
  m[_icons_sync.funName] = _icons_sync;
  m[_icons_syncdisabled.funName] = _icons_syncdisabled;
  m[_icons_syncproblem.funName] = _icons_syncproblem;
  m[_icons_systemupdate.funName] = _icons_systemupdate;
  m[_icons_systemupdatealt.funName] = _icons_systemupdatealt;
  m[_icons_tab.funName] = _icons_tab;
  m[_icons_tabunselected.funName] = _icons_tabunselected;
  m[_icons_tablechart.funName] = _icons_tablechart;
  m[_icons_tablet.funName] = _icons_tablet;
  m[_icons_tabletandroid.funName] = _icons_tabletandroid;
  m[_icons_tabletmac.funName] = _icons_tabletmac;
  m[_icons_tagfaces.funName] = _icons_tagfaces;
  m[_icons_tapandplay.funName] = _icons_tapandplay;
  m[_icons_terrain.funName] = _icons_terrain;
  m[_icons_textfields.funName] = _icons_textfields;
  m[_icons_textformat.funName] = _icons_textformat;
  m[_icons_textrotateup.funName] = _icons_textrotateup;
  m[_icons_textrotatevertical.funName] = _icons_textrotatevertical;
  m[_icons_textrotationangledown.funName] = _icons_textrotationangledown;
  m[_icons_textrotationangleup.funName] = _icons_textrotationangleup;
  m[_icons_textrotationdown.funName] = _icons_textrotationdown;
  m[_icons_textrotationnone.funName] = _icons_textrotationnone;
  m[_icons_textsms.funName] = _icons_textsms;
  m[_icons_texture.funName] = _icons_texture;
  m[_icons_theaters.funName] = _icons_theaters;
  m[_icons_thumbdown.funName] = _icons_thumbdown;
  m[_icons_thumbup.funName] = _icons_thumbup;
  m[_icons_thumbsupdown.funName] = _icons_thumbsupdown;
  m[_icons_timetoleave.funName] = _icons_timetoleave;
  m[_icons_timelapse.funName] = _icons_timelapse;
  m[_icons_timeline.funName] = _icons_timeline;
  m[_icons_timer.funName] = _icons_timer;
  m[_icons_timer10.funName] = _icons_timer10;
  m[_icons_timer3.funName] = _icons_timer3;
  m[_icons_timeroff.funName] = _icons_timeroff;
  m[_icons_title.funName] = _icons_title;
  m[_icons_toc.funName] = _icons_toc;
  m[_icons_today.funName] = _icons_today;
  m[_icons_toll.funName] = _icons_toll;
  m[_icons_tonality.funName] = _icons_tonality;
  m[_icons_touchapp.funName] = _icons_touchapp;
  m[_icons_toys.funName] = _icons_toys;
  m[_icons_trackchanges.funName] = _icons_trackchanges;
  m[_icons_traffic.funName] = _icons_traffic;
  m[_icons_train.funName] = _icons_train;
  m[_icons_tram.funName] = _icons_tram;
  m[_icons_transferwithinastation.funName] = _icons_transferwithinastation;
  m[_icons_transform.funName] = _icons_transform;
  m[_icons_transitenterexit.funName] = _icons_transitenterexit;
  m[_icons_translate.funName] = _icons_translate;
  m[_icons_trendingdown.funName] = _icons_trendingdown;
  m[_icons_trendingflat.funName] = _icons_trendingflat;
  m[_icons_trendingup.funName] = _icons_trendingup;
  m[_icons_triporigin.funName] = _icons_triporigin;
  m[_icons_tune.funName] = _icons_tune;
  m[_icons_turnedin.funName] = _icons_turnedin;
  m[_icons_turnedinnot.funName] = _icons_turnedinnot;
  m[_icons_tv.funName] = _icons_tv;
  m[_icons_unarchive.funName] = _icons_unarchive;
  m[_icons_undo.funName] = _icons_undo;
  m[_icons_unfoldless.funName] = _icons_unfoldless;
  m[_icons_unfoldmore.funName] = _icons_unfoldmore;
  m[_icons_update.funName] = _icons_update;
  m[_icons_usb.funName] = _icons_usb;
  m[_icons_verifieduser.funName] = _icons_verifieduser;
  m[_icons_verticalalignbottom.funName] = _icons_verticalalignbottom;
  m[_icons_verticalaligncenter.funName] = _icons_verticalaligncenter;
  m[_icons_verticalaligntop.funName] = _icons_verticalaligntop;
  m[_icons_vibration.funName] = _icons_vibration;
  m[_icons_videocall.funName] = _icons_videocall;
  m[_icons_videolabel.funName] = _icons_videolabel;
  m[_icons_videolibrary.funName] = _icons_videolibrary;
  m[_icons_videocam.funName] = _icons_videocam;
  m[_icons_videocamoff.funName] = _icons_videocamoff;
  m[_icons_videogameasset.funName] = _icons_videogameasset;
  m[_icons_viewagenda.funName] = _icons_viewagenda;
  m[_icons_viewarray.funName] = _icons_viewarray;
  m[_icons_viewcarousel.funName] = _icons_viewcarousel;
  m[_icons_viewcolumn.funName] = _icons_viewcolumn;
  m[_icons_viewcomfy.funName] = _icons_viewcomfy;
  m[_icons_viewcompact.funName] = _icons_viewcompact;
  m[_icons_viewday.funName] = _icons_viewday;
  m[_icons_viewheadline.funName] = _icons_viewheadline;
  m[_icons_viewlist.funName] = _icons_viewlist;
  m[_icons_viewmodule.funName] = _icons_viewmodule;
  m[_icons_viewquilt.funName] = _icons_viewquilt;
  m[_icons_viewstream.funName] = _icons_viewstream;
  m[_icons_viewweek.funName] = _icons_viewweek;
  m[_icons_vignette.funName] = _icons_vignette;
  m[_icons_visibility.funName] = _icons_visibility;
  m[_icons_visibilityoff.funName] = _icons_visibilityoff;
  m[_icons_voicechat.funName] = _icons_voicechat;
  m[_icons_voicemail.funName] = _icons_voicemail;
  m[_icons_volumedown.funName] = _icons_volumedown;
  m[_icons_volumemute.funName] = _icons_volumemute;
  m[_icons_volumeoff.funName] = _icons_volumeoff;
  m[_icons_volumeup.funName] = _icons_volumeup;
  m[_icons_vpnkey.funName] = _icons_vpnkey;
  m[_icons_vpnlock.funName] = _icons_vpnlock;
  m[_icons_wallpaper.funName] = _icons_wallpaper;
  m[_icons_warning.funName] = _icons_warning;
  m[_icons_watch.funName] = _icons_watch;
  m[_icons_watchlater.funName] = _icons_watchlater;
  m[_icons_wbauto.funName] = _icons_wbauto;
  m[_icons_wbcloudy.funName] = _icons_wbcloudy;
  m[_icons_wbincandescent.funName] = _icons_wbincandescent;
  m[_icons_wbiridescent.funName] = _icons_wbiridescent;
  m[_icons_wbsunny.funName] = _icons_wbsunny;
  m[_icons_wc.funName] = _icons_wc;
  m[_icons_web.funName] = _icons_web;
  m[_icons_webasset.funName] = _icons_webasset;
  m[_icons_weekend.funName] = _icons_weekend;
  m[_icons_whatshot.funName] = _icons_whatshot;
  m[_icons_widgets.funName] = _icons_widgets;
  m[_icons_wifi.funName] = _icons_wifi;
  m[_icons_wifilock.funName] = _icons_wifilock;
  m[_icons_wifitethering.funName] = _icons_wifitethering;
  m[_icons_work.funName] = _icons_work;
  m[_icons_wraptext.funName] = _icons_wraptext;
  m[_icons_youtubesearchedfor.funName] = _icons_youtubesearchedfor;
  m[_icons_zoomin.funName] = _icons_zoomin;
  m[_icons_zoomout.funName] = _icons_zoomout;
  m[_icons_zoomoutmap.funName] = _icons_zoomoutmap;
  return m;
}
var _icons_threesixty = MXFunctionInvoke(
  "Icons.threesixty",
    (
    ) =>
      Icons.threesixty
);
var _icons_threedrotation = MXFunctionInvoke(
  "Icons.threedrotation",
    (
    ) =>
      Icons.threedrotation
);
var _icons_fourk = MXFunctionInvoke(
  "Icons.fourk",
    (
    ) =>
      Icons.fourk
);
var _icons_acunit = MXFunctionInvoke(
  "Icons.acunit",
    (
    ) =>
      Icons.acunit
);
var _icons_accessalarm = MXFunctionInvoke(
  "Icons.accessalarm",
    (
    ) =>
      Icons.accessalarm
);
var _icons_accessalarms = MXFunctionInvoke(
  "Icons.accessalarms",
    (
    ) =>
      Icons.accessalarms
);
var _icons_accesstime = MXFunctionInvoke(
  "Icons.accesstime",
    (
    ) =>
      Icons.accesstime
);
var _icons_accessibility = MXFunctionInvoke(
  "Icons.accessibility",
    (
    ) =>
      Icons.accessibility
);
var _icons_accessibilitynew = MXFunctionInvoke(
  "Icons.accessibilitynew",
    (
    ) =>
      Icons.accessibilitynew
);
var _icons_accessible = MXFunctionInvoke(
  "Icons.accessible",
    (
    ) =>
      Icons.accessible
);
var _icons_accessibleforward = MXFunctionInvoke(
  "Icons.accessibleforward",
    (
    ) =>
      Icons.accessibleforward
);
var _icons_accountbalance = MXFunctionInvoke(
  "Icons.accountbalance",
    (
    ) =>
      Icons.accountbalance
);
var _icons_accountbalancewallet = MXFunctionInvoke(
  "Icons.accountbalancewallet",
    (
    ) =>
      Icons.accountbalancewallet
);
var _icons_accountbox = MXFunctionInvoke(
  "Icons.accountbox",
    (
    ) =>
      Icons.accountbox
);
var _icons_accountcircle = MXFunctionInvoke(
  "Icons.accountcircle",
    (
    ) =>
      Icons.accountcircle
);
var _icons_adb = MXFunctionInvoke(
  "Icons.adb",
    (
    ) =>
      Icons.adb
);
var _icons_add = MXFunctionInvoke(
  "Icons.add",
    (
    ) =>
      Icons.add
);
var _icons_addaphoto = MXFunctionInvoke(
  "Icons.addaphoto",
    (
    ) =>
      Icons.addaphoto
);
var _icons_addalarm = MXFunctionInvoke(
  "Icons.addalarm",
    (
    ) =>
      Icons.addalarm
);
var _icons_addalert = MXFunctionInvoke(
  "Icons.addalert",
    (
    ) =>
      Icons.addalert
);
var _icons_addbox = MXFunctionInvoke(
  "Icons.addbox",
    (
    ) =>
      Icons.addbox
);
var _icons_addcall = MXFunctionInvoke(
  "Icons.addcall",
    (
    ) =>
      Icons.addcall
);
var _icons_addcircle = MXFunctionInvoke(
  "Icons.addcircle",
    (
    ) =>
      Icons.addcircle
);
var _icons_addcircleoutline = MXFunctionInvoke(
  "Icons.addcircleoutline",
    (
    ) =>
      Icons.addcircleoutline
);
var _icons_addcomment = MXFunctionInvoke(
  "Icons.addcomment",
    (
    ) =>
      Icons.addcomment
);
var _icons_addlocation = MXFunctionInvoke(
  "Icons.addlocation",
    (
    ) =>
      Icons.addlocation
);
var _icons_addphotoalternate = MXFunctionInvoke(
  "Icons.addphotoalternate",
    (
    ) =>
      Icons.addphotoalternate
);
var _icons_addshoppingcart = MXFunctionInvoke(
  "Icons.addshoppingcart",
    (
    ) =>
      Icons.addshoppingcart
);
var _icons_addtohomescreen = MXFunctionInvoke(
  "Icons.addtohomescreen",
    (
    ) =>
      Icons.addtohomescreen
);
var _icons_addtophotos = MXFunctionInvoke(
  "Icons.addtophotos",
    (
    ) =>
      Icons.addtophotos
);
var _icons_addtoqueue = MXFunctionInvoke(
  "Icons.addtoqueue",
    (
    ) =>
      Icons.addtoqueue
);
var _icons_adjust = MXFunctionInvoke(
  "Icons.adjust",
    (
    ) =>
      Icons.adjust
);
var _icons_airlineseatflat = MXFunctionInvoke(
  "Icons.airlineseatflat",
    (
    ) =>
      Icons.airlineseatflat
);
var _icons_airlineseatflatangled = MXFunctionInvoke(
  "Icons.airlineseatflatangled",
    (
    ) =>
      Icons.airlineseatflatangled
);
var _icons_airlineseatindividualsuite = MXFunctionInvoke(
  "Icons.airlineseatindividualsuite",
    (
    ) =>
      Icons.airlineseatindividualsuite
);
var _icons_airlineseatlegroomextra = MXFunctionInvoke(
  "Icons.airlineseatlegroomextra",
    (
    ) =>
      Icons.airlineseatlegroomextra
);
var _icons_airlineseatlegroomnormal = MXFunctionInvoke(
  "Icons.airlineseatlegroomnormal",
    (
    ) =>
      Icons.airlineseatlegroomnormal
);
var _icons_airlineseatlegroomreduced = MXFunctionInvoke(
  "Icons.airlineseatlegroomreduced",
    (
    ) =>
      Icons.airlineseatlegroomreduced
);
var _icons_airlineseatreclineextra = MXFunctionInvoke(
  "Icons.airlineseatreclineextra",
    (
    ) =>
      Icons.airlineseatreclineextra
);
var _icons_airlineseatreclinenormal = MXFunctionInvoke(
  "Icons.airlineseatreclinenormal",
    (
    ) =>
      Icons.airlineseatreclinenormal
);
var _icons_airplanemodeactive = MXFunctionInvoke(
  "Icons.airplanemodeactive",
    (
    ) =>
      Icons.airplanemodeactive
);
var _icons_airplanemodeinactive = MXFunctionInvoke(
  "Icons.airplanemodeinactive",
    (
    ) =>
      Icons.airplanemodeinactive
);
var _icons_airplay = MXFunctionInvoke(
  "Icons.airplay",
    (
    ) =>
      Icons.airplay
);
var _icons_airportshuttle = MXFunctionInvoke(
  "Icons.airportshuttle",
    (
    ) =>
      Icons.airportshuttle
);
var _icons_alarm = MXFunctionInvoke(
  "Icons.alarm",
    (
    ) =>
      Icons.alarm
);
var _icons_alarmadd = MXFunctionInvoke(
  "Icons.alarmadd",
    (
    ) =>
      Icons.alarmadd
);
var _icons_alarmoff = MXFunctionInvoke(
  "Icons.alarmoff",
    (
    ) =>
      Icons.alarmoff
);
var _icons_alarmon = MXFunctionInvoke(
  "Icons.alarmon",
    (
    ) =>
      Icons.alarmon
);
var _icons_album = MXFunctionInvoke(
  "Icons.album",
    (
    ) =>
      Icons.album
);
var _icons_allinclusive = MXFunctionInvoke(
  "Icons.allinclusive",
    (
    ) =>
      Icons.allinclusive
);
var _icons_allout = MXFunctionInvoke(
  "Icons.allout",
    (
    ) =>
      Icons.allout
);
var _icons_alternateemail = MXFunctionInvoke(
  "Icons.alternateemail",
    (
    ) =>
      Icons.alternateemail
);
var _icons_android = MXFunctionInvoke(
  "Icons.android",
    (
    ) =>
      Icons.android
);
var _icons_announcement = MXFunctionInvoke(
  "Icons.announcement",
    (
    ) =>
      Icons.announcement
);
var _icons_apps = MXFunctionInvoke(
  "Icons.apps",
    (
    ) =>
      Icons.apps
);
var _icons_archive = MXFunctionInvoke(
  "Icons.archive",
    (
    ) =>
      Icons.archive
);
var _icons_arrowback = MXFunctionInvoke(
  "Icons.arrowback",
    (
    ) =>
      Icons.arrowback
);
var _icons_arrowbackios = MXFunctionInvoke(
  "Icons.arrowbackios",
    (
    ) =>
      Icons.arrowbackios
);
var _icons_arrowdownward = MXFunctionInvoke(
  "Icons.arrowdownward",
    (
    ) =>
      Icons.arrowdownward
);
var _icons_arrowdropdown = MXFunctionInvoke(
  "Icons.arrowdropdown",
    (
    ) =>
      Icons.arrowdropdown
);
var _icons_arrowdropdowncircle = MXFunctionInvoke(
  "Icons.arrowdropdowncircle",
    (
    ) =>
      Icons.arrowdropdowncircle
);
var _icons_arrowdropup = MXFunctionInvoke(
  "Icons.arrowdropup",
    (
    ) =>
      Icons.arrowdropup
);
var _icons_arrowforward = MXFunctionInvoke(
  "Icons.arrowforward",
    (
    ) =>
      Icons.arrowforward
);
var _icons_arrowforwardios = MXFunctionInvoke(
  "Icons.arrowforwardios",
    (
    ) =>
      Icons.arrowforwardios
);
var _icons_arrowleft = MXFunctionInvoke(
  "Icons.arrowleft",
    (
    ) =>
      Icons.arrowleft
);
var _icons_arrowright = MXFunctionInvoke(
  "Icons.arrowright",
    (
    ) =>
      Icons.arrowright
);
var _icons_arrowupward = MXFunctionInvoke(
  "Icons.arrowupward",
    (
    ) =>
      Icons.arrowupward
);
var _icons_arttrack = MXFunctionInvoke(
  "Icons.arttrack",
    (
    ) =>
      Icons.arttrack
);
var _icons_aspectratio = MXFunctionInvoke(
  "Icons.aspectratio",
    (
    ) =>
      Icons.aspectratio
);
var _icons_assessment = MXFunctionInvoke(
  "Icons.assessment",
    (
    ) =>
      Icons.assessment
);
var _icons_assignment = MXFunctionInvoke(
  "Icons.assignment",
    (
    ) =>
      Icons.assignment
);
var _icons_assignmentind = MXFunctionInvoke(
  "Icons.assignmentind",
    (
    ) =>
      Icons.assignmentind
);
var _icons_assignmentlate = MXFunctionInvoke(
  "Icons.assignmentlate",
    (
    ) =>
      Icons.assignmentlate
);
var _icons_assignmentreturn = MXFunctionInvoke(
  "Icons.assignmentreturn",
    (
    ) =>
      Icons.assignmentreturn
);
var _icons_assignmentreturned = MXFunctionInvoke(
  "Icons.assignmentreturned",
    (
    ) =>
      Icons.assignmentreturned
);
var _icons_assignmentturnedin = MXFunctionInvoke(
  "Icons.assignmentturnedin",
    (
    ) =>
      Icons.assignmentturnedin
);
var _icons_assistant = MXFunctionInvoke(
  "Icons.assistant",
    (
    ) =>
      Icons.assistant
);
var _icons_assistantphoto = MXFunctionInvoke(
  "Icons.assistantphoto",
    (
    ) =>
      Icons.assistantphoto
);
var _icons_atm = MXFunctionInvoke(
  "Icons.atm",
    (
    ) =>
      Icons.atm
);
var _icons_attachfile = MXFunctionInvoke(
  "Icons.attachfile",
    (
    ) =>
      Icons.attachfile
);
var _icons_attachmoney = MXFunctionInvoke(
  "Icons.attachmoney",
    (
    ) =>
      Icons.attachmoney
);
var _icons_attachment = MXFunctionInvoke(
  "Icons.attachment",
    (
    ) =>
      Icons.attachment
);
var _icons_audiotrack = MXFunctionInvoke(
  "Icons.audiotrack",
    (
    ) =>
      Icons.audiotrack
);
var _icons_autorenew = MXFunctionInvoke(
  "Icons.autorenew",
    (
    ) =>
      Icons.autorenew
);
var _icons_avtimer = MXFunctionInvoke(
  "Icons.avtimer",
    (
    ) =>
      Icons.avtimer
);
var _icons_backspace = MXFunctionInvoke(
  "Icons.backspace",
    (
    ) =>
      Icons.backspace
);
var _icons_backup = MXFunctionInvoke(
  "Icons.backup",
    (
    ) =>
      Icons.backup
);
var _icons_batteryalert = MXFunctionInvoke(
  "Icons.batteryalert",
    (
    ) =>
      Icons.batteryalert
);
var _icons_batterychargingfull = MXFunctionInvoke(
  "Icons.batterychargingfull",
    (
    ) =>
      Icons.batterychargingfull
);
var _icons_batteryfull = MXFunctionInvoke(
  "Icons.batteryfull",
    (
    ) =>
      Icons.batteryfull
);
var _icons_batterystd = MXFunctionInvoke(
  "Icons.batterystd",
    (
    ) =>
      Icons.batterystd
);
var _icons_batteryunknown = MXFunctionInvoke(
  "Icons.batteryunknown",
    (
    ) =>
      Icons.batteryunknown
);
var _icons_beachaccess = MXFunctionInvoke(
  "Icons.beachaccess",
    (
    ) =>
      Icons.beachaccess
);
var _icons_beenhere = MXFunctionInvoke(
  "Icons.beenhere",
    (
    ) =>
      Icons.beenhere
);
var _icons_block = MXFunctionInvoke(
  "Icons.block",
    (
    ) =>
      Icons.block
);
var _icons_bluetooth = MXFunctionInvoke(
  "Icons.bluetooth",
    (
    ) =>
      Icons.bluetooth
);
var _icons_bluetoothaudio = MXFunctionInvoke(
  "Icons.bluetoothaudio",
    (
    ) =>
      Icons.bluetoothaudio
);
var _icons_bluetoothconnected = MXFunctionInvoke(
  "Icons.bluetoothconnected",
    (
    ) =>
      Icons.bluetoothconnected
);
var _icons_bluetoothdisabled = MXFunctionInvoke(
  "Icons.bluetoothdisabled",
    (
    ) =>
      Icons.bluetoothdisabled
);
var _icons_bluetoothsearching = MXFunctionInvoke(
  "Icons.bluetoothsearching",
    (
    ) =>
      Icons.bluetoothsearching
);
var _icons_blurcircular = MXFunctionInvoke(
  "Icons.blurcircular",
    (
    ) =>
      Icons.blurcircular
);
var _icons_blurlinear = MXFunctionInvoke(
  "Icons.blurlinear",
    (
    ) =>
      Icons.blurlinear
);
var _icons_bluroff = MXFunctionInvoke(
  "Icons.bluroff",
    (
    ) =>
      Icons.bluroff
);
var _icons_bluron = MXFunctionInvoke(
  "Icons.bluron",
    (
    ) =>
      Icons.bluron
);
var _icons_book = MXFunctionInvoke(
  "Icons.book",
    (
    ) =>
      Icons.book
);
var _icons_bookmark = MXFunctionInvoke(
  "Icons.bookmark",
    (
    ) =>
      Icons.bookmark
);
var _icons_bookmarkborder = MXFunctionInvoke(
  "Icons.bookmarkborder",
    (
    ) =>
      Icons.bookmarkborder
);
var _icons_borderall = MXFunctionInvoke(
  "Icons.borderall",
    (
    ) =>
      Icons.borderall
);
var _icons_borderbottom = MXFunctionInvoke(
  "Icons.borderbottom",
    (
    ) =>
      Icons.borderbottom
);
var _icons_borderclear = MXFunctionInvoke(
  "Icons.borderclear",
    (
    ) =>
      Icons.borderclear
);
var _icons_bordercolor = MXFunctionInvoke(
  "Icons.bordercolor",
    (
    ) =>
      Icons.bordercolor
);
var _icons_borderhorizontal = MXFunctionInvoke(
  "Icons.borderhorizontal",
    (
    ) =>
      Icons.borderhorizontal
);
var _icons_borderinner = MXFunctionInvoke(
  "Icons.borderinner",
    (
    ) =>
      Icons.borderinner
);
var _icons_borderleft = MXFunctionInvoke(
  "Icons.borderleft",
    (
    ) =>
      Icons.borderleft
);
var _icons_borderouter = MXFunctionInvoke(
  "Icons.borderouter",
    (
    ) =>
      Icons.borderouter
);
var _icons_borderright = MXFunctionInvoke(
  "Icons.borderright",
    (
    ) =>
      Icons.borderright
);
var _icons_borderstyle = MXFunctionInvoke(
  "Icons.borderstyle",
    (
    ) =>
      Icons.borderstyle
);
var _icons_bordertop = MXFunctionInvoke(
  "Icons.bordertop",
    (
    ) =>
      Icons.bordertop
);
var _icons_bordervertical = MXFunctionInvoke(
  "Icons.bordervertical",
    (
    ) =>
      Icons.bordervertical
);
var _icons_brandingwatermark = MXFunctionInvoke(
  "Icons.brandingwatermark",
    (
    ) =>
      Icons.brandingwatermark
);
var _icons_brightness1 = MXFunctionInvoke(
  "Icons.brightness1",
    (
    ) =>
      Icons.brightness1
);
var _icons_brightness2 = MXFunctionInvoke(
  "Icons.brightness2",
    (
    ) =>
      Icons.brightness2
);
var _icons_brightness3 = MXFunctionInvoke(
  "Icons.brightness3",
    (
    ) =>
      Icons.brightness3
);
var _icons_brightness4 = MXFunctionInvoke(
  "Icons.brightness4",
    (
    ) =>
      Icons.brightness4
);
var _icons_brightness5 = MXFunctionInvoke(
  "Icons.brightness5",
    (
    ) =>
      Icons.brightness5
);
var _icons_brightness6 = MXFunctionInvoke(
  "Icons.brightness6",
    (
    ) =>
      Icons.brightness6
);
var _icons_brightness7 = MXFunctionInvoke(
  "Icons.brightness7",
    (
    ) =>
      Icons.brightness7
);
var _icons_brightnessauto = MXFunctionInvoke(
  "Icons.brightnessauto",
    (
    ) =>
      Icons.brightnessauto
);
var _icons_brightnesshigh = MXFunctionInvoke(
  "Icons.brightnesshigh",
    (
    ) =>
      Icons.brightnesshigh
);
var _icons_brightnesslow = MXFunctionInvoke(
  "Icons.brightnesslow",
    (
    ) =>
      Icons.brightnesslow
);
var _icons_brightnessmedium = MXFunctionInvoke(
  "Icons.brightnessmedium",
    (
    ) =>
      Icons.brightnessmedium
);
var _icons_brokenimage = MXFunctionInvoke(
  "Icons.brokenimage",
    (
    ) =>
      Icons.brokenimage
);
var _icons_brush = MXFunctionInvoke(
  "Icons.brush",
    (
    ) =>
      Icons.brush
);
var _icons_bubblechart = MXFunctionInvoke(
  "Icons.bubblechart",
    (
    ) =>
      Icons.bubblechart
);
var _icons_bugreport = MXFunctionInvoke(
  "Icons.bugreport",
    (
    ) =>
      Icons.bugreport
);
var _icons_build = MXFunctionInvoke(
  "Icons.build",
    (
    ) =>
      Icons.build
);
var _icons_burstmode = MXFunctionInvoke(
  "Icons.burstmode",
    (
    ) =>
      Icons.burstmode
);
var _icons_business = MXFunctionInvoke(
  "Icons.business",
    (
    ) =>
      Icons.business
);
var _icons_businesscenter = MXFunctionInvoke(
  "Icons.businesscenter",
    (
    ) =>
      Icons.businesscenter
);
var _icons_cached = MXFunctionInvoke(
  "Icons.cached",
    (
    ) =>
      Icons.cached
);
var _icons_cake = MXFunctionInvoke(
  "Icons.cake",
    (
    ) =>
      Icons.cake
);
var _icons_calendartoday = MXFunctionInvoke(
  "Icons.calendartoday",
    (
    ) =>
      Icons.calendartoday
);
var _icons_calendarviewday = MXFunctionInvoke(
  "Icons.calendarviewday",
    (
    ) =>
      Icons.calendarviewday
);
var _icons_call = MXFunctionInvoke(
  "Icons.call",
    (
    ) =>
      Icons.call
);
var _icons_callend = MXFunctionInvoke(
  "Icons.callend",
    (
    ) =>
      Icons.callend
);
var _icons_callmade = MXFunctionInvoke(
  "Icons.callmade",
    (
    ) =>
      Icons.callmade
);
var _icons_callmerge = MXFunctionInvoke(
  "Icons.callmerge",
    (
    ) =>
      Icons.callmerge
);
var _icons_callmissed = MXFunctionInvoke(
  "Icons.callmissed",
    (
    ) =>
      Icons.callmissed
);
var _icons_callmissedoutgoing = MXFunctionInvoke(
  "Icons.callmissedoutgoing",
    (
    ) =>
      Icons.callmissedoutgoing
);
var _icons_callreceived = MXFunctionInvoke(
  "Icons.callreceived",
    (
    ) =>
      Icons.callreceived
);
var _icons_callsplit = MXFunctionInvoke(
  "Icons.callsplit",
    (
    ) =>
      Icons.callsplit
);
var _icons_calltoaction = MXFunctionInvoke(
  "Icons.calltoaction",
    (
    ) =>
      Icons.calltoaction
);
var _icons_camera = MXFunctionInvoke(
  "Icons.camera",
    (
    ) =>
      Icons.camera
);
var _icons_cameraalt = MXFunctionInvoke(
  "Icons.cameraalt",
    (
    ) =>
      Icons.cameraalt
);
var _icons_cameraenhance = MXFunctionInvoke(
  "Icons.cameraenhance",
    (
    ) =>
      Icons.cameraenhance
);
var _icons_camerafront = MXFunctionInvoke(
  "Icons.camerafront",
    (
    ) =>
      Icons.camerafront
);
var _icons_camerarear = MXFunctionInvoke(
  "Icons.camerarear",
    (
    ) =>
      Icons.camerarear
);
var _icons_cameraroll = MXFunctionInvoke(
  "Icons.cameraroll",
    (
    ) =>
      Icons.cameraroll
);
var _icons_cancel = MXFunctionInvoke(
  "Icons.cancel",
    (
    ) =>
      Icons.cancel
);
var _icons_cardgiftcard = MXFunctionInvoke(
  "Icons.cardgiftcard",
    (
    ) =>
      Icons.cardgiftcard
);
var _icons_cardmembership = MXFunctionInvoke(
  "Icons.cardmembership",
    (
    ) =>
      Icons.cardmembership
);
var _icons_cardtravel = MXFunctionInvoke(
  "Icons.cardtravel",
    (
    ) =>
      Icons.cardtravel
);
var _icons_casino = MXFunctionInvoke(
  "Icons.casino",
    (
    ) =>
      Icons.casino
);
var _icons_cast = MXFunctionInvoke(
  "Icons.cast",
    (
    ) =>
      Icons.cast
);
var _icons_castconnected = MXFunctionInvoke(
  "Icons.castconnected",
    (
    ) =>
      Icons.castconnected
);
var _icons_category = MXFunctionInvoke(
  "Icons.category",
    (
    ) =>
      Icons.category
);
var _icons_centerfocusstrong = MXFunctionInvoke(
  "Icons.centerfocusstrong",
    (
    ) =>
      Icons.centerfocusstrong
);
var _icons_centerfocusweak = MXFunctionInvoke(
  "Icons.centerfocusweak",
    (
    ) =>
      Icons.centerfocusweak
);
var _icons_changehistory = MXFunctionInvoke(
  "Icons.changehistory",
    (
    ) =>
      Icons.changehistory
);
var _icons_chat = MXFunctionInvoke(
  "Icons.chat",
    (
    ) =>
      Icons.chat
);
var _icons_chatbubble = MXFunctionInvoke(
  "Icons.chatbubble",
    (
    ) =>
      Icons.chatbubble
);
var _icons_chatbubbleoutline = MXFunctionInvoke(
  "Icons.chatbubbleoutline",
    (
    ) =>
      Icons.chatbubbleoutline
);
var _icons_check = MXFunctionInvoke(
  "Icons.check",
    (
    ) =>
      Icons.check
);
var _icons_checkbox = MXFunctionInvoke(
  "Icons.checkbox",
    (
    ) =>
      Icons.checkbox
);
var _icons_checkboxoutlineblank = MXFunctionInvoke(
  "Icons.checkboxoutlineblank",
    (
    ) =>
      Icons.checkboxoutlineblank
);
var _icons_checkcircle = MXFunctionInvoke(
  "Icons.checkcircle",
    (
    ) =>
      Icons.checkcircle
);
var _icons_checkcircleoutline = MXFunctionInvoke(
  "Icons.checkcircleoutline",
    (
    ) =>
      Icons.checkcircleoutline
);
var _icons_chevronleft = MXFunctionInvoke(
  "Icons.chevronleft",
    (
    ) =>
      Icons.chevronleft
);
var _icons_chevronright = MXFunctionInvoke(
  "Icons.chevronright",
    (
    ) =>
      Icons.chevronright
);
var _icons_childcare = MXFunctionInvoke(
  "Icons.childcare",
    (
    ) =>
      Icons.childcare
);
var _icons_childfriendly = MXFunctionInvoke(
  "Icons.childfriendly",
    (
    ) =>
      Icons.childfriendly
);
var _icons_chromereadermode = MXFunctionInvoke(
  "Icons.chromereadermode",
    (
    ) =>
      Icons.chromereadermode
);
var _icons_class = MXFunctionInvoke(
  "Icons.class",
    (
    ) =>
      Icons.class
);
var _icons_clear = MXFunctionInvoke(
  "Icons.clear",
    (
    ) =>
      Icons.clear
);
var _icons_clearall = MXFunctionInvoke(
  "Icons.clearall",
    (
    ) =>
      Icons.clearall
);
var _icons_close = MXFunctionInvoke(
  "Icons.close",
    (
    ) =>
      Icons.close
);
var _icons_closedcaption = MXFunctionInvoke(
  "Icons.closedcaption",
    (
    ) =>
      Icons.closedcaption
);
var _icons_cloud = MXFunctionInvoke(
  "Icons.cloud",
    (
    ) =>
      Icons.cloud
);
var _icons_cloudcircle = MXFunctionInvoke(
  "Icons.cloudcircle",
    (
    ) =>
      Icons.cloudcircle
);
var _icons_clouddone = MXFunctionInvoke(
  "Icons.clouddone",
    (
    ) =>
      Icons.clouddone
);
var _icons_clouddownload = MXFunctionInvoke(
  "Icons.clouddownload",
    (
    ) =>
      Icons.clouddownload
);
var _icons_cloudoff = MXFunctionInvoke(
  "Icons.cloudoff",
    (
    ) =>
      Icons.cloudoff
);
var _icons_cloudqueue = MXFunctionInvoke(
  "Icons.cloudqueue",
    (
    ) =>
      Icons.cloudqueue
);
var _icons_cloudupload = MXFunctionInvoke(
  "Icons.cloudupload",
    (
    ) =>
      Icons.cloudupload
);
var _icons_code = MXFunctionInvoke(
  "Icons.code",
    (
    ) =>
      Icons.code
);
var _icons_collections = MXFunctionInvoke(
  "Icons.collections",
    (
    ) =>
      Icons.collections
);
var _icons_collectionsbookmark = MXFunctionInvoke(
  "Icons.collectionsbookmark",
    (
    ) =>
      Icons.collectionsbookmark
);
var _icons_colorlens = MXFunctionInvoke(
  "Icons.colorlens",
    (
    ) =>
      Icons.colorlens
);
var _icons_colorize = MXFunctionInvoke(
  "Icons.colorize",
    (
    ) =>
      Icons.colorize
);
var _icons_comment = MXFunctionInvoke(
  "Icons.comment",
    (
    ) =>
      Icons.comment
);
var _icons_compare = MXFunctionInvoke(
  "Icons.compare",
    (
    ) =>
      Icons.compare
);
var _icons_comparearrows = MXFunctionInvoke(
  "Icons.comparearrows",
    (
    ) =>
      Icons.comparearrows
);
var _icons_computer = MXFunctionInvoke(
  "Icons.computer",
    (
    ) =>
      Icons.computer
);
var _icons_confirmationnumber = MXFunctionInvoke(
  "Icons.confirmationnumber",
    (
    ) =>
      Icons.confirmationnumber
);
var _icons_contactmail = MXFunctionInvoke(
  "Icons.contactmail",
    (
    ) =>
      Icons.contactmail
);
var _icons_contactphone = MXFunctionInvoke(
  "Icons.contactphone",
    (
    ) =>
      Icons.contactphone
);
var _icons_contacts = MXFunctionInvoke(
  "Icons.contacts",
    (
    ) =>
      Icons.contacts
);
var _icons_contentcopy = MXFunctionInvoke(
  "Icons.contentcopy",
    (
    ) =>
      Icons.contentcopy
);
var _icons_contentcut = MXFunctionInvoke(
  "Icons.contentcut",
    (
    ) =>
      Icons.contentcut
);
var _icons_contentpaste = MXFunctionInvoke(
  "Icons.contentpaste",
    (
    ) =>
      Icons.contentpaste
);
var _icons_controlpoint = MXFunctionInvoke(
  "Icons.controlpoint",
    (
    ) =>
      Icons.controlpoint
);
var _icons_controlpointduplicate = MXFunctionInvoke(
  "Icons.controlpointduplicate",
    (
    ) =>
      Icons.controlpointduplicate
);
var _icons_copyright = MXFunctionInvoke(
  "Icons.copyright",
    (
    ) =>
      Icons.copyright
);
var _icons_create = MXFunctionInvoke(
  "Icons.create",
    (
    ) =>
      Icons.create
);
var _icons_createnewfolder = MXFunctionInvoke(
  "Icons.createnewfolder",
    (
    ) =>
      Icons.createnewfolder
);
var _icons_creditcard = MXFunctionInvoke(
  "Icons.creditcard",
    (
    ) =>
      Icons.creditcard
);
var _icons_crop = MXFunctionInvoke(
  "Icons.crop",
    (
    ) =>
      Icons.crop
);
var _icons_crop169 = MXFunctionInvoke(
  "Icons.crop169",
    (
    ) =>
      Icons.crop169
);
var _icons_crop32 = MXFunctionInvoke(
  "Icons.crop32",
    (
    ) =>
      Icons.crop32
);
var _icons_crop54 = MXFunctionInvoke(
  "Icons.crop54",
    (
    ) =>
      Icons.crop54
);
var _icons_crop75 = MXFunctionInvoke(
  "Icons.crop75",
    (
    ) =>
      Icons.crop75
);
var _icons_cropdin = MXFunctionInvoke(
  "Icons.cropdin",
    (
    ) =>
      Icons.cropdin
);
var _icons_cropfree = MXFunctionInvoke(
  "Icons.cropfree",
    (
    ) =>
      Icons.cropfree
);
var _icons_croplandscape = MXFunctionInvoke(
  "Icons.croplandscape",
    (
    ) =>
      Icons.croplandscape
);
var _icons_croporiginal = MXFunctionInvoke(
  "Icons.croporiginal",
    (
    ) =>
      Icons.croporiginal
);
var _icons_cropportrait = MXFunctionInvoke(
  "Icons.cropportrait",
    (
    ) =>
      Icons.cropportrait
);
var _icons_croprotate = MXFunctionInvoke(
  "Icons.croprotate",
    (
    ) =>
      Icons.croprotate
);
var _icons_cropsquare = MXFunctionInvoke(
  "Icons.cropsquare",
    (
    ) =>
      Icons.cropsquare
);
var _icons_dashboard = MXFunctionInvoke(
  "Icons.dashboard",
    (
    ) =>
      Icons.dashboard
);
var _icons_datausage = MXFunctionInvoke(
  "Icons.datausage",
    (
    ) =>
      Icons.datausage
);
var _icons_daterange = MXFunctionInvoke(
  "Icons.daterange",
    (
    ) =>
      Icons.daterange
);
var _icons_dehaze = MXFunctionInvoke(
  "Icons.dehaze",
    (
    ) =>
      Icons.dehaze
);
var _icons_delete = MXFunctionInvoke(
  "Icons.delete",
    (
    ) =>
      Icons.delete
);
var _icons_deleteforever = MXFunctionInvoke(
  "Icons.deleteforever",
    (
    ) =>
      Icons.deleteforever
);
var _icons_deleteoutline = MXFunctionInvoke(
  "Icons.deleteoutline",
    (
    ) =>
      Icons.deleteoutline
);
var _icons_deletesweep = MXFunctionInvoke(
  "Icons.deletesweep",
    (
    ) =>
      Icons.deletesweep
);
var _icons_departureboard = MXFunctionInvoke(
  "Icons.departureboard",
    (
    ) =>
      Icons.departureboard
);
var _icons_description = MXFunctionInvoke(
  "Icons.description",
    (
    ) =>
      Icons.description
);
var _icons_desktopmac = MXFunctionInvoke(
  "Icons.desktopmac",
    (
    ) =>
      Icons.desktopmac
);
var _icons_desktopwindows = MXFunctionInvoke(
  "Icons.desktopwindows",
    (
    ) =>
      Icons.desktopwindows
);
var _icons_details = MXFunctionInvoke(
  "Icons.details",
    (
    ) =>
      Icons.details
);
var _icons_developerboard = MXFunctionInvoke(
  "Icons.developerboard",
    (
    ) =>
      Icons.developerboard
);
var _icons_developermode = MXFunctionInvoke(
  "Icons.developermode",
    (
    ) =>
      Icons.developermode
);
var _icons_devicehub = MXFunctionInvoke(
  "Icons.devicehub",
    (
    ) =>
      Icons.devicehub
);
var _icons_deviceunknown = MXFunctionInvoke(
  "Icons.deviceunknown",
    (
    ) =>
      Icons.deviceunknown
);
var _icons_devices = MXFunctionInvoke(
  "Icons.devices",
    (
    ) =>
      Icons.devices
);
var _icons_devicesother = MXFunctionInvoke(
  "Icons.devicesother",
    (
    ) =>
      Icons.devicesother
);
var _icons_dialersip = MXFunctionInvoke(
  "Icons.dialersip",
    (
    ) =>
      Icons.dialersip
);
var _icons_dialpad = MXFunctionInvoke(
  "Icons.dialpad",
    (
    ) =>
      Icons.dialpad
);
var _icons_directions = MXFunctionInvoke(
  "Icons.directions",
    (
    ) =>
      Icons.directions
);
var _icons_directionsbike = MXFunctionInvoke(
  "Icons.directionsbike",
    (
    ) =>
      Icons.directionsbike
);
var _icons_directionsboat = MXFunctionInvoke(
  "Icons.directionsboat",
    (
    ) =>
      Icons.directionsboat
);
var _icons_directionsbus = MXFunctionInvoke(
  "Icons.directionsbus",
    (
    ) =>
      Icons.directionsbus
);
var _icons_directionscar = MXFunctionInvoke(
  "Icons.directionscar",
    (
    ) =>
      Icons.directionscar
);
var _icons_directionsrailway = MXFunctionInvoke(
  "Icons.directionsrailway",
    (
    ) =>
      Icons.directionsrailway
);
var _icons_directionsrun = MXFunctionInvoke(
  "Icons.directionsrun",
    (
    ) =>
      Icons.directionsrun
);
var _icons_directionssubway = MXFunctionInvoke(
  "Icons.directionssubway",
    (
    ) =>
      Icons.directionssubway
);
var _icons_directionstransit = MXFunctionInvoke(
  "Icons.directionstransit",
    (
    ) =>
      Icons.directionstransit
);
var _icons_directionswalk = MXFunctionInvoke(
  "Icons.directionswalk",
    (
    ) =>
      Icons.directionswalk
);
var _icons_discfull = MXFunctionInvoke(
  "Icons.discfull",
    (
    ) =>
      Icons.discfull
);
var _icons_dns = MXFunctionInvoke(
  "Icons.dns",
    (
    ) =>
      Icons.dns
);
var _icons_donotdisturb = MXFunctionInvoke(
  "Icons.donotdisturb",
    (
    ) =>
      Icons.donotdisturb
);
var _icons_donotdisturbalt = MXFunctionInvoke(
  "Icons.donotdisturbalt",
    (
    ) =>
      Icons.donotdisturbalt
);
var _icons_donotdisturboff = MXFunctionInvoke(
  "Icons.donotdisturboff",
    (
    ) =>
      Icons.donotdisturboff
);
var _icons_donotdisturbon = MXFunctionInvoke(
  "Icons.donotdisturbon",
    (
    ) =>
      Icons.donotdisturbon
);
var _icons_dock = MXFunctionInvoke(
  "Icons.dock",
    (
    ) =>
      Icons.dock
);
var _icons_domain = MXFunctionInvoke(
  "Icons.domain",
    (
    ) =>
      Icons.domain
);
var _icons_done = MXFunctionInvoke(
  "Icons.done",
    (
    ) =>
      Icons.done
);
var _icons_doneall = MXFunctionInvoke(
  "Icons.doneall",
    (
    ) =>
      Icons.doneall
);
var _icons_doneoutline = MXFunctionInvoke(
  "Icons.doneoutline",
    (
    ) =>
      Icons.doneoutline
);
var _icons_donutlarge = MXFunctionInvoke(
  "Icons.donutlarge",
    (
    ) =>
      Icons.donutlarge
);
var _icons_donutsmall = MXFunctionInvoke(
  "Icons.donutsmall",
    (
    ) =>
      Icons.donutsmall
);
var _icons_drafts = MXFunctionInvoke(
  "Icons.drafts",
    (
    ) =>
      Icons.drafts
);
var _icons_draghandle = MXFunctionInvoke(
  "Icons.draghandle",
    (
    ) =>
      Icons.draghandle
);
var _icons_driveeta = MXFunctionInvoke(
  "Icons.driveeta",
    (
    ) =>
      Icons.driveeta
);
var _icons_dvr = MXFunctionInvoke(
  "Icons.dvr",
    (
    ) =>
      Icons.dvr
);
var _icons_edit = MXFunctionInvoke(
  "Icons.edit",
    (
    ) =>
      Icons.edit
);
var _icons_editattributes = MXFunctionInvoke(
  "Icons.editattributes",
    (
    ) =>
      Icons.editattributes
);
var _icons_editlocation = MXFunctionInvoke(
  "Icons.editlocation",
    (
    ) =>
      Icons.editlocation
);
var _icons_eject = MXFunctionInvoke(
  "Icons.eject",
    (
    ) =>
      Icons.eject
);
var _icons_email = MXFunctionInvoke(
  "Icons.email",
    (
    ) =>
      Icons.email
);
var _icons_enhancedencryption = MXFunctionInvoke(
  "Icons.enhancedencryption",
    (
    ) =>
      Icons.enhancedencryption
);
var _icons_equalizer = MXFunctionInvoke(
  "Icons.equalizer",
    (
    ) =>
      Icons.equalizer
);
var _icons_error = MXFunctionInvoke(
  "Icons.error",
    (
    ) =>
      Icons.error
);
var _icons_erroroutline = MXFunctionInvoke(
  "Icons.erroroutline",
    (
    ) =>
      Icons.erroroutline
);
var _icons_eurosymbol = MXFunctionInvoke(
  "Icons.eurosymbol",
    (
    ) =>
      Icons.eurosymbol
);
var _icons_evstation = MXFunctionInvoke(
  "Icons.evstation",
    (
    ) =>
      Icons.evstation
);
var _icons_event = MXFunctionInvoke(
  "Icons.event",
    (
    ) =>
      Icons.event
);
var _icons_eventavailable = MXFunctionInvoke(
  "Icons.eventavailable",
    (
    ) =>
      Icons.eventavailable
);
var _icons_eventbusy = MXFunctionInvoke(
  "Icons.eventbusy",
    (
    ) =>
      Icons.eventbusy
);
var _icons_eventnote = MXFunctionInvoke(
  "Icons.eventnote",
    (
    ) =>
      Icons.eventnote
);
var _icons_eventseat = MXFunctionInvoke(
  "Icons.eventseat",
    (
    ) =>
      Icons.eventseat
);
var _icons_exittoapp = MXFunctionInvoke(
  "Icons.exittoapp",
    (
    ) =>
      Icons.exittoapp
);
var _icons_expandless = MXFunctionInvoke(
  "Icons.expandless",
    (
    ) =>
      Icons.expandless
);
var _icons_expandmore = MXFunctionInvoke(
  "Icons.expandmore",
    (
    ) =>
      Icons.expandmore
);
var _icons_explicit = MXFunctionInvoke(
  "Icons.explicit",
    (
    ) =>
      Icons.explicit
);
var _icons_explore = MXFunctionInvoke(
  "Icons.explore",
    (
    ) =>
      Icons.explore
);
var _icons_exposure = MXFunctionInvoke(
  "Icons.exposure",
    (
    ) =>
      Icons.exposure
);
var _icons_exposureneg1 = MXFunctionInvoke(
  "Icons.exposureneg1",
    (
    ) =>
      Icons.exposureneg1
);
var _icons_exposureneg2 = MXFunctionInvoke(
  "Icons.exposureneg2",
    (
    ) =>
      Icons.exposureneg2
);
var _icons_exposureplus1 = MXFunctionInvoke(
  "Icons.exposureplus1",
    (
    ) =>
      Icons.exposureplus1
);
var _icons_exposureplus2 = MXFunctionInvoke(
  "Icons.exposureplus2",
    (
    ) =>
      Icons.exposureplus2
);
var _icons_exposurezero = MXFunctionInvoke(
  "Icons.exposurezero",
    (
    ) =>
      Icons.exposurezero
);
var _icons_extension = MXFunctionInvoke(
  "Icons.extension",
    (
    ) =>
      Icons.extension
);
var _icons_face = MXFunctionInvoke(
  "Icons.face",
    (
    ) =>
      Icons.face
);
var _icons_fastforward = MXFunctionInvoke(
  "Icons.fastforward",
    (
    ) =>
      Icons.fastforward
);
var _icons_fastrewind = MXFunctionInvoke(
  "Icons.fastrewind",
    (
    ) =>
      Icons.fastrewind
);
var _icons_fastfood = MXFunctionInvoke(
  "Icons.fastfood",
    (
    ) =>
      Icons.fastfood
);
var _icons_favorite = MXFunctionInvoke(
  "Icons.favorite",
    (
    ) =>
      Icons.favorite
);
var _icons_favoriteborder = MXFunctionInvoke(
  "Icons.favoriteborder",
    (
    ) =>
      Icons.favoriteborder
);
var _icons_featuredplaylist = MXFunctionInvoke(
  "Icons.featuredplaylist",
    (
    ) =>
      Icons.featuredplaylist
);
var _icons_featuredvideo = MXFunctionInvoke(
  "Icons.featuredvideo",
    (
    ) =>
      Icons.featuredvideo
);
var _icons_feedback = MXFunctionInvoke(
  "Icons.feedback",
    (
    ) =>
      Icons.feedback
);
var _icons_fiberdvr = MXFunctionInvoke(
  "Icons.fiberdvr",
    (
    ) =>
      Icons.fiberdvr
);
var _icons_fibermanualrecord = MXFunctionInvoke(
  "Icons.fibermanualrecord",
    (
    ) =>
      Icons.fibermanualrecord
);
var _icons_fibernew = MXFunctionInvoke(
  "Icons.fibernew",
    (
    ) =>
      Icons.fibernew
);
var _icons_fiberpin = MXFunctionInvoke(
  "Icons.fiberpin",
    (
    ) =>
      Icons.fiberpin
);
var _icons_fibersmartrecord = MXFunctionInvoke(
  "Icons.fibersmartrecord",
    (
    ) =>
      Icons.fibersmartrecord
);
var _icons_filedownload = MXFunctionInvoke(
  "Icons.filedownload",
    (
    ) =>
      Icons.filedownload
);
var _icons_fileupload = MXFunctionInvoke(
  "Icons.fileupload",
    (
    ) =>
      Icons.fileupload
);
var _icons_filter = MXFunctionInvoke(
  "Icons.filter",
    (
    ) =>
      Icons.filter
);
var _icons_filter1 = MXFunctionInvoke(
  "Icons.filter1",
    (
    ) =>
      Icons.filter1
);
var _icons_filter2 = MXFunctionInvoke(
  "Icons.filter2",
    (
    ) =>
      Icons.filter2
);
var _icons_filter3 = MXFunctionInvoke(
  "Icons.filter3",
    (
    ) =>
      Icons.filter3
);
var _icons_filter4 = MXFunctionInvoke(
  "Icons.filter4",
    (
    ) =>
      Icons.filter4
);
var _icons_filter5 = MXFunctionInvoke(
  "Icons.filter5",
    (
    ) =>
      Icons.filter5
);
var _icons_filter6 = MXFunctionInvoke(
  "Icons.filter6",
    (
    ) =>
      Icons.filter6
);
var _icons_filter7 = MXFunctionInvoke(
  "Icons.filter7",
    (
    ) =>
      Icons.filter7
);
var _icons_filter8 = MXFunctionInvoke(
  "Icons.filter8",
    (
    ) =>
      Icons.filter8
);
var _icons_filter9 = MXFunctionInvoke(
  "Icons.filter9",
    (
    ) =>
      Icons.filter9
);
var _icons_filter9plus = MXFunctionInvoke(
  "Icons.filter9plus",
    (
    ) =>
      Icons.filter9plus
);
var _icons_filterbandw = MXFunctionInvoke(
  "Icons.filterbandw",
    (
    ) =>
      Icons.filterbandw
);
var _icons_filtercenterfocus = MXFunctionInvoke(
  "Icons.filtercenterfocus",
    (
    ) =>
      Icons.filtercenterfocus
);
var _icons_filterdrama = MXFunctionInvoke(
  "Icons.filterdrama",
    (
    ) =>
      Icons.filterdrama
);
var _icons_filterframes = MXFunctionInvoke(
  "Icons.filterframes",
    (
    ) =>
      Icons.filterframes
);
var _icons_filterhdr = MXFunctionInvoke(
  "Icons.filterhdr",
    (
    ) =>
      Icons.filterhdr
);
var _icons_filterlist = MXFunctionInvoke(
  "Icons.filterlist",
    (
    ) =>
      Icons.filterlist
);
var _icons_filternone = MXFunctionInvoke(
  "Icons.filternone",
    (
    ) =>
      Icons.filternone
);
var _icons_filtertiltshift = MXFunctionInvoke(
  "Icons.filtertiltshift",
    (
    ) =>
      Icons.filtertiltshift
);
var _icons_filtervintage = MXFunctionInvoke(
  "Icons.filtervintage",
    (
    ) =>
      Icons.filtervintage
);
var _icons_findinpage = MXFunctionInvoke(
  "Icons.findinpage",
    (
    ) =>
      Icons.findinpage
);
var _icons_findreplace = MXFunctionInvoke(
  "Icons.findreplace",
    (
    ) =>
      Icons.findreplace
);
var _icons_fingerprint = MXFunctionInvoke(
  "Icons.fingerprint",
    (
    ) =>
      Icons.fingerprint
);
var _icons_firstpage = MXFunctionInvoke(
  "Icons.firstpage",
    (
    ) =>
      Icons.firstpage
);
var _icons_fitnesscenter = MXFunctionInvoke(
  "Icons.fitnesscenter",
    (
    ) =>
      Icons.fitnesscenter
);
var _icons_flag = MXFunctionInvoke(
  "Icons.flag",
    (
    ) =>
      Icons.flag
);
var _icons_flare = MXFunctionInvoke(
  "Icons.flare",
    (
    ) =>
      Icons.flare
);
var _icons_flashauto = MXFunctionInvoke(
  "Icons.flashauto",
    (
    ) =>
      Icons.flashauto
);
var _icons_flashoff = MXFunctionInvoke(
  "Icons.flashoff",
    (
    ) =>
      Icons.flashoff
);
var _icons_flashon = MXFunctionInvoke(
  "Icons.flashon",
    (
    ) =>
      Icons.flashon
);
var _icons_flight = MXFunctionInvoke(
  "Icons.flight",
    (
    ) =>
      Icons.flight
);
var _icons_flightland = MXFunctionInvoke(
  "Icons.flightland",
    (
    ) =>
      Icons.flightland
);
var _icons_flighttakeoff = MXFunctionInvoke(
  "Icons.flighttakeoff",
    (
    ) =>
      Icons.flighttakeoff
);
var _icons_flip = MXFunctionInvoke(
  "Icons.flip",
    (
    ) =>
      Icons.flip
);
var _icons_fliptoback = MXFunctionInvoke(
  "Icons.fliptoback",
    (
    ) =>
      Icons.fliptoback
);
var _icons_fliptofront = MXFunctionInvoke(
  "Icons.fliptofront",
    (
    ) =>
      Icons.fliptofront
);
var _icons_folder = MXFunctionInvoke(
  "Icons.folder",
    (
    ) =>
      Icons.folder
);
var _icons_folderopen = MXFunctionInvoke(
  "Icons.folderopen",
    (
    ) =>
      Icons.folderopen
);
var _icons_foldershared = MXFunctionInvoke(
  "Icons.foldershared",
    (
    ) =>
      Icons.foldershared
);
var _icons_folderspecial = MXFunctionInvoke(
  "Icons.folderspecial",
    (
    ) =>
      Icons.folderspecial
);
var _icons_fontdownload = MXFunctionInvoke(
  "Icons.fontdownload",
    (
    ) =>
      Icons.fontdownload
);
var _icons_formataligncenter = MXFunctionInvoke(
  "Icons.formataligncenter",
    (
    ) =>
      Icons.formataligncenter
);
var _icons_formatalignjustify = MXFunctionInvoke(
  "Icons.formatalignjustify",
    (
    ) =>
      Icons.formatalignjustify
);
var _icons_formatalignleft = MXFunctionInvoke(
  "Icons.formatalignleft",
    (
    ) =>
      Icons.formatalignleft
);
var _icons_formatalignright = MXFunctionInvoke(
  "Icons.formatalignright",
    (
    ) =>
      Icons.formatalignright
);
var _icons_formatbold = MXFunctionInvoke(
  "Icons.formatbold",
    (
    ) =>
      Icons.formatbold
);
var _icons_formatclear = MXFunctionInvoke(
  "Icons.formatclear",
    (
    ) =>
      Icons.formatclear
);
var _icons_formatcolorfill = MXFunctionInvoke(
  "Icons.formatcolorfill",
    (
    ) =>
      Icons.formatcolorfill
);
var _icons_formatcolorreset = MXFunctionInvoke(
  "Icons.formatcolorreset",
    (
    ) =>
      Icons.formatcolorreset
);
var _icons_formatcolortext = MXFunctionInvoke(
  "Icons.formatcolortext",
    (
    ) =>
      Icons.formatcolortext
);
var _icons_formatindentdecrease = MXFunctionInvoke(
  "Icons.formatindentdecrease",
    (
    ) =>
      Icons.formatindentdecrease
);
var _icons_formatindentincrease = MXFunctionInvoke(
  "Icons.formatindentincrease",
    (
    ) =>
      Icons.formatindentincrease
);
var _icons_formatitalic = MXFunctionInvoke(
  "Icons.formatitalic",
    (
    ) =>
      Icons.formatitalic
);
var _icons_formatlinespacing = MXFunctionInvoke(
  "Icons.formatlinespacing",
    (
    ) =>
      Icons.formatlinespacing
);
var _icons_formatlistbulleted = MXFunctionInvoke(
  "Icons.formatlistbulleted",
    (
    ) =>
      Icons.formatlistbulleted
);
var _icons_formatlistnumbered = MXFunctionInvoke(
  "Icons.formatlistnumbered",
    (
    ) =>
      Icons.formatlistnumbered
);
var _icons_formatlistnumberedrtl = MXFunctionInvoke(
  "Icons.formatlistnumberedrtl",
    (
    ) =>
      Icons.formatlistnumberedrtl
);
var _icons_formatpaint = MXFunctionInvoke(
  "Icons.formatpaint",
    (
    ) =>
      Icons.formatpaint
);
var _icons_formatquote = MXFunctionInvoke(
  "Icons.formatquote",
    (
    ) =>
      Icons.formatquote
);
var _icons_formatshapes = MXFunctionInvoke(
  "Icons.formatshapes",
    (
    ) =>
      Icons.formatshapes
);
var _icons_formatsize = MXFunctionInvoke(
  "Icons.formatsize",
    (
    ) =>
      Icons.formatsize
);
var _icons_formatstrikethrough = MXFunctionInvoke(
  "Icons.formatstrikethrough",
    (
    ) =>
      Icons.formatstrikethrough
);
var _icons_formattextdirectionltor = MXFunctionInvoke(
  "Icons.formattextdirectionltor",
    (
    ) =>
      Icons.formattextdirectionltor
);
var _icons_formattextdirectionrtol = MXFunctionInvoke(
  "Icons.formattextdirectionrtol",
    (
    ) =>
      Icons.formattextdirectionrtol
);
var _icons_formatunderlined = MXFunctionInvoke(
  "Icons.formatunderlined",
    (
    ) =>
      Icons.formatunderlined
);
var _icons_forum = MXFunctionInvoke(
  "Icons.forum",
    (
    ) =>
      Icons.forum
);
var _icons_forward = MXFunctionInvoke(
  "Icons.forward",
    (
    ) =>
      Icons.forward
);
var _icons_forward10 = MXFunctionInvoke(
  "Icons.forward10",
    (
    ) =>
      Icons.forward10
);
var _icons_forward30 = MXFunctionInvoke(
  "Icons.forward30",
    (
    ) =>
      Icons.forward30
);
var _icons_forward5 = MXFunctionInvoke(
  "Icons.forward5",
    (
    ) =>
      Icons.forward5
);
var _icons_freebreakfast = MXFunctionInvoke(
  "Icons.freebreakfast",
    (
    ) =>
      Icons.freebreakfast
);
var _icons_fullscreen = MXFunctionInvoke(
  "Icons.fullscreen",
    (
    ) =>
      Icons.fullscreen
);
var _icons_fullscreenexit = MXFunctionInvoke(
  "Icons.fullscreenexit",
    (
    ) =>
      Icons.fullscreenexit
);
var _icons_functions = MXFunctionInvoke(
  "Icons.functions",
    (
    ) =>
      Icons.functions
);
var _icons_gtranslate = MXFunctionInvoke(
  "Icons.gtranslate",
    (
    ) =>
      Icons.gtranslate
);
var _icons_gamepad = MXFunctionInvoke(
  "Icons.gamepad",
    (
    ) =>
      Icons.gamepad
);
var _icons_games = MXFunctionInvoke(
  "Icons.games",
    (
    ) =>
      Icons.games
);
var _icons_gavel = MXFunctionInvoke(
  "Icons.gavel",
    (
    ) =>
      Icons.gavel
);
var _icons_gesture = MXFunctionInvoke(
  "Icons.gesture",
    (
    ) =>
      Icons.gesture
);
var _icons_getapp = MXFunctionInvoke(
  "Icons.getapp",
    (
    ) =>
      Icons.getapp
);
var _icons_gif = MXFunctionInvoke(
  "Icons.gif",
    (
    ) =>
      Icons.gif
);
var _icons_golfcourse = MXFunctionInvoke(
  "Icons.golfcourse",
    (
    ) =>
      Icons.golfcourse
);
var _icons_gpsfixed = MXFunctionInvoke(
  "Icons.gpsfixed",
    (
    ) =>
      Icons.gpsfixed
);
var _icons_gpsnotfixed = MXFunctionInvoke(
  "Icons.gpsnotfixed",
    (
    ) =>
      Icons.gpsnotfixed
);
var _icons_gpsoff = MXFunctionInvoke(
  "Icons.gpsoff",
    (
    ) =>
      Icons.gpsoff
);
var _icons_grade = MXFunctionInvoke(
  "Icons.grade",
    (
    ) =>
      Icons.grade
);
var _icons_gradient = MXFunctionInvoke(
  "Icons.gradient",
    (
    ) =>
      Icons.gradient
);
var _icons_grain = MXFunctionInvoke(
  "Icons.grain",
    (
    ) =>
      Icons.grain
);
var _icons_graphiceq = MXFunctionInvoke(
  "Icons.graphiceq",
    (
    ) =>
      Icons.graphiceq
);
var _icons_gridoff = MXFunctionInvoke(
  "Icons.gridoff",
    (
    ) =>
      Icons.gridoff
);
var _icons_gridon = MXFunctionInvoke(
  "Icons.gridon",
    (
    ) =>
      Icons.gridon
);
var _icons_group = MXFunctionInvoke(
  "Icons.group",
    (
    ) =>
      Icons.group
);
var _icons_groupadd = MXFunctionInvoke(
  "Icons.groupadd",
    (
    ) =>
      Icons.groupadd
);
var _icons_groupwork = MXFunctionInvoke(
  "Icons.groupwork",
    (
    ) =>
      Icons.groupwork
);
var _icons_hd = MXFunctionInvoke(
  "Icons.hd",
    (
    ) =>
      Icons.hd
);
var _icons_hdroff = MXFunctionInvoke(
  "Icons.hdroff",
    (
    ) =>
      Icons.hdroff
);
var _icons_hdron = MXFunctionInvoke(
  "Icons.hdron",
    (
    ) =>
      Icons.hdron
);
var _icons_hdrstrong = MXFunctionInvoke(
  "Icons.hdrstrong",
    (
    ) =>
      Icons.hdrstrong
);
var _icons_hdrweak = MXFunctionInvoke(
  "Icons.hdrweak",
    (
    ) =>
      Icons.hdrweak
);
var _icons_headset = MXFunctionInvoke(
  "Icons.headset",
    (
    ) =>
      Icons.headset
);
var _icons_headsetmic = MXFunctionInvoke(
  "Icons.headsetmic",
    (
    ) =>
      Icons.headsetmic
);
var _icons_headsetoff = MXFunctionInvoke(
  "Icons.headsetoff",
    (
    ) =>
      Icons.headsetoff
);
var _icons_healing = MXFunctionInvoke(
  "Icons.healing",
    (
    ) =>
      Icons.healing
);
var _icons_hearing = MXFunctionInvoke(
  "Icons.hearing",
    (
    ) =>
      Icons.hearing
);
var _icons_help = MXFunctionInvoke(
  "Icons.help",
    (
    ) =>
      Icons.help
);
var _icons_helpoutline = MXFunctionInvoke(
  "Icons.helpoutline",
    (
    ) =>
      Icons.helpoutline
);
var _icons_highquality = MXFunctionInvoke(
  "Icons.highquality",
    (
    ) =>
      Icons.highquality
);
var _icons_highlight = MXFunctionInvoke(
  "Icons.highlight",
    (
    ) =>
      Icons.highlight
);
var _icons_highlightoff = MXFunctionInvoke(
  "Icons.highlightoff",
    (
    ) =>
      Icons.highlightoff
);
var _icons_history = MXFunctionInvoke(
  "Icons.history",
    (
    ) =>
      Icons.history
);
var _icons_home = MXFunctionInvoke(
  "Icons.home",
    (
    ) =>
      Icons.home
);
var _icons_hottub = MXFunctionInvoke(
  "Icons.hottub",
    (
    ) =>
      Icons.hottub
);
var _icons_hotel = MXFunctionInvoke(
  "Icons.hotel",
    (
    ) =>
      Icons.hotel
);
var _icons_hourglassempty = MXFunctionInvoke(
  "Icons.hourglassempty",
    (
    ) =>
      Icons.hourglassempty
);
var _icons_hourglassfull = MXFunctionInvoke(
  "Icons.hourglassfull",
    (
    ) =>
      Icons.hourglassfull
);
var _icons_http = MXFunctionInvoke(
  "Icons.http",
    (
    ) =>
      Icons.http
);
var _icons_https = MXFunctionInvoke(
  "Icons.https",
    (
    ) =>
      Icons.https
);
var _icons_image = MXFunctionInvoke(
  "Icons.image",
    (
    ) =>
      Icons.image
);
var _icons_imageaspectratio = MXFunctionInvoke(
  "Icons.imageaspectratio",
    (
    ) =>
      Icons.imageaspectratio
);
var _icons_importcontacts = MXFunctionInvoke(
  "Icons.importcontacts",
    (
    ) =>
      Icons.importcontacts
);
var _icons_importexport = MXFunctionInvoke(
  "Icons.importexport",
    (
    ) =>
      Icons.importexport
);
var _icons_importantdevices = MXFunctionInvoke(
  "Icons.importantdevices",
    (
    ) =>
      Icons.importantdevices
);
var _icons_inbox = MXFunctionInvoke(
  "Icons.inbox",
    (
    ) =>
      Icons.inbox
);
var _icons_indeterminatecheckbox = MXFunctionInvoke(
  "Icons.indeterminatecheckbox",
    (
    ) =>
      Icons.indeterminatecheckbox
);
var _icons_info = MXFunctionInvoke(
  "Icons.info",
    (
    ) =>
      Icons.info
);
var _icons_infooutline = MXFunctionInvoke(
  "Icons.infooutline",
    (
    ) =>
      Icons.infooutline
);
var _icons_input = MXFunctionInvoke(
  "Icons.input",
    (
    ) =>
      Icons.input
);
var _icons_insertchart = MXFunctionInvoke(
  "Icons.insertchart",
    (
    ) =>
      Icons.insertchart
);
var _icons_insertcomment = MXFunctionInvoke(
  "Icons.insertcomment",
    (
    ) =>
      Icons.insertcomment
);
var _icons_insertdrivefile = MXFunctionInvoke(
  "Icons.insertdrivefile",
    (
    ) =>
      Icons.insertdrivefile
);
var _icons_insertemoticon = MXFunctionInvoke(
  "Icons.insertemoticon",
    (
    ) =>
      Icons.insertemoticon
);
var _icons_insertinvitation = MXFunctionInvoke(
  "Icons.insertinvitation",
    (
    ) =>
      Icons.insertinvitation
);
var _icons_insertlink = MXFunctionInvoke(
  "Icons.insertlink",
    (
    ) =>
      Icons.insertlink
);
var _icons_insertphoto = MXFunctionInvoke(
  "Icons.insertphoto",
    (
    ) =>
      Icons.insertphoto
);
var _icons_invertcolors = MXFunctionInvoke(
  "Icons.invertcolors",
    (
    ) =>
      Icons.invertcolors
);
var _icons_invertcolorsoff = MXFunctionInvoke(
  "Icons.invertcolorsoff",
    (
    ) =>
      Icons.invertcolorsoff
);
var _icons_iso = MXFunctionInvoke(
  "Icons.iso",
    (
    ) =>
      Icons.iso
);
var _icons_keyboard = MXFunctionInvoke(
  "Icons.keyboard",
    (
    ) =>
      Icons.keyboard
);
var _icons_keyboardarrowdown = MXFunctionInvoke(
  "Icons.keyboardarrowdown",
    (
    ) =>
      Icons.keyboardarrowdown
);
var _icons_keyboardarrowleft = MXFunctionInvoke(
  "Icons.keyboardarrowleft",
    (
    ) =>
      Icons.keyboardarrowleft
);
var _icons_keyboardarrowright = MXFunctionInvoke(
  "Icons.keyboardarrowright",
    (
    ) =>
      Icons.keyboardarrowright
);
var _icons_keyboardarrowup = MXFunctionInvoke(
  "Icons.keyboardarrowup",
    (
    ) =>
      Icons.keyboardarrowup
);
var _icons_keyboardbackspace = MXFunctionInvoke(
  "Icons.keyboardbackspace",
    (
    ) =>
      Icons.keyboardbackspace
);
var _icons_keyboardcapslock = MXFunctionInvoke(
  "Icons.keyboardcapslock",
    (
    ) =>
      Icons.keyboardcapslock
);
var _icons_keyboardhide = MXFunctionInvoke(
  "Icons.keyboardhide",
    (
    ) =>
      Icons.keyboardhide
);
var _icons_keyboardreturn = MXFunctionInvoke(
  "Icons.keyboardreturn",
    (
    ) =>
      Icons.keyboardreturn
);
var _icons_keyboardtab = MXFunctionInvoke(
  "Icons.keyboardtab",
    (
    ) =>
      Icons.keyboardtab
);
var _icons_keyboardvoice = MXFunctionInvoke(
  "Icons.keyboardvoice",
    (
    ) =>
      Icons.keyboardvoice
);
var _icons_kitchen = MXFunctionInvoke(
  "Icons.kitchen",
    (
    ) =>
      Icons.kitchen
);
var _icons_label = MXFunctionInvoke(
  "Icons.label",
    (
    ) =>
      Icons.label
);
var _icons_labelimportant = MXFunctionInvoke(
  "Icons.labelimportant",
    (
    ) =>
      Icons.labelimportant
);
var _icons_labeloutline = MXFunctionInvoke(
  "Icons.labeloutline",
    (
    ) =>
      Icons.labeloutline
);
var _icons_landscape = MXFunctionInvoke(
  "Icons.landscape",
    (
    ) =>
      Icons.landscape
);
var _icons_language = MXFunctionInvoke(
  "Icons.language",
    (
    ) =>
      Icons.language
);
var _icons_laptop = MXFunctionInvoke(
  "Icons.laptop",
    (
    ) =>
      Icons.laptop
);
var _icons_laptopchromebook = MXFunctionInvoke(
  "Icons.laptopchromebook",
    (
    ) =>
      Icons.laptopchromebook
);
var _icons_laptopmac = MXFunctionInvoke(
  "Icons.laptopmac",
    (
    ) =>
      Icons.laptopmac
);
var _icons_laptopwindows = MXFunctionInvoke(
  "Icons.laptopwindows",
    (
    ) =>
      Icons.laptopwindows
);
var _icons_lastpage = MXFunctionInvoke(
  "Icons.lastpage",
    (
    ) =>
      Icons.lastpage
);
var _icons_launch = MXFunctionInvoke(
  "Icons.launch",
    (
    ) =>
      Icons.launch
);
var _icons_layers = MXFunctionInvoke(
  "Icons.layers",
    (
    ) =>
      Icons.layers
);
var _icons_layersclear = MXFunctionInvoke(
  "Icons.layersclear",
    (
    ) =>
      Icons.layersclear
);
var _icons_leakadd = MXFunctionInvoke(
  "Icons.leakadd",
    (
    ) =>
      Icons.leakadd
);
var _icons_leakremove = MXFunctionInvoke(
  "Icons.leakremove",
    (
    ) =>
      Icons.leakremove
);
var _icons_lens = MXFunctionInvoke(
  "Icons.lens",
    (
    ) =>
      Icons.lens
);
var _icons_libraryadd = MXFunctionInvoke(
  "Icons.libraryadd",
    (
    ) =>
      Icons.libraryadd
);
var _icons_librarybooks = MXFunctionInvoke(
  "Icons.librarybooks",
    (
    ) =>
      Icons.librarybooks
);
var _icons_librarymusic = MXFunctionInvoke(
  "Icons.librarymusic",
    (
    ) =>
      Icons.librarymusic
);
var _icons_lightbulboutline = MXFunctionInvoke(
  "Icons.lightbulboutline",
    (
    ) =>
      Icons.lightbulboutline
);
var _icons_linestyle = MXFunctionInvoke(
  "Icons.linestyle",
    (
    ) =>
      Icons.linestyle
);
var _icons_lineweight = MXFunctionInvoke(
  "Icons.lineweight",
    (
    ) =>
      Icons.lineweight
);
var _icons_linearscale = MXFunctionInvoke(
  "Icons.linearscale",
    (
    ) =>
      Icons.linearscale
);
var _icons_link = MXFunctionInvoke(
  "Icons.link",
    (
    ) =>
      Icons.link
);
var _icons_linkoff = MXFunctionInvoke(
  "Icons.linkoff",
    (
    ) =>
      Icons.linkoff
);
var _icons_linkedcamera = MXFunctionInvoke(
  "Icons.linkedcamera",
    (
    ) =>
      Icons.linkedcamera
);
var _icons_list = MXFunctionInvoke(
  "Icons.list",
    (
    ) =>
      Icons.list
);
var _icons_livehelp = MXFunctionInvoke(
  "Icons.livehelp",
    (
    ) =>
      Icons.livehelp
);
var _icons_livetv = MXFunctionInvoke(
  "Icons.livetv",
    (
    ) =>
      Icons.livetv
);
var _icons_localactivity = MXFunctionInvoke(
  "Icons.localactivity",
    (
    ) =>
      Icons.localactivity
);
var _icons_localairport = MXFunctionInvoke(
  "Icons.localairport",
    (
    ) =>
      Icons.localairport
);
var _icons_localatm = MXFunctionInvoke(
  "Icons.localatm",
    (
    ) =>
      Icons.localatm
);
var _icons_localbar = MXFunctionInvoke(
  "Icons.localbar",
    (
    ) =>
      Icons.localbar
);
var _icons_localcafe = MXFunctionInvoke(
  "Icons.localcafe",
    (
    ) =>
      Icons.localcafe
);
var _icons_localcarwash = MXFunctionInvoke(
  "Icons.localcarwash",
    (
    ) =>
      Icons.localcarwash
);
var _icons_localconveniencestore = MXFunctionInvoke(
  "Icons.localconveniencestore",
    (
    ) =>
      Icons.localconveniencestore
);
var _icons_localdining = MXFunctionInvoke(
  "Icons.localdining",
    (
    ) =>
      Icons.localdining
);
var _icons_localdrink = MXFunctionInvoke(
  "Icons.localdrink",
    (
    ) =>
      Icons.localdrink
);
var _icons_localflorist = MXFunctionInvoke(
  "Icons.localflorist",
    (
    ) =>
      Icons.localflorist
);
var _icons_localgasstation = MXFunctionInvoke(
  "Icons.localgasstation",
    (
    ) =>
      Icons.localgasstation
);
var _icons_localgrocerystore = MXFunctionInvoke(
  "Icons.localgrocerystore",
    (
    ) =>
      Icons.localgrocerystore
);
var _icons_localhospital = MXFunctionInvoke(
  "Icons.localhospital",
    (
    ) =>
      Icons.localhospital
);
var _icons_localhotel = MXFunctionInvoke(
  "Icons.localhotel",
    (
    ) =>
      Icons.localhotel
);
var _icons_locallaundryservice = MXFunctionInvoke(
  "Icons.locallaundryservice",
    (
    ) =>
      Icons.locallaundryservice
);
var _icons_locallibrary = MXFunctionInvoke(
  "Icons.locallibrary",
    (
    ) =>
      Icons.locallibrary
);
var _icons_localmall = MXFunctionInvoke(
  "Icons.localmall",
    (
    ) =>
      Icons.localmall
);
var _icons_localmovies = MXFunctionInvoke(
  "Icons.localmovies",
    (
    ) =>
      Icons.localmovies
);
var _icons_localoffer = MXFunctionInvoke(
  "Icons.localoffer",
    (
    ) =>
      Icons.localoffer
);
var _icons_localparking = MXFunctionInvoke(
  "Icons.localparking",
    (
    ) =>
      Icons.localparking
);
var _icons_localpharmacy = MXFunctionInvoke(
  "Icons.localpharmacy",
    (
    ) =>
      Icons.localpharmacy
);
var _icons_localphone = MXFunctionInvoke(
  "Icons.localphone",
    (
    ) =>
      Icons.localphone
);
var _icons_localpizza = MXFunctionInvoke(
  "Icons.localpizza",
    (
    ) =>
      Icons.localpizza
);
var _icons_localplay = MXFunctionInvoke(
  "Icons.localplay",
    (
    ) =>
      Icons.localplay
);
var _icons_localpostoffice = MXFunctionInvoke(
  "Icons.localpostoffice",
    (
    ) =>
      Icons.localpostoffice
);
var _icons_localprintshop = MXFunctionInvoke(
  "Icons.localprintshop",
    (
    ) =>
      Icons.localprintshop
);
var _icons_localsee = MXFunctionInvoke(
  "Icons.localsee",
    (
    ) =>
      Icons.localsee
);
var _icons_localshipping = MXFunctionInvoke(
  "Icons.localshipping",
    (
    ) =>
      Icons.localshipping
);
var _icons_localtaxi = MXFunctionInvoke(
  "Icons.localtaxi",
    (
    ) =>
      Icons.localtaxi
);
var _icons_locationcity = MXFunctionInvoke(
  "Icons.locationcity",
    (
    ) =>
      Icons.locationcity
);
var _icons_locationdisabled = MXFunctionInvoke(
  "Icons.locationdisabled",
    (
    ) =>
      Icons.locationdisabled
);
var _icons_locationoff = MXFunctionInvoke(
  "Icons.locationoff",
    (
    ) =>
      Icons.locationoff
);
var _icons_locationon = MXFunctionInvoke(
  "Icons.locationon",
    (
    ) =>
      Icons.locationon
);
var _icons_locationsearching = MXFunctionInvoke(
  "Icons.locationsearching",
    (
    ) =>
      Icons.locationsearching
);
var _icons_lock = MXFunctionInvoke(
  "Icons.lock",
    (
    ) =>
      Icons.lock
);
var _icons_lockopen = MXFunctionInvoke(
  "Icons.lockopen",
    (
    ) =>
      Icons.lockopen
);
var _icons_lockoutline = MXFunctionInvoke(
  "Icons.lockoutline",
    (
    ) =>
      Icons.lockoutline
);
var _icons_looks = MXFunctionInvoke(
  "Icons.looks",
    (
    ) =>
      Icons.looks
);
var _icons_looks3 = MXFunctionInvoke(
  "Icons.looks3",
    (
    ) =>
      Icons.looks3
);
var _icons_looks4 = MXFunctionInvoke(
  "Icons.looks4",
    (
    ) =>
      Icons.looks4
);
var _icons_looks5 = MXFunctionInvoke(
  "Icons.looks5",
    (
    ) =>
      Icons.looks5
);
var _icons_looks6 = MXFunctionInvoke(
  "Icons.looks6",
    (
    ) =>
      Icons.looks6
);
var _icons_looksone = MXFunctionInvoke(
  "Icons.looksone",
    (
    ) =>
      Icons.looksone
);
var _icons_lookstwo = MXFunctionInvoke(
  "Icons.lookstwo",
    (
    ) =>
      Icons.lookstwo
);
var _icons_loop = MXFunctionInvoke(
  "Icons.loop",
    (
    ) =>
      Icons.loop
);
var _icons_loupe = MXFunctionInvoke(
  "Icons.loupe",
    (
    ) =>
      Icons.loupe
);
var _icons_lowpriority = MXFunctionInvoke(
  "Icons.lowpriority",
    (
    ) =>
      Icons.lowpriority
);
var _icons_loyalty = MXFunctionInvoke(
  "Icons.loyalty",
    (
    ) =>
      Icons.loyalty
);
var _icons_mail = MXFunctionInvoke(
  "Icons.mail",
    (
    ) =>
      Icons.mail
);
var _icons_mailoutline = MXFunctionInvoke(
  "Icons.mailoutline",
    (
    ) =>
      Icons.mailoutline
);
var _icons_map = MXFunctionInvoke(
  "Icons.map",
    (
    ) =>
      Icons.map
);
var _icons_markunread = MXFunctionInvoke(
  "Icons.markunread",
    (
    ) =>
      Icons.markunread
);
var _icons_markunreadmailbox = MXFunctionInvoke(
  "Icons.markunreadmailbox",
    (
    ) =>
      Icons.markunreadmailbox
);
var _icons_maximize = MXFunctionInvoke(
  "Icons.maximize",
    (
    ) =>
      Icons.maximize
);
var _icons_memory = MXFunctionInvoke(
  "Icons.memory",
    (
    ) =>
      Icons.memory
);
var _icons_menu = MXFunctionInvoke(
  "Icons.menu",
    (
    ) =>
      Icons.menu
);
var _icons_mergetype = MXFunctionInvoke(
  "Icons.mergetype",
    (
    ) =>
      Icons.mergetype
);
var _icons_message = MXFunctionInvoke(
  "Icons.message",
    (
    ) =>
      Icons.message
);
var _icons_mic = MXFunctionInvoke(
  "Icons.mic",
    (
    ) =>
      Icons.mic
);
var _icons_micnone = MXFunctionInvoke(
  "Icons.micnone",
    (
    ) =>
      Icons.micnone
);
var _icons_micoff = MXFunctionInvoke(
  "Icons.micoff",
    (
    ) =>
      Icons.micoff
);
var _icons_minimize = MXFunctionInvoke(
  "Icons.minimize",
    (
    ) =>
      Icons.minimize
);
var _icons_missedvideocall = MXFunctionInvoke(
  "Icons.missedvideocall",
    (
    ) =>
      Icons.missedvideocall
);
var _icons_mms = MXFunctionInvoke(
  "Icons.mms",
    (
    ) =>
      Icons.mms
);
var _icons_mobilescreenshare = MXFunctionInvoke(
  "Icons.mobilescreenshare",
    (
    ) =>
      Icons.mobilescreenshare
);
var _icons_modecomment = MXFunctionInvoke(
  "Icons.modecomment",
    (
    ) =>
      Icons.modecomment
);
var _icons_modeedit = MXFunctionInvoke(
  "Icons.modeedit",
    (
    ) =>
      Icons.modeedit
);
var _icons_monetizationon = MXFunctionInvoke(
  "Icons.monetizationon",
    (
    ) =>
      Icons.monetizationon
);
var _icons_moneyoff = MXFunctionInvoke(
  "Icons.moneyoff",
    (
    ) =>
      Icons.moneyoff
);
var _icons_monochromephotos = MXFunctionInvoke(
  "Icons.monochromephotos",
    (
    ) =>
      Icons.monochromephotos
);
var _icons_mood = MXFunctionInvoke(
  "Icons.mood",
    (
    ) =>
      Icons.mood
);
var _icons_moodbad = MXFunctionInvoke(
  "Icons.moodbad",
    (
    ) =>
      Icons.moodbad
);
var _icons_more = MXFunctionInvoke(
  "Icons.more",
    (
    ) =>
      Icons.more
);
var _icons_morehoriz = MXFunctionInvoke(
  "Icons.morehoriz",
    (
    ) =>
      Icons.morehoriz
);
var _icons_morevert = MXFunctionInvoke(
  "Icons.morevert",
    (
    ) =>
      Icons.morevert
);
var _icons_motorcycle = MXFunctionInvoke(
  "Icons.motorcycle",
    (
    ) =>
      Icons.motorcycle
);
var _icons_mouse = MXFunctionInvoke(
  "Icons.mouse",
    (
    ) =>
      Icons.mouse
);
var _icons_movetoinbox = MXFunctionInvoke(
  "Icons.movetoinbox",
    (
    ) =>
      Icons.movetoinbox
);
var _icons_movie = MXFunctionInvoke(
  "Icons.movie",
    (
    ) =>
      Icons.movie
);
var _icons_moviecreation = MXFunctionInvoke(
  "Icons.moviecreation",
    (
    ) =>
      Icons.moviecreation
);
var _icons_moviefilter = MXFunctionInvoke(
  "Icons.moviefilter",
    (
    ) =>
      Icons.moviefilter
);
var _icons_multilinechart = MXFunctionInvoke(
  "Icons.multilinechart",
    (
    ) =>
      Icons.multilinechart
);
var _icons_musicnote = MXFunctionInvoke(
  "Icons.musicnote",
    (
    ) =>
      Icons.musicnote
);
var _icons_musicvideo = MXFunctionInvoke(
  "Icons.musicvideo",
    (
    ) =>
      Icons.musicvideo
);
var _icons_mylocation = MXFunctionInvoke(
  "Icons.mylocation",
    (
    ) =>
      Icons.mylocation
);
var _icons_nature = MXFunctionInvoke(
  "Icons.nature",
    (
    ) =>
      Icons.nature
);
var _icons_naturepeople = MXFunctionInvoke(
  "Icons.naturepeople",
    (
    ) =>
      Icons.naturepeople
);
var _icons_navigatebefore = MXFunctionInvoke(
  "Icons.navigatebefore",
    (
    ) =>
      Icons.navigatebefore
);
var _icons_navigatenext = MXFunctionInvoke(
  "Icons.navigatenext",
    (
    ) =>
      Icons.navigatenext
);
var _icons_navigation = MXFunctionInvoke(
  "Icons.navigation",
    (
    ) =>
      Icons.navigation
);
var _icons_nearme = MXFunctionInvoke(
  "Icons.nearme",
    (
    ) =>
      Icons.nearme
);
var _icons_networkcell = MXFunctionInvoke(
  "Icons.networkcell",
    (
    ) =>
      Icons.networkcell
);
var _icons_networkcheck = MXFunctionInvoke(
  "Icons.networkcheck",
    (
    ) =>
      Icons.networkcheck
);
var _icons_networklocked = MXFunctionInvoke(
  "Icons.networklocked",
    (
    ) =>
      Icons.networklocked
);
var _icons_networkwifi = MXFunctionInvoke(
  "Icons.networkwifi",
    (
    ) =>
      Icons.networkwifi
);
var _icons_newreleases = MXFunctionInvoke(
  "Icons.newreleases",
    (
    ) =>
      Icons.newreleases
);
var _icons_nextweek = MXFunctionInvoke(
  "Icons.nextweek",
    (
    ) =>
      Icons.nextweek
);
var _icons_nfc = MXFunctionInvoke(
  "Icons.nfc",
    (
    ) =>
      Icons.nfc
);
var _icons_noencryption = MXFunctionInvoke(
  "Icons.noencryption",
    (
    ) =>
      Icons.noencryption
);
var _icons_nosim = MXFunctionInvoke(
  "Icons.nosim",
    (
    ) =>
      Icons.nosim
);
var _icons_notinterested = MXFunctionInvoke(
  "Icons.notinterested",
    (
    ) =>
      Icons.notinterested
);
var _icons_notlistedlocation = MXFunctionInvoke(
  "Icons.notlistedlocation",
    (
    ) =>
      Icons.notlistedlocation
);
var _icons_note = MXFunctionInvoke(
  "Icons.note",
    (
    ) =>
      Icons.note
);
var _icons_noteadd = MXFunctionInvoke(
  "Icons.noteadd",
    (
    ) =>
      Icons.noteadd
);
var _icons_notificationimportant = MXFunctionInvoke(
  "Icons.notificationimportant",
    (
    ) =>
      Icons.notificationimportant
);
var _icons_notifications = MXFunctionInvoke(
  "Icons.notifications",
    (
    ) =>
      Icons.notifications
);
var _icons_notificationsactive = MXFunctionInvoke(
  "Icons.notificationsactive",
    (
    ) =>
      Icons.notificationsactive
);
var _icons_notificationsnone = MXFunctionInvoke(
  "Icons.notificationsnone",
    (
    ) =>
      Icons.notificationsnone
);
var _icons_notificationsoff = MXFunctionInvoke(
  "Icons.notificationsoff",
    (
    ) =>
      Icons.notificationsoff
);
var _icons_notificationspaused = MXFunctionInvoke(
  "Icons.notificationspaused",
    (
    ) =>
      Icons.notificationspaused
);
var _icons_offlinebolt = MXFunctionInvoke(
  "Icons.offlinebolt",
    (
    ) =>
      Icons.offlinebolt
);
var _icons_offlinepin = MXFunctionInvoke(
  "Icons.offlinepin",
    (
    ) =>
      Icons.offlinepin
);
var _icons_ondemandvideo = MXFunctionInvoke(
  "Icons.ondemandvideo",
    (
    ) =>
      Icons.ondemandvideo
);
var _icons_opacity = MXFunctionInvoke(
  "Icons.opacity",
    (
    ) =>
      Icons.opacity
);
var _icons_openinbrowser = MXFunctionInvoke(
  "Icons.openinbrowser",
    (
    ) =>
      Icons.openinbrowser
);
var _icons_openinnew = MXFunctionInvoke(
  "Icons.openinnew",
    (
    ) =>
      Icons.openinnew
);
var _icons_openwith = MXFunctionInvoke(
  "Icons.openwith",
    (
    ) =>
      Icons.openwith
);
var _icons_outlinedflag = MXFunctionInvoke(
  "Icons.outlinedflag",
    (
    ) =>
      Icons.outlinedflag
);
var _icons_pages = MXFunctionInvoke(
  "Icons.pages",
    (
    ) =>
      Icons.pages
);
var _icons_pageview = MXFunctionInvoke(
  "Icons.pageview",
    (
    ) =>
      Icons.pageview
);
var _icons_palette = MXFunctionInvoke(
  "Icons.palette",
    (
    ) =>
      Icons.palette
);
var _icons_pantool = MXFunctionInvoke(
  "Icons.pantool",
    (
    ) =>
      Icons.pantool
);
var _icons_panorama = MXFunctionInvoke(
  "Icons.panorama",
    (
    ) =>
      Icons.panorama
);
var _icons_panoramafisheye = MXFunctionInvoke(
  "Icons.panoramafisheye",
    (
    ) =>
      Icons.panoramafisheye
);
var _icons_panoramahorizontal = MXFunctionInvoke(
  "Icons.panoramahorizontal",
    (
    ) =>
      Icons.panoramahorizontal
);
var _icons_panoramavertical = MXFunctionInvoke(
  "Icons.panoramavertical",
    (
    ) =>
      Icons.panoramavertical
);
var _icons_panoramawideangle = MXFunctionInvoke(
  "Icons.panoramawideangle",
    (
    ) =>
      Icons.panoramawideangle
);
var _icons_partymode = MXFunctionInvoke(
  "Icons.partymode",
    (
    ) =>
      Icons.partymode
);
var _icons_pause = MXFunctionInvoke(
  "Icons.pause",
    (
    ) =>
      Icons.pause
);
var _icons_pausecirclefilled = MXFunctionInvoke(
  "Icons.pausecirclefilled",
    (
    ) =>
      Icons.pausecirclefilled
);
var _icons_pausecircleoutline = MXFunctionInvoke(
  "Icons.pausecircleoutline",
    (
    ) =>
      Icons.pausecircleoutline
);
var _icons_payment = MXFunctionInvoke(
  "Icons.payment",
    (
    ) =>
      Icons.payment
);
var _icons_people = MXFunctionInvoke(
  "Icons.people",
    (
    ) =>
      Icons.people
);
var _icons_peopleoutline = MXFunctionInvoke(
  "Icons.peopleoutline",
    (
    ) =>
      Icons.peopleoutline
);
var _icons_permcameramic = MXFunctionInvoke(
  "Icons.permcameramic",
    (
    ) =>
      Icons.permcameramic
);
var _icons_permcontactcalendar = MXFunctionInvoke(
  "Icons.permcontactcalendar",
    (
    ) =>
      Icons.permcontactcalendar
);
var _icons_permdatasetting = MXFunctionInvoke(
  "Icons.permdatasetting",
    (
    ) =>
      Icons.permdatasetting
);
var _icons_permdeviceinformation = MXFunctionInvoke(
  "Icons.permdeviceinformation",
    (
    ) =>
      Icons.permdeviceinformation
);
var _icons_permidentity = MXFunctionInvoke(
  "Icons.permidentity",
    (
    ) =>
      Icons.permidentity
);
var _icons_permmedia = MXFunctionInvoke(
  "Icons.permmedia",
    (
    ) =>
      Icons.permmedia
);
var _icons_permphonemsg = MXFunctionInvoke(
  "Icons.permphonemsg",
    (
    ) =>
      Icons.permphonemsg
);
var _icons_permscanwifi = MXFunctionInvoke(
  "Icons.permscanwifi",
    (
    ) =>
      Icons.permscanwifi
);
var _icons_person = MXFunctionInvoke(
  "Icons.person",
    (
    ) =>
      Icons.person
);
var _icons_personadd = MXFunctionInvoke(
  "Icons.personadd",
    (
    ) =>
      Icons.personadd
);
var _icons_personoutline = MXFunctionInvoke(
  "Icons.personoutline",
    (
    ) =>
      Icons.personoutline
);
var _icons_personpin = MXFunctionInvoke(
  "Icons.personpin",
    (
    ) =>
      Icons.personpin
);
var _icons_personpincircle = MXFunctionInvoke(
  "Icons.personpincircle",
    (
    ) =>
      Icons.personpincircle
);
var _icons_personalvideo = MXFunctionInvoke(
  "Icons.personalvideo",
    (
    ) =>
      Icons.personalvideo
);
var _icons_pets = MXFunctionInvoke(
  "Icons.pets",
    (
    ) =>
      Icons.pets
);
var _icons_phone = MXFunctionInvoke(
  "Icons.phone",
    (
    ) =>
      Icons.phone
);
var _icons_phoneandroid = MXFunctionInvoke(
  "Icons.phoneandroid",
    (
    ) =>
      Icons.phoneandroid
);
var _icons_phonebluetoothspeaker = MXFunctionInvoke(
  "Icons.phonebluetoothspeaker",
    (
    ) =>
      Icons.phonebluetoothspeaker
);
var _icons_phoneforwarded = MXFunctionInvoke(
  "Icons.phoneforwarded",
    (
    ) =>
      Icons.phoneforwarded
);
var _icons_phoneintalk = MXFunctionInvoke(
  "Icons.phoneintalk",
    (
    ) =>
      Icons.phoneintalk
);
var _icons_phoneiphone = MXFunctionInvoke(
  "Icons.phoneiphone",
    (
    ) =>
      Icons.phoneiphone
);
var _icons_phonelocked = MXFunctionInvoke(
  "Icons.phonelocked",
    (
    ) =>
      Icons.phonelocked
);
var _icons_phonemissed = MXFunctionInvoke(
  "Icons.phonemissed",
    (
    ) =>
      Icons.phonemissed
);
var _icons_phonepaused = MXFunctionInvoke(
  "Icons.phonepaused",
    (
    ) =>
      Icons.phonepaused
);
var _icons_phonelink = MXFunctionInvoke(
  "Icons.phonelink",
    (
    ) =>
      Icons.phonelink
);
var _icons_phonelinkerase = MXFunctionInvoke(
  "Icons.phonelinkerase",
    (
    ) =>
      Icons.phonelinkerase
);
var _icons_phonelinklock = MXFunctionInvoke(
  "Icons.phonelinklock",
    (
    ) =>
      Icons.phonelinklock
);
var _icons_phonelinkoff = MXFunctionInvoke(
  "Icons.phonelinkoff",
    (
    ) =>
      Icons.phonelinkoff
);
var _icons_phonelinkring = MXFunctionInvoke(
  "Icons.phonelinkring",
    (
    ) =>
      Icons.phonelinkring
);
var _icons_phonelinksetup = MXFunctionInvoke(
  "Icons.phonelinksetup",
    (
    ) =>
      Icons.phonelinksetup
);
var _icons_photo = MXFunctionInvoke(
  "Icons.photo",
    (
    ) =>
      Icons.photo
);
var _icons_photoalbum = MXFunctionInvoke(
  "Icons.photoalbum",
    (
    ) =>
      Icons.photoalbum
);
var _icons_photocamera = MXFunctionInvoke(
  "Icons.photocamera",
    (
    ) =>
      Icons.photocamera
);
var _icons_photofilter = MXFunctionInvoke(
  "Icons.photofilter",
    (
    ) =>
      Icons.photofilter
);
var _icons_photolibrary = MXFunctionInvoke(
  "Icons.photolibrary",
    (
    ) =>
      Icons.photolibrary
);
var _icons_photosizeselectactual = MXFunctionInvoke(
  "Icons.photosizeselectactual",
    (
    ) =>
      Icons.photosizeselectactual
);
var _icons_photosizeselectlarge = MXFunctionInvoke(
  "Icons.photosizeselectlarge",
    (
    ) =>
      Icons.photosizeselectlarge
);
var _icons_photosizeselectsmall = MXFunctionInvoke(
  "Icons.photosizeselectsmall",
    (
    ) =>
      Icons.photosizeselectsmall
);
var _icons_pictureaspdf = MXFunctionInvoke(
  "Icons.pictureaspdf",
    (
    ) =>
      Icons.pictureaspdf
);
var _icons_pictureinpicture = MXFunctionInvoke(
  "Icons.pictureinpicture",
    (
    ) =>
      Icons.pictureinpicture
);
var _icons_pictureinpicturealt = MXFunctionInvoke(
  "Icons.pictureinpicturealt",
    (
    ) =>
      Icons.pictureinpicturealt
);
var _icons_piechart = MXFunctionInvoke(
  "Icons.piechart",
    (
    ) =>
      Icons.piechart
);
var _icons_piechartoutlined = MXFunctionInvoke(
  "Icons.piechartoutlined",
    (
    ) =>
      Icons.piechartoutlined
);
var _icons_pindrop = MXFunctionInvoke(
  "Icons.pindrop",
    (
    ) =>
      Icons.pindrop
);
var _icons_place = MXFunctionInvoke(
  "Icons.place",
    (
    ) =>
      Icons.place
);
var _icons_playarrow = MXFunctionInvoke(
  "Icons.playarrow",
    (
    ) =>
      Icons.playarrow
);
var _icons_playcirclefilled = MXFunctionInvoke(
  "Icons.playcirclefilled",
    (
    ) =>
      Icons.playcirclefilled
);
var _icons_playcircleoutline = MXFunctionInvoke(
  "Icons.playcircleoutline",
    (
    ) =>
      Icons.playcircleoutline
);
var _icons_playforwork = MXFunctionInvoke(
  "Icons.playforwork",
    (
    ) =>
      Icons.playforwork
);
var _icons_playlistadd = MXFunctionInvoke(
  "Icons.playlistadd",
    (
    ) =>
      Icons.playlistadd
);
var _icons_playlistaddcheck = MXFunctionInvoke(
  "Icons.playlistaddcheck",
    (
    ) =>
      Icons.playlistaddcheck
);
var _icons_playlistplay = MXFunctionInvoke(
  "Icons.playlistplay",
    (
    ) =>
      Icons.playlistplay
);
var _icons_plusone = MXFunctionInvoke(
  "Icons.plusone",
    (
    ) =>
      Icons.plusone
);
var _icons_poll = MXFunctionInvoke(
  "Icons.poll",
    (
    ) =>
      Icons.poll
);
var _icons_polymer = MXFunctionInvoke(
  "Icons.polymer",
    (
    ) =>
      Icons.polymer
);
var _icons_pool = MXFunctionInvoke(
  "Icons.pool",
    (
    ) =>
      Icons.pool
);
var _icons_portablewifioff = MXFunctionInvoke(
  "Icons.portablewifioff",
    (
    ) =>
      Icons.portablewifioff
);
var _icons_portrait = MXFunctionInvoke(
  "Icons.portrait",
    (
    ) =>
      Icons.portrait
);
var _icons_power = MXFunctionInvoke(
  "Icons.power",
    (
    ) =>
      Icons.power
);
var _icons_powerinput = MXFunctionInvoke(
  "Icons.powerinput",
    (
    ) =>
      Icons.powerinput
);
var _icons_powersettingsnew = MXFunctionInvoke(
  "Icons.powersettingsnew",
    (
    ) =>
      Icons.powersettingsnew
);
var _icons_pregnantwoman = MXFunctionInvoke(
  "Icons.pregnantwoman",
    (
    ) =>
      Icons.pregnantwoman
);
var _icons_presenttoall = MXFunctionInvoke(
  "Icons.presenttoall",
    (
    ) =>
      Icons.presenttoall
);
var _icons_print = MXFunctionInvoke(
  "Icons.print",
    (
    ) =>
      Icons.print
);
var _icons_priorityhigh = MXFunctionInvoke(
  "Icons.priorityhigh",
    (
    ) =>
      Icons.priorityhigh
);
var _icons_public = MXFunctionInvoke(
  "Icons.public",
    (
    ) =>
      Icons.public
);
var _icons_publish = MXFunctionInvoke(
  "Icons.publish",
    (
    ) =>
      Icons.publish
);
var _icons_querybuilder = MXFunctionInvoke(
  "Icons.querybuilder",
    (
    ) =>
      Icons.querybuilder
);
var _icons_questionanswer = MXFunctionInvoke(
  "Icons.questionanswer",
    (
    ) =>
      Icons.questionanswer
);
var _icons_queue = MXFunctionInvoke(
  "Icons.queue",
    (
    ) =>
      Icons.queue
);
var _icons_queuemusic = MXFunctionInvoke(
  "Icons.queuemusic",
    (
    ) =>
      Icons.queuemusic
);
var _icons_queueplaynext = MXFunctionInvoke(
  "Icons.queueplaynext",
    (
    ) =>
      Icons.queueplaynext
);
var _icons_radio = MXFunctionInvoke(
  "Icons.radio",
    (
    ) =>
      Icons.radio
);
var _icons_radiobuttonchecked = MXFunctionInvoke(
  "Icons.radiobuttonchecked",
    (
    ) =>
      Icons.radiobuttonchecked
);
var _icons_radiobuttonunchecked = MXFunctionInvoke(
  "Icons.radiobuttonunchecked",
    (
    ) =>
      Icons.radiobuttonunchecked
);
var _icons_ratereview = MXFunctionInvoke(
  "Icons.ratereview",
    (
    ) =>
      Icons.ratereview
);
var _icons_receipt = MXFunctionInvoke(
  "Icons.receipt",
    (
    ) =>
      Icons.receipt
);
var _icons_recentactors = MXFunctionInvoke(
  "Icons.recentactors",
    (
    ) =>
      Icons.recentactors
);
var _icons_recordvoiceover = MXFunctionInvoke(
  "Icons.recordvoiceover",
    (
    ) =>
      Icons.recordvoiceover
);
var _icons_redeem = MXFunctionInvoke(
  "Icons.redeem",
    (
    ) =>
      Icons.redeem
);
var _icons_redo = MXFunctionInvoke(
  "Icons.redo",
    (
    ) =>
      Icons.redo
);
var _icons_refresh = MXFunctionInvoke(
  "Icons.refresh",
    (
    ) =>
      Icons.refresh
);
var _icons_remove = MXFunctionInvoke(
  "Icons.remove",
    (
    ) =>
      Icons.remove
);
var _icons_removecircle = MXFunctionInvoke(
  "Icons.removecircle",
    (
    ) =>
      Icons.removecircle
);
var _icons_removecircleoutline = MXFunctionInvoke(
  "Icons.removecircleoutline",
    (
    ) =>
      Icons.removecircleoutline
);
var _icons_removefromqueue = MXFunctionInvoke(
  "Icons.removefromqueue",
    (
    ) =>
      Icons.removefromqueue
);
var _icons_removeredeye = MXFunctionInvoke(
  "Icons.removeredeye",
    (
    ) =>
      Icons.removeredeye
);
var _icons_removeshoppingcart = MXFunctionInvoke(
  "Icons.removeshoppingcart",
    (
    ) =>
      Icons.removeshoppingcart
);
var _icons_reorder = MXFunctionInvoke(
  "Icons.reorder",
    (
    ) =>
      Icons.reorder
);
var _icons_repeat = MXFunctionInvoke(
  "Icons.repeat",
    (
    ) =>
      Icons.repeat
);
var _icons_repeatone = MXFunctionInvoke(
  "Icons.repeatone",
    (
    ) =>
      Icons.repeatone
);
var _icons_replay = MXFunctionInvoke(
  "Icons.replay",
    (
    ) =>
      Icons.replay
);
var _icons_replay10 = MXFunctionInvoke(
  "Icons.replay10",
    (
    ) =>
      Icons.replay10
);
var _icons_replay30 = MXFunctionInvoke(
  "Icons.replay30",
    (
    ) =>
      Icons.replay30
);
var _icons_replay5 = MXFunctionInvoke(
  "Icons.replay5",
    (
    ) =>
      Icons.replay5
);
var _icons_reply = MXFunctionInvoke(
  "Icons.reply",
    (
    ) =>
      Icons.reply
);
var _icons_replyall = MXFunctionInvoke(
  "Icons.replyall",
    (
    ) =>
      Icons.replyall
);
var _icons_report = MXFunctionInvoke(
  "Icons.report",
    (
    ) =>
      Icons.report
);
var _icons_reportoff = MXFunctionInvoke(
  "Icons.reportoff",
    (
    ) =>
      Icons.reportoff
);
var _icons_reportproblem = MXFunctionInvoke(
  "Icons.reportproblem",
    (
    ) =>
      Icons.reportproblem
);
var _icons_restaurant = MXFunctionInvoke(
  "Icons.restaurant",
    (
    ) =>
      Icons.restaurant
);
var _icons_restaurantmenu = MXFunctionInvoke(
  "Icons.restaurantmenu",
    (
    ) =>
      Icons.restaurantmenu
);
var _icons_restore = MXFunctionInvoke(
  "Icons.restore",
    (
    ) =>
      Icons.restore
);
var _icons_restorefromtrash = MXFunctionInvoke(
  "Icons.restorefromtrash",
    (
    ) =>
      Icons.restorefromtrash
);
var _icons_restorepage = MXFunctionInvoke(
  "Icons.restorepage",
    (
    ) =>
      Icons.restorepage
);
var _icons_ringvolume = MXFunctionInvoke(
  "Icons.ringvolume",
    (
    ) =>
      Icons.ringvolume
);
var _icons_room = MXFunctionInvoke(
  "Icons.room",
    (
    ) =>
      Icons.room
);
var _icons_roomservice = MXFunctionInvoke(
  "Icons.roomservice",
    (
    ) =>
      Icons.roomservice
);
var _icons_rotate90degreesccw = MXFunctionInvoke(
  "Icons.rotate90degreesccw",
    (
    ) =>
      Icons.rotate90degreesccw
);
var _icons_rotateleft = MXFunctionInvoke(
  "Icons.rotateleft",
    (
    ) =>
      Icons.rotateleft
);
var _icons_rotateright = MXFunctionInvoke(
  "Icons.rotateright",
    (
    ) =>
      Icons.rotateright
);
var _icons_roundedcorner = MXFunctionInvoke(
  "Icons.roundedcorner",
    (
    ) =>
      Icons.roundedcorner
);
var _icons_router = MXFunctionInvoke(
  "Icons.router",
    (
    ) =>
      Icons.router
);
var _icons_rowing = MXFunctionInvoke(
  "Icons.rowing",
    (
    ) =>
      Icons.rowing
);
var _icons_rssfeed = MXFunctionInvoke(
  "Icons.rssfeed",
    (
    ) =>
      Icons.rssfeed
);
var _icons_rvhookup = MXFunctionInvoke(
  "Icons.rvhookup",
    (
    ) =>
      Icons.rvhookup
);
var _icons_satellite = MXFunctionInvoke(
  "Icons.satellite",
    (
    ) =>
      Icons.satellite
);
var _icons_save = MXFunctionInvoke(
  "Icons.save",
    (
    ) =>
      Icons.save
);
var _icons_savealt = MXFunctionInvoke(
  "Icons.savealt",
    (
    ) =>
      Icons.savealt
);
var _icons_scanner = MXFunctionInvoke(
  "Icons.scanner",
    (
    ) =>
      Icons.scanner
);
var _icons_scatterplot = MXFunctionInvoke(
  "Icons.scatterplot",
    (
    ) =>
      Icons.scatterplot
);
var _icons_schedule = MXFunctionInvoke(
  "Icons.schedule",
    (
    ) =>
      Icons.schedule
);
var _icons_school = MXFunctionInvoke(
  "Icons.school",
    (
    ) =>
      Icons.school
);
var _icons_score = MXFunctionInvoke(
  "Icons.score",
    (
    ) =>
      Icons.score
);
var _icons_screenlocklandscape = MXFunctionInvoke(
  "Icons.screenlocklandscape",
    (
    ) =>
      Icons.screenlocklandscape
);
var _icons_screenlockportrait = MXFunctionInvoke(
  "Icons.screenlockportrait",
    (
    ) =>
      Icons.screenlockportrait
);
var _icons_screenlockrotation = MXFunctionInvoke(
  "Icons.screenlockrotation",
    (
    ) =>
      Icons.screenlockrotation
);
var _icons_screenrotation = MXFunctionInvoke(
  "Icons.screenrotation",
    (
    ) =>
      Icons.screenrotation
);
var _icons_screenshare = MXFunctionInvoke(
  "Icons.screenshare",
    (
    ) =>
      Icons.screenshare
);
var _icons_sdcard = MXFunctionInvoke(
  "Icons.sdcard",
    (
    ) =>
      Icons.sdcard
);
var _icons_sdstorage = MXFunctionInvoke(
  "Icons.sdstorage",
    (
    ) =>
      Icons.sdstorage
);
var _icons_search = MXFunctionInvoke(
  "Icons.search",
    (
    ) =>
      Icons.search
);
var _icons_security = MXFunctionInvoke(
  "Icons.security",
    (
    ) =>
      Icons.security
);
var _icons_selectall = MXFunctionInvoke(
  "Icons.selectall",
    (
    ) =>
      Icons.selectall
);
var _icons_send = MXFunctionInvoke(
  "Icons.send",
    (
    ) =>
      Icons.send
);
var _icons_sentimentdissatisfied = MXFunctionInvoke(
  "Icons.sentimentdissatisfied",
    (
    ) =>
      Icons.sentimentdissatisfied
);
var _icons_sentimentneutral = MXFunctionInvoke(
  "Icons.sentimentneutral",
    (
    ) =>
      Icons.sentimentneutral
);
var _icons_sentimentsatisfied = MXFunctionInvoke(
  "Icons.sentimentsatisfied",
    (
    ) =>
      Icons.sentimentsatisfied
);
var _icons_sentimentverydissatisfied = MXFunctionInvoke(
  "Icons.sentimentverydissatisfied",
    (
    ) =>
      Icons.sentimentverydissatisfied
);
var _icons_sentimentverysatisfied = MXFunctionInvoke(
  "Icons.sentimentverysatisfied",
    (
    ) =>
      Icons.sentimentverysatisfied
);
var _icons_settings = MXFunctionInvoke(
  "Icons.settings",
    (
    ) =>
      Icons.settings
);
var _icons_settingsapplications = MXFunctionInvoke(
  "Icons.settingsapplications",
    (
    ) =>
      Icons.settingsapplications
);
var _icons_settingsbackuprestore = MXFunctionInvoke(
  "Icons.settingsbackuprestore",
    (
    ) =>
      Icons.settingsbackuprestore
);
var _icons_settingsbluetooth = MXFunctionInvoke(
  "Icons.settingsbluetooth",
    (
    ) =>
      Icons.settingsbluetooth
);
var _icons_settingsbrightness = MXFunctionInvoke(
  "Icons.settingsbrightness",
    (
    ) =>
      Icons.settingsbrightness
);
var _icons_settingscell = MXFunctionInvoke(
  "Icons.settingscell",
    (
    ) =>
      Icons.settingscell
);
var _icons_settingsethernet = MXFunctionInvoke(
  "Icons.settingsethernet",
    (
    ) =>
      Icons.settingsethernet
);
var _icons_settingsinputantenna = MXFunctionInvoke(
  "Icons.settingsinputantenna",
    (
    ) =>
      Icons.settingsinputantenna
);
var _icons_settingsinputcomponent = MXFunctionInvoke(
  "Icons.settingsinputcomponent",
    (
    ) =>
      Icons.settingsinputcomponent
);
var _icons_settingsinputcomposite = MXFunctionInvoke(
  "Icons.settingsinputcomposite",
    (
    ) =>
      Icons.settingsinputcomposite
);
var _icons_settingsinputhdmi = MXFunctionInvoke(
  "Icons.settingsinputhdmi",
    (
    ) =>
      Icons.settingsinputhdmi
);
var _icons_settingsinputsvideo = MXFunctionInvoke(
  "Icons.settingsinputsvideo",
    (
    ) =>
      Icons.settingsinputsvideo
);
var _icons_settingsoverscan = MXFunctionInvoke(
  "Icons.settingsoverscan",
    (
    ) =>
      Icons.settingsoverscan
);
var _icons_settingsphone = MXFunctionInvoke(
  "Icons.settingsphone",
    (
    ) =>
      Icons.settingsphone
);
var _icons_settingspower = MXFunctionInvoke(
  "Icons.settingspower",
    (
    ) =>
      Icons.settingspower
);
var _icons_settingsremote = MXFunctionInvoke(
  "Icons.settingsremote",
    (
    ) =>
      Icons.settingsremote
);
var _icons_settingssystemdaydream = MXFunctionInvoke(
  "Icons.settingssystemdaydream",
    (
    ) =>
      Icons.settingssystemdaydream
);
var _icons_settingsvoice = MXFunctionInvoke(
  "Icons.settingsvoice",
    (
    ) =>
      Icons.settingsvoice
);
var _icons_share = MXFunctionInvoke(
  "Icons.share",
    (
    ) =>
      Icons.share
);
var _icons_shop = MXFunctionInvoke(
  "Icons.shop",
    (
    ) =>
      Icons.shop
);
var _icons_shoptwo = MXFunctionInvoke(
  "Icons.shoptwo",
    (
    ) =>
      Icons.shoptwo
);
var _icons_shoppingbasket = MXFunctionInvoke(
  "Icons.shoppingbasket",
    (
    ) =>
      Icons.shoppingbasket
);
var _icons_shoppingcart = MXFunctionInvoke(
  "Icons.shoppingcart",
    (
    ) =>
      Icons.shoppingcart
);
var _icons_shorttext = MXFunctionInvoke(
  "Icons.shorttext",
    (
    ) =>
      Icons.shorttext
);
var _icons_showchart = MXFunctionInvoke(
  "Icons.showchart",
    (
    ) =>
      Icons.showchart
);
var _icons_shuffle = MXFunctionInvoke(
  "Icons.shuffle",
    (
    ) =>
      Icons.shuffle
);
var _icons_shutterspeed = MXFunctionInvoke(
  "Icons.shutterspeed",
    (
    ) =>
      Icons.shutterspeed
);
var _icons_signalcellular4bar = MXFunctionInvoke(
  "Icons.signalcellular4bar",
    (
    ) =>
      Icons.signalcellular4bar
);
var _icons_signalcellularconnectednointernet4bar = MXFunctionInvoke(
  "Icons.signalcellularconnectednointernet4bar",
    (
    ) =>
      Icons.signalcellularconnectednointernet4bar
);
var _icons_signalcellularnosim = MXFunctionInvoke(
  "Icons.signalcellularnosim",
    (
    ) =>
      Icons.signalcellularnosim
);
var _icons_signalcellularnull = MXFunctionInvoke(
  "Icons.signalcellularnull",
    (
    ) =>
      Icons.signalcellularnull
);
var _icons_signalcellularoff = MXFunctionInvoke(
  "Icons.signalcellularoff",
    (
    ) =>
      Icons.signalcellularoff
);
var _icons_signalwifi4bar = MXFunctionInvoke(
  "Icons.signalwifi4bar",
    (
    ) =>
      Icons.signalwifi4bar
);
var _icons_signalwifi4barlock = MXFunctionInvoke(
  "Icons.signalwifi4barlock",
    (
    ) =>
      Icons.signalwifi4barlock
);
var _icons_signalwifioff = MXFunctionInvoke(
  "Icons.signalwifioff",
    (
    ) =>
      Icons.signalwifioff
);
var _icons_simcard = MXFunctionInvoke(
  "Icons.simcard",
    (
    ) =>
      Icons.simcard
);
var _icons_simcardalert = MXFunctionInvoke(
  "Icons.simcardalert",
    (
    ) =>
      Icons.simcardalert
);
var _icons_skipnext = MXFunctionInvoke(
  "Icons.skipnext",
    (
    ) =>
      Icons.skipnext
);
var _icons_skipprevious = MXFunctionInvoke(
  "Icons.skipprevious",
    (
    ) =>
      Icons.skipprevious
);
var _icons_slideshow = MXFunctionInvoke(
  "Icons.slideshow",
    (
    ) =>
      Icons.slideshow
);
var _icons_slowmotionvideo = MXFunctionInvoke(
  "Icons.slowmotionvideo",
    (
    ) =>
      Icons.slowmotionvideo
);
var _icons_smartphone = MXFunctionInvoke(
  "Icons.smartphone",
    (
    ) =>
      Icons.smartphone
);
var _icons_smokefree = MXFunctionInvoke(
  "Icons.smokefree",
    (
    ) =>
      Icons.smokefree
);
var _icons_smokingrooms = MXFunctionInvoke(
  "Icons.smokingrooms",
    (
    ) =>
      Icons.smokingrooms
);
var _icons_sms = MXFunctionInvoke(
  "Icons.sms",
    (
    ) =>
      Icons.sms
);
var _icons_smsfailed = MXFunctionInvoke(
  "Icons.smsfailed",
    (
    ) =>
      Icons.smsfailed
);
var _icons_snooze = MXFunctionInvoke(
  "Icons.snooze",
    (
    ) =>
      Icons.snooze
);
var _icons_sort = MXFunctionInvoke(
  "Icons.sort",
    (
    ) =>
      Icons.sort
);
var _icons_sortbyalpha = MXFunctionInvoke(
  "Icons.sortbyalpha",
    (
    ) =>
      Icons.sortbyalpha
);
var _icons_spa = MXFunctionInvoke(
  "Icons.spa",
    (
    ) =>
      Icons.spa
);
var _icons_spacebar = MXFunctionInvoke(
  "Icons.spacebar",
    (
    ) =>
      Icons.spacebar
);
var _icons_speaker = MXFunctionInvoke(
  "Icons.speaker",
    (
    ) =>
      Icons.speaker
);
var _icons_speakergroup = MXFunctionInvoke(
  "Icons.speakergroup",
    (
    ) =>
      Icons.speakergroup
);
var _icons_speakernotes = MXFunctionInvoke(
  "Icons.speakernotes",
    (
    ) =>
      Icons.speakernotes
);
var _icons_speakernotesoff = MXFunctionInvoke(
  "Icons.speakernotesoff",
    (
    ) =>
      Icons.speakernotesoff
);
var _icons_speakerphone = MXFunctionInvoke(
  "Icons.speakerphone",
    (
    ) =>
      Icons.speakerphone
);
var _icons_spellcheck = MXFunctionInvoke(
  "Icons.spellcheck",
    (
    ) =>
      Icons.spellcheck
);
var _icons_star = MXFunctionInvoke(
  "Icons.star",
    (
    ) =>
      Icons.star
);
var _icons_starborder = MXFunctionInvoke(
  "Icons.starborder",
    (
    ) =>
      Icons.starborder
);
var _icons_starhalf = MXFunctionInvoke(
  "Icons.starhalf",
    (
    ) =>
      Icons.starhalf
);
var _icons_stars = MXFunctionInvoke(
  "Icons.stars",
    (
    ) =>
      Icons.stars
);
var _icons_staycurrentlandscape = MXFunctionInvoke(
  "Icons.staycurrentlandscape",
    (
    ) =>
      Icons.staycurrentlandscape
);
var _icons_staycurrentportrait = MXFunctionInvoke(
  "Icons.staycurrentportrait",
    (
    ) =>
      Icons.staycurrentportrait
);
var _icons_stayprimarylandscape = MXFunctionInvoke(
  "Icons.stayprimarylandscape",
    (
    ) =>
      Icons.stayprimarylandscape
);
var _icons_stayprimaryportrait = MXFunctionInvoke(
  "Icons.stayprimaryportrait",
    (
    ) =>
      Icons.stayprimaryportrait
);
var _icons_stop = MXFunctionInvoke(
  "Icons.stop",
    (
    ) =>
      Icons.stop
);
var _icons_stopscreenshare = MXFunctionInvoke(
  "Icons.stopscreenshare",
    (
    ) =>
      Icons.stopscreenshare
);
var _icons_storage = MXFunctionInvoke(
  "Icons.storage",
    (
    ) =>
      Icons.storage
);
var _icons_store = MXFunctionInvoke(
  "Icons.store",
    (
    ) =>
      Icons.store
);
var _icons_storemalldirectory = MXFunctionInvoke(
  "Icons.storemalldirectory",
    (
    ) =>
      Icons.storemalldirectory
);
var _icons_straighten = MXFunctionInvoke(
  "Icons.straighten",
    (
    ) =>
      Icons.straighten
);
var _icons_streetview = MXFunctionInvoke(
  "Icons.streetview",
    (
    ) =>
      Icons.streetview
);
var _icons_strikethroughs = MXFunctionInvoke(
  "Icons.strikethroughs",
    (
    ) =>
      Icons.strikethroughs
);
var _icons_style = MXFunctionInvoke(
  "Icons.style",
    (
    ) =>
      Icons.style
);
var _icons_subdirectoryarrowleft = MXFunctionInvoke(
  "Icons.subdirectoryarrowleft",
    (
    ) =>
      Icons.subdirectoryarrowleft
);
var _icons_subdirectoryarrowright = MXFunctionInvoke(
  "Icons.subdirectoryarrowright",
    (
    ) =>
      Icons.subdirectoryarrowright
);
var _icons_subject = MXFunctionInvoke(
  "Icons.subject",
    (
    ) =>
      Icons.subject
);
var _icons_subscriptions = MXFunctionInvoke(
  "Icons.subscriptions",
    (
    ) =>
      Icons.subscriptions
);
var _icons_subtitles = MXFunctionInvoke(
  "Icons.subtitles",
    (
    ) =>
      Icons.subtitles
);
var _icons_subway = MXFunctionInvoke(
  "Icons.subway",
    (
    ) =>
      Icons.subway
);
var _icons_supervisedusercircle = MXFunctionInvoke(
  "Icons.supervisedusercircle",
    (
    ) =>
      Icons.supervisedusercircle
);
var _icons_supervisoraccount = MXFunctionInvoke(
  "Icons.supervisoraccount",
    (
    ) =>
      Icons.supervisoraccount
);
var _icons_surroundsound = MXFunctionInvoke(
  "Icons.surroundsound",
    (
    ) =>
      Icons.surroundsound
);
var _icons_swapcalls = MXFunctionInvoke(
  "Icons.swapcalls",
    (
    ) =>
      Icons.swapcalls
);
var _icons_swaphoriz = MXFunctionInvoke(
  "Icons.swaphoriz",
    (
    ) =>
      Icons.swaphoriz
);
var _icons_swaphorizontalcircle = MXFunctionInvoke(
  "Icons.swaphorizontalcircle",
    (
    ) =>
      Icons.swaphorizontalcircle
);
var _icons_swapvert = MXFunctionInvoke(
  "Icons.swapvert",
    (
    ) =>
      Icons.swapvert
);
var _icons_swapverticalcircle = MXFunctionInvoke(
  "Icons.swapverticalcircle",
    (
    ) =>
      Icons.swapverticalcircle
);
var _icons_switchcamera = MXFunctionInvoke(
  "Icons.switchcamera",
    (
    ) =>
      Icons.switchcamera
);
var _icons_switchvideo = MXFunctionInvoke(
  "Icons.switchvideo",
    (
    ) =>
      Icons.switchvideo
);
var _icons_sync = MXFunctionInvoke(
  "Icons.sync",
    (
    ) =>
      Icons.sync
);
var _icons_syncdisabled = MXFunctionInvoke(
  "Icons.syncdisabled",
    (
    ) =>
      Icons.syncdisabled
);
var _icons_syncproblem = MXFunctionInvoke(
  "Icons.syncproblem",
    (
    ) =>
      Icons.syncproblem
);
var _icons_systemupdate = MXFunctionInvoke(
  "Icons.systemupdate",
    (
    ) =>
      Icons.systemupdate
);
var _icons_systemupdatealt = MXFunctionInvoke(
  "Icons.systemupdatealt",
    (
    ) =>
      Icons.systemupdatealt
);
var _icons_tab = MXFunctionInvoke(
  "Icons.tab",
    (
    ) =>
      Icons.tab
);
var _icons_tabunselected = MXFunctionInvoke(
  "Icons.tabunselected",
    (
    ) =>
      Icons.tabunselected
);
var _icons_tablechart = MXFunctionInvoke(
  "Icons.tablechart",
    (
    ) =>
      Icons.tablechart
);
var _icons_tablet = MXFunctionInvoke(
  "Icons.tablet",
    (
    ) =>
      Icons.tablet
);
var _icons_tabletandroid = MXFunctionInvoke(
  "Icons.tabletandroid",
    (
    ) =>
      Icons.tabletandroid
);
var _icons_tabletmac = MXFunctionInvoke(
  "Icons.tabletmac",
    (
    ) =>
      Icons.tabletmac
);
var _icons_tagfaces = MXFunctionInvoke(
  "Icons.tagfaces",
    (
    ) =>
      Icons.tagfaces
);
var _icons_tapandplay = MXFunctionInvoke(
  "Icons.tapandplay",
    (
    ) =>
      Icons.tapandplay
);
var _icons_terrain = MXFunctionInvoke(
  "Icons.terrain",
    (
    ) =>
      Icons.terrain
);
var _icons_textfields = MXFunctionInvoke(
  "Icons.textfields",
    (
    ) =>
      Icons.textfields
);
var _icons_textformat = MXFunctionInvoke(
  "Icons.textformat",
    (
    ) =>
      Icons.textformat
);
var _icons_textrotateup = MXFunctionInvoke(
  "Icons.textrotateup",
    (
    ) =>
      Icons.textrotateup
);
var _icons_textrotatevertical = MXFunctionInvoke(
  "Icons.textrotatevertical",
    (
    ) =>
      Icons.textrotatevertical
);
var _icons_textrotationangledown = MXFunctionInvoke(
  "Icons.textrotationangledown",
    (
    ) =>
      Icons.textrotationangledown
);
var _icons_textrotationangleup = MXFunctionInvoke(
  "Icons.textrotationangleup",
    (
    ) =>
      Icons.textrotationangleup
);
var _icons_textrotationdown = MXFunctionInvoke(
  "Icons.textrotationdown",
    (
    ) =>
      Icons.textrotationdown
);
var _icons_textrotationnone = MXFunctionInvoke(
  "Icons.textrotationnone",
    (
    ) =>
      Icons.textrotationnone
);
var _icons_textsms = MXFunctionInvoke(
  "Icons.textsms",
    (
    ) =>
      Icons.textsms
);
var _icons_texture = MXFunctionInvoke(
  "Icons.texture",
    (
    ) =>
      Icons.texture
);
var _icons_theaters = MXFunctionInvoke(
  "Icons.theaters",
    (
    ) =>
      Icons.theaters
);
var _icons_thumbdown = MXFunctionInvoke(
  "Icons.thumbdown",
    (
    ) =>
      Icons.thumbdown
);
var _icons_thumbup = MXFunctionInvoke(
  "Icons.thumbup",
    (
    ) =>
      Icons.thumbup
);
var _icons_thumbsupdown = MXFunctionInvoke(
  "Icons.thumbsupdown",
    (
    ) =>
      Icons.thumbsupdown
);
var _icons_timetoleave = MXFunctionInvoke(
  "Icons.timetoleave",
    (
    ) =>
      Icons.timetoleave
);
var _icons_timelapse = MXFunctionInvoke(
  "Icons.timelapse",
    (
    ) =>
      Icons.timelapse
);
var _icons_timeline = MXFunctionInvoke(
  "Icons.timeline",
    (
    ) =>
      Icons.timeline
);
var _icons_timer = MXFunctionInvoke(
  "Icons.timer",
    (
    ) =>
      Icons.timer
);
var _icons_timer10 = MXFunctionInvoke(
  "Icons.timer10",
    (
    ) =>
      Icons.timer10
);
var _icons_timer3 = MXFunctionInvoke(
  "Icons.timer3",
    (
    ) =>
      Icons.timer3
);
var _icons_timeroff = MXFunctionInvoke(
  "Icons.timeroff",
    (
    ) =>
      Icons.timeroff
);
var _icons_title = MXFunctionInvoke(
  "Icons.title",
    (
    ) =>
      Icons.title
);
var _icons_toc = MXFunctionInvoke(
  "Icons.toc",
    (
    ) =>
      Icons.toc
);
var _icons_today = MXFunctionInvoke(
  "Icons.today",
    (
    ) =>
      Icons.today
);
var _icons_toll = MXFunctionInvoke(
  "Icons.toll",
    (
    ) =>
      Icons.toll
);
var _icons_tonality = MXFunctionInvoke(
  "Icons.tonality",
    (
    ) =>
      Icons.tonality
);
var _icons_touchapp = MXFunctionInvoke(
  "Icons.touchapp",
    (
    ) =>
      Icons.touchapp
);
var _icons_toys = MXFunctionInvoke(
  "Icons.toys",
    (
    ) =>
      Icons.toys
);
var _icons_trackchanges = MXFunctionInvoke(
  "Icons.trackchanges",
    (
    ) =>
      Icons.trackchanges
);
var _icons_traffic = MXFunctionInvoke(
  "Icons.traffic",
    (
    ) =>
      Icons.traffic
);
var _icons_train = MXFunctionInvoke(
  "Icons.train",
    (
    ) =>
      Icons.train
);
var _icons_tram = MXFunctionInvoke(
  "Icons.tram",
    (
    ) =>
      Icons.tram
);
var _icons_transferwithinastation = MXFunctionInvoke(
  "Icons.transferwithinastation",
    (
    ) =>
      Icons.transferwithinastation
);
var _icons_transform = MXFunctionInvoke(
  "Icons.transform",
    (
    ) =>
      Icons.transform
);
var _icons_transitenterexit = MXFunctionInvoke(
  "Icons.transitenterexit",
    (
    ) =>
      Icons.transitenterexit
);
var _icons_translate = MXFunctionInvoke(
  "Icons.translate",
    (
    ) =>
      Icons.translate
);
var _icons_trendingdown = MXFunctionInvoke(
  "Icons.trendingdown",
    (
    ) =>
      Icons.trendingdown
);
var _icons_trendingflat = MXFunctionInvoke(
  "Icons.trendingflat",
    (
    ) =>
      Icons.trendingflat
);
var _icons_trendingup = MXFunctionInvoke(
  "Icons.trendingup",
    (
    ) =>
      Icons.trendingup
);
var _icons_triporigin = MXFunctionInvoke(
  "Icons.triporigin",
    (
    ) =>
      Icons.triporigin
);
var _icons_tune = MXFunctionInvoke(
  "Icons.tune",
    (
    ) =>
      Icons.tune
);
var _icons_turnedin = MXFunctionInvoke(
  "Icons.turnedin",
    (
    ) =>
      Icons.turnedin
);
var _icons_turnedinnot = MXFunctionInvoke(
  "Icons.turnedinnot",
    (
    ) =>
      Icons.turnedinnot
);
var _icons_tv = MXFunctionInvoke(
  "Icons.tv",
    (
    ) =>
      Icons.tv
);
var _icons_unarchive = MXFunctionInvoke(
  "Icons.unarchive",
    (
    ) =>
      Icons.unarchive
);
var _icons_undo = MXFunctionInvoke(
  "Icons.undo",
    (
    ) =>
      Icons.undo
);
var _icons_unfoldless = MXFunctionInvoke(
  "Icons.unfoldless",
    (
    ) =>
      Icons.unfoldless
);
var _icons_unfoldmore = MXFunctionInvoke(
  "Icons.unfoldmore",
    (
    ) =>
      Icons.unfoldmore
);
var _icons_update = MXFunctionInvoke(
  "Icons.update",
    (
    ) =>
      Icons.update
);
var _icons_usb = MXFunctionInvoke(
  "Icons.usb",
    (
    ) =>
      Icons.usb
);
var _icons_verifieduser = MXFunctionInvoke(
  "Icons.verifieduser",
    (
    ) =>
      Icons.verifieduser
);
var _icons_verticalalignbottom = MXFunctionInvoke(
  "Icons.verticalalignbottom",
    (
    ) =>
      Icons.verticalalignbottom
);
var _icons_verticalaligncenter = MXFunctionInvoke(
  "Icons.verticalaligncenter",
    (
    ) =>
      Icons.verticalaligncenter
);
var _icons_verticalaligntop = MXFunctionInvoke(
  "Icons.verticalaligntop",
    (
    ) =>
      Icons.verticalaligntop
);
var _icons_vibration = MXFunctionInvoke(
  "Icons.vibration",
    (
    ) =>
      Icons.vibration
);
var _icons_videocall = MXFunctionInvoke(
  "Icons.videocall",
    (
    ) =>
      Icons.videocall
);
var _icons_videolabel = MXFunctionInvoke(
  "Icons.videolabel",
    (
    ) =>
      Icons.videolabel
);
var _icons_videolibrary = MXFunctionInvoke(
  "Icons.videolibrary",
    (
    ) =>
      Icons.videolibrary
);
var _icons_videocam = MXFunctionInvoke(
  "Icons.videocam",
    (
    ) =>
      Icons.videocam
);
var _icons_videocamoff = MXFunctionInvoke(
  "Icons.videocamoff",
    (
    ) =>
      Icons.videocamoff
);
var _icons_videogameasset = MXFunctionInvoke(
  "Icons.videogameasset",
    (
    ) =>
      Icons.videogameasset
);
var _icons_viewagenda = MXFunctionInvoke(
  "Icons.viewagenda",
    (
    ) =>
      Icons.viewagenda
);
var _icons_viewarray = MXFunctionInvoke(
  "Icons.viewarray",
    (
    ) =>
      Icons.viewarray
);
var _icons_viewcarousel = MXFunctionInvoke(
  "Icons.viewcarousel",
    (
    ) =>
      Icons.viewcarousel
);
var _icons_viewcolumn = MXFunctionInvoke(
  "Icons.viewcolumn",
    (
    ) =>
      Icons.viewcolumn
);
var _icons_viewcomfy = MXFunctionInvoke(
  "Icons.viewcomfy",
    (
    ) =>
      Icons.viewcomfy
);
var _icons_viewcompact = MXFunctionInvoke(
  "Icons.viewcompact",
    (
    ) =>
      Icons.viewcompact
);
var _icons_viewday = MXFunctionInvoke(
  "Icons.viewday",
    (
    ) =>
      Icons.viewday
);
var _icons_viewheadline = MXFunctionInvoke(
  "Icons.viewheadline",
    (
    ) =>
      Icons.viewheadline
);
var _icons_viewlist = MXFunctionInvoke(
  "Icons.viewlist",
    (
    ) =>
      Icons.viewlist
);
var _icons_viewmodule = MXFunctionInvoke(
  "Icons.viewmodule",
    (
    ) =>
      Icons.viewmodule
);
var _icons_viewquilt = MXFunctionInvoke(
  "Icons.viewquilt",
    (
    ) =>
      Icons.viewquilt
);
var _icons_viewstream = MXFunctionInvoke(
  "Icons.viewstream",
    (
    ) =>
      Icons.viewstream
);
var _icons_viewweek = MXFunctionInvoke(
  "Icons.viewweek",
    (
    ) =>
      Icons.viewweek
);
var _icons_vignette = MXFunctionInvoke(
  "Icons.vignette",
    (
    ) =>
      Icons.vignette
);
var _icons_visibility = MXFunctionInvoke(
  "Icons.visibility",
    (
    ) =>
      Icons.visibility
);
var _icons_visibilityoff = MXFunctionInvoke(
  "Icons.visibilityoff",
    (
    ) =>
      Icons.visibilityoff
);
var _icons_voicechat = MXFunctionInvoke(
  "Icons.voicechat",
    (
    ) =>
      Icons.voicechat
);
var _icons_voicemail = MXFunctionInvoke(
  "Icons.voicemail",
    (
    ) =>
      Icons.voicemail
);
var _icons_volumedown = MXFunctionInvoke(
  "Icons.volumedown",
    (
    ) =>
      Icons.volumedown
);
var _icons_volumemute = MXFunctionInvoke(
  "Icons.volumemute",
    (
    ) =>
      Icons.volumemute
);
var _icons_volumeoff = MXFunctionInvoke(
  "Icons.volumeoff",
    (
    ) =>
      Icons.volumeoff
);
var _icons_volumeup = MXFunctionInvoke(
  "Icons.volumeup",
    (
    ) =>
      Icons.volumeup
);
var _icons_vpnkey = MXFunctionInvoke(
  "Icons.vpnkey",
    (
    ) =>
      Icons.vpnkey
);
var _icons_vpnlock = MXFunctionInvoke(
  "Icons.vpnlock",
    (
    ) =>
      Icons.vpnlock
);
var _icons_wallpaper = MXFunctionInvoke(
  "Icons.wallpaper",
    (
    ) =>
      Icons.wallpaper
);
var _icons_warning = MXFunctionInvoke(
  "Icons.warning",
    (
    ) =>
      Icons.warning
);
var _icons_watch = MXFunctionInvoke(
  "Icons.watch",
    (
    ) =>
      Icons.watch
);
var _icons_watchlater = MXFunctionInvoke(
  "Icons.watchlater",
    (
    ) =>
      Icons.watchlater
);
var _icons_wbauto = MXFunctionInvoke(
  "Icons.wbauto",
    (
    ) =>
      Icons.wbauto
);
var _icons_wbcloudy = MXFunctionInvoke(
  "Icons.wbcloudy",
    (
    ) =>
      Icons.wbcloudy
);
var _icons_wbincandescent = MXFunctionInvoke(
  "Icons.wbincandescent",
    (
    ) =>
      Icons.wbincandescent
);
var _icons_wbiridescent = MXFunctionInvoke(
  "Icons.wbiridescent",
    (
    ) =>
      Icons.wbiridescent
);
var _icons_wbsunny = MXFunctionInvoke(
  "Icons.wbsunny",
    (
    ) =>
      Icons.wbsunny
);
var _icons_wc = MXFunctionInvoke(
  "Icons.wc",
    (
    ) =>
      Icons.wc
);
var _icons_web = MXFunctionInvoke(
  "Icons.web",
    (
    ) =>
      Icons.web
);
var _icons_webasset = MXFunctionInvoke(
  "Icons.webasset",
    (
    ) =>
      Icons.webasset
);
var _icons_weekend = MXFunctionInvoke(
  "Icons.weekend",
    (
    ) =>
      Icons.weekend
);
var _icons_whatshot = MXFunctionInvoke(
  "Icons.whatshot",
    (
    ) =>
      Icons.whatshot
);
var _icons_widgets = MXFunctionInvoke(
  "Icons.widgets",
    (
    ) =>
      Icons.widgets
);
var _icons_wifi = MXFunctionInvoke(
  "Icons.wifi",
    (
    ) =>
      Icons.wifi
);
var _icons_wifilock = MXFunctionInvoke(
  "Icons.wifilock",
    (
    ) =>
      Icons.wifilock
);
var _icons_wifitethering = MXFunctionInvoke(
  "Icons.wifitethering",
    (
    ) =>
      Icons.wifitethering
);
var _icons_work = MXFunctionInvoke(
  "Icons.work",
    (
    ) =>
      Icons.work
);
var _icons_wraptext = MXFunctionInvoke(
  "Icons.wraptext",
    (
    ) =>
      Icons.wraptext
);
var _icons_youtubesearchedfor = MXFunctionInvoke(
  "Icons.youtubesearchedfor",
    (
    ) =>
      Icons.youtubesearchedfor
);
var _icons_zoomin = MXFunctionInvoke(
  "Icons.zoomin",
    (
    ) =>
      Icons.zoomin
);
var _icons_zoomout = MXFunctionInvoke(
  "Icons.zoomout",
    (
    ) =>
      Icons.zoomout
);
var _icons_zoomoutmap = MXFunctionInvoke(
  "Icons.zoomoutmap",
    (
    ) =>
      Icons.zoomoutmap
);
