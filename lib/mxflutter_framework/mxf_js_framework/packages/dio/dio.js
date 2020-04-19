//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

const dart_sdk = require("dart_sdk");
const packages__dio__src__entry__dio_for_browser = require("packages/dio/src/entry/dio_for_browser.dart.lib.js");
const packages__dio__src__cancel_token = require("packages/dio/src/cancel_token.dart.lib.js");

const core = dart_sdk.core;
const async = dart_sdk.async;
const typed_data = dart_sdk.typed_data;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const _interceptors = dart_sdk._interceptors;
const js = dart_sdk.js;
const _js_helper = dart_sdk._js_helper;
const convert = dart_sdk.convert;

const dio = packages__dio__src__entry__dio_for_browser.src__dio;
const response$ = packages__dio__src__cancel_token.src__response;
let ResponseToNull = () => (ResponseToNull = dart.constFn(dart.fnType(core.Null, [response$.Response])))();
let dynamicToNull = () => (dynamicToNull = dart.constFn(dart.fnType(core.Null, [dart.dynamic])))();
let IdentityMapOfString$dynamic = () => (IdentityMapOfString$dynamic = dart.constFn(_js_helper.IdentityMap$(core.String, dart.dynamic)))();

let { DartClass, FlutterCallArgs, FlutterWidget } = require("./js_flutter_basic_types.js");
let { MXFJSBridge, MXJSLog, MXJSCallbackMgr } = require("./js_flutter_framework.js");

class MXBaseOptions extends DartClass {
    constructor({
        method,
        connectTimeout,
        receiveTimeout,
        sendTimeout,
        baseUrl,
        queryParameters,
        extra,
        headers,
        responseType,
        contentType,
        validateStatus,
        receiveDataWhenStatusError,
        followRedirects,
        maxRedirects

    } = {}) {
        super();
        this.className = "BaseOptions";

        this.method = method;
        this.connectTimeout = connectTimeout;
        this.receiveTimeout = receiveTimeout;
        this.sendTimeout = sendTimeout;
        this.baseUrl = baseUrl;
        this.queryParameters = queryParameters;
        this.extra = extra;
        this.headers = headers;
        this.responseType = responseType;
        this.contentType = contentType;
        this.validateStatus = validateStatus;
        this.receiveDataWhenStatusError = receiveDataWhenStatusError;
        this.followRedirects = followRedirects;
        this.maxRedirects = maxRedirects;

    }
}

class MXOptions extends DartClass {
    constructor({
        method,
        sendTimeout,
        receiveTimeout,
        extra,
        headers,
        responseType,
        contentType,
        validateStatus,
        receiveDataWhenStatusError,
        followRedirects,
        maxRedirects
        // requestEncoder,
        // responseDecoder,
    } = {}) {
        super();
        this.className = "Options";
        this.method = method;
        this.sendTimeout = sendTimeout;
        this.receiveTimeout = receiveTimeout;
        this.extra = extra;
        this.headers = headers;
        this.responseType = responseType;
        this.contentType = contentType;
        this.validateStatus = validateStatus;
        this.receiveDataWhenStatusError = receiveDataWhenStatusError;
        this.followRedirects = followRedirects;
        this.maxRedirects = maxRedirects;
        // this.requestEncoder = requestEncoder;
        // this.responseDecoder = responseDecoder;
    }
}

class MXRequestOptions extends DartClass {
    constructor({
        method,
        sendTimeout,
        receiveTimeout,
        connectTimeout,
        data,
        path,
        queryParameters,
        baseUrl,
        extra,
        headers,
        responseType,
        contentType,
        validateStatus,
        receiveDataWhenStatusError,
        followRedirects,
        maxRedirects
    } = {}) {
        super();
        this.className = "RequestOptions";
        this.method = method;
        this.sendTimeout = sendTimeout;
        this.receiveTimeout = receiveTimeout;
        this.connectTimeout = connectTimeout;
        this.data = data;
        this.path = path;
        this.queryParameters = queryParameters;
        this.baseUrl = baseUrl;
        this.extra = extra;
        this.headers = headers;
        this.responseType = responseType;
        this.contentType = contentType;
        this.validateStatus = validateStatus;
        this.receiveDataWhenStatusError = receiveDataWhenStatusError;
        this.followRedirects = followRedirects;
        this.maxRedirects = maxRedirects;
    }
}


class MXHeaders {
    constructor({
        map
    } = {}) {
        this.map = map;
    }
    /// Convenience method for the value for a single valued header. If
    /// there is no header with the provided name, [:null:] will be
    /// returned. If the header has more than one value an exception is
    /// thrown.
    value(name) {
        let arr = this.map[name];
        if (arr == null) return null;
        if (arr.length == 1) return arr[0];
        throw Exception(
            '"$name" header has more than one value, please use Headers[name]');
    }

}

MXHeaders.acceptHeader = 'accept';
MXHeaders.contentEncodingHeader = 'content-encoding';
MXHeaders.contentLengthHeader = 'content-length';
MXHeaders.contentTypeHeader = 'content-type';
MXHeaders.wwwAuthenticateHeader = 'www-authenticate';
// Header field value
MXHeaders.jsonContentType = 'application/json; charset=utf-8';
MXHeaders.formUrlEncodedContentType = 'application/x-www-form-urlencoded';

class MXResponse extends DartClass {
    constructor({
        data,
        headers,
        request,
        isRedirect,
        statusCode,
        statusMessage,
        redirects,
        extra
    } = {}) {
        super();
        this.className = "Response";

        this.data = data;
        this.headers = headers;
        this.request = request;
        this.isRedirect = isRedirect;
        this.statusCode = statusCode;
        this.statusMessage = statusMessage;
        this.redirects = redirects;
        this.extra = extra;
    }

