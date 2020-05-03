//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

const dart_sdk = require("dart_sdk");
const packages__dio__src__entry__dio_for_browser = require("packages/dio/src/entry/dio_for_browser.dart.lib.js");
const packages__dio__src__cancel_token = require("packages/dio/src/cancel_token.dart.lib.js");

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

//mx_jsbuilder编译器使用的导出
exports.src__dio = packages__dio__src__entry__dio_for_browser.src__dio;
exports.src__response = packages__dio__src__cancel_token.src__response;
exports.src__options = packages__dio__src__cancel_token.src__options;
exports.src__cancel_token = packages__dio__src__cancel_token.src__cancel_token;
exports.src__dio_error = packages__dio__src__cancel_token.src__dio_error;

//JS直接开发使用的导出
const packages__mxdio = require("packages/dio/src/mxdio.js");
exports.Dio = packages__mxdio.MXDio;
exports.BaseOptions = packages__mxdio.MXBaseOptions
exports.Options = packages__mxdio.MXOptions;
exports.Headers = packages__mxdio.MXHeaders;
exports.Response = packages__mxdio.MXResponse;
exports.RequestOptions = packages__mxdio.MXRequestOptions
exports.ResponseType = packages__mxdio.MXResponseType;






