const dart_sdk = require("dart_sdk");
const core = dart_sdk.core;
const async = dart_sdk.async;
const dart = dart_sdk.dart;
const typed_data = dart_sdk.typed_data;

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

    invokeMethod(T, method, $arguments) {
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
                            completer.complete(value);
                        }, dart.fnType(core.Null, [T]))
                    );
                    return completer.future;
                }

                let result = yield mxflutter_MethodChannel_invokeMethod(this.name);
                if (result == null) {
                    dart.throw(
                        new message_codec.MissingPluginException.new(
                            "No implementation found for method " +
                            dart.str(method) +
                            " on channel " +
                            dart.str(this.name)
                        )
                    );
                }
                let typedResult = T._check(result);
                return typedResult;
            }.bind(this)
        );
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