    static fromJSON(jsonMap) {
        let resp = new MXResponse();
        resp.data = jsonMap["data"];
        resp.headers = new MXHeaders(jsonMap["headers"]);
        resp.request = jsonMap["request"];
        resp.isRedirect = jsonMap["isRedirect"];
        resp.statusCode = jsonMap["statusCode"];
        resp.statusMessage = jsonMap["statusMessage"];
        resp.redirects = jsonMap["redirects"];
        resp.extra = jsonMap["extra"];

        return resp;
    }
}


class MXDio extends DartClass {

    constructor(baseOptions) {
        super("Dio");
        //Mirror对象在构造函数创建 MirrorID
        this.createMirrorObjectID();

        this.baseOptions;

        //创建对应FLutter对象
        var argument = new FlutterCallArgs({
            mirrorID: this.mirrorID,
            className: "Dio",
            args: {
                "baseOptions": baseOptions
            }
        });

        MXFJSBridge.createMirrorObj(argument, this.mirrorID, this);
    }

    get(path, {
        queryParameters,
        options,
        cancelToken,
        onReceiveProgress,
    } = {}) {

        return this.request(path, {
            options: this.checkOptions("get", options),
            queryParameters, queryParameters,
            //cancelToken: cancelToken,
            onReceiveProgress: onReceiveProgress
        });

    }

    post(path, {
        data,
        queryParameters, // Map<String, dynamic> 
        options, //Options 
        cancelToken,
        onSendProgress,//ProgressCallback 
        onReceiveProgress//ProgressCallback
    } = {}) {
        return this.request(path, {
            data: data,
            options: this.checkOptions("post", options),
            queryParameters, queryParameters,

            //cancelToken: cancelToken,
            onSendProgress: onSendProgress,
            onReceiveProgress: onReceiveProgress
        });
    }

    request(path, {
        data,
        queryParameters, // Map<String, dynamic> 
        options, //Options 
        onSendProgress,//ProgressCallback 
        onReceiveProgress//ProgressCallback
    } = {}) {

        let onSendProgressCallbackID = MXJSCallbackMgr.getInstance().createCallbackID(onSendProgress);
        let onReceiveProgressCallbackID = MXJSCallbackMgr.getInstance().createCallbackID(onReceiveProgress);

        let argument = new FlutterCallArgs({
            mirrorID: this.mirrorID,
            className: "Dio",
            funcName: "request",
            args: {
                path: path,
                data: data,
                options: options,
                queryParameters: queryParameters,
                onSendProgress: onSendProgressCallbackID,
                onReceiveProgress: onReceiveProgressCallbackID,
            }
        });

        let promiseResult = new Promise(function (resolve, reject) {
            MXFJSBridge.invokeMirrorObjWithCallback(argument, function (value) {
                if (value != null) {
                    let jsonMap = JSON.parse(value);
                    let response = MXResponse.fromJSON(jsonMap);

                    if (response) {
                        response.options = options;
                    }

                    resolve(response);
                    MXJSCallbackMgr.getInstance().removeCallback(onSendProgressCallbackID);
                    MXJSCallbackMgr.getInstance().removeCallback(onReceiveProgressCallbackID);

                } else {
                    resolve(null);
                }
            });
        }.bind(this));

        return promiseResult;
    }

    checkOptions(method, options) {
        options = options ? options : new MXOptions();
        options.method = method;
        return options;
    }

}

function Dio(baseOptions) {
    return new MXDio(baseOptions);
};

function convertJSMap2DartMapOfString$dynamic(jsMap) {
    try {
        let es = Array();
        for (let key in jsMap) { // 遍历Map
            es.push(key);
            es.push(jsMap[key]);
        }
        return new (IdentityMapOfString$dynamic()).from(es);
    } catch (e$) {
        let e = dart.getThrown(e$);
        core.print("convertJSMap2DartMapOfString$dynamic error:" + e);
        return jsMap;

    }
}


//dart_sdk.dart.runtimeType(response.data).toString()

function convertDartJSONMap2jsMap(jsonMap) {
    try {
        if (dart_sdk.dart.runtimeType(jsonMap).toString() != "_JsonMap") {
            return jsonMap;
        }

        //TODO：优化
        let jsonStr = convert.json.encode(jsonMap);
        let jsMap = JSON.parse(jsonStr);
        return jsMap;
    } catch (e$) {
        let e = dart.getThrown(e$);
        core.print("convertDartJSONMap2jsMap error:" + e);
        return jsonMap;
    }
}


function checkIsLinkMap(pMap) {

    return pMap && typeof pMap === "LinkMap";
}

//devc编译器使用的导出
exports.src__dio = packages__dio__src__entry__dio_for_browser.src__dio;
exports.src__response = packages__dio__src__cancel_token.src__response;
exports.src__options = packages__dio__src__cancel_token.src__options;
exports.src__cancel_token = packages__dio__src__cancel_token.src__cancel_token;
exports.src__dio_error = packages__dio__src__cancel_token.src__dio_error;

//手写JS使用的导出

exports.Dio = Dio;
exports.BaseOptions = MXBaseOptions
exports.Options = MXOptions;
exports.Headers = MXHeaders;
exports.Response = MXResponse;
exports.RequestOptions = MXRequestOptions
exports.convertJSMap2DioMap = convertJSMap2DartMapOfString$dynamic;





