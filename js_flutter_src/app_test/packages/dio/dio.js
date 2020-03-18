
const dart_sdk = require("dart_sdk");
const dioLib = require("packages/dio/dio_for_browser.dart.lib.js");
const dioLibObj = require("packages/dio/cancel_token.dart.lib.js");

const core = dart_sdk.core;
const async = dart_sdk.async;
const typed_data = dart_sdk.typed_data;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const _interceptors = dart_sdk._interceptors;
const js = dart_sdk.js;
const _js_helper = dart_sdk._js_helper;

class MXDio {

    constructor(baseOptions) {

        if(baseOptions.headers && !checkIsLinkMap(baseOptions.headers)){
            baseOptions.headers = convertDartMap(baseOptions.headers);
        }

        if(baseOptions.queryParameters && !checkIsLinkMap(baseOptions.queryParameters)){
            baseOptions.queryParameters = convertDartMap(baseOptions.queryParameters);
        }

        this.dioAPI = dioLib.Dio.new(baseOptions);;
    }

    get(path, {
        queryParameters,
        options,
        cancelToken,
        onReceiveProgress,
    } = {}) {

        if(queryParameters && !checkIsLinkMap(queryParameters)){
            queryParameters = convertDartMap(queryParameters);
        }

        if(options.headers && !checkIsLinkMap(options.headers)){
            options.headers = convertDartMap(options.headers);
        }

        if(options.queryParameters && !checkIsLinkMap(options.queryParameters)){
            options.queryParameters = convertDartMap(options.queryParameters);
        }

        return this.dioAPI.get(dart.dynamic, path, {
            queryParameters,
            options,
            cancelToken,
            onReceiveProgress,
        });
    }

    post(path, {
        data,
        queryParameters, // Map<String, dynamic> 
        options, //Options 
        cancelToken,
        onSendProgress,//ProgressCallback 
        onReceiveProgress,//ProgressCallback
    } = {}) {

        if(queryParameters && !checkIsLinkMap(queryParameters)){
            queryParameters = convertDartMap(queryParameters);
        }

        if(options.headers && !checkIsLinkMap(options.headers)){
            options.headers = convertDartMap(options.headers);
        }

        if(options.queryParameters && !checkIsLinkMap(options.queryParameters)){
            options.queryParameters = convertDartMap(options.queryParameters);
        }

        return this.dioAPI.post(dart.dynamic, path, {
            data,
            queryParameters, // Map<String, dynamic> 
            options, //Options 
            cancelToken,
            onSendProgress,//ProgressCallback 
            onReceiveProgress,//ProgressCallback
        });
    }

}

function Dio(baseOptions = null) {

    return new MXDio(baseOptions);
};


function convertDartMap(jsMap) {

    let JSArrayOfJsObject = () => (JSArrayOfJsObject = dart.constFn(_interceptors.JSArray$(core.MapEntry)))();
    let es = Array();
    for (let key in jsMap) { // 遍历Map

        let entry = new core.MapEntry;
        entry.key = key;
        entry.value = jsMap[key];

        es.push(entry);
    }

    let dartArray = JSArrayOfJsObject().of(es);
    let dartMap = core.Map.fromEntries(dartArray);

    return dartMap;
}

function checkIsLinkMap(pMap){

    return pMap != null && typeof pMap === "LinkMap";
}

exports.Dio = Dio;
exports.Response = dioLibObj.src__response;
exports.options = dioLibObj.src__options;





