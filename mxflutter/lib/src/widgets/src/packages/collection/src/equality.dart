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
  m[equalityBy.funName] = equalityBy;
  m[defaultEquality.funName] = defaultEquality;
  m[identityEquality.funName] = identityEquality;
  m[iterableEquality.funName] = iterableEquality;
  m[listEquality.funName] = listEquality;
  m[unorderedIterableEquality.funName] = unorderedIterableEquality;
  m[setEquality.funName] = setEquality;
  m[mapEquality.funName] = mapEquality;
  m[multiEquality.funName] = multiEquality;
  m[deepCollectionEquality.funName] = deepCollectionEquality;
  m[deepCollectionEquality_unordered.funName] = deepCollectionEquality_unordered;
  m[caseInsensitiveEquality.funName] = caseInsensitiveEquality;
  return m;
}
var equalityBy = MXFunctionInvoke(
    "EqualityBy",
    ({
      dynamic getKey,
      Equality<EqualityBy::F> inner,
    }) =>
      EqualityBy(
      getKey,
      inner,
    ),
);
var defaultEquality = MXFunctionInvoke(
    "DefaultEquality",
    ({
    }) =>
      DefaultEquality(
    ),
);
var identityEquality = MXFunctionInvoke(
    "IdentityEquality",
    ({
    }) =>
      IdentityEquality(
    ),
);
var iterableEquality = MXFunctionInvoke(
    "IterableEquality",
    ({
      Equality<IterableEquality::E> elementEquality,
    }) =>
      IterableEquality(
      elementEquality,
    ),
);
var listEquality = MXFunctionInvoke(
    "ListEquality",
    ({
      Equality<ListEquality::E> elementEquality,
    }) =>
      ListEquality(
      elementEquality,
    ),
);
var unorderedIterableEquality = MXFunctionInvoke(
    "UnorderedIterableEquality",
    ({
      Equality<UnorderedIterableEquality::E> elementEquality,
    }) =>
      UnorderedIterableEquality(
      elementEquality,
    ),
);
var setEquality = MXFunctionInvoke(
    "SetEquality",
    ({
      Equality<SetEquality::E> elementEquality,
    }) =>
      SetEquality(
      elementEquality,
    ),
);
var mapEquality = MXFunctionInvoke(
    "MapEquality",
    ({
      Equality<MapEquality::K> keys,
      Equality<MapEquality::V> values,
    }) =>
      MapEquality(
      keys: keys,
      values: values,
    ),
);
var multiEquality = MXFunctionInvoke(
    "MultiEquality",
    ({
      Iterable<Equality<MultiEquality::E>> equalities,
    }) =>
      MultiEquality(
      equalities,
    ),
);
var deepCollectionEquality = MXFunctionInvoke(
    "DeepCollectionEquality",
    ({
      Equality<dynamic> base,
    }) =>
      DeepCollectionEquality(
      base,
    ),
);
var deepCollectionEquality_unordered = MXFunctionInvoke(
  "deepCollectionEquality.unordered",
    ({
      Equality<dynamic> base,
    }) =>
      DeepCollectionEquality.unordered(
      base,
    ),
);
var caseInsensitiveEquality = MXFunctionInvoke(
    "CaseInsensitiveEquality",
    ({
    }) =>
      CaseInsensitiveEquality(
    ),
);
