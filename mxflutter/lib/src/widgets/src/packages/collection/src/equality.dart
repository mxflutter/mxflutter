//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:collection/src/equality.dart';
import 'dart:collection';
import 'package:collection/src/comparators.dart';

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerEqualitySeries() {
  var m = <String, MXFunctionInvoke>{};
  m[_equality.funName] = _equality;
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
  m[_deepCollectionEqualityUnordered.funName] = _deepCollectionEqualityUnordered;
  m[_caseInsensitiveEquality.funName] = _caseInsensitiveEquality;
  return m;
}

var _equality = MXFunctionInvoke(
  "Equality",
  () => Equality(),
  [],
);
var _equalityBy = MXFunctionInvoke(
  "EqualityBy",
  ({
    dynamic comparisonKey,
    Equality<dynamic> inner,
  }) =>
      EqualityBy(
    null,
    inner,
  ),
  [
    "comparisonKey",
    "inner",
  ],
);
var _defaultEquality = MXFunctionInvoke(
  "DefaultEquality",
  () => DefaultEquality(),
  [],
);
var _identityEquality = MXFunctionInvoke(
  "IdentityEquality",
  () => IdentityEquality(),
  [],
);
var _iterableEquality = MXFunctionInvoke(
  "IterableEquality",
  ({
    Equality<dynamic> elementEquality,
  }) =>
      IterableEquality(
    elementEquality,
  ),
  [
    "elementEquality",
  ],
);
var _listEquality = MXFunctionInvoke(
  "ListEquality",
  ({
    Equality<dynamic> elementEquality,
  }) =>
      ListEquality(
    elementEquality,
  ),
  [
    "elementEquality",
  ],
);
var _unorderedIterableEquality = MXFunctionInvoke(
  "UnorderedIterableEquality",
  ({
    Equality<dynamic> elementEquality,
  }) =>
      UnorderedIterableEquality(
    elementEquality,
  ),
  [
    "elementEquality",
  ],
);
var _setEquality = MXFunctionInvoke(
  "SetEquality",
  ({
    Equality<dynamic> elementEquality,
  }) =>
      SetEquality(
    elementEquality,
  ),
  [
    "elementEquality",
  ],
);
var _mapEquality = MXFunctionInvoke(
  "MapEquality",
  ({
    Equality<dynamic> keys = const DefaultEquality(),
    Equality<dynamic> values = const DefaultEquality(),
  }) =>
      MapEquality(
    keys: keys,
    values: values,
  ),
  [
    "keys",
    "values",
  ],
);
var _multiEquality = MXFunctionInvoke(
  "MultiEquality",
  ({
    Iterable<Equality<dynamic>> equalities,
  }) =>
      MultiEquality(
    equalities,
  ),
  [
    "equalities",
  ],
);
var _deepCollectionEquality = MXFunctionInvoke(
  "DeepCollectionEquality",
  ({
    Equality<dynamic> base,
  }) =>
      DeepCollectionEquality(
    base,
  ),
  [
    "base",
  ],
);
var _deepCollectionEqualityUnordered = MXFunctionInvoke(
  "DeepCollectionEquality.unordered",
  ({
    Equality<dynamic> base,
  }) =>
      DeepCollectionEquality.unordered(
    base,
  ),
  [
    "base",
  ],
);
var _caseInsensitiveEquality = MXFunctionInvoke(
  "CaseInsensitiveEquality",
  () => CaseInsensitiveEquality(),
  [],
);
