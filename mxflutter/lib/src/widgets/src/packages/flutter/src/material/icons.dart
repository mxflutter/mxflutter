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
var _icons_threed_rotation = MXFunctionInvoke(
  "Icons.threed_rotation",
    (
    ) =>
      Icons.threed_rotation
);
var _icons_four_k = MXFunctionInvoke(
  "Icons.four_k",
    (
    ) =>
      Icons.four_k
);
var _icons_ac_unit = MXFunctionInvoke(
  "Icons.ac_unit",
    (
    ) =>
      Icons.ac_unit
);
var _icons_access_alarm = MXFunctionInvoke(
  "Icons.access_alarm",
    (
    ) =>
      Icons.access_alarm
);
var _icons_access_alarms = MXFunctionInvoke(
  "Icons.access_alarms",
    (
    ) =>
      Icons.access_alarms
);
var _icons_access_time = MXFunctionInvoke(
  "Icons.access_time",
    (
    ) =>
      Icons.access_time
);
var _icons_accessibility = MXFunctionInvoke(
  "Icons.accessibility",
    (
    ) =>
      Icons.accessibility
);
var _icons_accessibility_new = MXFunctionInvoke(
  "Icons.accessibility_new",
    (
    ) =>
      Icons.accessibility_new
);
var _icons_accessible = MXFunctionInvoke(
  "Icons.accessible",
    (
    ) =>
      Icons.accessible
);
var _icons_accessible_forward = MXFunctionInvoke(
  "Icons.accessible_forward",
    (
    ) =>
      Icons.accessible_forward
);
var _icons_account_balance = MXFunctionInvoke(
  "Icons.account_balance",
    (
    ) =>
      Icons.account_balance
);
var _icons_account_balance_wallet = MXFunctionInvoke(
  "Icons.account_balance_wallet",
    (
    ) =>
      Icons.account_balance_wallet
);
var _icons_account_box = MXFunctionInvoke(
  "Icons.account_box",
    (
    ) =>
      Icons.account_box
);
var _icons_account_circle = MXFunctionInvoke(
  "Icons.account_circle",
    (
    ) =>
      Icons.account_circle
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
var _icons_add_a_photo = MXFunctionInvoke(
  "Icons.add_a_photo",
    (
    ) =>
      Icons.add_a_photo
);
var _icons_add_alarm = MXFunctionInvoke(
  "Icons.add_alarm",
    (
    ) =>
      Icons.add_alarm
);
var _icons_add_alert = MXFunctionInvoke(
  "Icons.add_alert",
    (
    ) =>
      Icons.add_alert
);
var _icons_add_box = MXFunctionInvoke(
  "Icons.add_box",
    (
    ) =>
      Icons.add_box
);
var _icons_add_call = MXFunctionInvoke(
  "Icons.add_call",
    (
    ) =>
      Icons.add_call
);
var _icons_add_circle = MXFunctionInvoke(
  "Icons.add_circle",
    (
    ) =>
      Icons.add_circle
);
var _icons_add_circle_outline = MXFunctionInvoke(
  "Icons.add_circle_outline",
    (
    ) =>
      Icons.add_circle_outline
);
var _icons_add_comment = MXFunctionInvoke(
  "Icons.add_comment",
    (
    ) =>
      Icons.add_comment
);
var _icons_add_location = MXFunctionInvoke(
  "Icons.add_location",
    (
    ) =>
      Icons.add_location
);
var _icons_add_photo_alternate = MXFunctionInvoke(
  "Icons.add_photo_alternate",
    (
    ) =>
      Icons.add_photo_alternate
);
var _icons_add_shopping_cart = MXFunctionInvoke(
  "Icons.add_shopping_cart",
    (
    ) =>
      Icons.add_shopping_cart
);
var _icons_add_to_home_screen = MXFunctionInvoke(
  "Icons.add_to_home_screen",
    (
    ) =>
      Icons.add_to_home_screen
);
var _icons_add_to_photos = MXFunctionInvoke(
  "Icons.add_to_photos",
    (
    ) =>
      Icons.add_to_photos
);
var _icons_add_to_queue = MXFunctionInvoke(
  "Icons.add_to_queue",
    (
    ) =>
      Icons.add_to_queue
);
var _icons_adjust = MXFunctionInvoke(
  "Icons.adjust",
    (
    ) =>
      Icons.adjust
);
var _icons_airline_seat_flat = MXFunctionInvoke(
  "Icons.airline_seat_flat",
    (
    ) =>
      Icons.airline_seat_flat
);
var _icons_airline_seat_flat_angled = MXFunctionInvoke(
  "Icons.airline_seat_flat_angled",
    (
    ) =>
      Icons.airline_seat_flat_angled
);
var _icons_airline_seat_individual_suite = MXFunctionInvoke(
  "Icons.airline_seat_individual_suite",
    (
    ) =>
      Icons.airline_seat_individual_suite
);
var _icons_airline_seat_legroom_extra = MXFunctionInvoke(
  "Icons.airline_seat_legroom_extra",
    (
    ) =>
      Icons.airline_seat_legroom_extra
);
var _icons_airline_seat_legroom_normal = MXFunctionInvoke(
  "Icons.airline_seat_legroom_normal",
    (
    ) =>
      Icons.airline_seat_legroom_normal
);
var _icons_airline_seat_legroom_reduced = MXFunctionInvoke(
  "Icons.airline_seat_legroom_reduced",
    (
    ) =>
      Icons.airline_seat_legroom_reduced
);
var _icons_airline_seat_recline_extra = MXFunctionInvoke(
  "Icons.airline_seat_recline_extra",
    (
    ) =>
      Icons.airline_seat_recline_extra
);
var _icons_airline_seat_recline_normal = MXFunctionInvoke(
  "Icons.airline_seat_recline_normal",
    (
    ) =>
      Icons.airline_seat_recline_normal
);
var _icons_airplanemode_active = MXFunctionInvoke(
  "Icons.airplanemode_active",
    (
    ) =>
      Icons.airplanemode_active
);
var _icons_airplanemode_inactive = MXFunctionInvoke(
  "Icons.airplanemode_inactive",
    (
    ) =>
      Icons.airplanemode_inactive
);
var _icons_airplay = MXFunctionInvoke(
  "Icons.airplay",
    (
    ) =>
      Icons.airplay
);
var _icons_airport_shuttle = MXFunctionInvoke(
  "Icons.airport_shuttle",
    (
    ) =>
      Icons.airport_shuttle
);
var _icons_alarm = MXFunctionInvoke(
  "Icons.alarm",
    (
    ) =>
      Icons.alarm
);
var _icons_alarm_add = MXFunctionInvoke(
  "Icons.alarm_add",
    (
    ) =>
      Icons.alarm_add
);
var _icons_alarm_off = MXFunctionInvoke(
  "Icons.alarm_off",
    (
    ) =>
      Icons.alarm_off
);
var _icons_alarm_on = MXFunctionInvoke(
  "Icons.alarm_on",
    (
    ) =>
      Icons.alarm_on
);
var _icons_album = MXFunctionInvoke(
  "Icons.album",
    (
    ) =>
      Icons.album
);
var _icons_all_inclusive = MXFunctionInvoke(
  "Icons.all_inclusive",
    (
    ) =>
      Icons.all_inclusive
);
var _icons_all_out = MXFunctionInvoke(
  "Icons.all_out",
    (
    ) =>
      Icons.all_out
);
var _icons_alternate_email = MXFunctionInvoke(
  "Icons.alternate_email",
    (
    ) =>
      Icons.alternate_email
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
var _icons_arrow_back = MXFunctionInvoke(
  "Icons.arrow_back",
    (
    ) =>
      Icons.arrow_back
);
var _icons_arrow_back_ios = MXFunctionInvoke(
  "Icons.arrow_back_ios",
    (
    ) =>
      Icons.arrow_back_ios
);
var _icons_arrow_downward = MXFunctionInvoke(
  "Icons.arrow_downward",
    (
    ) =>
      Icons.arrow_downward
);
var _icons_arrow_drop_down = MXFunctionInvoke(
  "Icons.arrow_drop_down",
    (
    ) =>
      Icons.arrow_drop_down
);
var _icons_arrow_drop_down_circle = MXFunctionInvoke(
  "Icons.arrow_drop_down_circle",
    (
    ) =>
      Icons.arrow_drop_down_circle
);
var _icons_arrow_drop_up = MXFunctionInvoke(
  "Icons.arrow_drop_up",
    (
    ) =>
      Icons.arrow_drop_up
);
var _icons_arrow_forward = MXFunctionInvoke(
  "Icons.arrow_forward",
    (
    ) =>
      Icons.arrow_forward
);
var _icons_arrow_forward_ios = MXFunctionInvoke(
  "Icons.arrow_forward_ios",
    (
    ) =>
      Icons.arrow_forward_ios
);
var _icons_arrow_left = MXFunctionInvoke(
  "Icons.arrow_left",
    (
    ) =>
      Icons.arrow_left
);
var _icons_arrow_right = MXFunctionInvoke(
  "Icons.arrow_right",
    (
    ) =>
      Icons.arrow_right
);
var _icons_arrow_upward = MXFunctionInvoke(
  "Icons.arrow_upward",
    (
    ) =>
      Icons.arrow_upward
);
var _icons_art_track = MXFunctionInvoke(
  "Icons.art_track",
    (
    ) =>
      Icons.art_track
);
var _icons_aspect_ratio = MXFunctionInvoke(
  "Icons.aspect_ratio",
    (
    ) =>
      Icons.aspect_ratio
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
var _icons_assignment_ind = MXFunctionInvoke(
  "Icons.assignment_ind",
    (
    ) =>
      Icons.assignment_ind
);
var _icons_assignment_late = MXFunctionInvoke(
  "Icons.assignment_late",
    (
    ) =>
      Icons.assignment_late
);
var _icons_assignment_return = MXFunctionInvoke(
  "Icons.assignment_return",
    (
    ) =>
      Icons.assignment_return
);
var _icons_assignment_returned = MXFunctionInvoke(
  "Icons.assignment_returned",
    (
    ) =>
      Icons.assignment_returned
);
var _icons_assignment_turned_in = MXFunctionInvoke(
  "Icons.assignment_turned_in",
    (
    ) =>
      Icons.assignment_turned_in
);
var _icons_assistant = MXFunctionInvoke(
  "Icons.assistant",
    (
    ) =>
      Icons.assistant
);
var _icons_assistant_photo = MXFunctionInvoke(
  "Icons.assistant_photo",
    (
    ) =>
      Icons.assistant_photo
);
var _icons_atm = MXFunctionInvoke(
  "Icons.atm",
    (
    ) =>
      Icons.atm
);
var _icons_attach_file = MXFunctionInvoke(
  "Icons.attach_file",
    (
    ) =>
      Icons.attach_file
);
var _icons_attach_money = MXFunctionInvoke(
  "Icons.attach_money",
    (
    ) =>
      Icons.attach_money
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
var _icons_av_timer = MXFunctionInvoke(
  "Icons.av_timer",
    (
    ) =>
      Icons.av_timer
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
var _icons_battery_alert = MXFunctionInvoke(
  "Icons.battery_alert",
    (
    ) =>
      Icons.battery_alert
);
var _icons_battery_charging_full = MXFunctionInvoke(
  "Icons.battery_charging_full",
    (
    ) =>
      Icons.battery_charging_full
);
var _icons_battery_full = MXFunctionInvoke(
  "Icons.battery_full",
    (
    ) =>
      Icons.battery_full
);
var _icons_battery_std = MXFunctionInvoke(
  "Icons.battery_std",
    (
    ) =>
      Icons.battery_std
);
var _icons_battery_unknown = MXFunctionInvoke(
  "Icons.battery_unknown",
    (
    ) =>
      Icons.battery_unknown
);
var _icons_beach_access = MXFunctionInvoke(
  "Icons.beach_access",
    (
    ) =>
      Icons.beach_access
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
var _icons_bluetooth_audio = MXFunctionInvoke(
  "Icons.bluetooth_audio",
    (
    ) =>
      Icons.bluetooth_audio
);
var _icons_bluetooth_connected = MXFunctionInvoke(
  "Icons.bluetooth_connected",
    (
    ) =>
      Icons.bluetooth_connected
);
var _icons_bluetooth_disabled = MXFunctionInvoke(
  "Icons.bluetooth_disabled",
    (
    ) =>
      Icons.bluetooth_disabled
);
var _icons_bluetooth_searching = MXFunctionInvoke(
  "Icons.bluetooth_searching",
    (
    ) =>
      Icons.bluetooth_searching
);
var _icons_blur_circular = MXFunctionInvoke(
  "Icons.blur_circular",
    (
    ) =>
      Icons.blur_circular
);
var _icons_blur_linear = MXFunctionInvoke(
  "Icons.blur_linear",
    (
    ) =>
      Icons.blur_linear
);
var _icons_blur_off = MXFunctionInvoke(
  "Icons.blur_off",
    (
    ) =>
      Icons.blur_off
);
var _icons_blur_on = MXFunctionInvoke(
  "Icons.blur_on",
    (
    ) =>
      Icons.blur_on
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
var _icons_bookmark_border = MXFunctionInvoke(
  "Icons.bookmark_border",
    (
    ) =>
      Icons.bookmark_border
);
var _icons_border_all = MXFunctionInvoke(
  "Icons.border_all",
    (
    ) =>
      Icons.border_all
);
var _icons_border_bottom = MXFunctionInvoke(
  "Icons.border_bottom",
    (
    ) =>
      Icons.border_bottom
);
var _icons_border_clear = MXFunctionInvoke(
  "Icons.border_clear",
    (
    ) =>
      Icons.border_clear
);
var _icons_border_color = MXFunctionInvoke(
  "Icons.border_color",
    (
    ) =>
      Icons.border_color
);
var _icons_border_horizontal = MXFunctionInvoke(
  "Icons.border_horizontal",
    (
    ) =>
      Icons.border_horizontal
);
var _icons_border_inner = MXFunctionInvoke(
  "Icons.border_inner",
    (
    ) =>
      Icons.border_inner
);
var _icons_border_left = MXFunctionInvoke(
  "Icons.border_left",
    (
    ) =>
      Icons.border_left
);
var _icons_border_outer = MXFunctionInvoke(
  "Icons.border_outer",
    (
    ) =>
      Icons.border_outer
);
var _icons_border_right = MXFunctionInvoke(
  "Icons.border_right",
    (
    ) =>
      Icons.border_right
);
var _icons_border_style = MXFunctionInvoke(
  "Icons.border_style",
    (
    ) =>
      Icons.border_style
);
var _icons_border_top = MXFunctionInvoke(
  "Icons.border_top",
    (
    ) =>
      Icons.border_top
);
var _icons_border_vertical = MXFunctionInvoke(
  "Icons.border_vertical",
    (
    ) =>
      Icons.border_vertical
);
var _icons_branding_watermark = MXFunctionInvoke(
  "Icons.branding_watermark",
    (
    ) =>
      Icons.branding_watermark
);
var _icons_brightness_1 = MXFunctionInvoke(
  "Icons.brightness_1",
    (
    ) =>
      Icons.brightness_1
);
var _icons_brightness_2 = MXFunctionInvoke(
  "Icons.brightness_2",
    (
    ) =>
      Icons.brightness_2
);
var _icons_brightness_3 = MXFunctionInvoke(
  "Icons.brightness_3",
    (
    ) =>
      Icons.brightness_3
);
var _icons_brightness_4 = MXFunctionInvoke(
  "Icons.brightness_4",
    (
    ) =>
      Icons.brightness_4
);
var _icons_brightness_5 = MXFunctionInvoke(
  "Icons.brightness_5",
    (
    ) =>
      Icons.brightness_5
);
var _icons_brightness_6 = MXFunctionInvoke(
  "Icons.brightness_6",
    (
    ) =>
      Icons.brightness_6
);
var _icons_brightness_7 = MXFunctionInvoke(
  "Icons.brightness_7",
    (
    ) =>
      Icons.brightness_7
);
var _icons_brightness_auto = MXFunctionInvoke(
  "Icons.brightness_auto",
    (
    ) =>
      Icons.brightness_auto
);
var _icons_brightness_high = MXFunctionInvoke(
  "Icons.brightness_high",
    (
    ) =>
      Icons.brightness_high
);
var _icons_brightness_low = MXFunctionInvoke(
  "Icons.brightness_low",
    (
    ) =>
      Icons.brightness_low
);
var _icons_brightness_medium = MXFunctionInvoke(
  "Icons.brightness_medium",
    (
    ) =>
      Icons.brightness_medium
);
var _icons_broken_image = MXFunctionInvoke(
  "Icons.broken_image",
    (
    ) =>
      Icons.broken_image
);
var _icons_brush = MXFunctionInvoke(
  "Icons.brush",
    (
    ) =>
      Icons.brush
);
var _icons_bubble_chart = MXFunctionInvoke(
  "Icons.bubble_chart",
    (
    ) =>
      Icons.bubble_chart
);
var _icons_bug_report = MXFunctionInvoke(
  "Icons.bug_report",
    (
    ) =>
      Icons.bug_report
);
var _icons_build = MXFunctionInvoke(
  "Icons.build",
    (
    ) =>
      Icons.build
);
var _icons_burst_mode = MXFunctionInvoke(
  "Icons.burst_mode",
    (
    ) =>
      Icons.burst_mode
);
var _icons_business = MXFunctionInvoke(
  "Icons.business",
    (
    ) =>
      Icons.business
);
var _icons_business_center = MXFunctionInvoke(
  "Icons.business_center",
    (
    ) =>
      Icons.business_center
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
var _icons_calendar_today = MXFunctionInvoke(
  "Icons.calendar_today",
    (
    ) =>
      Icons.calendar_today
);
var _icons_calendar_view_day = MXFunctionInvoke(
  "Icons.calendar_view_day",
    (
    ) =>
      Icons.calendar_view_day
);
var _icons_call = MXFunctionInvoke(
  "Icons.call",
    (
    ) =>
      Icons.call
);
var _icons_call_end = MXFunctionInvoke(
  "Icons.call_end",
    (
    ) =>
      Icons.call_end
);
var _icons_call_made = MXFunctionInvoke(
  "Icons.call_made",
    (
    ) =>
      Icons.call_made
);
var _icons_call_merge = MXFunctionInvoke(
  "Icons.call_merge",
    (
    ) =>
      Icons.call_merge
);
var _icons_call_missed = MXFunctionInvoke(
  "Icons.call_missed",
    (
    ) =>
      Icons.call_missed
);
var _icons_call_missed_outgoing = MXFunctionInvoke(
  "Icons.call_missed_outgoing",
    (
    ) =>
      Icons.call_missed_outgoing
);
var _icons_call_received = MXFunctionInvoke(
  "Icons.call_received",
    (
    ) =>
      Icons.call_received
);
var _icons_call_split = MXFunctionInvoke(
  "Icons.call_split",
    (
    ) =>
      Icons.call_split
);
var _icons_call_to_action = MXFunctionInvoke(
  "Icons.call_to_action",
    (
    ) =>
      Icons.call_to_action
);
var _icons_camera = MXFunctionInvoke(
  "Icons.camera",
    (
    ) =>
      Icons.camera
);
var _icons_camera_alt = MXFunctionInvoke(
  "Icons.camera_alt",
    (
    ) =>
      Icons.camera_alt
);
var _icons_camera_enhance = MXFunctionInvoke(
  "Icons.camera_enhance",
    (
    ) =>
      Icons.camera_enhance
);
var _icons_camera_front = MXFunctionInvoke(
  "Icons.camera_front",
    (
    ) =>
      Icons.camera_front
);
var _icons_camera_rear = MXFunctionInvoke(
  "Icons.camera_rear",
    (
    ) =>
      Icons.camera_rear
);
var _icons_camera_roll = MXFunctionInvoke(
  "Icons.camera_roll",
    (
    ) =>
      Icons.camera_roll
);
var _icons_cancel = MXFunctionInvoke(
  "Icons.cancel",
    (
    ) =>
      Icons.cancel
);
var _icons_card_giftcard = MXFunctionInvoke(
  "Icons.card_giftcard",
    (
    ) =>
      Icons.card_giftcard
);
var _icons_card_membership = MXFunctionInvoke(
  "Icons.card_membership",
    (
    ) =>
      Icons.card_membership
);
var _icons_card_travel = MXFunctionInvoke(
  "Icons.card_travel",
    (
    ) =>
      Icons.card_travel
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
var _icons_cast_connected = MXFunctionInvoke(
  "Icons.cast_connected",
    (
    ) =>
      Icons.cast_connected
);
var _icons_category = MXFunctionInvoke(
  "Icons.category",
    (
    ) =>
      Icons.category
);
var _icons_center_focus_strong = MXFunctionInvoke(
  "Icons.center_focus_strong",
    (
    ) =>
      Icons.center_focus_strong
);
var _icons_center_focus_weak = MXFunctionInvoke(
  "Icons.center_focus_weak",
    (
    ) =>
      Icons.center_focus_weak
);
var _icons_change_history = MXFunctionInvoke(
  "Icons.change_history",
    (
    ) =>
      Icons.change_history
);
var _icons_chat = MXFunctionInvoke(
  "Icons.chat",
    (
    ) =>
      Icons.chat
);
var _icons_chat_bubble = MXFunctionInvoke(
  "Icons.chat_bubble",
    (
    ) =>
      Icons.chat_bubble
);
var _icons_chat_bubble_outline = MXFunctionInvoke(
  "Icons.chat_bubble_outline",
    (
    ) =>
      Icons.chat_bubble_outline
);
var _icons_check = MXFunctionInvoke(
  "Icons.check",
    (
    ) =>
      Icons.check
);
var _icons_check_box = MXFunctionInvoke(
  "Icons.check_box",
    (
    ) =>
      Icons.check_box
);
var _icons_check_box_outline_blank = MXFunctionInvoke(
  "Icons.check_box_outline_blank",
    (
    ) =>
      Icons.check_box_outline_blank
);
var _icons_check_circle = MXFunctionInvoke(
  "Icons.check_circle",
    (
    ) =>
      Icons.check_circle
);
var _icons_check_circle_outline = MXFunctionInvoke(
  "Icons.check_circle_outline",
    (
    ) =>
      Icons.check_circle_outline
);
var _icons_chevron_left = MXFunctionInvoke(
  "Icons.chevron_left",
    (
    ) =>
      Icons.chevron_left
);
var _icons_chevron_right = MXFunctionInvoke(
  "Icons.chevron_right",
    (
    ) =>
      Icons.chevron_right
);
var _icons_child_care = MXFunctionInvoke(
  "Icons.child_care",
    (
    ) =>
      Icons.child_care
);
var _icons_child_friendly = MXFunctionInvoke(
  "Icons.child_friendly",
    (
    ) =>
      Icons.child_friendly
);
var _icons_chrome_reader_mode = MXFunctionInvoke(
  "Icons.chrome_reader_mode",
    (
    ) =>
      Icons.chrome_reader_mode
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
var _icons_clear_all = MXFunctionInvoke(
  "Icons.clear_all",
    (
    ) =>
      Icons.clear_all
);
var _icons_close = MXFunctionInvoke(
  "Icons.close",
    (
    ) =>
      Icons.close
);
var _icons_closed_caption = MXFunctionInvoke(
  "Icons.closed_caption",
    (
    ) =>
      Icons.closed_caption
);
var _icons_cloud = MXFunctionInvoke(
  "Icons.cloud",
    (
    ) =>
      Icons.cloud
);
var _icons_cloud_circle = MXFunctionInvoke(
  "Icons.cloud_circle",
    (
    ) =>
      Icons.cloud_circle
);
var _icons_cloud_done = MXFunctionInvoke(
  "Icons.cloud_done",
    (
    ) =>
      Icons.cloud_done
);
var _icons_cloud_download = MXFunctionInvoke(
  "Icons.cloud_download",
    (
    ) =>
      Icons.cloud_download
);
var _icons_cloud_off = MXFunctionInvoke(
  "Icons.cloud_off",
    (
    ) =>
      Icons.cloud_off
);
var _icons_cloud_queue = MXFunctionInvoke(
  "Icons.cloud_queue",
    (
    ) =>
      Icons.cloud_queue
);
var _icons_cloud_upload = MXFunctionInvoke(
  "Icons.cloud_upload",
    (
    ) =>
      Icons.cloud_upload
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
var _icons_collections_bookmark = MXFunctionInvoke(
  "Icons.collections_bookmark",
    (
    ) =>
      Icons.collections_bookmark
);
var _icons_color_lens = MXFunctionInvoke(
  "Icons.color_lens",
    (
    ) =>
      Icons.color_lens
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
var _icons_compare_arrows = MXFunctionInvoke(
  "Icons.compare_arrows",
    (
    ) =>
      Icons.compare_arrows
);
var _icons_computer = MXFunctionInvoke(
  "Icons.computer",
    (
    ) =>
      Icons.computer
);
var _icons_confirmation_number = MXFunctionInvoke(
  "Icons.confirmation_number",
    (
    ) =>
      Icons.confirmation_number
);
var _icons_contact_mail = MXFunctionInvoke(
  "Icons.contact_mail",
    (
    ) =>
      Icons.contact_mail
);
var _icons_contact_phone = MXFunctionInvoke(
  "Icons.contact_phone",
    (
    ) =>
      Icons.contact_phone
);
var _icons_contacts = MXFunctionInvoke(
  "Icons.contacts",
    (
    ) =>
      Icons.contacts
);
var _icons_content_copy = MXFunctionInvoke(
  "Icons.content_copy",
    (
    ) =>
      Icons.content_copy
);
var _icons_content_cut = MXFunctionInvoke(
  "Icons.content_cut",
    (
    ) =>
      Icons.content_cut
);
var _icons_content_paste = MXFunctionInvoke(
  "Icons.content_paste",
    (
    ) =>
      Icons.content_paste
);
var _icons_control_point = MXFunctionInvoke(
  "Icons.control_point",
    (
    ) =>
      Icons.control_point
);
var _icons_control_point_duplicate = MXFunctionInvoke(
  "Icons.control_point_duplicate",
    (
    ) =>
      Icons.control_point_duplicate
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
var _icons_create_new_folder = MXFunctionInvoke(
  "Icons.create_new_folder",
    (
    ) =>
      Icons.create_new_folder
);
var _icons_credit_card = MXFunctionInvoke(
  "Icons.credit_card",
    (
    ) =>
      Icons.credit_card
);
var _icons_crop = MXFunctionInvoke(
  "Icons.crop",
    (
    ) =>
      Icons.crop
);
var _icons_crop_16_9 = MXFunctionInvoke(
  "Icons.crop_16_9",
    (
    ) =>
      Icons.crop_16_9
);
var _icons_crop_3_2 = MXFunctionInvoke(
  "Icons.crop_3_2",
    (
    ) =>
      Icons.crop_3_2
);
var _icons_crop_5_4 = MXFunctionInvoke(
  "Icons.crop_5_4",
    (
    ) =>
      Icons.crop_5_4
);
var _icons_crop_7_5 = MXFunctionInvoke(
  "Icons.crop_7_5",
    (
    ) =>
      Icons.crop_7_5
);
var _icons_crop_din = MXFunctionInvoke(
  "Icons.crop_din",
    (
    ) =>
      Icons.crop_din
);
var _icons_crop_free = MXFunctionInvoke(
  "Icons.crop_free",
    (
    ) =>
      Icons.crop_free
);
var _icons_crop_landscape = MXFunctionInvoke(
  "Icons.crop_landscape",
    (
    ) =>
      Icons.crop_landscape
);
var _icons_crop_original = MXFunctionInvoke(
  "Icons.crop_original",
    (
    ) =>
      Icons.crop_original
);
var _icons_crop_portrait = MXFunctionInvoke(
  "Icons.crop_portrait",
    (
    ) =>
      Icons.crop_portrait
);
var _icons_crop_rotate = MXFunctionInvoke(
  "Icons.crop_rotate",
    (
    ) =>
      Icons.crop_rotate
);
var _icons_crop_square = MXFunctionInvoke(
  "Icons.crop_square",
    (
    ) =>
      Icons.crop_square
);
var _icons_dashboard = MXFunctionInvoke(
  "Icons.dashboard",
    (
    ) =>
      Icons.dashboard
);
var _icons_data_usage = MXFunctionInvoke(
  "Icons.data_usage",
    (
    ) =>
      Icons.data_usage
);
var _icons_date_range = MXFunctionInvoke(
  "Icons.date_range",
    (
    ) =>
      Icons.date_range
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
var _icons_delete_forever = MXFunctionInvoke(
  "Icons.delete_forever",
    (
    ) =>
      Icons.delete_forever
);
var _icons_delete_outline = MXFunctionInvoke(
  "Icons.delete_outline",
    (
    ) =>
      Icons.delete_outline
);
var _icons_delete_sweep = MXFunctionInvoke(
  "Icons.delete_sweep",
    (
    ) =>
      Icons.delete_sweep
);
var _icons_departure_board = MXFunctionInvoke(
  "Icons.departure_board",
    (
    ) =>
      Icons.departure_board
);
var _icons_description = MXFunctionInvoke(
  "Icons.description",
    (
    ) =>
      Icons.description
);
var _icons_desktop_mac = MXFunctionInvoke(
  "Icons.desktop_mac",
    (
    ) =>
      Icons.desktop_mac
);
var _icons_desktop_windows = MXFunctionInvoke(
  "Icons.desktop_windows",
    (
    ) =>
      Icons.desktop_windows
);
var _icons_details = MXFunctionInvoke(
  "Icons.details",
    (
    ) =>
      Icons.details
);
var _icons_developer_board = MXFunctionInvoke(
  "Icons.developer_board",
    (
    ) =>
      Icons.developer_board
);
var _icons_developer_mode = MXFunctionInvoke(
  "Icons.developer_mode",
    (
    ) =>
      Icons.developer_mode
);
var _icons_device_hub = MXFunctionInvoke(
  "Icons.device_hub",
    (
    ) =>
      Icons.device_hub
);
var _icons_device_unknown = MXFunctionInvoke(
  "Icons.device_unknown",
    (
    ) =>
      Icons.device_unknown
);
var _icons_devices = MXFunctionInvoke(
  "Icons.devices",
    (
    ) =>
      Icons.devices
);
var _icons_devices_other = MXFunctionInvoke(
  "Icons.devices_other",
    (
    ) =>
      Icons.devices_other
);
var _icons_dialer_sip = MXFunctionInvoke(
  "Icons.dialer_sip",
    (
    ) =>
      Icons.dialer_sip
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
var _icons_directions_bike = MXFunctionInvoke(
  "Icons.directions_bike",
    (
    ) =>
      Icons.directions_bike
);
var _icons_directions_boat = MXFunctionInvoke(
  "Icons.directions_boat",
    (
    ) =>
      Icons.directions_boat
);
var _icons_directions_bus = MXFunctionInvoke(
  "Icons.directions_bus",
    (
    ) =>
      Icons.directions_bus
);
var _icons_directions_car = MXFunctionInvoke(
  "Icons.directions_car",
    (
    ) =>
      Icons.directions_car
);
var _icons_directions_railway = MXFunctionInvoke(
  "Icons.directions_railway",
    (
    ) =>
      Icons.directions_railway
);
var _icons_directions_run = MXFunctionInvoke(
  "Icons.directions_run",
    (
    ) =>
      Icons.directions_run
);
var _icons_directions_subway = MXFunctionInvoke(
  "Icons.directions_subway",
    (
    ) =>
      Icons.directions_subway
);
var _icons_directions_transit = MXFunctionInvoke(
  "Icons.directions_transit",
    (
    ) =>
      Icons.directions_transit
);
var _icons_directions_walk = MXFunctionInvoke(
  "Icons.directions_walk",
    (
    ) =>
      Icons.directions_walk
);
var _icons_disc_full = MXFunctionInvoke(
  "Icons.disc_full",
    (
    ) =>
      Icons.disc_full
);
var _icons_dns = MXFunctionInvoke(
  "Icons.dns",
    (
    ) =>
      Icons.dns
);
var _icons_do_not_disturb = MXFunctionInvoke(
  "Icons.do_not_disturb",
    (
    ) =>
      Icons.do_not_disturb
);
var _icons_do_not_disturb_alt = MXFunctionInvoke(
  "Icons.do_not_disturb_alt",
    (
    ) =>
      Icons.do_not_disturb_alt
);
var _icons_do_not_disturb_off = MXFunctionInvoke(
  "Icons.do_not_disturb_off",
    (
    ) =>
      Icons.do_not_disturb_off
);
var _icons_do_not_disturb_on = MXFunctionInvoke(
  "Icons.do_not_disturb_on",
    (
    ) =>
      Icons.do_not_disturb_on
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
var _icons_done_all = MXFunctionInvoke(
  "Icons.done_all",
    (
    ) =>
      Icons.done_all
);
var _icons_done_outline = MXFunctionInvoke(
  "Icons.done_outline",
    (
    ) =>
      Icons.done_outline
);
var _icons_donut_large = MXFunctionInvoke(
  "Icons.donut_large",
    (
    ) =>
      Icons.donut_large
);
var _icons_donut_small = MXFunctionInvoke(
  "Icons.donut_small",
    (
    ) =>
      Icons.donut_small
);
var _icons_drafts = MXFunctionInvoke(
  "Icons.drafts",
    (
    ) =>
      Icons.drafts
);
var _icons_drag_handle = MXFunctionInvoke(
  "Icons.drag_handle",
    (
    ) =>
      Icons.drag_handle
);
var _icons_drive_eta = MXFunctionInvoke(
  "Icons.drive_eta",
    (
    ) =>
      Icons.drive_eta
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
var _icons_edit_attributes = MXFunctionInvoke(
  "Icons.edit_attributes",
    (
    ) =>
      Icons.edit_attributes
);
var _icons_edit_location = MXFunctionInvoke(
  "Icons.edit_location",
    (
    ) =>
      Icons.edit_location
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
var _icons_enhanced_encryption = MXFunctionInvoke(
  "Icons.enhanced_encryption",
    (
    ) =>
      Icons.enhanced_encryption
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
var _icons_error_outline = MXFunctionInvoke(
  "Icons.error_outline",
    (
    ) =>
      Icons.error_outline
);
var _icons_euro_symbol = MXFunctionInvoke(
  "Icons.euro_symbol",
    (
    ) =>
      Icons.euro_symbol
);
var _icons_ev_station = MXFunctionInvoke(
  "Icons.ev_station",
    (
    ) =>
      Icons.ev_station
);
var _icons_event = MXFunctionInvoke(
  "Icons.event",
    (
    ) =>
      Icons.event
);
var _icons_event_available = MXFunctionInvoke(
  "Icons.event_available",
    (
    ) =>
      Icons.event_available
);
var _icons_event_busy = MXFunctionInvoke(
  "Icons.event_busy",
    (
    ) =>
      Icons.event_busy
);
var _icons_event_note = MXFunctionInvoke(
  "Icons.event_note",
    (
    ) =>
      Icons.event_note
);
var _icons_event_seat = MXFunctionInvoke(
  "Icons.event_seat",
    (
    ) =>
      Icons.event_seat
);
var _icons_exit_to_app = MXFunctionInvoke(
  "Icons.exit_to_app",
    (
    ) =>
      Icons.exit_to_app
);
var _icons_expand_less = MXFunctionInvoke(
  "Icons.expand_less",
    (
    ) =>
      Icons.expand_less
);
var _icons_expand_more = MXFunctionInvoke(
  "Icons.expand_more",
    (
    ) =>
      Icons.expand_more
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
var _icons_exposure_neg_1 = MXFunctionInvoke(
  "Icons.exposure_neg_1",
    (
    ) =>
      Icons.exposure_neg_1
);
var _icons_exposure_neg_2 = MXFunctionInvoke(
  "Icons.exposure_neg_2",
    (
    ) =>
      Icons.exposure_neg_2
);
var _icons_exposure_plus_1 = MXFunctionInvoke(
  "Icons.exposure_plus_1",
    (
    ) =>
      Icons.exposure_plus_1
);
var _icons_exposure_plus_2 = MXFunctionInvoke(
  "Icons.exposure_plus_2",
    (
    ) =>
      Icons.exposure_plus_2
);
var _icons_exposure_zero = MXFunctionInvoke(
  "Icons.exposure_zero",
    (
    ) =>
      Icons.exposure_zero
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
var _icons_fast_forward = MXFunctionInvoke(
  "Icons.fast_forward",
    (
    ) =>
      Icons.fast_forward
);
var _icons_fast_rewind = MXFunctionInvoke(
  "Icons.fast_rewind",
    (
    ) =>
      Icons.fast_rewind
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
var _icons_favorite_border = MXFunctionInvoke(
  "Icons.favorite_border",
    (
    ) =>
      Icons.favorite_border
);
var _icons_featured_play_list = MXFunctionInvoke(
  "Icons.featured_play_list",
    (
    ) =>
      Icons.featured_play_list
);
var _icons_featured_video = MXFunctionInvoke(
  "Icons.featured_video",
    (
    ) =>
      Icons.featured_video
);
var _icons_feedback = MXFunctionInvoke(
  "Icons.feedback",
    (
    ) =>
      Icons.feedback
);
var _icons_fiber_dvr = MXFunctionInvoke(
  "Icons.fiber_dvr",
    (
    ) =>
      Icons.fiber_dvr
);
var _icons_fiber_manual_record = MXFunctionInvoke(
  "Icons.fiber_manual_record",
    (
    ) =>
      Icons.fiber_manual_record
);
var _icons_fiber_new = MXFunctionInvoke(
  "Icons.fiber_new",
    (
    ) =>
      Icons.fiber_new
);
var _icons_fiber_pin = MXFunctionInvoke(
  "Icons.fiber_pin",
    (
    ) =>
      Icons.fiber_pin
);
var _icons_fiber_smart_record = MXFunctionInvoke(
  "Icons.fiber_smart_record",
    (
    ) =>
      Icons.fiber_smart_record
);
var _icons_file_download = MXFunctionInvoke(
  "Icons.file_download",
    (
    ) =>
      Icons.file_download
);
var _icons_file_upload = MXFunctionInvoke(
  "Icons.file_upload",
    (
    ) =>
      Icons.file_upload
);
var _icons_filter = MXFunctionInvoke(
  "Icons.filter",
    (
    ) =>
      Icons.filter
);
var _icons_filter_1 = MXFunctionInvoke(
  "Icons.filter_1",
    (
    ) =>
      Icons.filter_1
);
var _icons_filter_2 = MXFunctionInvoke(
  "Icons.filter_2",
    (
    ) =>
      Icons.filter_2
);
var _icons_filter_3 = MXFunctionInvoke(
  "Icons.filter_3",
    (
    ) =>
      Icons.filter_3
);
var _icons_filter_4 = MXFunctionInvoke(
  "Icons.filter_4",
    (
    ) =>
      Icons.filter_4
);
var _icons_filter_5 = MXFunctionInvoke(
  "Icons.filter_5",
    (
    ) =>
      Icons.filter_5
);
var _icons_filter_6 = MXFunctionInvoke(
  "Icons.filter_6",
    (
    ) =>
      Icons.filter_6
);
var _icons_filter_7 = MXFunctionInvoke(
  "Icons.filter_7",
    (
    ) =>
      Icons.filter_7
);
var _icons_filter_8 = MXFunctionInvoke(
  "Icons.filter_8",
    (
    ) =>
      Icons.filter_8
);
var _icons_filter_9 = MXFunctionInvoke(
  "Icons.filter_9",
    (
    ) =>
      Icons.filter_9
);
var _icons_filter_9_plus = MXFunctionInvoke(
  "Icons.filter_9_plus",
    (
    ) =>
      Icons.filter_9_plus
);
var _icons_filter_b_and_w = MXFunctionInvoke(
  "Icons.filter_b_and_w",
    (
    ) =>
      Icons.filter_b_and_w
);
var _icons_filter_center_focus = MXFunctionInvoke(
  "Icons.filter_center_focus",
    (
    ) =>
      Icons.filter_center_focus
);
var _icons_filter_drama = MXFunctionInvoke(
  "Icons.filter_drama",
    (
    ) =>
      Icons.filter_drama
);
var _icons_filter_frames = MXFunctionInvoke(
  "Icons.filter_frames",
    (
    ) =>
      Icons.filter_frames
);
var _icons_filter_hdr = MXFunctionInvoke(
  "Icons.filter_hdr",
    (
    ) =>
      Icons.filter_hdr
);
var _icons_filter_list = MXFunctionInvoke(
  "Icons.filter_list",
    (
    ) =>
      Icons.filter_list
);
var _icons_filter_none = MXFunctionInvoke(
  "Icons.filter_none",
    (
    ) =>
      Icons.filter_none
);
var _icons_filter_tilt_shift = MXFunctionInvoke(
  "Icons.filter_tilt_shift",
    (
    ) =>
      Icons.filter_tilt_shift
);
var _icons_filter_vintage = MXFunctionInvoke(
  "Icons.filter_vintage",
    (
    ) =>
      Icons.filter_vintage
);
var _icons_find_in_page = MXFunctionInvoke(
  "Icons.find_in_page",
    (
    ) =>
      Icons.find_in_page
);
var _icons_find_replace = MXFunctionInvoke(
  "Icons.find_replace",
    (
    ) =>
      Icons.find_replace
);
var _icons_fingerprint = MXFunctionInvoke(
  "Icons.fingerprint",
    (
    ) =>
      Icons.fingerprint
);
var _icons_first_page = MXFunctionInvoke(
  "Icons.first_page",
    (
    ) =>
      Icons.first_page
);
var _icons_fitness_center = MXFunctionInvoke(
  "Icons.fitness_center",
    (
    ) =>
      Icons.fitness_center
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
var _icons_flash_auto = MXFunctionInvoke(
  "Icons.flash_auto",
    (
    ) =>
      Icons.flash_auto
);
var _icons_flash_off = MXFunctionInvoke(
  "Icons.flash_off",
    (
    ) =>
      Icons.flash_off
);
var _icons_flash_on = MXFunctionInvoke(
  "Icons.flash_on",
    (
    ) =>
      Icons.flash_on
);
var _icons_flight = MXFunctionInvoke(
  "Icons.flight",
    (
    ) =>
      Icons.flight
);
var _icons_flight_land = MXFunctionInvoke(
  "Icons.flight_land",
    (
    ) =>
      Icons.flight_land
);
var _icons_flight_takeoff = MXFunctionInvoke(
  "Icons.flight_takeoff",
    (
    ) =>
      Icons.flight_takeoff
);
var _icons_flip = MXFunctionInvoke(
  "Icons.flip",
    (
    ) =>
      Icons.flip
);
var _icons_flip_to_back = MXFunctionInvoke(
  "Icons.flip_to_back",
    (
    ) =>
      Icons.flip_to_back
);
var _icons_flip_to_front = MXFunctionInvoke(
  "Icons.flip_to_front",
    (
    ) =>
      Icons.flip_to_front
);
var _icons_folder = MXFunctionInvoke(
  "Icons.folder",
    (
    ) =>
      Icons.folder
);
var _icons_folder_open = MXFunctionInvoke(
  "Icons.folder_open",
    (
    ) =>
      Icons.folder_open
);
var _icons_folder_shared = MXFunctionInvoke(
  "Icons.folder_shared",
    (
    ) =>
      Icons.folder_shared
);
var _icons_folder_special = MXFunctionInvoke(
  "Icons.folder_special",
    (
    ) =>
      Icons.folder_special
);
var _icons_font_download = MXFunctionInvoke(
  "Icons.font_download",
    (
    ) =>
      Icons.font_download
);
var _icons_format_align_center = MXFunctionInvoke(
  "Icons.format_align_center",
    (
    ) =>
      Icons.format_align_center
);
var _icons_format_align_justify = MXFunctionInvoke(
  "Icons.format_align_justify",
    (
    ) =>
      Icons.format_align_justify
);
var _icons_format_align_left = MXFunctionInvoke(
  "Icons.format_align_left",
    (
    ) =>
      Icons.format_align_left
);
var _icons_format_align_right = MXFunctionInvoke(
  "Icons.format_align_right",
    (
    ) =>
      Icons.format_align_right
);
var _icons_format_bold = MXFunctionInvoke(
  "Icons.format_bold",
    (
    ) =>
      Icons.format_bold
);
var _icons_format_clear = MXFunctionInvoke(
  "Icons.format_clear",
    (
    ) =>
      Icons.format_clear
);
var _icons_format_color_fill = MXFunctionInvoke(
  "Icons.format_color_fill",
    (
    ) =>
      Icons.format_color_fill
);
var _icons_format_color_reset = MXFunctionInvoke(
  "Icons.format_color_reset",
    (
    ) =>
      Icons.format_color_reset
);
var _icons_format_color_text = MXFunctionInvoke(
  "Icons.format_color_text",
    (
    ) =>
      Icons.format_color_text
);
var _icons_format_indent_decrease = MXFunctionInvoke(
  "Icons.format_indent_decrease",
    (
    ) =>
      Icons.format_indent_decrease
);
var _icons_format_indent_increase = MXFunctionInvoke(
  "Icons.format_indent_increase",
    (
    ) =>
      Icons.format_indent_increase
);
var _icons_format_italic = MXFunctionInvoke(
  "Icons.format_italic",
    (
    ) =>
      Icons.format_italic
);
var _icons_format_line_spacing = MXFunctionInvoke(
  "Icons.format_line_spacing",
    (
    ) =>
      Icons.format_line_spacing
);
var _icons_format_list_bulleted = MXFunctionInvoke(
  "Icons.format_list_bulleted",
    (
    ) =>
      Icons.format_list_bulleted
);
var _icons_format_list_numbered = MXFunctionInvoke(
  "Icons.format_list_numbered",
    (
    ) =>
      Icons.format_list_numbered
);
var _icons_format_list_numbered_rtl = MXFunctionInvoke(
  "Icons.format_list_numbered_rtl",
    (
    ) =>
      Icons.format_list_numbered_rtl
);
var _icons_format_paint = MXFunctionInvoke(
  "Icons.format_paint",
    (
    ) =>
      Icons.format_paint
);
var _icons_format_quote = MXFunctionInvoke(
  "Icons.format_quote",
    (
    ) =>
      Icons.format_quote
);
var _icons_format_shapes = MXFunctionInvoke(
  "Icons.format_shapes",
    (
    ) =>
      Icons.format_shapes
);
var _icons_format_size = MXFunctionInvoke(
  "Icons.format_size",
    (
    ) =>
      Icons.format_size
);
var _icons_format_strikethrough = MXFunctionInvoke(
  "Icons.format_strikethrough",
    (
    ) =>
      Icons.format_strikethrough
);
var _icons_format_textdirection_l_to_r = MXFunctionInvoke(
  "Icons.format_textdirection_l_to_r",
    (
    ) =>
      Icons.format_textdirection_l_to_r
);
var _icons_format_textdirection_r_to_l = MXFunctionInvoke(
  "Icons.format_textdirection_r_to_l",
    (
    ) =>
      Icons.format_textdirection_r_to_l
);
var _icons_format_underlined = MXFunctionInvoke(
  "Icons.format_underlined",
    (
    ) =>
      Icons.format_underlined
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
var _icons_forward_10 = MXFunctionInvoke(
  "Icons.forward_10",
    (
    ) =>
      Icons.forward_10
);
var _icons_forward_30 = MXFunctionInvoke(
  "Icons.forward_30",
    (
    ) =>
      Icons.forward_30
);
var _icons_forward_5 = MXFunctionInvoke(
  "Icons.forward_5",
    (
    ) =>
      Icons.forward_5
);
var _icons_free_breakfast = MXFunctionInvoke(
  "Icons.free_breakfast",
    (
    ) =>
      Icons.free_breakfast
);
var _icons_fullscreen = MXFunctionInvoke(
  "Icons.fullscreen",
    (
    ) =>
      Icons.fullscreen
);
var _icons_fullscreen_exit = MXFunctionInvoke(
  "Icons.fullscreen_exit",
    (
    ) =>
      Icons.fullscreen_exit
);
var _icons_functions = MXFunctionInvoke(
  "Icons.functions",
    (
    ) =>
      Icons.functions
);
var _icons_g_translate = MXFunctionInvoke(
  "Icons.g_translate",
    (
    ) =>
      Icons.g_translate
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
var _icons_get_app = MXFunctionInvoke(
  "Icons.get_app",
    (
    ) =>
      Icons.get_app
);
var _icons_gif = MXFunctionInvoke(
  "Icons.gif",
    (
    ) =>
      Icons.gif
);
var _icons_golf_course = MXFunctionInvoke(
  "Icons.golf_course",
    (
    ) =>
      Icons.golf_course
);
var _icons_gps_fixed = MXFunctionInvoke(
  "Icons.gps_fixed",
    (
    ) =>
      Icons.gps_fixed
);
var _icons_gps_not_fixed = MXFunctionInvoke(
  "Icons.gps_not_fixed",
    (
    ) =>
      Icons.gps_not_fixed
);
var _icons_gps_off = MXFunctionInvoke(
  "Icons.gps_off",
    (
    ) =>
      Icons.gps_off
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
var _icons_graphic_eq = MXFunctionInvoke(
  "Icons.graphic_eq",
    (
    ) =>
      Icons.graphic_eq
);
var _icons_grid_off = MXFunctionInvoke(
  "Icons.grid_off",
    (
    ) =>
      Icons.grid_off
);
var _icons_grid_on = MXFunctionInvoke(
  "Icons.grid_on",
    (
    ) =>
      Icons.grid_on
);
var _icons_group = MXFunctionInvoke(
  "Icons.group",
    (
    ) =>
      Icons.group
);
var _icons_group_add = MXFunctionInvoke(
  "Icons.group_add",
    (
    ) =>
      Icons.group_add
);
var _icons_group_work = MXFunctionInvoke(
  "Icons.group_work",
    (
    ) =>
      Icons.group_work
);
var _icons_hd = MXFunctionInvoke(
  "Icons.hd",
    (
    ) =>
      Icons.hd
);
var _icons_hdr_off = MXFunctionInvoke(
  "Icons.hdr_off",
    (
    ) =>
      Icons.hdr_off
);
var _icons_hdr_on = MXFunctionInvoke(
  "Icons.hdr_on",
    (
    ) =>
      Icons.hdr_on
);
var _icons_hdr_strong = MXFunctionInvoke(
  "Icons.hdr_strong",
    (
    ) =>
      Icons.hdr_strong
);
var _icons_hdr_weak = MXFunctionInvoke(
  "Icons.hdr_weak",
    (
    ) =>
      Icons.hdr_weak
);
var _icons_headset = MXFunctionInvoke(
  "Icons.headset",
    (
    ) =>
      Icons.headset
);
var _icons_headset_mic = MXFunctionInvoke(
  "Icons.headset_mic",
    (
    ) =>
      Icons.headset_mic
);
var _icons_headset_off = MXFunctionInvoke(
  "Icons.headset_off",
    (
    ) =>
      Icons.headset_off
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
var _icons_help_outline = MXFunctionInvoke(
  "Icons.help_outline",
    (
    ) =>
      Icons.help_outline
);
var _icons_high_quality = MXFunctionInvoke(
  "Icons.high_quality",
    (
    ) =>
      Icons.high_quality
);
var _icons_highlight = MXFunctionInvoke(
  "Icons.highlight",
    (
    ) =>
      Icons.highlight
);
var _icons_highlight_off = MXFunctionInvoke(
  "Icons.highlight_off",
    (
    ) =>
      Icons.highlight_off
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
var _icons_hot_tub = MXFunctionInvoke(
  "Icons.hot_tub",
    (
    ) =>
      Icons.hot_tub
);
var _icons_hotel = MXFunctionInvoke(
  "Icons.hotel",
    (
    ) =>
      Icons.hotel
);
var _icons_hourglass_empty = MXFunctionInvoke(
  "Icons.hourglass_empty",
    (
    ) =>
      Icons.hourglass_empty
);
var _icons_hourglass_full = MXFunctionInvoke(
  "Icons.hourglass_full",
    (
    ) =>
      Icons.hourglass_full
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
var _icons_image_aspect_ratio = MXFunctionInvoke(
  "Icons.image_aspect_ratio",
    (
    ) =>
      Icons.image_aspect_ratio
);
var _icons_import_contacts = MXFunctionInvoke(
  "Icons.import_contacts",
    (
    ) =>
      Icons.import_contacts
);
var _icons_import_export = MXFunctionInvoke(
  "Icons.import_export",
    (
    ) =>
      Icons.import_export
);
var _icons_important_devices = MXFunctionInvoke(
  "Icons.important_devices",
    (
    ) =>
      Icons.important_devices
);
var _icons_inbox = MXFunctionInvoke(
  "Icons.inbox",
    (
    ) =>
      Icons.inbox
);
var _icons_indeterminate_check_box = MXFunctionInvoke(
  "Icons.indeterminate_check_box",
    (
    ) =>
      Icons.indeterminate_check_box
);
var _icons_info = MXFunctionInvoke(
  "Icons.info",
    (
    ) =>
      Icons.info
);
var _icons_info_outline = MXFunctionInvoke(
  "Icons.info_outline",
    (
    ) =>
      Icons.info_outline
);
var _icons_input = MXFunctionInvoke(
  "Icons.input",
    (
    ) =>
      Icons.input
);
var _icons_insert_chart = MXFunctionInvoke(
  "Icons.insert_chart",
    (
    ) =>
      Icons.insert_chart
);
var _icons_insert_comment = MXFunctionInvoke(
  "Icons.insert_comment",
    (
    ) =>
      Icons.insert_comment
);
var _icons_insert_drive_file = MXFunctionInvoke(
  "Icons.insert_drive_file",
    (
    ) =>
      Icons.insert_drive_file
);
var _icons_insert_emoticon = MXFunctionInvoke(
  "Icons.insert_emoticon",
    (
    ) =>
      Icons.insert_emoticon
);
var _icons_insert_invitation = MXFunctionInvoke(
  "Icons.insert_invitation",
    (
    ) =>
      Icons.insert_invitation
);
var _icons_insert_link = MXFunctionInvoke(
  "Icons.insert_link",
    (
    ) =>
      Icons.insert_link
);
var _icons_insert_photo = MXFunctionInvoke(
  "Icons.insert_photo",
    (
    ) =>
      Icons.insert_photo
);
var _icons_invert_colors = MXFunctionInvoke(
  "Icons.invert_colors",
    (
    ) =>
      Icons.invert_colors
);
var _icons_invert_colors_off = MXFunctionInvoke(
  "Icons.invert_colors_off",
    (
    ) =>
      Icons.invert_colors_off
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
var _icons_keyboard_arrow_down = MXFunctionInvoke(
  "Icons.keyboard_arrow_down",
    (
    ) =>
      Icons.keyboard_arrow_down
);
var _icons_keyboard_arrow_left = MXFunctionInvoke(
  "Icons.keyboard_arrow_left",
    (
    ) =>
      Icons.keyboard_arrow_left
);
var _icons_keyboard_arrow_right = MXFunctionInvoke(
  "Icons.keyboard_arrow_right",
    (
    ) =>
      Icons.keyboard_arrow_right
);
var _icons_keyboard_arrow_up = MXFunctionInvoke(
  "Icons.keyboard_arrow_up",
    (
    ) =>
      Icons.keyboard_arrow_up
);
var _icons_keyboard_backspace = MXFunctionInvoke(
  "Icons.keyboard_backspace",
    (
    ) =>
      Icons.keyboard_backspace
);
var _icons_keyboard_capslock = MXFunctionInvoke(
  "Icons.keyboard_capslock",
    (
    ) =>
      Icons.keyboard_capslock
);
var _icons_keyboard_hide = MXFunctionInvoke(
  "Icons.keyboard_hide",
    (
    ) =>
      Icons.keyboard_hide
);
var _icons_keyboard_return = MXFunctionInvoke(
  "Icons.keyboard_return",
    (
    ) =>
      Icons.keyboard_return
);
var _icons_keyboard_tab = MXFunctionInvoke(
  "Icons.keyboard_tab",
    (
    ) =>
      Icons.keyboard_tab
);
var _icons_keyboard_voice = MXFunctionInvoke(
  "Icons.keyboard_voice",
    (
    ) =>
      Icons.keyboard_voice
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
var _icons_label_important = MXFunctionInvoke(
  "Icons.label_important",
    (
    ) =>
      Icons.label_important
);
var _icons_label_outline = MXFunctionInvoke(
  "Icons.label_outline",
    (
    ) =>
      Icons.label_outline
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
var _icons_laptop_chromebook = MXFunctionInvoke(
  "Icons.laptop_chromebook",
    (
    ) =>
      Icons.laptop_chromebook
);
var _icons_laptop_mac = MXFunctionInvoke(
  "Icons.laptop_mac",
    (
    ) =>
      Icons.laptop_mac
);
var _icons_laptop_windows = MXFunctionInvoke(
  "Icons.laptop_windows",
    (
    ) =>
      Icons.laptop_windows
);
var _icons_last_page = MXFunctionInvoke(
  "Icons.last_page",
    (
    ) =>
      Icons.last_page
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
var _icons_layers_clear = MXFunctionInvoke(
  "Icons.layers_clear",
    (
    ) =>
      Icons.layers_clear
);
var _icons_leak_add = MXFunctionInvoke(
  "Icons.leak_add",
    (
    ) =>
      Icons.leak_add
);
var _icons_leak_remove = MXFunctionInvoke(
  "Icons.leak_remove",
    (
    ) =>
      Icons.leak_remove
);
var _icons_lens = MXFunctionInvoke(
  "Icons.lens",
    (
    ) =>
      Icons.lens
);
var _icons_library_add = MXFunctionInvoke(
  "Icons.library_add",
    (
    ) =>
      Icons.library_add
);
var _icons_library_books = MXFunctionInvoke(
  "Icons.library_books",
    (
    ) =>
      Icons.library_books
);
var _icons_library_music = MXFunctionInvoke(
  "Icons.library_music",
    (
    ) =>
      Icons.library_music
);
var _icons_lightbulb_outline = MXFunctionInvoke(
  "Icons.lightbulb_outline",
    (
    ) =>
      Icons.lightbulb_outline
);
var _icons_line_style = MXFunctionInvoke(
  "Icons.line_style",
    (
    ) =>
      Icons.line_style
);
var _icons_line_weight = MXFunctionInvoke(
  "Icons.line_weight",
    (
    ) =>
      Icons.line_weight
);
var _icons_linear_scale = MXFunctionInvoke(
  "Icons.linear_scale",
    (
    ) =>
      Icons.linear_scale
);
var _icons_link = MXFunctionInvoke(
  "Icons.link",
    (
    ) =>
      Icons.link
);
var _icons_link_off = MXFunctionInvoke(
  "Icons.link_off",
    (
    ) =>
      Icons.link_off
);
var _icons_linked_camera = MXFunctionInvoke(
  "Icons.linked_camera",
    (
    ) =>
      Icons.linked_camera
);
var _icons_list = MXFunctionInvoke(
  "Icons.list",
    (
    ) =>
      Icons.list
);
var _icons_live_help = MXFunctionInvoke(
  "Icons.live_help",
    (
    ) =>
      Icons.live_help
);
var _icons_live_tv = MXFunctionInvoke(
  "Icons.live_tv",
    (
    ) =>
      Icons.live_tv
);
var _icons_local_activity = MXFunctionInvoke(
  "Icons.local_activity",
    (
    ) =>
      Icons.local_activity
);
var _icons_local_airport = MXFunctionInvoke(
  "Icons.local_airport",
    (
    ) =>
      Icons.local_airport
);
var _icons_local_atm = MXFunctionInvoke(
  "Icons.local_atm",
    (
    ) =>
      Icons.local_atm
);
var _icons_local_bar = MXFunctionInvoke(
  "Icons.local_bar",
    (
    ) =>
      Icons.local_bar
);
var _icons_local_cafe = MXFunctionInvoke(
  "Icons.local_cafe",
    (
    ) =>
      Icons.local_cafe
);
var _icons_local_car_wash = MXFunctionInvoke(
  "Icons.local_car_wash",
    (
    ) =>
      Icons.local_car_wash
);
var _icons_local_convenience_store = MXFunctionInvoke(
  "Icons.local_convenience_store",
    (
    ) =>
      Icons.local_convenience_store
);
var _icons_local_dining = MXFunctionInvoke(
  "Icons.local_dining",
    (
    ) =>
      Icons.local_dining
);
var _icons_local_drink = MXFunctionInvoke(
  "Icons.local_drink",
    (
    ) =>
      Icons.local_drink
);
var _icons_local_florist = MXFunctionInvoke(
  "Icons.local_florist",
    (
    ) =>
      Icons.local_florist
);
var _icons_local_gas_station = MXFunctionInvoke(
  "Icons.local_gas_station",
    (
    ) =>
      Icons.local_gas_station
);
var _icons_local_grocery_store = MXFunctionInvoke(
  "Icons.local_grocery_store",
    (
    ) =>
      Icons.local_grocery_store
);
var _icons_local_hospital = MXFunctionInvoke(
  "Icons.local_hospital",
    (
    ) =>
      Icons.local_hospital
);
var _icons_local_hotel = MXFunctionInvoke(
  "Icons.local_hotel",
    (
    ) =>
      Icons.local_hotel
);
var _icons_local_laundry_service = MXFunctionInvoke(
  "Icons.local_laundry_service",
    (
    ) =>
      Icons.local_laundry_service
);
var _icons_local_library = MXFunctionInvoke(
  "Icons.local_library",
    (
    ) =>
      Icons.local_library
);
var _icons_local_mall = MXFunctionInvoke(
  "Icons.local_mall",
    (
    ) =>
      Icons.local_mall
);
var _icons_local_movies = MXFunctionInvoke(
  "Icons.local_movies",
    (
    ) =>
      Icons.local_movies
);
var _icons_local_offer = MXFunctionInvoke(
  "Icons.local_offer",
    (
    ) =>
      Icons.local_offer
);
var _icons_local_parking = MXFunctionInvoke(
  "Icons.local_parking",
    (
    ) =>
      Icons.local_parking
);
var _icons_local_pharmacy = MXFunctionInvoke(
  "Icons.local_pharmacy",
    (
    ) =>
      Icons.local_pharmacy
);
var _icons_local_phone = MXFunctionInvoke(
  "Icons.local_phone",
    (
    ) =>
      Icons.local_phone
);
var _icons_local_pizza = MXFunctionInvoke(
  "Icons.local_pizza",
    (
    ) =>
      Icons.local_pizza
);
var _icons_local_play = MXFunctionInvoke(
  "Icons.local_play",
    (
    ) =>
      Icons.local_play
);
var _icons_local_post_office = MXFunctionInvoke(
  "Icons.local_post_office",
    (
    ) =>
      Icons.local_post_office
);
var _icons_local_printshop = MXFunctionInvoke(
  "Icons.local_printshop",
    (
    ) =>
      Icons.local_printshop
);
var _icons_local_see = MXFunctionInvoke(
  "Icons.local_see",
    (
    ) =>
      Icons.local_see
);
var _icons_local_shipping = MXFunctionInvoke(
  "Icons.local_shipping",
    (
    ) =>
      Icons.local_shipping
);
var _icons_local_taxi = MXFunctionInvoke(
  "Icons.local_taxi",
    (
    ) =>
      Icons.local_taxi
);
var _icons_location_city = MXFunctionInvoke(
  "Icons.location_city",
    (
    ) =>
      Icons.location_city
);
var _icons_location_disabled = MXFunctionInvoke(
  "Icons.location_disabled",
    (
    ) =>
      Icons.location_disabled
);
var _icons_location_off = MXFunctionInvoke(
  "Icons.location_off",
    (
    ) =>
      Icons.location_off
);
var _icons_location_on = MXFunctionInvoke(
  "Icons.location_on",
    (
    ) =>
      Icons.location_on
);
var _icons_location_searching = MXFunctionInvoke(
  "Icons.location_searching",
    (
    ) =>
      Icons.location_searching
);
var _icons_lock = MXFunctionInvoke(
  "Icons.lock",
    (
    ) =>
      Icons.lock
);
var _icons_lock_open = MXFunctionInvoke(
  "Icons.lock_open",
    (
    ) =>
      Icons.lock_open
);
var _icons_lock_outline = MXFunctionInvoke(
  "Icons.lock_outline",
    (
    ) =>
      Icons.lock_outline
);
var _icons_looks = MXFunctionInvoke(
  "Icons.looks",
    (
    ) =>
      Icons.looks
);
var _icons_looks_3 = MXFunctionInvoke(
  "Icons.looks_3",
    (
    ) =>
      Icons.looks_3
);
var _icons_looks_4 = MXFunctionInvoke(
  "Icons.looks_4",
    (
    ) =>
      Icons.looks_4
);
var _icons_looks_5 = MXFunctionInvoke(
  "Icons.looks_5",
    (
    ) =>
      Icons.looks_5
);
var _icons_looks_6 = MXFunctionInvoke(
  "Icons.looks_6",
    (
    ) =>
      Icons.looks_6
);
var _icons_looks_one = MXFunctionInvoke(
  "Icons.looks_one",
    (
    ) =>
      Icons.looks_one
);
var _icons_looks_two = MXFunctionInvoke(
  "Icons.looks_two",
    (
    ) =>
      Icons.looks_two
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
var _icons_low_priority = MXFunctionInvoke(
  "Icons.low_priority",
    (
    ) =>
      Icons.low_priority
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
var _icons_mail_outline = MXFunctionInvoke(
  "Icons.mail_outline",
    (
    ) =>
      Icons.mail_outline
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
var _icons_markunread_mailbox = MXFunctionInvoke(
  "Icons.markunread_mailbox",
    (
    ) =>
      Icons.markunread_mailbox
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
var _icons_merge_type = MXFunctionInvoke(
  "Icons.merge_type",
    (
    ) =>
      Icons.merge_type
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
var _icons_mic_none = MXFunctionInvoke(
  "Icons.mic_none",
    (
    ) =>
      Icons.mic_none
);
var _icons_mic_off = MXFunctionInvoke(
  "Icons.mic_off",
    (
    ) =>
      Icons.mic_off
);
var _icons_minimize = MXFunctionInvoke(
  "Icons.minimize",
    (
    ) =>
      Icons.minimize
);
var _icons_missed_video_call = MXFunctionInvoke(
  "Icons.missed_video_call",
    (
    ) =>
      Icons.missed_video_call
);
var _icons_mms = MXFunctionInvoke(
  "Icons.mms",
    (
    ) =>
      Icons.mms
);
var _icons_mobile_screen_share = MXFunctionInvoke(
  "Icons.mobile_screen_share",
    (
    ) =>
      Icons.mobile_screen_share
);
var _icons_mode_comment = MXFunctionInvoke(
  "Icons.mode_comment",
    (
    ) =>
      Icons.mode_comment
);
var _icons_mode_edit = MXFunctionInvoke(
  "Icons.mode_edit",
    (
    ) =>
      Icons.mode_edit
);
var _icons_monetization_on = MXFunctionInvoke(
  "Icons.monetization_on",
    (
    ) =>
      Icons.monetization_on
);
var _icons_money_off = MXFunctionInvoke(
  "Icons.money_off",
    (
    ) =>
      Icons.money_off
);
var _icons_monochrome_photos = MXFunctionInvoke(
  "Icons.monochrome_photos",
    (
    ) =>
      Icons.monochrome_photos
);
var _icons_mood = MXFunctionInvoke(
  "Icons.mood",
    (
    ) =>
      Icons.mood
);
var _icons_mood_bad = MXFunctionInvoke(
  "Icons.mood_bad",
    (
    ) =>
      Icons.mood_bad
);
var _icons_more = MXFunctionInvoke(
  "Icons.more",
    (
    ) =>
      Icons.more
);
var _icons_more_horiz = MXFunctionInvoke(
  "Icons.more_horiz",
    (
    ) =>
      Icons.more_horiz
);
var _icons_more_vert = MXFunctionInvoke(
  "Icons.more_vert",
    (
    ) =>
      Icons.more_vert
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
var _icons_move_to_inbox = MXFunctionInvoke(
  "Icons.move_to_inbox",
    (
    ) =>
      Icons.move_to_inbox
);
var _icons_movie = MXFunctionInvoke(
  "Icons.movie",
    (
    ) =>
      Icons.movie
);
var _icons_movie_creation = MXFunctionInvoke(
  "Icons.movie_creation",
    (
    ) =>
      Icons.movie_creation
);
var _icons_movie_filter = MXFunctionInvoke(
  "Icons.movie_filter",
    (
    ) =>
      Icons.movie_filter
);
var _icons_multiline_chart = MXFunctionInvoke(
  "Icons.multiline_chart",
    (
    ) =>
      Icons.multiline_chart
);
var _icons_music_note = MXFunctionInvoke(
  "Icons.music_note",
    (
    ) =>
      Icons.music_note
);
var _icons_music_video = MXFunctionInvoke(
  "Icons.music_video",
    (
    ) =>
      Icons.music_video
);
var _icons_my_location = MXFunctionInvoke(
  "Icons.my_location",
    (
    ) =>
      Icons.my_location
);
var _icons_nature = MXFunctionInvoke(
  "Icons.nature",
    (
    ) =>
      Icons.nature
);
var _icons_nature_people = MXFunctionInvoke(
  "Icons.nature_people",
    (
    ) =>
      Icons.nature_people
);
var _icons_navigate_before = MXFunctionInvoke(
  "Icons.navigate_before",
    (
    ) =>
      Icons.navigate_before
);
var _icons_navigate_next = MXFunctionInvoke(
  "Icons.navigate_next",
    (
    ) =>
      Icons.navigate_next
);
var _icons_navigation = MXFunctionInvoke(
  "Icons.navigation",
    (
    ) =>
      Icons.navigation
);
var _icons_near_me = MXFunctionInvoke(
  "Icons.near_me",
    (
    ) =>
      Icons.near_me
);
var _icons_network_cell = MXFunctionInvoke(
  "Icons.network_cell",
    (
    ) =>
      Icons.network_cell
);
var _icons_network_check = MXFunctionInvoke(
  "Icons.network_check",
    (
    ) =>
      Icons.network_check
);
var _icons_network_locked = MXFunctionInvoke(
  "Icons.network_locked",
    (
    ) =>
      Icons.network_locked
);
var _icons_network_wifi = MXFunctionInvoke(
  "Icons.network_wifi",
    (
    ) =>
      Icons.network_wifi
);
var _icons_new_releases = MXFunctionInvoke(
  "Icons.new_releases",
    (
    ) =>
      Icons.new_releases
);
var _icons_next_week = MXFunctionInvoke(
  "Icons.next_week",
    (
    ) =>
      Icons.next_week
);
var _icons_nfc = MXFunctionInvoke(
  "Icons.nfc",
    (
    ) =>
      Icons.nfc
);
var _icons_no_encryption = MXFunctionInvoke(
  "Icons.no_encryption",
    (
    ) =>
      Icons.no_encryption
);
var _icons_no_sim = MXFunctionInvoke(
  "Icons.no_sim",
    (
    ) =>
      Icons.no_sim
);
var _icons_not_interested = MXFunctionInvoke(
  "Icons.not_interested",
    (
    ) =>
      Icons.not_interested
);
var _icons_not_listed_location = MXFunctionInvoke(
  "Icons.not_listed_location",
    (
    ) =>
      Icons.not_listed_location
);
var _icons_note = MXFunctionInvoke(
  "Icons.note",
    (
    ) =>
      Icons.note
);
var _icons_note_add = MXFunctionInvoke(
  "Icons.note_add",
    (
    ) =>
      Icons.note_add
);
var _icons_notification_important = MXFunctionInvoke(
  "Icons.notification_important",
    (
    ) =>
      Icons.notification_important
);
var _icons_notifications = MXFunctionInvoke(
  "Icons.notifications",
    (
    ) =>
      Icons.notifications
);
var _icons_notifications_active = MXFunctionInvoke(
  "Icons.notifications_active",
    (
    ) =>
      Icons.notifications_active
);
var _icons_notifications_none = MXFunctionInvoke(
  "Icons.notifications_none",
    (
    ) =>
      Icons.notifications_none
);
var _icons_notifications_off = MXFunctionInvoke(
  "Icons.notifications_off",
    (
    ) =>
      Icons.notifications_off
);
var _icons_notifications_paused = MXFunctionInvoke(
  "Icons.notifications_paused",
    (
    ) =>
      Icons.notifications_paused
);
var _icons_offline_bolt = MXFunctionInvoke(
  "Icons.offline_bolt",
    (
    ) =>
      Icons.offline_bolt
);
var _icons_offline_pin = MXFunctionInvoke(
  "Icons.offline_pin",
    (
    ) =>
      Icons.offline_pin
);
var _icons_ondemand_video = MXFunctionInvoke(
  "Icons.ondemand_video",
    (
    ) =>
      Icons.ondemand_video
);
var _icons_opacity = MXFunctionInvoke(
  "Icons.opacity",
    (
    ) =>
      Icons.opacity
);
var _icons_open_in_browser = MXFunctionInvoke(
  "Icons.open_in_browser",
    (
    ) =>
      Icons.open_in_browser
);
var _icons_open_in_new = MXFunctionInvoke(
  "Icons.open_in_new",
    (
    ) =>
      Icons.open_in_new
);
var _icons_open_with = MXFunctionInvoke(
  "Icons.open_with",
    (
    ) =>
      Icons.open_with
);
var _icons_outlined_flag = MXFunctionInvoke(
  "Icons.outlined_flag",
    (
    ) =>
      Icons.outlined_flag
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
var _icons_pan_tool = MXFunctionInvoke(
  "Icons.pan_tool",
    (
    ) =>
      Icons.pan_tool
);
var _icons_panorama = MXFunctionInvoke(
  "Icons.panorama",
    (
    ) =>
      Icons.panorama
);
var _icons_panorama_fish_eye = MXFunctionInvoke(
  "Icons.panorama_fish_eye",
    (
    ) =>
      Icons.panorama_fish_eye
);
var _icons_panorama_horizontal = MXFunctionInvoke(
  "Icons.panorama_horizontal",
    (
    ) =>
      Icons.panorama_horizontal
);
var _icons_panorama_vertical = MXFunctionInvoke(
  "Icons.panorama_vertical",
    (
    ) =>
      Icons.panorama_vertical
);
var _icons_panorama_wide_angle = MXFunctionInvoke(
  "Icons.panorama_wide_angle",
    (
    ) =>
      Icons.panorama_wide_angle
);
var _icons_party_mode = MXFunctionInvoke(
  "Icons.party_mode",
    (
    ) =>
      Icons.party_mode
);
var _icons_pause = MXFunctionInvoke(
  "Icons.pause",
    (
    ) =>
      Icons.pause
);
var _icons_pause_circle_filled = MXFunctionInvoke(
  "Icons.pause_circle_filled",
    (
    ) =>
      Icons.pause_circle_filled
);
var _icons_pause_circle_outline = MXFunctionInvoke(
  "Icons.pause_circle_outline",
    (
    ) =>
      Icons.pause_circle_outline
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
var _icons_people_outline = MXFunctionInvoke(
  "Icons.people_outline",
    (
    ) =>
      Icons.people_outline
);
var _icons_perm_camera_mic = MXFunctionInvoke(
  "Icons.perm_camera_mic",
    (
    ) =>
      Icons.perm_camera_mic
);
var _icons_perm_contact_calendar = MXFunctionInvoke(
  "Icons.perm_contact_calendar",
    (
    ) =>
      Icons.perm_contact_calendar
);
var _icons_perm_data_setting = MXFunctionInvoke(
  "Icons.perm_data_setting",
    (
    ) =>
      Icons.perm_data_setting
);
var _icons_perm_device_information = MXFunctionInvoke(
  "Icons.perm_device_information",
    (
    ) =>
      Icons.perm_device_information
);
var _icons_perm_identity = MXFunctionInvoke(
  "Icons.perm_identity",
    (
    ) =>
      Icons.perm_identity
);
var _icons_perm_media = MXFunctionInvoke(
  "Icons.perm_media",
    (
    ) =>
      Icons.perm_media
);
var _icons_perm_phone_msg = MXFunctionInvoke(
  "Icons.perm_phone_msg",
    (
    ) =>
      Icons.perm_phone_msg
);
var _icons_perm_scan_wifi = MXFunctionInvoke(
  "Icons.perm_scan_wifi",
    (
    ) =>
      Icons.perm_scan_wifi
);
var _icons_person = MXFunctionInvoke(
  "Icons.person",
    (
    ) =>
      Icons.person
);
var _icons_person_add = MXFunctionInvoke(
  "Icons.person_add",
    (
    ) =>
      Icons.person_add
);
var _icons_person_outline = MXFunctionInvoke(
  "Icons.person_outline",
    (
    ) =>
      Icons.person_outline
);
var _icons_person_pin = MXFunctionInvoke(
  "Icons.person_pin",
    (
    ) =>
      Icons.person_pin
);
var _icons_person_pin_circle = MXFunctionInvoke(
  "Icons.person_pin_circle",
    (
    ) =>
      Icons.person_pin_circle
);
var _icons_personal_video = MXFunctionInvoke(
  "Icons.personal_video",
    (
    ) =>
      Icons.personal_video
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
var _icons_phone_android = MXFunctionInvoke(
  "Icons.phone_android",
    (
    ) =>
      Icons.phone_android
);
var _icons_phone_bluetooth_speaker = MXFunctionInvoke(
  "Icons.phone_bluetooth_speaker",
    (
    ) =>
      Icons.phone_bluetooth_speaker
);
var _icons_phone_forwarded = MXFunctionInvoke(
  "Icons.phone_forwarded",
    (
    ) =>
      Icons.phone_forwarded
);
var _icons_phone_in_talk = MXFunctionInvoke(
  "Icons.phone_in_talk",
    (
    ) =>
      Icons.phone_in_talk
);
var _icons_phone_iphone = MXFunctionInvoke(
  "Icons.phone_iphone",
    (
    ) =>
      Icons.phone_iphone
);
var _icons_phone_locked = MXFunctionInvoke(
  "Icons.phone_locked",
    (
    ) =>
      Icons.phone_locked
);
var _icons_phone_missed = MXFunctionInvoke(
  "Icons.phone_missed",
    (
    ) =>
      Icons.phone_missed
);
var _icons_phone_paused = MXFunctionInvoke(
  "Icons.phone_paused",
    (
    ) =>
      Icons.phone_paused
);
var _icons_phonelink = MXFunctionInvoke(
  "Icons.phonelink",
    (
    ) =>
      Icons.phonelink
);
var _icons_phonelink_erase = MXFunctionInvoke(
  "Icons.phonelink_erase",
    (
    ) =>
      Icons.phonelink_erase
);
var _icons_phonelink_lock = MXFunctionInvoke(
  "Icons.phonelink_lock",
    (
    ) =>
      Icons.phonelink_lock
);
var _icons_phonelink_off = MXFunctionInvoke(
  "Icons.phonelink_off",
    (
    ) =>
      Icons.phonelink_off
);
var _icons_phonelink_ring = MXFunctionInvoke(
  "Icons.phonelink_ring",
    (
    ) =>
      Icons.phonelink_ring
);
var _icons_phonelink_setup = MXFunctionInvoke(
  "Icons.phonelink_setup",
    (
    ) =>
      Icons.phonelink_setup
);
var _icons_photo = MXFunctionInvoke(
  "Icons.photo",
    (
    ) =>
      Icons.photo
);
var _icons_photo_album = MXFunctionInvoke(
  "Icons.photo_album",
    (
    ) =>
      Icons.photo_album
);
var _icons_photo_camera = MXFunctionInvoke(
  "Icons.photo_camera",
    (
    ) =>
      Icons.photo_camera
);
var _icons_photo_filter = MXFunctionInvoke(
  "Icons.photo_filter",
    (
    ) =>
      Icons.photo_filter
);
var _icons_photo_library = MXFunctionInvoke(
  "Icons.photo_library",
    (
    ) =>
      Icons.photo_library
);
var _icons_photo_size_select_actual = MXFunctionInvoke(
  "Icons.photo_size_select_actual",
    (
    ) =>
      Icons.photo_size_select_actual
);
var _icons_photo_size_select_large = MXFunctionInvoke(
  "Icons.photo_size_select_large",
    (
    ) =>
      Icons.photo_size_select_large
);
var _icons_photo_size_select_small = MXFunctionInvoke(
  "Icons.photo_size_select_small",
    (
    ) =>
      Icons.photo_size_select_small
);
var _icons_picture_as_pdf = MXFunctionInvoke(
  "Icons.picture_as_pdf",
    (
    ) =>
      Icons.picture_as_pdf
);
var _icons_picture_in_picture = MXFunctionInvoke(
  "Icons.picture_in_picture",
    (
    ) =>
      Icons.picture_in_picture
);
var _icons_picture_in_picture_alt = MXFunctionInvoke(
  "Icons.picture_in_picture_alt",
    (
    ) =>
      Icons.picture_in_picture_alt
);
var _icons_pie_chart = MXFunctionInvoke(
  "Icons.pie_chart",
    (
    ) =>
      Icons.pie_chart
);
var _icons_pie_chart_outlined = MXFunctionInvoke(
  "Icons.pie_chart_outlined",
    (
    ) =>
      Icons.pie_chart_outlined
);
var _icons_pin_drop = MXFunctionInvoke(
  "Icons.pin_drop",
    (
    ) =>
      Icons.pin_drop
);
var _icons_place = MXFunctionInvoke(
  "Icons.place",
    (
    ) =>
      Icons.place
);
var _icons_play_arrow = MXFunctionInvoke(
  "Icons.play_arrow",
    (
    ) =>
      Icons.play_arrow
);
var _icons_play_circle_filled = MXFunctionInvoke(
  "Icons.play_circle_filled",
    (
    ) =>
      Icons.play_circle_filled
);
var _icons_play_circle_outline = MXFunctionInvoke(
  "Icons.play_circle_outline",
    (
    ) =>
      Icons.play_circle_outline
);
var _icons_play_for_work = MXFunctionInvoke(
  "Icons.play_for_work",
    (
    ) =>
      Icons.play_for_work
);
var _icons_playlist_add = MXFunctionInvoke(
  "Icons.playlist_add",
    (
    ) =>
      Icons.playlist_add
);
var _icons_playlist_add_check = MXFunctionInvoke(
  "Icons.playlist_add_check",
    (
    ) =>
      Icons.playlist_add_check
);
var _icons_playlist_play = MXFunctionInvoke(
  "Icons.playlist_play",
    (
    ) =>
      Icons.playlist_play
);
var _icons_plus_one = MXFunctionInvoke(
  "Icons.plus_one",
    (
    ) =>
      Icons.plus_one
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
var _icons_portable_wifi_off = MXFunctionInvoke(
  "Icons.portable_wifi_off",
    (
    ) =>
      Icons.portable_wifi_off
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
var _icons_power_input = MXFunctionInvoke(
  "Icons.power_input",
    (
    ) =>
      Icons.power_input
);
var _icons_power_settings_new = MXFunctionInvoke(
  "Icons.power_settings_new",
    (
    ) =>
      Icons.power_settings_new
);
var _icons_pregnant_woman = MXFunctionInvoke(
  "Icons.pregnant_woman",
    (
    ) =>
      Icons.pregnant_woman
);
var _icons_present_to_all = MXFunctionInvoke(
  "Icons.present_to_all",
    (
    ) =>
      Icons.present_to_all
);
var _icons_print = MXFunctionInvoke(
  "Icons.print",
    (
    ) =>
      Icons.print
);
var _icons_priority_high = MXFunctionInvoke(
  "Icons.priority_high",
    (
    ) =>
      Icons.priority_high
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
var _icons_query_builder = MXFunctionInvoke(
  "Icons.query_builder",
    (
    ) =>
      Icons.query_builder
);
var _icons_question_answer = MXFunctionInvoke(
  "Icons.question_answer",
    (
    ) =>
      Icons.question_answer
);
var _icons_queue = MXFunctionInvoke(
  "Icons.queue",
    (
    ) =>
      Icons.queue
);
var _icons_queue_music = MXFunctionInvoke(
  "Icons.queue_music",
    (
    ) =>
      Icons.queue_music
);
var _icons_queue_play_next = MXFunctionInvoke(
  "Icons.queue_play_next",
    (
    ) =>
      Icons.queue_play_next
);
var _icons_radio = MXFunctionInvoke(
  "Icons.radio",
    (
    ) =>
      Icons.radio
);
var _icons_radio_button_checked = MXFunctionInvoke(
  "Icons.radio_button_checked",
    (
    ) =>
      Icons.radio_button_checked
);
var _icons_radio_button_unchecked = MXFunctionInvoke(
  "Icons.radio_button_unchecked",
    (
    ) =>
      Icons.radio_button_unchecked
);
var _icons_rate_review = MXFunctionInvoke(
  "Icons.rate_review",
    (
    ) =>
      Icons.rate_review
);
var _icons_receipt = MXFunctionInvoke(
  "Icons.receipt",
    (
    ) =>
      Icons.receipt
);
var _icons_recent_actors = MXFunctionInvoke(
  "Icons.recent_actors",
    (
    ) =>
      Icons.recent_actors
);
var _icons_record_voice_over = MXFunctionInvoke(
  "Icons.record_voice_over",
    (
    ) =>
      Icons.record_voice_over
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
var _icons_remove_circle = MXFunctionInvoke(
  "Icons.remove_circle",
    (
    ) =>
      Icons.remove_circle
);
var _icons_remove_circle_outline = MXFunctionInvoke(
  "Icons.remove_circle_outline",
    (
    ) =>
      Icons.remove_circle_outline
);
var _icons_remove_from_queue = MXFunctionInvoke(
  "Icons.remove_from_queue",
    (
    ) =>
      Icons.remove_from_queue
);
var _icons_remove_red_eye = MXFunctionInvoke(
  "Icons.remove_red_eye",
    (
    ) =>
      Icons.remove_red_eye
);
var _icons_remove_shopping_cart = MXFunctionInvoke(
  "Icons.remove_shopping_cart",
    (
    ) =>
      Icons.remove_shopping_cart
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
var _icons_repeat_one = MXFunctionInvoke(
  "Icons.repeat_one",
    (
    ) =>
      Icons.repeat_one
);
var _icons_replay = MXFunctionInvoke(
  "Icons.replay",
    (
    ) =>
      Icons.replay
);
var _icons_replay_10 = MXFunctionInvoke(
  "Icons.replay_10",
    (
    ) =>
      Icons.replay_10
);
var _icons_replay_30 = MXFunctionInvoke(
  "Icons.replay_30",
    (
    ) =>
      Icons.replay_30
);
var _icons_replay_5 = MXFunctionInvoke(
  "Icons.replay_5",
    (
    ) =>
      Icons.replay_5
);
var _icons_reply = MXFunctionInvoke(
  "Icons.reply",
    (
    ) =>
      Icons.reply
);
var _icons_reply_all = MXFunctionInvoke(
  "Icons.reply_all",
    (
    ) =>
      Icons.reply_all
);
var _icons_report = MXFunctionInvoke(
  "Icons.report",
    (
    ) =>
      Icons.report
);
var _icons_report_off = MXFunctionInvoke(
  "Icons.report_off",
    (
    ) =>
      Icons.report_off
);
var _icons_report_problem = MXFunctionInvoke(
  "Icons.report_problem",
    (
    ) =>
      Icons.report_problem
);
var _icons_restaurant = MXFunctionInvoke(
  "Icons.restaurant",
    (
    ) =>
      Icons.restaurant
);
var _icons_restaurant_menu = MXFunctionInvoke(
  "Icons.restaurant_menu",
    (
    ) =>
      Icons.restaurant_menu
);
var _icons_restore = MXFunctionInvoke(
  "Icons.restore",
    (
    ) =>
      Icons.restore
);
var _icons_restore_from_trash = MXFunctionInvoke(
  "Icons.restore_from_trash",
    (
    ) =>
      Icons.restore_from_trash
);
var _icons_restore_page = MXFunctionInvoke(
  "Icons.restore_page",
    (
    ) =>
      Icons.restore_page
);
var _icons_ring_volume = MXFunctionInvoke(
  "Icons.ring_volume",
    (
    ) =>
      Icons.ring_volume
);
var _icons_room = MXFunctionInvoke(
  "Icons.room",
    (
    ) =>
      Icons.room
);
var _icons_room_service = MXFunctionInvoke(
  "Icons.room_service",
    (
    ) =>
      Icons.room_service
);
var _icons_rotate_90_degrees_ccw = MXFunctionInvoke(
  "Icons.rotate_90_degrees_ccw",
    (
    ) =>
      Icons.rotate_90_degrees_ccw
);
var _icons_rotate_left = MXFunctionInvoke(
  "Icons.rotate_left",
    (
    ) =>
      Icons.rotate_left
);
var _icons_rotate_right = MXFunctionInvoke(
  "Icons.rotate_right",
    (
    ) =>
      Icons.rotate_right
);
var _icons_rounded_corner = MXFunctionInvoke(
  "Icons.rounded_corner",
    (
    ) =>
      Icons.rounded_corner
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
var _icons_rss_feed = MXFunctionInvoke(
  "Icons.rss_feed",
    (
    ) =>
      Icons.rss_feed
);
var _icons_rv_hookup = MXFunctionInvoke(
  "Icons.rv_hookup",
    (
    ) =>
      Icons.rv_hookup
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
var _icons_save_alt = MXFunctionInvoke(
  "Icons.save_alt",
    (
    ) =>
      Icons.save_alt
);
var _icons_scanner = MXFunctionInvoke(
  "Icons.scanner",
    (
    ) =>
      Icons.scanner
);
var _icons_scatter_plot = MXFunctionInvoke(
  "Icons.scatter_plot",
    (
    ) =>
      Icons.scatter_plot
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
var _icons_screen_lock_landscape = MXFunctionInvoke(
  "Icons.screen_lock_landscape",
    (
    ) =>
      Icons.screen_lock_landscape
);
var _icons_screen_lock_portrait = MXFunctionInvoke(
  "Icons.screen_lock_portrait",
    (
    ) =>
      Icons.screen_lock_portrait
);
var _icons_screen_lock_rotation = MXFunctionInvoke(
  "Icons.screen_lock_rotation",
    (
    ) =>
      Icons.screen_lock_rotation
);
var _icons_screen_rotation = MXFunctionInvoke(
  "Icons.screen_rotation",
    (
    ) =>
      Icons.screen_rotation
);
var _icons_screen_share = MXFunctionInvoke(
  "Icons.screen_share",
    (
    ) =>
      Icons.screen_share
);
var _icons_sd_card = MXFunctionInvoke(
  "Icons.sd_card",
    (
    ) =>
      Icons.sd_card
);
var _icons_sd_storage = MXFunctionInvoke(
  "Icons.sd_storage",
    (
    ) =>
      Icons.sd_storage
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
var _icons_select_all = MXFunctionInvoke(
  "Icons.select_all",
    (
    ) =>
      Icons.select_all
);
var _icons_send = MXFunctionInvoke(
  "Icons.send",
    (
    ) =>
      Icons.send
);
var _icons_sentiment_dissatisfied = MXFunctionInvoke(
  "Icons.sentiment_dissatisfied",
    (
    ) =>
      Icons.sentiment_dissatisfied
);
var _icons_sentiment_neutral = MXFunctionInvoke(
  "Icons.sentiment_neutral",
    (
    ) =>
      Icons.sentiment_neutral
);
var _icons_sentiment_satisfied = MXFunctionInvoke(
  "Icons.sentiment_satisfied",
    (
    ) =>
      Icons.sentiment_satisfied
);
var _icons_sentiment_very_dissatisfied = MXFunctionInvoke(
  "Icons.sentiment_very_dissatisfied",
    (
    ) =>
      Icons.sentiment_very_dissatisfied
);
var _icons_sentiment_very_satisfied = MXFunctionInvoke(
  "Icons.sentiment_very_satisfied",
    (
    ) =>
      Icons.sentiment_very_satisfied
);
var _icons_settings = MXFunctionInvoke(
  "Icons.settings",
    (
    ) =>
      Icons.settings
);
var _icons_settings_applications = MXFunctionInvoke(
  "Icons.settings_applications",
    (
    ) =>
      Icons.settings_applications
);
var _icons_settings_backup_restore = MXFunctionInvoke(
  "Icons.settings_backup_restore",
    (
    ) =>
      Icons.settings_backup_restore
);
var _icons_settings_bluetooth = MXFunctionInvoke(
  "Icons.settings_bluetooth",
    (
    ) =>
      Icons.settings_bluetooth
);
var _icons_settings_brightness = MXFunctionInvoke(
  "Icons.settings_brightness",
    (
    ) =>
      Icons.settings_brightness
);
var _icons_settings_cell = MXFunctionInvoke(
  "Icons.settings_cell",
    (
    ) =>
      Icons.settings_cell
);
var _icons_settings_ethernet = MXFunctionInvoke(
  "Icons.settings_ethernet",
    (
    ) =>
      Icons.settings_ethernet
);
var _icons_settings_input_antenna = MXFunctionInvoke(
  "Icons.settings_input_antenna",
    (
    ) =>
      Icons.settings_input_antenna
);
var _icons_settings_input_component = MXFunctionInvoke(
  "Icons.settings_input_component",
    (
    ) =>
      Icons.settings_input_component
);
var _icons_settings_input_composite = MXFunctionInvoke(
  "Icons.settings_input_composite",
    (
    ) =>
      Icons.settings_input_composite
);
var _icons_settings_input_hdmi = MXFunctionInvoke(
  "Icons.settings_input_hdmi",
    (
    ) =>
      Icons.settings_input_hdmi
);
var _icons_settings_input_svideo = MXFunctionInvoke(
  "Icons.settings_input_svideo",
    (
    ) =>
      Icons.settings_input_svideo
);
var _icons_settings_overscan = MXFunctionInvoke(
  "Icons.settings_overscan",
    (
    ) =>
      Icons.settings_overscan
);
var _icons_settings_phone = MXFunctionInvoke(
  "Icons.settings_phone",
    (
    ) =>
      Icons.settings_phone
);
var _icons_settings_power = MXFunctionInvoke(
  "Icons.settings_power",
    (
    ) =>
      Icons.settings_power
);
var _icons_settings_remote = MXFunctionInvoke(
  "Icons.settings_remote",
    (
    ) =>
      Icons.settings_remote
);
var _icons_settings_system_daydream = MXFunctionInvoke(
  "Icons.settings_system_daydream",
    (
    ) =>
      Icons.settings_system_daydream
);
var _icons_settings_voice = MXFunctionInvoke(
  "Icons.settings_voice",
    (
    ) =>
      Icons.settings_voice
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
var _icons_shop_two = MXFunctionInvoke(
  "Icons.shop_two",
    (
    ) =>
      Icons.shop_two
);
var _icons_shopping_basket = MXFunctionInvoke(
  "Icons.shopping_basket",
    (
    ) =>
      Icons.shopping_basket
);
var _icons_shopping_cart = MXFunctionInvoke(
  "Icons.shopping_cart",
    (
    ) =>
      Icons.shopping_cart
);
var _icons_short_text = MXFunctionInvoke(
  "Icons.short_text",
    (
    ) =>
      Icons.short_text
);
var _icons_show_chart = MXFunctionInvoke(
  "Icons.show_chart",
    (
    ) =>
      Icons.show_chart
);
var _icons_shuffle = MXFunctionInvoke(
  "Icons.shuffle",
    (
    ) =>
      Icons.shuffle
);
var _icons_shutter_speed = MXFunctionInvoke(
  "Icons.shutter_speed",
    (
    ) =>
      Icons.shutter_speed
);
var _icons_signal_cellular_4_bar = MXFunctionInvoke(
  "Icons.signal_cellular_4_bar",
    (
    ) =>
      Icons.signal_cellular_4_bar
);
var _icons_signal_cellular_connected_no_internet_4_bar = MXFunctionInvoke(
  "Icons.signal_cellular_connected_no_internet_4_bar",
    (
    ) =>
      Icons.signal_cellular_connected_no_internet_4_bar
);
var _icons_signal_cellular_no_sim = MXFunctionInvoke(
  "Icons.signal_cellular_no_sim",
    (
    ) =>
      Icons.signal_cellular_no_sim
);
var _icons_signal_cellular_null = MXFunctionInvoke(
  "Icons.signal_cellular_null",
    (
    ) =>
      Icons.signal_cellular_null
);
var _icons_signal_cellular_off = MXFunctionInvoke(
  "Icons.signal_cellular_off",
    (
    ) =>
      Icons.signal_cellular_off
);
var _icons_signal_wifi_4_bar = MXFunctionInvoke(
  "Icons.signal_wifi_4_bar",
    (
    ) =>
      Icons.signal_wifi_4_bar
);
var _icons_signal_wifi_4_bar_lock = MXFunctionInvoke(
  "Icons.signal_wifi_4_bar_lock",
    (
    ) =>
      Icons.signal_wifi_4_bar_lock
);
var _icons_signal_wifi_off = MXFunctionInvoke(
  "Icons.signal_wifi_off",
    (
    ) =>
      Icons.signal_wifi_off
);
var _icons_sim_card = MXFunctionInvoke(
  "Icons.sim_card",
    (
    ) =>
      Icons.sim_card
);
var _icons_sim_card_alert = MXFunctionInvoke(
  "Icons.sim_card_alert",
    (
    ) =>
      Icons.sim_card_alert
);
var _icons_skip_next = MXFunctionInvoke(
  "Icons.skip_next",
    (
    ) =>
      Icons.skip_next
);
var _icons_skip_previous = MXFunctionInvoke(
  "Icons.skip_previous",
    (
    ) =>
      Icons.skip_previous
);
var _icons_slideshow = MXFunctionInvoke(
  "Icons.slideshow",
    (
    ) =>
      Icons.slideshow
);
var _icons_slow_motion_video = MXFunctionInvoke(
  "Icons.slow_motion_video",
    (
    ) =>
      Icons.slow_motion_video
);
var _icons_smartphone = MXFunctionInvoke(
  "Icons.smartphone",
    (
    ) =>
      Icons.smartphone
);
var _icons_smoke_free = MXFunctionInvoke(
  "Icons.smoke_free",
    (
    ) =>
      Icons.smoke_free
);
var _icons_smoking_rooms = MXFunctionInvoke(
  "Icons.smoking_rooms",
    (
    ) =>
      Icons.smoking_rooms
);
var _icons_sms = MXFunctionInvoke(
  "Icons.sms",
    (
    ) =>
      Icons.sms
);
var _icons_sms_failed = MXFunctionInvoke(
  "Icons.sms_failed",
    (
    ) =>
      Icons.sms_failed
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
var _icons_sort_by_alpha = MXFunctionInvoke(
  "Icons.sort_by_alpha",
    (
    ) =>
      Icons.sort_by_alpha
);
var _icons_spa = MXFunctionInvoke(
  "Icons.spa",
    (
    ) =>
      Icons.spa
);
var _icons_space_bar = MXFunctionInvoke(
  "Icons.space_bar",
    (
    ) =>
      Icons.space_bar
);
var _icons_speaker = MXFunctionInvoke(
  "Icons.speaker",
    (
    ) =>
      Icons.speaker
);
var _icons_speaker_group = MXFunctionInvoke(
  "Icons.speaker_group",
    (
    ) =>
      Icons.speaker_group
);
var _icons_speaker_notes = MXFunctionInvoke(
  "Icons.speaker_notes",
    (
    ) =>
      Icons.speaker_notes
);
var _icons_speaker_notes_off = MXFunctionInvoke(
  "Icons.speaker_notes_off",
    (
    ) =>
      Icons.speaker_notes_off
);
var _icons_speaker_phone = MXFunctionInvoke(
  "Icons.speaker_phone",
    (
    ) =>
      Icons.speaker_phone
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
var _icons_star_border = MXFunctionInvoke(
  "Icons.star_border",
    (
    ) =>
      Icons.star_border
);
var _icons_star_half = MXFunctionInvoke(
  "Icons.star_half",
    (
    ) =>
      Icons.star_half
);
var _icons_stars = MXFunctionInvoke(
  "Icons.stars",
    (
    ) =>
      Icons.stars
);
var _icons_stay_current_landscape = MXFunctionInvoke(
  "Icons.stay_current_landscape",
    (
    ) =>
      Icons.stay_current_landscape
);
var _icons_stay_current_portrait = MXFunctionInvoke(
  "Icons.stay_current_portrait",
    (
    ) =>
      Icons.stay_current_portrait
);
var _icons_stay_primary_landscape = MXFunctionInvoke(
  "Icons.stay_primary_landscape",
    (
    ) =>
      Icons.stay_primary_landscape
);
var _icons_stay_primary_portrait = MXFunctionInvoke(
  "Icons.stay_primary_portrait",
    (
    ) =>
      Icons.stay_primary_portrait
);
var _icons_stop = MXFunctionInvoke(
  "Icons.stop",
    (
    ) =>
      Icons.stop
);
var _icons_stop_screen_share = MXFunctionInvoke(
  "Icons.stop_screen_share",
    (
    ) =>
      Icons.stop_screen_share
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
var _icons_store_mall_directory = MXFunctionInvoke(
  "Icons.store_mall_directory",
    (
    ) =>
      Icons.store_mall_directory
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
var _icons_strikethrough_s = MXFunctionInvoke(
  "Icons.strikethrough_s",
    (
    ) =>
      Icons.strikethrough_s
);
var _icons_style = MXFunctionInvoke(
  "Icons.style",
    (
    ) =>
      Icons.style
);
var _icons_subdirectory_arrow_left = MXFunctionInvoke(
  "Icons.subdirectory_arrow_left",
    (
    ) =>
      Icons.subdirectory_arrow_left
);
var _icons_subdirectory_arrow_right = MXFunctionInvoke(
  "Icons.subdirectory_arrow_right",
    (
    ) =>
      Icons.subdirectory_arrow_right
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
var _icons_supervised_user_circle = MXFunctionInvoke(
  "Icons.supervised_user_circle",
    (
    ) =>
      Icons.supervised_user_circle
);
var _icons_supervisor_account = MXFunctionInvoke(
  "Icons.supervisor_account",
    (
    ) =>
      Icons.supervisor_account
);
var _icons_surround_sound = MXFunctionInvoke(
  "Icons.surround_sound",
    (
    ) =>
      Icons.surround_sound
);
var _icons_swap_calls = MXFunctionInvoke(
  "Icons.swap_calls",
    (
    ) =>
      Icons.swap_calls
);
var _icons_swap_horiz = MXFunctionInvoke(
  "Icons.swap_horiz",
    (
    ) =>
      Icons.swap_horiz
);
var _icons_swap_horizontal_circle = MXFunctionInvoke(
  "Icons.swap_horizontal_circle",
    (
    ) =>
      Icons.swap_horizontal_circle
);
var _icons_swap_vert = MXFunctionInvoke(
  "Icons.swap_vert",
    (
    ) =>
      Icons.swap_vert
);
var _icons_swap_vertical_circle = MXFunctionInvoke(
  "Icons.swap_vertical_circle",
    (
    ) =>
      Icons.swap_vertical_circle
);
var _icons_switch_camera = MXFunctionInvoke(
  "Icons.switch_camera",
    (
    ) =>
      Icons.switch_camera
);
var _icons_switch_video = MXFunctionInvoke(
  "Icons.switch_video",
    (
    ) =>
      Icons.switch_video
);
var _icons_sync = MXFunctionInvoke(
  "Icons.sync",
    (
    ) =>
      Icons.sync
);
var _icons_sync_disabled = MXFunctionInvoke(
  "Icons.sync_disabled",
    (
    ) =>
      Icons.sync_disabled
);
var _icons_sync_problem = MXFunctionInvoke(
  "Icons.sync_problem",
    (
    ) =>
      Icons.sync_problem
);
var _icons_system_update = MXFunctionInvoke(
  "Icons.system_update",
    (
    ) =>
      Icons.system_update
);
var _icons_system_update_alt = MXFunctionInvoke(
  "Icons.system_update_alt",
    (
    ) =>
      Icons.system_update_alt
);
var _icons_tab = MXFunctionInvoke(
  "Icons.tab",
    (
    ) =>
      Icons.tab
);
var _icons_tab_unselected = MXFunctionInvoke(
  "Icons.tab_unselected",
    (
    ) =>
      Icons.tab_unselected
);
var _icons_table_chart = MXFunctionInvoke(
  "Icons.table_chart",
    (
    ) =>
      Icons.table_chart
);
var _icons_tablet = MXFunctionInvoke(
  "Icons.tablet",
    (
    ) =>
      Icons.tablet
);
var _icons_tablet_android = MXFunctionInvoke(
  "Icons.tablet_android",
    (
    ) =>
      Icons.tablet_android
);
var _icons_tablet_mac = MXFunctionInvoke(
  "Icons.tablet_mac",
    (
    ) =>
      Icons.tablet_mac
);
var _icons_tag_faces = MXFunctionInvoke(
  "Icons.tag_faces",
    (
    ) =>
      Icons.tag_faces
);
var _icons_tap_and_play = MXFunctionInvoke(
  "Icons.tap_and_play",
    (
    ) =>
      Icons.tap_and_play
);
var _icons_terrain = MXFunctionInvoke(
  "Icons.terrain",
    (
    ) =>
      Icons.terrain
);
var _icons_text_fields = MXFunctionInvoke(
  "Icons.text_fields",
    (
    ) =>
      Icons.text_fields
);
var _icons_text_format = MXFunctionInvoke(
  "Icons.text_format",
    (
    ) =>
      Icons.text_format
);
var _icons_text_rotate_up = MXFunctionInvoke(
  "Icons.text_rotate_up",
    (
    ) =>
      Icons.text_rotate_up
);
var _icons_text_rotate_vertical = MXFunctionInvoke(
  "Icons.text_rotate_vertical",
    (
    ) =>
      Icons.text_rotate_vertical
);
var _icons_text_rotation_angledown = MXFunctionInvoke(
  "Icons.text_rotation_angledown",
    (
    ) =>
      Icons.text_rotation_angledown
);
var _icons_text_rotation_angleup = MXFunctionInvoke(
  "Icons.text_rotation_angleup",
    (
    ) =>
      Icons.text_rotation_angleup
);
var _icons_text_rotation_down = MXFunctionInvoke(
  "Icons.text_rotation_down",
    (
    ) =>
      Icons.text_rotation_down
);
var _icons_text_rotation_none = MXFunctionInvoke(
  "Icons.text_rotation_none",
    (
    ) =>
      Icons.text_rotation_none
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
var _icons_thumb_down = MXFunctionInvoke(
  "Icons.thumb_down",
    (
    ) =>
      Icons.thumb_down
);
var _icons_thumb_up = MXFunctionInvoke(
  "Icons.thumb_up",
    (
    ) =>
      Icons.thumb_up
);
var _icons_thumbs_up_down = MXFunctionInvoke(
  "Icons.thumbs_up_down",
    (
    ) =>
      Icons.thumbs_up_down
);
var _icons_time_to_leave = MXFunctionInvoke(
  "Icons.time_to_leave",
    (
    ) =>
      Icons.time_to_leave
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
var _icons_timer_10 = MXFunctionInvoke(
  "Icons.timer_10",
    (
    ) =>
      Icons.timer_10
);
var _icons_timer_3 = MXFunctionInvoke(
  "Icons.timer_3",
    (
    ) =>
      Icons.timer_3
);
var _icons_timer_off = MXFunctionInvoke(
  "Icons.timer_off",
    (
    ) =>
      Icons.timer_off
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
var _icons_touch_app = MXFunctionInvoke(
  "Icons.touch_app",
    (
    ) =>
      Icons.touch_app
);
var _icons_toys = MXFunctionInvoke(
  "Icons.toys",
    (
    ) =>
      Icons.toys
);
var _icons_track_changes = MXFunctionInvoke(
  "Icons.track_changes",
    (
    ) =>
      Icons.track_changes
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
var _icons_transfer_within_a_station = MXFunctionInvoke(
  "Icons.transfer_within_a_station",
    (
    ) =>
      Icons.transfer_within_a_station
);
var _icons_transform = MXFunctionInvoke(
  "Icons.transform",
    (
    ) =>
      Icons.transform
);
var _icons_transit_enterexit = MXFunctionInvoke(
  "Icons.transit_enterexit",
    (
    ) =>
      Icons.transit_enterexit
);
var _icons_translate = MXFunctionInvoke(
  "Icons.translate",
    (
    ) =>
      Icons.translate
);
var _icons_trending_down = MXFunctionInvoke(
  "Icons.trending_down",
    (
    ) =>
      Icons.trending_down
);
var _icons_trending_flat = MXFunctionInvoke(
  "Icons.trending_flat",
    (
    ) =>
      Icons.trending_flat
);
var _icons_trending_up = MXFunctionInvoke(
  "Icons.trending_up",
    (
    ) =>
      Icons.trending_up
);
var _icons_trip_origin = MXFunctionInvoke(
  "Icons.trip_origin",
    (
    ) =>
      Icons.trip_origin
);
var _icons_tune = MXFunctionInvoke(
  "Icons.tune",
    (
    ) =>
      Icons.tune
);
var _icons_turned_in = MXFunctionInvoke(
  "Icons.turned_in",
    (
    ) =>
      Icons.turned_in
);
var _icons_turned_in_not = MXFunctionInvoke(
  "Icons.turned_in_not",
    (
    ) =>
      Icons.turned_in_not
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
var _icons_unfold_less = MXFunctionInvoke(
  "Icons.unfold_less",
    (
    ) =>
      Icons.unfold_less
);
var _icons_unfold_more = MXFunctionInvoke(
  "Icons.unfold_more",
    (
    ) =>
      Icons.unfold_more
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
var _icons_verified_user = MXFunctionInvoke(
  "Icons.verified_user",
    (
    ) =>
      Icons.verified_user
);
var _icons_vertical_align_bottom = MXFunctionInvoke(
  "Icons.vertical_align_bottom",
    (
    ) =>
      Icons.vertical_align_bottom
);
var _icons_vertical_align_center = MXFunctionInvoke(
  "Icons.vertical_align_center",
    (
    ) =>
      Icons.vertical_align_center
);
var _icons_vertical_align_top = MXFunctionInvoke(
  "Icons.vertical_align_top",
    (
    ) =>
      Icons.vertical_align_top
);
var _icons_vibration = MXFunctionInvoke(
  "Icons.vibration",
    (
    ) =>
      Icons.vibration
);
var _icons_video_call = MXFunctionInvoke(
  "Icons.video_call",
    (
    ) =>
      Icons.video_call
);
var _icons_video_label = MXFunctionInvoke(
  "Icons.video_label",
    (
    ) =>
      Icons.video_label
);
var _icons_video_library = MXFunctionInvoke(
  "Icons.video_library",
    (
    ) =>
      Icons.video_library
);
var _icons_videocam = MXFunctionInvoke(
  "Icons.videocam",
    (
    ) =>
      Icons.videocam
);
var _icons_videocam_off = MXFunctionInvoke(
  "Icons.videocam_off",
    (
    ) =>
      Icons.videocam_off
);
var _icons_videogame_asset = MXFunctionInvoke(
  "Icons.videogame_asset",
    (
    ) =>
      Icons.videogame_asset
);
var _icons_view_agenda = MXFunctionInvoke(
  "Icons.view_agenda",
    (
    ) =>
      Icons.view_agenda
);
var _icons_view_array = MXFunctionInvoke(
  "Icons.view_array",
    (
    ) =>
      Icons.view_array
);
var _icons_view_carousel = MXFunctionInvoke(
  "Icons.view_carousel",
    (
    ) =>
      Icons.view_carousel
);
var _icons_view_column = MXFunctionInvoke(
  "Icons.view_column",
    (
    ) =>
      Icons.view_column
);
var _icons_view_comfy = MXFunctionInvoke(
  "Icons.view_comfy",
    (
    ) =>
      Icons.view_comfy
);
var _icons_view_compact = MXFunctionInvoke(
  "Icons.view_compact",
    (
    ) =>
      Icons.view_compact
);
var _icons_view_day = MXFunctionInvoke(
  "Icons.view_day",
    (
    ) =>
      Icons.view_day
);
var _icons_view_headline = MXFunctionInvoke(
  "Icons.view_headline",
    (
    ) =>
      Icons.view_headline
);
var _icons_view_list = MXFunctionInvoke(
  "Icons.view_list",
    (
    ) =>
      Icons.view_list
);
var _icons_view_module = MXFunctionInvoke(
  "Icons.view_module",
    (
    ) =>
      Icons.view_module
);
var _icons_view_quilt = MXFunctionInvoke(
  "Icons.view_quilt",
    (
    ) =>
      Icons.view_quilt
);
var _icons_view_stream = MXFunctionInvoke(
  "Icons.view_stream",
    (
    ) =>
      Icons.view_stream
);
var _icons_view_week = MXFunctionInvoke(
  "Icons.view_week",
    (
    ) =>
      Icons.view_week
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
var _icons_visibility_off = MXFunctionInvoke(
  "Icons.visibility_off",
    (
    ) =>
      Icons.visibility_off
);
var _icons_voice_chat = MXFunctionInvoke(
  "Icons.voice_chat",
    (
    ) =>
      Icons.voice_chat
);
var _icons_voicemail = MXFunctionInvoke(
  "Icons.voicemail",
    (
    ) =>
      Icons.voicemail
);
var _icons_volume_down = MXFunctionInvoke(
  "Icons.volume_down",
    (
    ) =>
      Icons.volume_down
);
var _icons_volume_mute = MXFunctionInvoke(
  "Icons.volume_mute",
    (
    ) =>
      Icons.volume_mute
);
var _icons_volume_off = MXFunctionInvoke(
  "Icons.volume_off",
    (
    ) =>
      Icons.volume_off
);
var _icons_volume_up = MXFunctionInvoke(
  "Icons.volume_up",
    (
    ) =>
      Icons.volume_up
);
var _icons_vpn_key = MXFunctionInvoke(
  "Icons.vpn_key",
    (
    ) =>
      Icons.vpn_key
);
var _icons_vpn_lock = MXFunctionInvoke(
  "Icons.vpn_lock",
    (
    ) =>
      Icons.vpn_lock
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
var _icons_watch_later = MXFunctionInvoke(
  "Icons.watch_later",
    (
    ) =>
      Icons.watch_later
);
var _icons_wb_auto = MXFunctionInvoke(
  "Icons.wb_auto",
    (
    ) =>
      Icons.wb_auto
);
var _icons_wb_cloudy = MXFunctionInvoke(
  "Icons.wb_cloudy",
    (
    ) =>
      Icons.wb_cloudy
);
var _icons_wb_incandescent = MXFunctionInvoke(
  "Icons.wb_incandescent",
    (
    ) =>
      Icons.wb_incandescent
);
var _icons_wb_iridescent = MXFunctionInvoke(
  "Icons.wb_iridescent",
    (
    ) =>
      Icons.wb_iridescent
);
var _icons_wb_sunny = MXFunctionInvoke(
  "Icons.wb_sunny",
    (
    ) =>
      Icons.wb_sunny
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
var _icons_web_asset = MXFunctionInvoke(
  "Icons.web_asset",
    (
    ) =>
      Icons.web_asset
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
var _icons_wifi_lock = MXFunctionInvoke(
  "Icons.wifi_lock",
    (
    ) =>
      Icons.wifi_lock
);
var _icons_wifi_tethering = MXFunctionInvoke(
  "Icons.wifi_tethering",
    (
    ) =>
      Icons.wifi_tethering
);
var _icons_work = MXFunctionInvoke(
  "Icons.work",
    (
    ) =>
      Icons.work
);
var _icons_wrap_text = MXFunctionInvoke(
  "Icons.wrap_text",
    (
    ) =>
      Icons.wrap_text
);
var _icons_youtube_searched_for = MXFunctionInvoke(
  "Icons.youtube_searched_for",
    (
    ) =>
      Icons.youtube_searched_for
);
var _icons_zoom_in = MXFunctionInvoke(
  "Icons.zoom_in",
    (
    ) =>
      Icons.zoom_in
);
var _icons_zoom_out = MXFunctionInvoke(
  "Icons.zoom_out",
    (
    ) =>
      Icons.zoom_out
);
var _icons_zoom_out_map = MXFunctionInvoke(
  "Icons.zoom_out_map",
    (
    ) =>
      Icons.zoom_out_map
);
