//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/src/material/search.dart';
import 'dart:async' ;
import 'package:flutter/foundation.dart' ;
import 'package:flutter/widgets.dart' ;
import 'package:flutter/src/material/app_bar.dart' ;
import 'package:flutter/src/material/colors.dart' ;
import 'package:flutter/src/material/debug.dart' ;
import 'package:flutter/src/material/input_border.dart' ;
import 'package:flutter/src/material/input_decorator.dart' ;
import 'package:flutter/src/material/material_localizations.dart' ;
import 'package:flutter/src/material/scaffold.dart' ;
import 'package:flutter/src/material/text_field.dart' ;
import 'package:flutter/src/material/theme.dart' ;


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerSearchSeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_searchDelegate.funName] = _searchDelegate;
  return m;
}
var _searchDelegate = MXFunctionInvoke(
    "SearchDelegate",
    (
      {
      String searchFieldLabel,
      TextInputType keyboardType,
      TextInputAction textInputAction = TextInputAction.search,
      }
    ) =>
      SearchDelegate(
      searchFieldLabel: searchFieldLabel,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
    ),
);
