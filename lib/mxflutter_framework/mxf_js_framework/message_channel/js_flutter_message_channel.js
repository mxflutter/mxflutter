//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

const dart_sdk = require("dart_sdk");
const core = dart_sdk.core;
const async = dart_sdk.async;
const dart = dart_sdk.dart;
const typed_data = dart_sdk.typed_data;

const dartx = dart_sdk.dartx;
var $cast = dartx.cast;
const _js_helper = dart_sdk._js_helper;


//Message Channel
function mapToObj(map) {
    let obj = Object.create(null);
    for (let [k, v] of map) {
        obj[k] = v;
    }
    return obj;
}

function encodeParam(param) {
    if (param === null) {
        return param;
    }

    if (param.innerValue) {
        param = param.innerValue();
    }

    if (param instanceof Map) {
        param = mapToObj(param);
    }
    return param;
}

function castResult(result) {

    core.print(result);
    return null;
}

const platform_channel = Object.create(dart.library);

const name$ = dart.privateName(platform_channel, "MethodChannel.name");
platform_channel.MethodChannel = class MethodChannel extends core.Object {

    constructor(name, codec = null, binaryMessenger = null) {
        super();
        this[name$] = name;
        if (!(name != null))
            dart.assertFailed(
                null,
                "org-dartlang-app:///packages/flutter/src/services/platform_channel.dart",
                127,
                16,
                "name != null"
            );

    }

    get name() {
        return this[name$];
    }
    set name(value) {
        super.name = value;
    }

    _invokeMethod(T, method, opts) {

        let missingOk = opts && 'missingOk' in opts ? opts.missingOk : null;
        let $arguments = opts && 'arguments' in opts ? opts.arguments : null;

        let that = this;

        if ($arguments === void 0) $arguments = null;
        return async.async(
            T,
            function* invokeMethod() {
                if (!(method != null))
                    dart.assertFailed(
                        null,
                        "org-dartlang-app:///packages/flutter/src/services/platform_channel.dart",
                        313,
                        12,
                        "method != null"
                    );
                function mxflutter_MethodChannel_invokeMethod(channelName) {
                    let completer = async.Completer$(T).new();
                    mx_jsbridge_MethodChannel_invokeMethod(
                        channelName,
                        method,
                        encodeParam($arguments),
                        dart.fn(value => {
                            core.print("mx_jsbridge_MethodChannel_invokeMethod: callback " + value);
                            completer.complete(value);
                        }, dart.fnType(core.Null, [T]))
                    );
                    return completer.future;
                }

                let result = yield mxflutter_MethodChannel_invokeMethod(this.name);
                if (result == null) {
                    dart.throw(
                        new MissingPluginException.new(
                            "No implementation found for method " +
                            dart.str(method) +
                            " on channel " +
                            dart.str(this.name)
                        )
                    );
                }
                let typedResult = T.as(result);
                return typedResult;
            }.bind(this)
        );
    }

    invokeMethod(T, method, $arguments = null) {
        return this._invokeMethod(T, method, { missingOk: false, arguments: $arguments });
    }
    //TODO: list 
    // invokeListMethod(T, method, $arguments = null) {
    //     return async.async(core.List$(T), (function* invokeListMethod() {
    //         let t0;
    //         let result = (yield this.invokeMethod(core.List, method, $arguments));
    //         t0 = result;
    //         return t0 == null ? null : t0[$cast](T);
    //     }).bind(this));
    // }
    //TODO: map
    invokeMapMethod(K, V, method, $arguments = null) {
        return async.async(core.Map$(K, V), (function* invokeMapMethod() {
            let t0;
            let result = (yield this.invokeMethod(dart.dynamic, method, $arguments));
            result = convertJSMap2DartMapOfKV(K,V,result);
            t0 = result;
            return t0 == null ? null : t0[$cast](K, V);
        }).bind(this));
    }
};
(platform_channel.MethodChannel.new = function (name, codec = null, binaryMessenger = null) {
    this[name$] = name;
    if (!(name != null))
        dart.assertFailed(
            null,
            "org-dartlang-app:///packages/flutter/src/services/platform_channel.dart",
            127,
            16,
            "name != null"
        );
}).prototype = platform_channel.MethodChannel.prototype;

