

'use strict';
let packages__flutter__src__services__platform_channel = require("packages/flutter/src/services/platform_channel.dart.lib.js");
const dart_sdk = require("dart_sdk");
const core = dart_sdk.core;
const _js_helper = dart_sdk._js_helper;
const async = dart_sdk.async;
const collection = dart_sdk.collection;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const platform_channel = packages__flutter__src__services__platform_channel.src__services__platform_channel;
//const message_codecs = packages__flutter__src__services__platform_channel.src__services__message_codecs;
var method_channel_shared_preferences = Object.create(dart.library);
var shared_preferences_platform_interface = Object.create(dart.library);
var $clear = dartx.clear;
var $remove = dartx.remove;
var $_set = dartx._set;
var IdentityMapOfString$dynamic = () => (IdentityMapOfString$dynamic = dart.constFn(_js_helper.IdentityMap$(core.String, dart.dynamic)))();
var FutureOrOfbool = () => (FutureOrOfbool = dart.constFn(async.FutureOr$(core.bool)))();
var dynamicToFutureOrOfbool = () => (dynamicToFutureOrOfbool = dart.constFn(dart.fnType(FutureOrOfbool(), [dart.dynamic])))();
var IdentityMapOfString$Object = () => (IdentityMapOfString$Object = dart.constFn(_js_helper.IdentityMap$(core.String, core.Object)))();
var LinkedHashMapOfString$Object = () => (LinkedHashMapOfString$Object = dart.constFn(collection.LinkedHashMap$(core.String, core.Object)))();
var MapOfString$Object = () => (MapOfString$Object = dart.constFn(core.Map$(core.String, core.Object)))();
const CT = Object.create(null);
var L1 = "package:shared_preferences_platform_interface/method_channel_shared_preferences.dart";
var L0 = "package:shared_preferences_platform_interface/shared_preferences_platform_interface.dart";
dart.defineLazy(CT, {
  get C2() {
    return C2 = dart.const({
      __proto__: message_codecs.StandardMessageCodec.prototype
    });
  },
  get C1() {
    return C1 = dart.const({
      __proto__: message_codecs.StandardMethodCodec.prototype,
      [StandardMethodCodec_messageCodec]: C2 || CT.C2
    });
  },
  get C0() {
    return C0 = dart.const({
      __proto__: platform_channel.MethodChannel.prototype,
      [MethodChannel__binaryMessenger]: null,
      [MethodChannel_codec]: C1 || CT.C1,
      [MethodChannel_name]: "plugins.flutter.io/shared_preferences"
    });
  }
}, false);
var _invokeBoolMethod = dart.privateName(method_channel_shared_preferences, "_invokeBoolMethod");
var _verifyProvidesDefaultImplementations = dart.privateName(shared_preferences_platform_interface, "_verifyProvidesDefaultImplementations");
shared_preferences_platform_interface.SharedPreferencesStorePlatform = class SharedPreferencesStorePlatform extends core.Object {
  static get instance() {
    return shared_preferences_platform_interface.SharedPreferencesStorePlatform._instance;
  }
  static set instance(value) {
    if (!dart.test(value.isMock)) {
      try {
        value[_verifyProvidesDefaultImplementations]();
      } catch (e) {
        let _ = dart.getThrown(e);
        if (core.NoSuchMethodError.is(_)) {
          dart.throw(new core.AssertionError.new("Platform interfaces must not be implemented with `implements`"));
        } else
          throw e;
      }
    }
    shared_preferences_platform_interface.SharedPreferencesStorePlatform._instance = value;
  }
  get isMock() {
    return false;
  }
  [_verifyProvidesDefaultImplementations]() {
  }
};
(shared_preferences_platform_interface.SharedPreferencesStorePlatform.new = function () {
  ;
}).prototype = shared_preferences_platform_interface.SharedPreferencesStorePlatform.prototype;
dart.addTypeTests(shared_preferences_platform_interface.SharedPreferencesStorePlatform);
dart.addTypeCaches(shared_preferences_platform_interface.SharedPreferencesStorePlatform);
dart.setMethodSignature(shared_preferences_platform_interface.SharedPreferencesStorePlatform, () => ({
  __proto__: dart.getMethods(shared_preferences_platform_interface.SharedPreferencesStorePlatform.__proto__),
  [_verifyProvidesDefaultImplementations]: dart.fnType(dart.void, [])
}));
dart.setGetterSignature(shared_preferences_platform_interface.SharedPreferencesStorePlatform, () => ({
  __proto__: dart.getGetters(shared_preferences_platform_interface.SharedPreferencesStorePlatform.__proto__),
  isMock: core.bool
}));
dart.setLibraryUri(shared_preferences_platform_interface.SharedPreferencesStorePlatform, L0);
dart.defineLazy(shared_preferences_platform_interface.SharedPreferencesStorePlatform, {
    /*shared_preferences_platform_interface.SharedPreferencesStorePlatform._instance*/get _instance() {
    return new method_channel_shared_preferences.MethodChannelSharedPreferencesStore.new();
  },
  set _instance(_) { }
}, true);
method_channel_shared_preferences.MethodChannelSharedPreferencesStore = class MethodChannelSharedPreferencesStore extends shared_preferences_platform_interface.SharedPreferencesStorePlatform {
  remove(key) {
    return this[_invokeBoolMethod]("remove", new (IdentityMapOfString$dynamic()).from(["key", key]));
  }
  setValue(valueType, key, value) {
    return this[_invokeBoolMethod]("set" + dart.str(valueType), new (IdentityMapOfString$dynamic()).from(["key", key, "value", value]));
  }
  [_invokeBoolMethod](method, params) {
    return method_channel_shared_preferences._kChannel.invokeMethod(core.bool, method, params).then(core.bool, dart.fn(result => FutureOrOfbool().as(result), dynamicToFutureOrOfbool()));
  }
  clear() {
    return method_channel_shared_preferences._kChannel.invokeMethod(core.bool, "clear");
  }
  getAll() {
    return method_channel_shared_preferences._kChannel.invokeMapMethod(core.String, core.Object, "getAll");
  }
};
(method_channel_shared_preferences.MethodChannelSharedPreferencesStore.new = function () {
  ;
}).prototype = method_channel_shared_preferences.MethodChannelSharedPreferencesStore.prototype;
dart.addTypeTests(method_channel_shared_preferences.MethodChannelSharedPreferencesStore);
dart.addTypeCaches(method_channel_shared_preferences.MethodChannelSharedPreferencesStore);
dart.setMethodSignature(method_channel_shared_preferences.MethodChannelSharedPreferencesStore, () => ({
  __proto__: dart.getMethods(method_channel_shared_preferences.MethodChannelSharedPreferencesStore.__proto__),
  remove: dart.fnType(async.Future$(core.bool), [core.String]),
  setValue: dart.fnType(async.Future$(core.bool), [core.String, core.String, core.Object]),
  [_invokeBoolMethod]: dart.fnType(async.Future$(core.bool), [core.String, core.Map$(core.String, dart.dynamic)]),
  clear: dart.fnType(async.Future$(core.bool), []),
  getAll: dart.fnType(async.Future$(core.Map$(core.String, core.Object)), [])
}));
dart.setLibraryUri(method_channel_shared_preferences.MethodChannelSharedPreferencesStore, L1);
var MethodChannel__binaryMessenger = dart.privateName(platform_channel, "MethodChannel._binaryMessenger");
var C2;
var StandardMethodCodec_messageCodec = dart.privateName(message_codecs, "StandardMethodCodec.messageCodec");
var C1;
var MethodChannel_codec = dart.privateName(platform_channel, "MethodChannel.codec");
var MethodChannel_name = dart.privateName(platform_channel, "MethodChannel.name");
var C0;
dart.defineLazy(method_channel_shared_preferences, {
    /*method_channel_shared_preferences._kChannel*/get _kChannel() {
    return C0 || CT.C0;
  }
}, true);
var _data = dart.privateName(shared_preferences_platform_interface, "_data");
shared_preferences_platform_interface.InMemorySharedPreferencesStore = class InMemorySharedPreferencesStore extends shared_preferences_platform_interface.SharedPreferencesStorePlatform {
  clear() {
    return async.async(core.bool, (function* clear() {
      this[_data][$clear]();
      return true;
    }).bind(this));
  }
  getAll() {
    return async.async(MapOfString$Object(), (function* getAll() {
      return LinkedHashMapOfString$Object().from(this[_data]);
    }).bind(this));
  }
  remove(key) {
    return async.async(core.bool, (function* remove() {
      this[_data][$remove](key);
      return true;
    }).bind(this));
  }
  setValue(valueType, key, value) {
    return async.async(core.bool, (function* setValue() {
      this[_data][$_set](key, value);
      return true;
    }).bind(this));
  }
};
(shared_preferences_platform_interface.InMemorySharedPreferencesStore.empty = function () {
  this[_data] = new (IdentityMapOfString$Object()).new();
  ;
}).prototype = shared_preferences_platform_interface.InMemorySharedPreferencesStore.prototype;
(shared_preferences_platform_interface.InMemorySharedPreferencesStore.withData = function (data) {
  this[_data] = LinkedHashMapOfString$Object().from(data);
  ;
}).prototype = shared_preferences_platform_interface.InMemorySharedPreferencesStore.prototype;
dart.addTypeTests(shared_preferences_platform_interface.InMemorySharedPreferencesStore);
dart.addTypeCaches(shared_preferences_platform_interface.InMemorySharedPreferencesStore);
dart.setMethodSignature(shared_preferences_platform_interface.InMemorySharedPreferencesStore, () => ({
  __proto__: dart.getMethods(shared_preferences_platform_interface.InMemorySharedPreferencesStore.__proto__),
  clear: dart.fnType(async.Future$(core.bool), []),
  getAll: dart.fnType(async.Future$(core.Map$(core.String, core.Object)), []),
  remove: dart.fnType(async.Future$(core.bool), [core.String]),
  setValue: dart.fnType(async.Future$(core.bool), [core.String, core.String, core.Object])
}));
dart.setLibraryUri(shared_preferences_platform_interface.InMemorySharedPreferencesStore, L0);
dart.setFieldSignature(shared_preferences_platform_interface.InMemorySharedPreferencesStore, () => ({
  __proto__: dart.getFields(shared_preferences_platform_interface.InMemorySharedPreferencesStore.__proto__),
  [_data]: dart.finalFieldType(core.Map$(core.String, core.Object))
}));
dart.trackLibraries("packages/shared_preferences_platform_interface/method_channel_shared_preferences.dart", {
  "package:shared_preferences_platform_interface/method_channel_shared_preferences.dart": method_channel_shared_preferences,
  "package:shared_preferences_platform_interface/shared_preferences_platform_interface.dart": shared_preferences_platform_interface
}, {
}, '{"version":3,"sourceRoot":"","sources":["shared_preferences_platform_interface.dart","method_channel_shared_preferences.dart"],"names":[],"mappings":";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;AAqBwD;IAAS;wBAIZ;AACjD,qBAAK,AAAM,KAAD;AACR;AAC+C,UAA7C,AAAM,KAAD;;cACuB;AAA5B;AAEoE,YADpE,WAAM,4BACF;;;;;AAGS,MAAjB,iFAAY,KAAK;IACnB;;AAWmB;IAAK;;IA4BsB;;;;EAChD;;;;;;;;;;;;;MAtCwC,8EAAS;YAC3C;;;;;WClBuB;AACzB,YAAO,yBAAkB,UAA2B,0CAClD,OAAO,GAAG;IAEd;aAG6B,WAAkB,KAAY;AACzD,YAAO,yBAAkB,AAAe,iBAAV,SAAS,GAAoB,0CACzD,OAAO,GAAG,EACV,SAAS,KAAK;IAElB;wBAEsC,QAA6B;AACjE,YAAO,AACF,AAOA,qEAPmB,MAAM,EAAE,MAAM,kBAOtB,QAAS,8BAAW,MAAM;IAC5C;;AAIE,YAAO,AAAU,qEAAmB;IACtC;;AAIE,YAAO,AAAU,uFAAgC;IACnD;;;;EACF;;;;;;;;;;;;;;;;;;;;MA7CoB,2CAAS;;;;;;;ADiFT;AACH,QAAb,AAAM;AACN,cAAO;MACT;;;AAGkC;AAChC,mDAAgC;MAClC;;WAG2B;AAAR;AACA,QAAjB,AAAM,qBAAO,GAAG;AAChB,cAAO;MACT;;aAG6B,WAAkB,KAAY;AAAtC;AACD,QAAlB,AAAK,mBAAC,GAAG,EAAI,KAAK;AAClB,cAAO;MACT;;;;IA7B+C,cAAkB;;EAAE;4FAGP;kBAChD,oCAA2B,IAAI;;EAAC","file":"../../../../../../../../../../packages/shared_preferences_platform_interface/method_channel_shared_preferences.dart.lib.js"}');
// Exports:
// return {
//   method_channel_shared_preferences: method_channel_shared_preferences,
//   shared_preferences_platform_interface: shared_preferences_platform_interface
// };

exports.method_channel_shared_preferences = method_channel_shared_preferences;
exports.shared_preferences_platform_interface = shared_preferences_platform_interface;


//# sourceMappingURL=method_channel_shared_preferences.dart.lib.js.map
