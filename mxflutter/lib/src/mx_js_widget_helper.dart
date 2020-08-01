//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.


import 'package:flutter/material.dart';

import 'mx_js_flutter_common.dart';

class MXJSWidgetHelper extends Object {
  MXJSWidgetHelper(dynamic widget) {
    this.widget = widget;
  }

  dynamic widget;

  bool updateWidget(
      String widgetID, Map widgetData, String buildWidgetDataSeq) {
    this.widget.widgetData = widgetData;

    if (this.widget.widgetID != null && this.widget.widgetID != widgetID) {
      //TODO:errormx
      MXJSLog.log(
          "MXJSWidgetHelper:updateWidget:this.widget.widgetID != null && this.widget.widgetID != widgetID");
    }

    this.widget.widgetID = widgetID;
    this.widget.buildingWidgetDataSeq = buildWidgetDataSeq;
    //TODO:diff
    return true;
  }

  Widget buildErrorWidget(BuildContext context) {
    // return Center(
    //     child: new RaisedButton(
    //         onPressed: () {
    //           Navigator.pop(context);
    //         },
    //         child: new Text("widgetData=null pop")));

    return Container(
        color: Colors.white,
        child: Center(
          child: CircularProgressIndicator(),
        ));
  }

  void jsRebuild(String widgetID, Map widgetData, String buildWidgetDataSeq) {
    bool needRebuild = updateWidget(widgetID, widgetData, buildWidgetDataSeq);
    //TODO:check this.widget.state == null
    if (this.widget == null || this.widget.state == null) {
      MXJSLog.error(
          "MXJSStatefullWidget:jsRebuild: this.widget.state == null; widgetID:$widgetID buildWidgetDataSeq:$buildWidgetDataSeq");

      return;
    }

    if (!this.widget.state.mounted) {
      MXJSLog.error(
          "MXJSStatefullWidget:jsRebuild: !this.widget.state.mounted this.widget.state.setState(() {}); widgetID:$widgetID buildWidgetDataSeq:$buildWidgetDataSeq");
      return;
    }

    if (needRebuild) {
      MXJSLog.log(
          "MXJSStatefullWidget:jsRebuild:  needRebuild:true this.widget.state.setState(() {}); widgetID:$widgetID buildWidgetDataSeq:$buildWidgetDataSeq");

      MXJSLog.debug(
          "MXJSStatefullWidget:jsRebuild:  needRebuild:true this.widget.state.setState(() {});widgetID:$widgetID buildWidgetDataSeq:$buildWidgetDataSeq widgetData:$widgetData ");
      this.widget.state.setState(() {});
    }
  }

  jsNavigatorPush(dynamic jsWidget, BuildContext context) {
    MXJSLog.log("MXJSWidgetState:jsNavigatorPush:");
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => jsWidget),
    );
  }

  jsNavigatorPop(BuildContext context) {
    MXJSLog.log("MXJSWidgetState:jsNavigatorPop:");
    Navigator.pop(context);
  }
}