const name$0 = dart.privateName(platform_channel, "EventChannel.name");

class FakeStreamController {
    constructor(channelName, streamParam) {
        this.channelName = channelName;
        this.streamParam = streamParam;
    }

    listen(onData, opts) {
        let onError = opts && 'onError' in opts ? opts.onError : null;
        let onDone = opts && 'onDone' in opts ? opts.onDone : null;
        let cancelOnError = opts && 'cancelOnError' in opts ? opts.cancelOnError : null;
        cancelOnError = true === cancelOnError;
        mx_jsbridge_EventChannel_receiveBroadcastStream_listen(this.channelName, this.streamParam, onData, onError, onDone, cancelOnError);
    }
};

platform_channel.EventChannel = class EventChannel extends core.Object {
    get name() {
        return this[name$0];
    }
    set name(value) {
        super.name = value;
    }

    receiveBroadcastStream($arguments) {
        if ($arguments === void 0) $arguments = null;
        return new FakeStreamController(this.name, $arguments);
    }
};
(platform_channel.EventChannel.new = function (name, codec = null, binaryMessenger = null) {
    this[name$0] = name;
    if (!(name != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter/src/services/platform_channel.dart", 473, 16, "name != null");
}).prototype = platform_channel.EventChannel.prototype;


class MissingPluginException extends core.Object {
    get message() {
        return this.message;
    }
    set message(value) {
        this.message = value;
    }
    toString() {
        return "MissingPluginException(" + dart.str(this.message) + ")";
    }
};
(MissingPluginException.new = function (message = null) {
    this.message = message;

});


function convertJSMap2DartMapOfKV(K,V,jsMap) {
    try {
        //let IdentityMapOfString$dynamic = () => (IdentityMapOfString$dynamic = dart.constFn(_js_helper.IdentityMap$(core.String, dart.dynamic)))();
        let IdentityMapOfKV = () => (IdentityMapOfKV = dart.constFn(_js_helper.IdentityMap$(K, V)))();
        let es = Array();
        for (let key in jsMap) { // 遍历Map

            es.push(key);
            es.push(jsMap[key]);
        }

        return new (IdentityMapOfKV()).from(es);


    } catch (e$) {
        let e = dart.getThrown(e$);
        core.print("convertJSMap2DartMapOfKV error:" + e);
        return jsMap;

    }
}


//--------------手写支持-----------------------

let mx_platform_channel = Object.create(dart.library);
mx_platform_channel.MXMethodChannel = class MXMethodChannel extends platform_channel.MethodChannel {

    //重载
    async invokeMethod(method, $arguments) {
        if ($arguments === void 0) $arguments = null;

        let promiseResult = new Promise(function (resolve, reject) {

            mx_jsbridge_MethodChannel_invokeMethod(this.name, method, encodeParam($arguments), function (value) {
                if (value != null) {
                    resolve(value);
                } else {
                    reject(null);
                }
            });

            //代码的不生效
            // let f = dart.fn(function (value) {
            //     if (value != null) {
            //         resolve(value);
            //     } else {
            //         reject(null);
            //     }

            // }, dart.fnType(core.Null, [T]));

            // mx_jsbridge_MethodChannel_invokeMethod(
            //     this.name,
            //     method,
            //     encodeParam($arguments),
            //     f
            // );

        }.bind(this));

        return promiseResult;
    }

    //TODO:
    ///handler:function (MethodCall){}
    ///
    setMethodCallHandler(handler) {
        //mx_jsbridge_MethodChannel_setMethodCallHandler(this.name, handler);
    }

}


mx_platform_channel.MethodCall = class MethodCall extends core.Object {
    /// Creates a [MethodCall] representing the invocation of [method] with the
    /// specified [arguments].
    constructor(method, args) {
        this.method = method;
        this.arguments = args;
    }
}



exports.platform_channel = platform_channel;

exports.MethodChannel = mx_platform_channel.MXMethodChannel;
exports.EventChannel = platform_channel.EventChannel;
