
'use strict';
const dart_sdk = require("dart_sdk");
let packages__dio__src__cancel_token = require('packages/dio/cancel_token.dart.lib.js');

const core = dart_sdk.core;
const _interceptors = dart_sdk._interceptors;
//const html = dart_sdk.html;
const async = dart_sdk.async;
const typed_data = dart_sdk.typed_data;
const _native_typed_data = dart_sdk._native_typed_data;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const adapter = packages__dio__src__cancel_token.src__adapter;
const dio_error = packages__dio__src__cancel_token.src__dio_error;
const options = packages__dio__src__cancel_token.src__options;

////
const bridge_netwrok = require("./native_bridge/mxf_bridge_netwrok.js");
const network = bridge_netwrok.network;

////

var browser_adapter = Object.create(dart.library);
var $add = dartx.add;
var $_get = dartx._get;
var $remove = dartx.remove;
var $forEach = dartx.forEach;
var $onLoad = dartx.onLoad;
var $response = dartx.response;
var $result = dartx.result;
var $responseHeaders = dartx.responseHeaders;
var $toLowerCase = dartx.toLowerCase;
var $split = dartx.split;
var $map = dartx.map;
var $onError = dartx.onError;
var $clear = dartx.clear;
var JSArrayOfHttpRequest = () => (JSArrayOfHttpRequest = dart.constFn(_interceptors.JSArray$(html.HttpRequest)))();
var StringAnddynamicTovoid = () => (StringAnddynamicTovoid = dart.constFn(dart.fnType(dart.void, [core.String, dart.dynamic])))();
var CompleterOfResponseBody = () => (CompleterOfResponseBody = dart.constFn(async.Completer$(adapter.ResponseBody)))();
var ListOfString = () => (ListOfString = dart.constFn(core.List$(core.String)))();
var MapEntryOfString$ListOfString = () => (MapEntryOfString$ListOfString = dart.constFn(core.MapEntry$(core.String, ListOfString())))();
var StringAndStringToMapEntryOfString$ListOfString = () => (StringAndStringToMapEntryOfString$ListOfString = dart.constFn(dart.fnType(MapEntryOfString$ListOfString(), [core.String, core.String])))();
var ProgressEventToNull = () => (ProgressEventToNull = dart.constFn(dart.fnType(core.Null, [html.ProgressEvent])))();
var dynamicToNull = () => (dynamicToNull = dart.constFn(dart.fnType(core.Null, [dart.dynamic])))();
var JSArrayOfint = () => (JSArrayOfint = dart.constFn(_interceptors.JSArray$(core.int)))();
var ListOfint = () => (ListOfint = dart.constFn(core.List$(core.int)))();
var ListOfintAndListOfintToUint8List = () => (ListOfintAndListOfintToUint8List = dart.constFn(dart.fnType(typed_data.Uint8List, [ListOfint(), ListOfint()])))();
var VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
const CT = Object.create(null);
var L0 = "package:dio/src/adapters/browser_adapter.dart";
var _xhrs = dart.privateName(browser_adapter, "_xhrs");
var withCredentials = dart.privateName(browser_adapter, "BrowserHttpClientAdapter.withCredentials");
browser_adapter.BrowserHttpClientAdapter = class BrowserHttpClientAdapter extends core.Object {
  get withCredentials() {
    return this[withCredentials];
  }
  set withCredentials(value) {
    this[withCredentials] = value;
  }
  fetch(options, requestStream, cancelFuture) {

    let showDownloadProgress = options.onReceiveProgress != null;

    let t1, t0;

    let reqTask = {};
    let that = this;
    let completer = CompleterOfResponseBody().new();

    function send(data) {

      network.sendRequest({
        method: options.method,
        url: dart.toString(options.uri),
        responseType: 'arraybuffer',
        headers: options.headers,
        data: data,
        incrementalUpdates:showDownloadProgress,
        withCredentials: core.bool._check((t1 = options.extra[$_get]("withCredentials"), t1 == null ? that.withCredentials : t1)),
        onCreateRequest: function (requestID) {

          reqTask.requestID = requestID;
          this.requestArray.push(reqTask);

        }.bind(that),
        onCompleteResponse: function (status, respHeaders, responseType, responseData, errorDesc, isTimeOut) {

          //core.print("network.sendRequest:status:[" + status + "]  responseData: [" + responseData + "] ");

          if (errorDesc == null) {

            // completer.complete(new adapter.ResponseBody.fromString("diossssssssssss", 200));

            let dartMapHeaders = that.convertDartMap(respHeaders);

            let dartHeaders = dartMapHeaders[$map](core.String, ListOfString(), dart.fn((k, v) => new (MapEntryOfString$ListOfString()).__(k[$toLowerCase](), v[$split](",")), StringAndStringToMapEntryOfString$ListOfString()))

            completer.complete(new adapter.ResponseBody.fromBytes(responseData, status,
              {
                headers: dartHeaders,
                statusMessage: errorDesc,
                isRedirect: status === 302 || status === 301
              }));
          }
          else {
            completer.completeError(new dio_error.DioError.new({ type: dio_error.DioErrorType.RESPONSE, error: "XMLHttpRequest error: " + errorDesc, request: options }), core.StackTrace.current);
          }
        },
        onReceiveDataProgress:function(progress, total){
          if (showDownloadProgress) {
            options.onReceiveProgress(progress, total);
          }
        }
      });
    };

    cancelFuture == null ? null : cancelFuture.then(core.Null, dart.fn(_ => {
      try {
        network.abortRequest(reqTask.requestID);
      } catch (e$) {
        let e = dart.getThrown(e$);
      }

    }, dynamicToNull()));


    if (requestStream == null) {
      send();
    } else {
      requestStream.reduce(dart.fn((a, b) => _native_typed_data.NativeUint8List.fromList((() => {
        let t1 = JSArrayOfint().of([]);
        for (let t2 of a)
          t1[$add](t2);
        for (let t3 of b)
          t1[$add](t3);
        return t1;
      })()), ListOfintAndListOfintToUint8List())).then(dart.void, send);
    }

    return completer.future.whenComplete(dart.fn(() => {
      //TODO:FIXME
      //that.requestArray.remove(reqTask.requestID);
    }, VoidToNull()));;
  }

  close(opts) {
    let force = opts && 'force' in opts ? opts.force : false;
    if (dart.test(force)) {
      for (let requestID of this.requestIDArray) {
        network.abortRequest(requestID);
      }
    }
    this.requestArray.clear();
  }

  convertDartMap(jsMap) {

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
};
(browser_adapter.BrowserHttpClientAdapter.new = function () {
  this.requestArray = [];
  this[withCredentials] = false;
  ;
}).prototype = browser_adapter.BrowserHttpClientAdapter.prototype;
dart.addTypeTests(browser_adapter.BrowserHttpClientAdapter);
dart.addTypeCaches(browser_adapter.BrowserHttpClientAdapter);
browser_adapter.BrowserHttpClientAdapter[dart.implements] = () => [adapter.HttpClientAdapter];
dart.setMethodSignature(browser_adapter.BrowserHttpClientAdapter, () => ({
  __proto__: dart.getMethods(browser_adapter.BrowserHttpClientAdapter.__proto__),
  fetch: dart.fnType(async.Future$(adapter.ResponseBody), [options.RequestOptions, async.Stream$(core.List$(core.int)), async.Future]),
  close: dart.fnType(dart.void, [], { force: core.bool }, {})
}));
dart.setLibraryUri(browser_adapter.BrowserHttpClientAdapter, L0);
dart.setFieldSignature(browser_adapter.BrowserHttpClientAdapter, () => ({
  __proto__: dart.getFields(browser_adapter.BrowserHttpClientAdapter.__proto__),
  [_xhrs]: dart.finalFieldType(core.List$(html.HttpRequest)),
  withCredentials: dart.fieldType(core.bool)
}));
browser_adapter.createAdapter = function createAdapter() {
  return new browser_adapter.BrowserHttpClientAdapter.new();
};

exports.src__adapters__browser_adapter = browser_adapter;

