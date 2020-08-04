//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:collection/src/equality.dart';


class MXProxyEquality {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
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
  static var equalityBy = MXFunctionInvoke(
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
  static var defaultEquality = MXFunctionInvoke(
      "DefaultEquality",
      ({
      }) =>
        DefaultEquality(
      ),
    );
  static var identityEquality = MXFunctionInvoke(
      "IdentityEquality",
      ({
      }) =>
        IdentityEquality(
      ),
    );
  static var iterableEquality = MXFunctionInvoke(
      "IterableEquality",
      ({
        Equality<IterableEquality::E> elementEquality,
      }) =>
        IterableEquality(
        elementEquality,
      ),
    );
  static var listEquality = MXFunctionInvoke(
      "ListEquality",
      ({
        Equality<ListEquality::E> elementEquality,
      }) =>
        ListEquality(
        elementEquality,
      ),
    );
  static var unorderedIterableEquality = MXFunctionInvoke(
      "UnorderedIterableEquality",
      ({
        Equality<UnorderedIterableEquality::E> elementEquality,
      }) =>
        UnorderedIterableEquality(
        elementEquality,
      ),
    );
  static var setEquality = MXFunctionInvoke(
      "SetEquality",
      ({
        Equality<SetEquality::E> elementEquality,
      }) =>
        SetEquality(
        elementEquality,
      ),
    );
  static var mapEquality = MXFunctionInvoke(
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
  static var multiEquality = MXFunctionInvoke(
      "MultiEquality",
      ({
        Iterable<Equality<MultiEquality::E>> equalities,
      }) =>
        MultiEquality(
        equalities,
      ),
    );
  static var deepCollectionEquality = MXFunctionInvoke(
      "DeepCollectionEquality",
      ({
        Equality<dynamic> base,
      }) =>
        DeepCollectionEquality(
        base,
      ),
    );
  static var deepCollectionEquality_unordered = MXFunctionInvoke(
    "deepCollectionEquality.unordered",
      ({
        Equality<dynamic> base,
      }) =>
        DeepCollectionEquality.unordered(
        base,
      ),
    );
  static var caseInsensitiveEquality = MXFunctionInvoke(
      "CaseInsensitiveEquality",
      ({
      }) =>
        CaseInsensitiveEquality(
      ),
    );
}
