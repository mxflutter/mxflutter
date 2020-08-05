//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:collection/src/equality.dart';
import 'dart:collection';
import 'package:collection/src/comparators.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerEqualitySeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_equalityBy.funName] = _equalityBy;
  m[_defaultEquality.funName] = _defaultEquality;
  m[_identityEquality.funName] = _identityEquality;
  m[_iterableEquality.funName] = _iterableEquality;
  m[_listEquality.funName] = _listEquality;
  m[_unorderedIterableEquality.funName] = _unorderedIterableEquality;
  m[_setEquality.funName] = _setEquality;
  m[_mapEquality.funName] = _mapEquality;
  m[_multiEquality.funName] = _multiEquality;
  m[_deepCollectionEquality.funName] = _deepCollectionEquality;
  m[_deepCollectionEquality_unordered.funName] = _deepCollectionEquality_unordered;
  m[_caseInsensitiveEquality.funName] = _caseInsensitiveEquality;
  return m;
}
var _equalityBy = MXFunctionInvoke(
    "EqualityBy",
    (
      {
      dynamic getKey,
      Equality<dynamic> inner,
      }
    ) =>
      EqualityBy(
      getKey,
      inner,
    ),
);
var _defaultEquality = MXFunctionInvoke(
    "DefaultEquality",
    (
    ) =>
      DefaultEquality(
    ),
);
var _identityEquality = MXFunctionInvoke(
    "IdentityEquality",
    (
    ) =>
      IdentityEquality(
    ),
);
var _iterableEquality = MXFunctionInvoke(
    "IterableEquality",
    (
      {
      Equality<dynamic> elementEquality,
      }
    ) =>
      IterableEquality(
      elementEquality,
    ),
);
var _listEquality = MXFunctionInvoke(
    "ListEquality",
    (
      {
      Equality<dynamic> elementEquality,
      }
    ) =>
      ListEquality(
      elementEquality,
    ),
);
var _unorderedIterableEquality = MXFunctionInvoke(
    "UnorderedIterableEquality",
    (
      {
      Equality<dynamic> elementEquality,
      }
    ) =>
      UnorderedIterableEquality(
      elementEquality,
    ),
);
var _setEquality = MXFunctionInvoke(
    "SetEquality",
    (
      {
      Equality<dynamic> elementEquality,
      }
    ) =>
      SetEquality(
      elementEquality,
    ),
);
var _mapEquality = MXFunctionInvoke(
    "MapEquality",
    (
      {
      Equality<dynamic> keys,
      Equality<dynamic> values,
      }
    ) =>
      MapEquality(
      keys: keys,
      values: values,
    ),
);
var _multiEquality = MXFunctionInvoke(
    "MultiEquality",
    (
      {
      Iterable<Equality<dynamic>> equalities,
      }
    ) =>
      MultiEquality(
      equalities,
    ),
);
var _deepCollectionEquality = MXFunctionInvoke(
    "DeepCollectionEquality",
    (
      {
      Equality<dynamic> base,
      }
    ) =>
      DeepCollectionEquality(
      base,
    ),
);
var _deepCollectionEquality_unordered = MXFunctionInvoke(
  "deepCollectionEquality.unordered",
    (
      {
      Equality<dynamic> base,
      }
    ) =>
      DeepCollectionEquality.unordered(
      base,
    ),
);
var _caseInsensitiveEquality = MXFunctionInvoke(
    "CaseInsensitiveEquality",
    (
    ) =>
      CaseInsensitiveEquality(
    ),
);
