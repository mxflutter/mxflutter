/*
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:test_api/test_api.dart';
import 'package:mxflutter/mxflutter_test.dart';

/// consts
final String kStr = 'kStr';
final bool kBool = true;

main() {
  group("Primitive Type datas", testPrimitiveType);
  group("List Type datas", testListType);
  group('Map Type datas', testMapType);

  group('Custom Type cast', testCustomType);
}

///================== 测试json 2 dart 自定义类型 ==================
/// 此处使用了两个测试专用类：
/// [SimpleProxy] : 用于注册 Equalable 构造函数
/// [Equalable] : 通过 json 实际生成的实例类。
///添加用例流程如下：
/// 1. [Equalable] 添加或修改构造函数
/// 2. [SimpleProxy] 添加或修改注册方法 
/// 3. 在此函数中构造测试用例
/// example: 测试 EdgeInsets
///     Equalable{
///       /// ....
///       /// 添加新构造函数，测试 EdgeInsets
///       Equalable.testEdgeInsets({EdgeInsets padding}):_properties = {
///         'padding':padding,
///       };
///       /// ....
///     }
///     SimpleProxy{
///       /// ...
///       /// 1. 添加新构造函数名
///       static String testEdgeInsets = 'testEdgeInsets';
///       /// 2. 添加构造函数
///       Equalable constructorTestEdgeInsets(
///         MXJsonBuildOwner bo, 
///         Map<String, dynamic> jsonMap
///       ) => Equalable.testEdgeInsets(
///         padding: mxj2d(bo,jsonMap['padding']),
///       );
///       /// 3. 在[SimpleProxy.initContructors] 中添加 mapping
///       Map<String, ConstructorFun> nameContructorMap = {
///         typeChecker: constructor,
///         withPrimityProperties: constructorWithPrimity,
///         testEdgeInsets: constructorTestEdgeInsets, // 添加此行
///       };
///       /// 4. 在 [testCustomType] 中添加测试用例
///       test('EdgeInsets test',(){
///         Equalable eq = fact.jsonObjToDartObject(null,{
///           'padding':{
///             'className':'EdgeInsets',
///             'constructorName':'all',
///             'value':10.0,
///           }
///         });
///         // 此处可以直接判断padding是否相等，是因为EdgeInsets有重写==，只要里面的left，right等属性相等，就说明EdgeInsets相等了
///         expect(eq.properties, Equalable.testEdgeInsets(padding : EdgeInsets.all(10.0)).properties);
///       });
///       /// ...
///     }
///  另外，测试其他类时，如果里面嵌套多层，则无法通过此种方式来验证。json2dart_test.dart只需要校验第一层转换逻辑正确即可
/// 
/// 

testCustomType() {
  MXJsonObjToDartObject fact = MXJsonObjToDartObject();
  fact.registerProxy(SimpleProxy.registerProxy());

//  test('type check', () {
//    Equalable eq = fact.jsonObjToDartObject(null, {
//      'className': Equalable.className,
//    });
//    expect(eq.properties, Equalable().properties);
//  });
//
//  test('primity check', () {
//    Equalable eq = fact.jsonObjToDartObject(null, {
//      'className': Equalable.className,
//      'constructorName': SimpleProxy.withPrimityProperties,
//      'strP': kStr,
//      'boolP': kBool,
//      'colorP': {
//        'className': 'Color',
//        'value': 0x230838,
//      }
//    });
//    expect(eq.properties, Equalable(strP: kStr, boolP: kBool, colorP: Color(0x230838)).properties);
//  });
}

class SimpleProxy extends MXJsonObjProxy {
  static String typeChecker = 'Equalable';
  static String withPrimityProperties = 'EqualablePrimityProperties';

  @override
  void init({String className}) {
    // 在此例中 super.className 无意义 ？
    super.init(className: className);
    initContructors();
  }

  static Map<String, CreateJsonObjProxyFun> registerProxy() {
    return {
      Equalable.className: () =>
          SimpleProxy()..init(className: Equalable.className)
    };
  }

  initContructors() {
    Map<String, ConstructorFun> nameContructorMap = {
      typeChecker: constructor,
      withPrimityProperties: constructorWithPrimity,
    };
    className = Equalable.className;
    nameContructorMap.forEach((k, v) {
      registerConstructor(
          className: Equalable.className, constructor: v, constructorName: k);
    });
  }

  Equalable constructorWithPrimity(
          MXJsonBuildOwner bo, Map<String, dynamic> jsonMap,  {BuildContext context}) =>
      Equalable(
          strP: mxj2d(bo, jsonMap['strP']),
          boolP: mxj2d(bo, jsonMap['boolP']),
          colorP: mxj2d(bo, jsonMap['colorP']));

  @override
  Equalable constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap, {BuildContext context}) =>
      Equalable();
}

/// 一个为测试 [MXJsonObjToDartObject] 而写的类，仅测试类型转换
/// 因为 test 框架已经为 Iterable 提供了 _DeepMatcher
/// 为方便测试，所有属性全保存在一个 map 中
/// 对比此类实例时，只需对比其属性 [Equalable.properties] 即可
/// 
/// 具体使用方式见 [testCustomType]
/// 
class Equalable {
  static String className = "Equalable";

  Equalable({String strP, bool boolP, Color colorP}):_properties = {
    'strP':strP,
    'boolP':boolP,
    'colorP':colorP,
  };

  Map<String, dynamic> get properties => _properties;
  Map<String, dynamic> _properties = {};
}

///============================== test simple types begin ================================
testMapType() {
  MXJsonObjToDartObject fact = MXJsonObjToDartObject();
  var list = [
    {}, // 空
    {'a': 1}, // 单个
    {'a': 2, 'b': 3, 'c': 4}, // 多个
    {1: 3, 3: 4, true: 3}, // 混合，不同类型key,不同类型 value
  ];

//  test('maps', () {
//    list.forEach((Map item) {
//      expect(fact.jsonObjToDartObject(null, item), item);
//    });
//  });
}

testListType() {
  MXJsonObjToDartObject fact = MXJsonObjToDartObject();
  var list = [
    [], //空
    [null, null],
    [1, 2, 3], // 纯数字
    ['a', 'b', 'c'], //纯字符
    [true, false, true, true], //纯布尔
    [
      1,
      'a',
      true,
      {'a': 3},
      null
    ], // 混合
  ];
//  test('lists', () {
//    list.forEach((l) {
//      expect(fact.jsonObjToDartObject(null, l), l);
//    });
//  });
}


testPrimitiveType() {
  MXJsonObjToDartObject fact = MXJsonObjToDartObject();
  // -50 ~ 49
//  test("| int", () {
//    List<int>.generate(10, (i) {
//      return i - 5;
//    }).map((i) {
//      // print('iii');
//      expect(equals(fact.jsonObjToDartObject(null, i)), i);
//    });
//  });

//  test("| string", () {
//    List.generate(10, (i) {
//      return "$i";
//    }).map((str) {
//      expect(fact.jsonObjToDartObject(null, str), str);
//    });
//  });
//  test("| bool", () {
//    [true, false].map((b) {
//      expect(fact.jsonObjToDartObject(null, b), b);
//    });
//  });
//
//  test("| double", () {
//    List.generate(10, (i) {
//      return i * 0.1;
//    }).map((d) {
//      expect(fact.jsonObjToDartObject(null, d), d);
//    });
//  });
}
*/
