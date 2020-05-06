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

class MXDio {

    constructor(baseOptions) {

        // if (baseOptions) {
        //     if (baseOptions.headers && !checkIsLinkMap(baseOptions.headers)) {
        //         baseOptions.headers = convertJSMap2DartMapOfString$dynamic(baseOptions.headers);
        //     }

        //     if (baseOptions.queryParameters && !checkIsLinkMap(baseOptions.queryParameters)) {
        //         baseOptions.queryParameters = convertJSMap2DartMapOfString$dynamic(baseOptions.queryParameters);
        //     }
        // }

        this.dioAPI = dio.Dio.new(baseOptions);;
    }

    get options() {
        return this.dioAPI.options;
    }

    get(path, {
        queryParameters,
        options,
        cancelToken,
        onReceiveProgress,
    } = {}) {


        // if (queryParameters && !checkIsLinkMap(queryParameters)) {
        //     queryParameters = convertJSMap2DartMapOfString$dynamic(queryParameters);
        // }

        // if (options) {
        //     if (options.headers && !checkIsLinkMap(options.headers)) {
        //         options.headers = convertJSMap2DartMapOfString$dynamic(options.headers);
        //     }

        //     if (options.queryParameters && !checkIsLinkMap(options.queryParameters)) {
        //         options.queryParameters = convertJSMap2DartMapOfString$dynamic(options.queryParameters);
        //     }
        // }

        let promiseResult = new Promise(function (resolve, reject) {
            this.dioAPI.get(dart.dynamic, path, {
                queryParameters,
                options,
                cancelToken,
                onReceiveProgress,
            }).then(core.Null, dart.fn(value => {
                //core.print("value: " + dart.str(value));
                value.data = convertDartJSONMap2jsMap(value.data);
                resolve(value);
            }, ResponseToNull())).catchError(dart.fn(e => {
                //core.print("error: " + dart.str(e));
                reject(e);
            }, dynamicToNull()));

        }.bind(this));

        return promiseResult;

    }

    post(path, {
        data,
        queryParameters, // Map<String, dynamic> 
        options, //Options 
        cancelToken,
        onSendProgress,//ProgressCallback 
        onReceiveProgress,//ProgressCallback
    } = {}) {

        // if (queryParameters && !checkIsLinkMap(queryParameters)) {
        //     queryParameters = convertJSMap2DartMapOfString$dynamic(queryParameters);
        // }

        // if (options) {
        //     if (options.headers && !checkIsLinkMap(options.headers)) {
        //         options.headers = convertJSMap2DartMapOfString$dynamic(options.headers);
        //     }

        //     if (options.queryParameters && !checkIsLinkMap(options.queryParameters)) {
        //         options.queryParameters = convertJSMap2DartMapOfString$dynamic(options.queryParameters);
        //     }
        // }

        let promiseResult = new Promise(function (resolve, reject) {
            this.dioAPI.post(dart.dynamic, path, {
                data,
                queryParameters, // Map<String, dynamic> 
                options, //Options 
                cancelToken,
                onSendProgress,//ProgressCallback 
                onReceiveProgress,//ProgressCallback
            }).then(core.Null, dart.fn(value => {
                //core.print("value: " + dart.str(value));
                value.data = convertDartJSONMap2jsMap(value.data);
                resolve(value);
            }, ResponseToNull())).catchError(dart.fn(e => {
                //core.print("error: " + dart.str(e));
                reject(e);
            }, dynamicToNull()));

        }.bind(this));

        return promiseResult;
    }

}

function Dio(baseOptions = null) {

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
        
        return  jsMap;


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
exports.Response = packages__dio__src__cancel_token.src__response.Response;
exports.Options = packages__dio__src__cancel_token.src__options.Options;
exports.RequestOptions = packages__dio__src__cancel_token.src__options.RequestOptions
exports.BaseOptions = packages__dio__src__cancel_token.src__options.BaseOptions

exports.convertJSMap2DioMap = convertJSMap2DartMapOfString$dynamic;





