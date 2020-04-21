'use strict';
const dart_sdk = require("dart_sdk");
let packages__dio__src__cancel_token = require('packages/dio/src/cancel_token.dart.lib.js');
let packages__dio__src__adapters__browser_adapter = require('packages/dio/src/mxflutter_adapter.dart.lib.js');
//let packages__dio__src__adapters__browser_adapter = require('packages/dio/browser_adapter.dart.lib.js');
let packages__dio__src__interceptor = require('packages/dio/src/interceptor.dart.lib.js');
let packages__dio__src__headers = require('packages/dio/src/headers.dart.lib.js');
let packages__dio__src__redirect_record = require('packages/dio/src/redirect_record.dart.lib.js');
let packages__dio__src__form_data = require('packages/dio/src/form_data.dart.lib.js');
const core = dart_sdk.core;
const async = dart_sdk.async;
const _js_helper = dart_sdk._js_helper;
const _interceptors = dart_sdk._interceptors;
const convert = dart_sdk.convert;
const math = dart_sdk.math;
const typed_data = dart_sdk.typed_data;
const _native_typed_data = dart_sdk._native_typed_data;
const collection = dart_sdk.collection;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const options$ = packages__dio__src__cancel_token.src__options;
const transformer = packages__dio__src__cancel_token.src__transformer;
const response$ = packages__dio__src__cancel_token.src__response;
const dio_error = packages__dio__src__cancel_token.src__dio_error;
const cancel_token = packages__dio__src__cancel_token.src__cancel_token;
const adapter = packages__dio__src__cancel_token.src__adapter;
const browser_adapter = packages__dio__src__adapters__browser_adapter.src__adapters__browser_adapter;
const interceptor = packages__dio__src__interceptor.src__interceptor;
const headers$ = packages__dio__src__headers.src__headers;
const redirect_record = packages__dio__src__redirect_record.src__redirect_record;
const form_data = packages__dio__src__form_data.src__form_data;
var dio_for_browser = Object.create(dart.library);
var dio = Object.create(dart.library);
var $_equals = dartx._equals;
var $forEach = dartx.forEach;
var $add = dartx.add;
var $contains = dartx.contains;
var $runtimeType = dartx.runtimeType;
var $keys = dartx.keys;
var $toLowerCase = dartx.toLowerCase;
var $_get = dartx._get;
var $toString = dartx.toString;
var $any = dartx.any;
var $_set = dartx._set;
var $length = dartx.length;
var $ceil = dartx.ceil;
var $sublist = dartx.sublist;
var $remove = dartx.remove;
var $addAll = dartx.addAll;
var $toUpperCase = dartx.toUpperCase;
var dynamicToNull = () => (dynamicToNull = dart.constFn(dart.fnType(core.Null, [dart.dynamic])))();
var dynamicTobool = () => (dynamicTobool = dart.constFn(dart.fnType(core.bool, [dart.dynamic])))();
var dynamicTodynamic = () => (dynamicTodynamic = dart.constFn(dart.fnType(dart.dynamic, [dart.dynamic])))();
var VoidTodynamic = () => (VoidTodynamic = dart.constFn(dart.fnType(dart.dynamic, [])))();
var VoidToFutureOr = () => (VoidToFutureOr = dart.constFn(dart.fnType(dart.dynamic, [])))();
var dynamicToFuture = () => (dynamicToFuture = dart.constFn(dart.fnType(async.Future, [dart.dynamic])))();
var dynamicAndboolToFunction = () => (dynamicAndboolToFunction = dart.constFn(dart.fnType(core.Function, [dart.dynamic, core.bool])))();
var dynamicToFunction = () => (dynamicToFunction = dart.constFn(dart.fnType(core.Function, [dart.dynamic])))();
var dynamicToFutureOr = () => (dynamicToFutureOr = dart.constFn(dart.fnType(dart.dynamic, [dart.dynamic])))();
var InterceptorToNull = () => (InterceptorToNull = dart.constFn(dart.fnType(core.Null, [interceptor.Interceptor])))();
var ListOfString = () => (ListOfString = dart.constFn(core.List$(core.String)))();
var IdentityMapOfString$ListOfString = () => (IdentityMapOfString$ListOfString = dart.constFn(_js_helper.IdentityMap$(core.String, ListOfString())))();
var JSArrayOfRedirectRecord = () => (JSArrayOfRedirectRecord = dart.constFn(_interceptors.JSArray$(redirect_record.RedirectRecord)))();
var VoidToResponse = () => (VoidToResponse = dart.constFn(dart.fnType(response$.Response, [])))();
var voidTobottom = () => (voidTobottom = dart.constFn(dart.fnType(core.Null, [dart.void])))();
var JSArrayOfString = () => (JSArrayOfString = dart.constFn(_interceptors.JSArray$(core.String)))();
var StreamOfList = () => (StreamOfList = dart.constFn(async.Stream$(core.List)))();
var ListOfint = () => (ListOfint = dart.constFn(core.List$(core.int)))();
var StreamOfListOfint = () => (StreamOfListOfint = dart.constFn(async.Stream$(ListOfint())))();
var StringTobool = () => (StringTobool = dart.constFn(dart.fnType(core.bool, [core.String])))();
var JSArrayOfListOfint = () => (JSArrayOfListOfint = dart.constFn(_interceptors.JSArray$(ListOfint())))();
var _StreamHandlerTransformerOfListOfint$Uint8List = () => (_StreamHandlerTransformerOfListOfint$Uint8List = dart.constFn(async._StreamHandlerTransformer$(ListOfint(), typed_data.Uint8List)))();
var EventSinkOfUint8List = () => (EventSinkOfUint8List = dart.constFn(async.EventSink$(typed_data.Uint8List)))();
var ListOfintAndEventSinkOfUint8ListToNull = () => (ListOfintAndEventSinkOfUint8ListToNull = dart.constFn(dart.fnType(core.Null, [ListOfint(), EventSinkOfUint8List()])))();
var EventSinkOfUint8ListToNull = () => (EventSinkOfUint8ListToNull = dart.constFn(dart.fnType(core.Null, [EventSinkOfUint8List()])))();
var StreamOfUint8List = () => (StreamOfUint8List = dart.constFn(async.Stream$(typed_data.Uint8List)))();
var LinkedHashMapOfString$dynamic = () => (LinkedHashMapOfString$dynamic = dart.constFn(collection.LinkedHashMap$(core.String, dart.dynamic)))();
var IdentityMapOfString$dynamic = () => (IdentityMapOfString$dynamic = dart.constFn(_js_helper.IdentityMap$(core.String, dart.dynamic)))();
var intTobool = () => (intTobool = dart.constFn(dart.fnType(core.bool, [core.int])))();
var ListOfRedirectRecord = () => (ListOfRedirectRecord = dart.constFn(core.List$(redirect_record.RedirectRecord)))();
const CT = Object.create(null);
var L0 = "file:///Users/chaodong/Documents/Projects/QQProject/FlutterSource/flutter/.pub-cache/hosted/pub.dartlang.org/dio-3.0.9/lib/src/dio.dart";
var L1 = "package:dio/src/dio.dart";
var L2 = "package:dio/src/entry/dio_for_browser.dart";
var _interceptors$ = dart.privateName(dio, "_interceptors");
var _closed = dart.privateName(dio, "_closed");
var _request = dart.privateName(dio, "_request");
var _dispatchRequest = dart.privateName(dio, "_dispatchRequest");
var _transformData = dart.privateName(dio, "_transformData");
var options = dart.privateName(dio, "DioMixin.options");
var httpClientAdapter = dart.privateName(dio, "DioMixin.httpClientAdapter");
var transformer$ = dart.privateName(dio, "DioMixin.transformer");
dio.DioMixin = class DioMixin extends core.Object {
  get options() {
    return this[options];
  }
  set options(value) {
    this[options] = value;
  }
  get httpClientAdapter() {
    return this[httpClientAdapter];
  }
  set httpClientAdapter(value) {
    this[httpClientAdapter] = value;
  }
  get transformer() {
    return this[transformer$];
  }
  set transformer(value) {
    this[transformer$] = value;
  }
  get interceptors() {
    return this[_interceptors$];
  }
  close(opts) {
    let force = opts && 'force' in opts ? opts.force : false;
    this[_closed] = true;
    this.httpClientAdapter.close({ force: force });
  }
  get(T, path, opts) {
    let queryParameters = opts && 'queryParameters' in opts ? opts.queryParameters : null;
    let options = opts && 'options' in opts ? opts.options : null;
    let cancelToken = opts && 'cancelToken' in opts ? opts.cancelToken : null;
    let onReceiveProgress = opts && 'onReceiveProgress' in opts ? opts.onReceiveProgress : null;
    return this.request(T, path, { queryParameters: queryParameters, options: this.checkOptions("GET", options), onReceiveProgress: onReceiveProgress, cancelToken: cancelToken });
  }
  getUri(T, uri, opts) {
    let options = opts && 'options' in opts ? opts.options : null;
    let cancelToken = opts && 'cancelToken' in opts ? opts.cancelToken : null;
    let onReceiveProgress = opts && 'onReceiveProgress' in opts ? opts.onReceiveProgress : null;
    return this.requestUri(T, uri, { options: this.checkOptions("GET", options), onReceiveProgress: onReceiveProgress, cancelToken: cancelToken });
  }
  post(T, path, opts) {
    let data = opts && 'data' in opts ? opts.data : null;
    let queryParameters = opts && 'queryParameters' in opts ? opts.queryParameters : null;
    let options = opts && 'options' in opts ? opts.options : null;
    let cancelToken = opts && 'cancelToken' in opts ? opts.cancelToken : null;
    let onSendProgress = opts && 'onSendProgress' in opts ? opts.onSendProgress : null;
    let onReceiveProgress = opts && 'onReceiveProgress' in opts ? opts.onReceiveProgress : null;
    return this.request(T, path, { data: data, options: this.checkOptions("POST", options), queryParameters: queryParameters, cancelToken: cancelToken, onSendProgress: onSendProgress, onReceiveProgress: onReceiveProgress });
  }
  postUri(T, uri, opts) {
    let data = opts && 'data' in opts ? opts.data : null;
    let options = opts && 'options' in opts ? opts.options : null;
    let cancelToken = opts && 'cancelToken' in opts ? opts.cancelToken : null;
    let onSendProgress = opts && 'onSendProgress' in opts ? opts.onSendProgress : null;
    let onReceiveProgress = opts && 'onReceiveProgress' in opts ? opts.onReceiveProgress : null;
    return this.requestUri(T, uri, { data: data, options: this.checkOptions("POST", options), cancelToken: cancelToken, onSendProgress: onSendProgress, onReceiveProgress: onReceiveProgress });
  }
  put(T, path, opts) {
    let data = opts && 'data' in opts ? opts.data : null;
    let queryParameters = opts && 'queryParameters' in opts ? opts.queryParameters : null;
    let options = opts && 'options' in opts ? opts.options : null;
    let cancelToken = opts && 'cancelToken' in opts ? opts.cancelToken : null;
    let onSendProgress = opts && 'onSendProgress' in opts ? opts.onSendProgress : null;
    let onReceiveProgress = opts && 'onReceiveProgress' in opts ? opts.onReceiveProgress : null;
    return this.request(T, path, { data: data, queryParameters: queryParameters, options: this.checkOptions("PUT", options), cancelToken: cancelToken, onSendProgress: onSendProgress, onReceiveProgress: onReceiveProgress });
  }
  putUri(T, uri, opts) {
    let data = opts && 'data' in opts ? opts.data : null;
    let options = opts && 'options' in opts ? opts.options : null;
    let cancelToken = opts && 'cancelToken' in opts ? opts.cancelToken : null;
    let onSendProgress = opts && 'onSendProgress' in opts ? opts.onSendProgress : null;
    let onReceiveProgress = opts && 'onReceiveProgress' in opts ? opts.onReceiveProgress : null;
    return this.requestUri(T, uri, { data: data, options: this.checkOptions("PUT", options), cancelToken: cancelToken, onSendProgress: onSendProgress, onReceiveProgress: onReceiveProgress });
  }
  head(T, path, opts) {
    let data = opts && 'data' in opts ? opts.data : null;
    let queryParameters = opts && 'queryParameters' in opts ? opts.queryParameters : null;
    let options = opts && 'options' in opts ? opts.options : null;
    let cancelToken = opts && 'cancelToken' in opts ? opts.cancelToken : null;
    return this.request(T, path, { data: data, queryParameters: queryParameters, options: this.checkOptions("HEAD", options), cancelToken: cancelToken });
  }
  headUri(T, uri, opts) {
    let data = opts && 'data' in opts ? opts.data : null;
    let options = opts && 'options' in opts ? opts.options : null;
    let cancelToken = opts && 'cancelToken' in opts ? opts.cancelToken : null;
    return this.requestUri(T, uri, { data: data, options: this.checkOptions("HEAD", options), cancelToken: cancelToken });
  }
  delete(T, path, opts) {
    let data = opts && 'data' in opts ? opts.data : null;
    let queryParameters = opts && 'queryParameters' in opts ? opts.queryParameters : null;
    let options = opts && 'options' in opts ? opts.options : null;
    let cancelToken = opts && 'cancelToken' in opts ? opts.cancelToken : null;
    return this.request(T, path, { data: data, queryParameters: queryParameters, options: this.checkOptions("DELETE", options), cancelToken: cancelToken });
  }
  deleteUri(T, uri, opts) {
    let data = opts && 'data' in opts ? opts.data : null;
    let options = opts && 'options' in opts ? opts.options : null;
    let cancelToken = opts && 'cancelToken' in opts ? opts.cancelToken : null;
    return this.requestUri(T, uri, { data: data, options: this.checkOptions("DELETE", options), cancelToken: cancelToken });
  }
  patch(T, path, opts) {
    let data = opts && 'data' in opts ? opts.data : null;
    let queryParameters = opts && 'queryParameters' in opts ? opts.queryParameters : null;
    let options = opts && 'options' in opts ? opts.options : null;
    let cancelToken = opts && 'cancelToken' in opts ? opts.cancelToken : null;
    let onSendProgress = opts && 'onSendProgress' in opts ? opts.onSendProgress : null;
    let onReceiveProgress = opts && 'onReceiveProgress' in opts ? opts.onReceiveProgress : null;
    return this.request(T, path, { data: data, queryParameters: queryParameters, options: this.checkOptions("PATCH", options), cancelToken: cancelToken, onSendProgress: onSendProgress, onReceiveProgress: onReceiveProgress });
  }
  patchUri(T, uri, opts) {
    let data = opts && 'data' in opts ? opts.data : null;
    let options = opts && 'options' in opts ? opts.options : null;
    let cancelToken = opts && 'cancelToken' in opts ? opts.cancelToken : null;
    let onSendProgress = opts && 'onSendProgress' in opts ? opts.onSendProgress : null;
    let onReceiveProgress = opts && 'onReceiveProgress' in opts ? opts.onReceiveProgress : null;
    return this.requestUri(T, uri, { data: data, options: this.checkOptions("PATCH", options), cancelToken: cancelToken, onSendProgress: onSendProgress, onReceiveProgress: onReceiveProgress });
  }
  resolve(T, response) {
    if (!async.Future.is(response)) {
      response = async.Future.value(response);
    }
    return async.Future$(response$.Response$(T)).as(dart.dgsend(response, [response$.Response$(T)], 'then', [dart.fn(data => this.assureResponse(T, data), dart.fnType(response$.Response$(T), [dart.dynamic]))], { onError: dart.fn(err => this.assureResponse(T, err), dart.fnType(response$.Response$(T), [dart.dynamic])) }));
  }
  reject(T, err) {
    if (!async.Future.is(err)) {
      err = async.Future.error(err);
    }
    return async.Future$(response$.Response$(T)).as(dart.dgsend(err, [response$.Response$(T)], 'then', [dart.fn(v => {
      dart.throw(this.assureDioError(v));
    }, dynamicToNull())], {
      onError: dart.fn(e => {
        dart.throw(this.assureDioError(e));
      }, dynamicToNull())
    }));
  }
  lock() {
    this.interceptors.requestLock.lock();
  }
  unlock() {
    this.interceptors.requestLock.unlock();
  }
  clear() {
    this.interceptors.requestLock.clear();
  }
  download(urlPath, savePath, opts) {
    let onReceiveProgress = opts && 'onReceiveProgress' in opts ? opts.onReceiveProgress : null;
    let queryParameters = opts && 'queryParameters' in opts ? opts.queryParameters : null;
    let cancelToken = opts && 'cancelToken' in opts ? opts.cancelToken : null;
    let deleteOnError = opts && 'deleteOnError' in opts ? opts.deleteOnError : true;
    let lengthHeader = opts && 'lengthHeader' in opts ? opts.lengthHeader : "content-length";
    let data = opts && 'data' in opts ? opts.data : null;
    let options = opts && 'options' in opts ? opts.options : null;
    return async.async(response$.Response, function* download() {
      dart.throw(new core.UnsupportedError.new("Unsupport download API in browser"));
    });
  }
  downloadUri(uri, savePath, opts) {
    let onReceiveProgress = opts && 'onReceiveProgress' in opts ? opts.onReceiveProgress : null;
    let cancelToken = opts && 'cancelToken' in opts ? opts.cancelToken : null;
    let deleteOnError = opts && 'deleteOnError' in opts ? opts.deleteOnError : true;
    let lengthHeader = opts && 'lengthHeader' in opts ? opts.lengthHeader : "content-length";
    let data = opts && 'data' in opts ? opts.data : null;
    let options = opts && 'options' in opts ? opts.options : null;
    return this.download(dart.toString(uri), savePath, { onReceiveProgress: onReceiveProgress, lengthHeader: lengthHeader, deleteOnError: deleteOnError, cancelToken: cancelToken, data: data, options: options });
  }
  request(T, path, opts) {
    let data = opts && 'data' in opts ? opts.data : null;
    let queryParameters = opts && 'queryParameters' in opts ? opts.queryParameters : null;
    let cancelToken = opts && 'cancelToken' in opts ? opts.cancelToken : null;
    let options = opts && 'options' in opts ? opts.options : null;
    let onSendProgress = opts && 'onSendProgress' in opts ? opts.onSendProgress : null;
    let onReceiveProgress = opts && 'onReceiveProgress' in opts ? opts.onReceiveProgress : null;
    return async.async(response$.Response$(T), (function* request() {
      return this[_request](T, path, { data: data, queryParameters: queryParameters, cancelToken: cancelToken, options: options, onSendProgress: onSendProgress, onReceiveProgress: onReceiveProgress });
    }).bind(this));
  }
  requestUri(T, uri, opts) {
    let data = opts && 'data' in opts ? opts.data : null;
    let cancelToken = opts && 'cancelToken' in opts ? opts.cancelToken : null;
    let options = opts && 'options' in opts ? opts.options : null;
    let onSendProgress = opts && 'onSendProgress' in opts ? opts.onSendProgress : null;
    let onReceiveProgress = opts && 'onReceiveProgress' in opts ? opts.onReceiveProgress : null;
    return this.request(T, dart.toString(uri), { data: data, cancelToken: cancelToken, options: options, onSendProgress: onSendProgress, onReceiveProgress: onReceiveProgress });
  }
  [_request](T, path, opts) {
    let data = opts && 'data' in opts ? opts.data : null;
    let queryParameters = opts && 'queryParameters' in opts ? opts.queryParameters : null;
    let cancelToken = opts && 'cancelToken' in opts ? opts.cancelToken : null;
    let options = opts && 'options' in opts ? opts.options : null;
    let onSendProgress = opts && 'onSendProgress' in opts ? opts.onSendProgress : null;
    let onReceiveProgress = opts && 'onReceiveProgress' in opts ? opts.onReceiveProgress : null;
    return async.async(response$.Response$(T), (function* _request() {
      let t0, t0$, t0$0, t0$1, t0$2;
      if (dart.test(this[_closed])) {
        dart.throw(new dio_error.DioError.new({ error: "Dio can't establish new connection after closed." }));
      }
      options == null ? options = new options$.Options.new() : null;
      if (options$.RequestOptions.is(options)) {
        data = (t0 = data, t0 == null ? options.data : t0);
        queryParameters = (t0$ = queryParameters, t0$ == null ? options.queryParameters : t0$);
        cancelToken = (t0$0 = cancelToken, t0$0 == null ? options.cancelToken : t0$0);
        onSendProgress = (t0$1 = onSendProgress, t0$1 == null ? options.onSendProgress : t0$1);
        onReceiveProgress = (t0$2 = onReceiveProgress, t0$2 == null ? options.onReceiveProgress : t0$2);
      }
      let requestOptions = this.mergeOptions(options, path, data, queryParameters);
      requestOptions.onReceiveProgress = onReceiveProgress;
      requestOptions.onSendProgress = onSendProgress;
      requestOptions.cancelToken = cancelToken;
      if (!dart.wrapType(T)[$_equals](dart.wrapType(dart.dynamic)) && !(dart.equals(requestOptions.responseType, options$.ResponseType.bytes) || dart.equals(requestOptions.responseType, options$.ResponseType.stream))) {
        if (dart.wrapType(T)[$_equals](dart.wrapType(core.String))) {
          requestOptions.responseType = options$.ResponseType.plain;
        } else {
          requestOptions.responseType = options$.ResponseType.json;
        }
      }
      function _isErrorOrException(t) {
        return core.Exception.is(t) || core.Error.is(t);
      }
      dart.fn(_isErrorOrException, dynamicTobool());
      const _interceptorWrapper = (interceptor, request) => {
        return dart.fn(data => async.async(dart.dynamic, (function* () {
          let type = dart.test(request) ? options$.RequestOptions.is(data) : response$.Response.is(data);
          let lock = dart.test(request) ? this.interceptors.requestLock : this.interceptors.responseLock;
          if (dart.test(_isErrorOrException(data)) || type) {
            return this.listenCancelForAsyncTask(dart.dynamic, cancelToken, async.Future.new(dart.fn(() => this.checkIfNeedEnqueue(lock, dart.fn(() => {
              let t0;
              if (type) {
                if (!dart.test(request)) dart.dput(data, 'request', (t0 = dart.dload(data, 'request'), t0 == null ? requestOptions : t0));
                return dart.dsend(dart.dcall(interceptor, [data]), 'then', [dart.fn(e => {
                  let t0;
                  t0 = e;
                  return t0 == null ? data : t0;
                }, dynamicTodynamic())]);
              } else {
                dart.throw(this.assureDioError(data, requestOptions));
              }
            }, VoidTodynamic())), VoidToFutureOr())));
          } else {
            return this.assureResponse(dart.dynamic, data, requestOptions);
          }
        }).bind(this)), dynamicToFuture());
      };
      dart.fn(_interceptorWrapper, dynamicAndboolToFunction());
      const _errorInterceptorWrapper = errInterceptor => {
        return dart.fn(err => async.async(dart.dynamic, (function* () {
          let t0;
          if (!response$.Response.is(err)) {
            let _e = (yield dart.dcall(errInterceptor, [this.assureDioError(err, requestOptions)]));
            if (!response$.Response.is(_e)) {
              dart.throw(this.assureDioError((t0 = _e, t0 == null ? err : t0), requestOptions));
            }
            err = _e;
          }
          return err;
        }).bind(this)), dynamicToFuture());
      };
      dart.fn(_errorInterceptorWrapper, dynamicToFunction());
      let future = null;
      future = async.Future.value(requestOptions);
      this.interceptors[$forEach](dart.fn(interceptor => {
        future = future.then(dart.dynamic, dynamicToFutureOr().as(_interceptorWrapper(dart.bind(interceptor, 'onRequest'), true)));
      }, InterceptorToNull()));
      future = future.then(dart.dynamic, dynamicToFutureOr().as(_interceptorWrapper(dart.bind(this, _dispatchRequest), true)));
      this.interceptors[$forEach](dart.fn(interceptor => {
        future = future.then(dart.dynamic, dynamicToFutureOr().as(_interceptorWrapper(dart.bind(interceptor, 'onResponse'), false)));
      }, InterceptorToNull()));
      this.interceptors[$forEach](dart.fn(interceptor => {
        future = future.catchError(_errorInterceptorWrapper(dart.bind(interceptor, 'onError')));
      }, InterceptorToNull()));

      return future.then(response$.Response$(T), dart.fn(data => this.assureResponse(T, data), dart.fnType(response$.Response$(T), [dart.dynamic]))).catchError(dart.fn(err => {
        if (err == null || dart.test(_isErrorOrException(err))) {
          dart.throw(this.assureDioError(err, requestOptions));
        }
        return this.assureResponse(T, err, requestOptions);
      }, dart.fnType(response$.Response$(T), [dart.dynamic])));
    }).bind(this));
  }
  [_dispatchRequest](T, options) {
    return async.async(response$.Response$(T), (function* _dispatchRequest() {
      let t0, t0$, t0$0, t0$1, t1, t0$2;
      let cancelToken = options.cancelToken;
      let responseBody = null;
      try {
        let stream = (yield this[_transformData](options));
        responseBody = (yield this.httpClientAdapter.fetch(options, stream, (t0 = cancelToken, t0 == null ? null : t0.whenCancel)));
        responseBody.headers = (t0$ = responseBody.headers, t0$ == null ? new (IdentityMapOfString$ListOfString()).new() : t0$);
        let headers = new headers$.Headers.fromMap((t0$0 = responseBody.headers, t0$0 == null ? new (IdentityMapOfString$ListOfString()).new() : t0$0));
        let ret = new response$.Response.new({ headers: headers, request: options, redirects: (t0$1 = responseBody.redirects, t0$1 == null ? JSArrayOfRedirectRecord().of([]) : t0$1), isRedirect: responseBody.isRedirect, statusCode: responseBody.statusCode, statusMessage: responseBody.statusMessage, extra: responseBody.extra });
        let statusOk = (t0$2 = options, t1 = responseBody.statusCode, t0$2.validateStatus(t1));
        if (dart.test(statusOk) || dart.test(options.receiveDataWhenStatusError)) {
          let forceConvert = !(dart.wrapType(T)[$_equals](dart.wrapType(dart.dynamic)) || dart.wrapType(T)[$_equals](dart.wrapType(core.String))) && !(dart.equals(options.responseType, options$.ResponseType.bytes) || dart.equals(options.responseType, options$.ResponseType.stream));
          let contentType = null;
          if (forceConvert) {
            contentType = headers.value("content-type");
            headers.set("content-type", "application/json; charset=utf-8");
          }
          ret.data = (yield this.transformer.transformResponse(options, responseBody));
          if (forceConvert) {
            headers.set("content-type", contentType);
          }
        } else {
          yield responseBody.stream.listen(null).cancel();
        }
        this.checkCancelled(cancelToken);
        if (dart.test(statusOk)) {
          return async.FutureOr$(response$.Response$(T)).as(this.checkIfNeedEnqueue(this.interceptors.responseLock, dart.fn(() => ret, VoidToResponse())));
        } else {
          dart.throw(new dio_error.DioError.new({ response: ret, error: "Http status error [" + dart.str(responseBody.statusCode) + "]", type: dio_error.DioErrorType.RESPONSE }));
        }
      } catch (e$) {
        let e = dart.getThrown(e$);
        dart.throw(this.assureDioError(e, options));
      }
    }).bind(this));
  }
  checkCancelled(cancelToken) {
    if (cancelToken != null && cancelToken.cancelError != null) {
      dart.throw(cancelToken.cancelError);
    }
  }
  listenCancelForAsyncTask(T, cancelToken, future) {
    return async.Future.any(T, (() => {
      let t1 = _interceptors.JSArray$(async.Future$(T)).of([]);
      if (cancelToken != null) t1[$add](cancelToken.whenCancel.then(T, dart.fn(e => dart.throw(cancelToken.cancelError), voidTobottom())));
      t1[$add](future);
      return t1;
    })());
  }
  [_transformData](options) {
    return async.async(StreamOfUint8List(), (function* _transformData() {
      let t4, t3, t2;
      let data = options.data;
      let bytes = null;
      let stream = null;
      if (data != null && dart.test(JSArrayOfString().of(["POST", "PUT", "PATCH", "DELETE"])[$contains](options.method))) {
        let length = null;
        if (async.Stream.is(data)) {
          if (!StreamOfList().is(data)) dart.assertFailed("Stream type must be `Stream<List>`, but " + dart.str(dart.runtimeType(data)) + " is found.", L0, 992, 16, "data is Stream<List>");
          stream = StreamOfListOfint().as(data);
          options.headers[$keys][$any](dart.fn(key => {
            if (key[$toLowerCase]() === "content-length") {
              length = core.int.parse(dart.toString(options.headers[$_get](key)));
              return true;
            }
            return false;
          }, StringTobool()));
        } else if (form_data.FormData.is(data)) {
          if (form_data.FormData.is(data)) {
            options.headers[$_set]("content-type", "multipart/form-data; boundary=" + dart.str(data.boundary));
          }
          stream = data.finalize();
          length = data.length;
        } else {
          let _data = (yield this.transformer.transformRequest(options));
          if (options.requestEncoder != null) {
            bytes = (t2 = options, t3 = _data, t4 = options, t2.requestEncoder(t3, t4));
          } else {
            bytes = convert.utf8.encode(_data);
          }
          length = bytes[$length];
          let group = JSArrayOfListOfint().of([]);
          let groupCount = (dart.notNull(bytes[$length]) / 1024)[$ceil]();
          for (let i = 0; i < groupCount; i = i + 1) {
            let start = i * 1024;
            group[$add](bytes[$sublist](start, math.min(core.int, start + 1024, bytes[$length])));
          }
          stream = StreamOfListOfint().fromIterable(group);
        }
        if (length != null) {
          options.headers[$_set]("content-length", dart.toString(length));
        }
        let complete = 0;
        let byteStream = stream.transform(typed_data.Uint8List, new (_StreamHandlerTransformerOfListOfint$Uint8List()).new({
          handleData: dart.fn((data, sink) => {
            let t2, t4, t3, t2$;
            if (options.cancelToken != null && dart.test(options.cancelToken.isCancelled)) {
              t2 = sink;
              t2.addError(options.cancelToken.cancelError);
              t2.close();
              t2;
            } else {
              sink.add(_native_typed_data.NativeUint8List.fromList(data));
              if (length != null) {
                complete = complete + dart.notNull(data[$length]);
                if (options.onSendProgress != null) {
                  t2$ = options;
                  t3 = complete;
                  t4 = length;
                  t2$.onSendProgress(t3, t4);
                }
              }
            }
          }, ListOfintAndEventSinkOfUint8ListToNull())
        }));
        if (dart.notNull(options.sendTimeout) > 0) {
          byteStream.timeout(new core.Duration.new({ milliseconds: options.sendTimeout }), {
            onTimeout: dart.fn(sink => {
              sink.addError(new dio_error.DioError.new({ request: options, error: "Sending timeout[" + dart.str(options.connectTimeout) + "ms]", type: dio_error.DioErrorType.SEND_TIMEOUT }));
              sink.close();
            }, EventSinkOfUint8ListToNull())
          });
        }
        return byteStream;
      } else {
        options.headers[$remove]("content-type");
      }
      return null;
    }).bind(this));
  }
  mergeOptions(opt, url, data, queryParameters) {
    let t2, t3, t2$, t2$0, t2$1, t2$2, t2$3, t2$4, t2$5, t2$6, t2$7, t2$8, t2$9, t2$10, t2$11, t2$12, t2$13, t2$14, t2$15, t2$16, t2$17, t2$18, t2$19, t2$20, t2$21, t2$22, t2$23, t2$24, t2$25, t2$26;
    let query = (t2$ = LinkedHashMapOfString$dynamic().from((t2 = this.options.queryParameters, t2 == null ? new _js_helper.LinkedMap.new() : t2)), t2$[$addAll]((t3 = queryParameters, t3 == null ? new (IdentityMapOfString$dynamic()).new() : t3)), t2$);
    let optBaseUrl = options$.RequestOptions.is(opt) ? opt.baseUrl : null;
    let optConnectTimeout = options$.RequestOptions.is(opt) ? opt.connectTimeout : null;
    return new options$.RequestOptions.new({ method: (t2$2 = (t2$1 = (t2$0 = opt.method, t2$0 == null ? this.options.method : t2$0), t2$1 == null ? null : t2$1[$toUpperCase]()), t2$2 == null ? "GET" : t2$2), headers: (t2$3 = LinkedHashMapOfString$dynamic().from(this.options.headers), t2$3[$addAll](opt.headers), t2$3), baseUrl: (t2$5 = (t2$4 = optBaseUrl, t2$4 == null ? this.options.baseUrl : t2$4), t2$5 == null ? "" : t2$5), path: url, data: data, connectTimeout: (t2$7 = (t2$6 = optConnectTimeout, t2$6 == null ? this.options.connectTimeout : t2$6), t2$7 == null ? 0 : t2$7), sendTimeout: (t2$9 = (t2$8 = opt.sendTimeout, t2$8 == null ? this.options.sendTimeout : t2$8), t2$9 == null ? 0 : t2$9), receiveTimeout: (t2$11 = (t2$10 = opt.receiveTimeout, t2$10 == null ? this.options.receiveTimeout : t2$10), t2$11 == null ? 0 : t2$11), responseType: (t2$13 = (t2$12 = opt.responseType, t2$12 == null ? this.options.responseType : t2$12), t2$13 == null ? options$.ResponseType.json : t2$13), extra: (t2$14 = LinkedHashMapOfString$dynamic().from(this.options.extra), t2$14[$addAll](opt.extra), t2$14), contentType: (t2$16 = (t2$15 = opt.contentType, t2$15 == null ? this.options.contentType : t2$15), t2$16 == null ? "application/json; charset=utf-8" : t2$16), validateStatus: (t2$18 = (t2$17 = opt.validateStatus, t2$17 == null ? this.options.validateStatus : t2$17), t2$18 == null ? dart.fn(status => dart.notNull(status) >= 200 && dart.notNull(status) < 300 || status === 304, intTobool()) : t2$18), receiveDataWhenStatusError: (t2$20 = (t2$19 = opt.receiveDataWhenStatusError, t2$19 == null ? this.options.receiveDataWhenStatusError : t2$19), t2$20 == null ? true : t2$20), followRedirects: (t2$22 = (t2$21 = opt.followRedirects, t2$21 == null ? this.options.followRedirects : t2$21), t2$22 == null ? true : t2$22), maxRedirects: (t2$24 = (t2$23 = opt.maxRedirects, t2$23 == null ? this.options.maxRedirects : t2$23), t2$24 == null ? 5 : t2$24), queryParameters: query, requestEncoder: (t2$25 = opt.requestEncoder, t2$25 == null ? this.options.requestEncoder : t2$25), responseDecoder: (t2$26 = opt.responseDecoder, t2$26 == null ? this.options.responseDecoder : t2$26) });
  }
  checkOptions(method, options) {
    options == null ? options = new options$.Options.new() : null;
    dart.dput(options, 'method', method);
    return options$.Options.as(options);
  }
  checkIfNeedEnqueue(lock, callback) {
    if (dart.test(lock.locked)) {
      return lock.enqueue(callback);
    } else {
      return callback();
    }
  }
  assureDioError(err, requestOptions = null) {
    let t2;
    let dioError = null;
    if (dio_error.DioError.is(err)) {
      dioError = err;
    } else {
      dioError = new dio_error.DioError.new({ error: err });
    }
    dioError.request = (t2 = dioError.request, t2 == null ? requestOptions : t2);
    return dioError;
  }
  assureResponse(T, response, requestOptions = null) {
    let t2;
    if (response$.Response$(T).is(response)) {
      response.request = (t2 = response.request, t2 == null ? requestOptions : t2);
    } else if (!response$.Response.is(response)) {
      response = new (response$.Response$(T)).new({ data: T.as(response), request: requestOptions });
    } else {
      let data = T.as(dart.dload(response, 'data'));
      response = new (response$.Response$(T)).new({ data: data, headers: headers$.Headers.as(dart.dload(response, 'headers')), request: options$.RequestOptions.as(dart.dload(response, 'request')), statusCode: core.int.as(dart.dload(response, 'statusCode')), isRedirect: core.bool.as(dart.dload(response, 'isRedirect')), redirects: ListOfRedirectRecord().as(dart.dload(response, 'redirects')), statusMessage: core.String.as(dart.dload(response, 'statusMessage')) });
    }
    return response$.Response$(T).as(response);
  }
};
(dio.DioMixin.new = function () {
  this[options] = null;
  this[_interceptors$] = new interceptor.Interceptors.new();
  this[httpClientAdapter] = null;
  this[transformer$] = new transformer.DefaultTransformer.new();
  this[_closed] = false;
  ;
}).prototype = dio.DioMixin.prototype;
dart.addTypeTests(dio.DioMixin);
dart.addTypeCaches(dio.DioMixin);
dio.DioMixin[dart.implements] = () => [dio.Dio];
dart.setMethodSignature(dio.DioMixin, () => ({
  __proto__: dart.getMethods(dio.DioMixin.__proto__),
  close: dart.fnType(dart.void, [], { force: core.bool }, {}),
  get: dart.gFnType(T => [async.Future$(response$.Response$(T)), [core.String], { cancelToken: cancel_token.CancelToken, onReceiveProgress: dart.fnType(dart.void, [core.int, core.int]), options: options$.Options, queryParameters: core.Map$(core.String, dart.dynamic) }, {}]),
  getUri: dart.gFnType(T => [async.Future$(response$.Response$(T)), [core.Uri], { cancelToken: cancel_token.CancelToken, onReceiveProgress: dart.fnType(dart.void, [core.int, core.int]), options: options$.Options }, {}]),
  post: dart.gFnType(T => [async.Future$(response$.Response$(T)), [core.String], { cancelToken: cancel_token.CancelToken, data: dart.dynamic, onReceiveProgress: dart.fnType(dart.void, [core.int, core.int]), onSendProgress: dart.fnType(dart.void, [core.int, core.int]), options: options$.Options, queryParameters: core.Map$(core.String, dart.dynamic) }, {}]),
  postUri: dart.gFnType(T => [async.Future$(response$.Response$(T)), [core.Uri], { cancelToken: cancel_token.CancelToken, data: dart.dynamic, onReceiveProgress: dart.fnType(dart.void, [core.int, core.int]), onSendProgress: dart.fnType(dart.void, [core.int, core.int]), options: options$.Options }, {}]),
  put: dart.gFnType(T => [async.Future$(response$.Response$(T)), [core.String], { cancelToken: cancel_token.CancelToken, data: dart.dynamic, onReceiveProgress: dart.fnType(dart.void, [core.int, core.int]), onSendProgress: dart.fnType(dart.void, [core.int, core.int]), options: options$.Options, queryParameters: core.Map$(core.String, dart.dynamic) }, {}]),
  putUri: dart.gFnType(T => [async.Future$(response$.Response$(T)), [core.Uri], { cancelToken: cancel_token.CancelToken, data: dart.dynamic, onReceiveProgress: dart.fnType(dart.void, [core.int, core.int]), onSendProgress: dart.fnType(dart.void, [core.int, core.int]), options: options$.Options }, {}]),
  head: dart.gFnType(T => [async.Future$(response$.Response$(T)), [core.String], { cancelToken: cancel_token.CancelToken, data: dart.dynamic, options: options$.Options, queryParameters: core.Map$(core.String, dart.dynamic) }, {}]),
  headUri: dart.gFnType(T => [async.Future$(response$.Response$(T)), [core.Uri], { cancelToken: cancel_token.CancelToken, data: dart.dynamic, options: options$.Options }, {}]),
  delete: dart.gFnType(T => [async.Future$(response$.Response$(T)), [core.String], { cancelToken: cancel_token.CancelToken, data: dart.dynamic, options: options$.Options, queryParameters: core.Map$(core.String, dart.dynamic) }, {}]),
  deleteUri: dart.gFnType(T => [async.Future$(response$.Response$(T)), [core.Uri], { cancelToken: cancel_token.CancelToken, data: dart.dynamic, options: options$.Options }, {}]),
  patch: dart.gFnType(T => [async.Future$(response$.Response$(T)), [core.String], { cancelToken: cancel_token.CancelToken, data: dart.dynamic, onReceiveProgress: dart.fnType(dart.void, [core.int, core.int]), onSendProgress: dart.fnType(dart.void, [core.int, core.int]), options: options$.Options, queryParameters: core.Map$(core.String, dart.dynamic) }, {}]),
  patchUri: dart.gFnType(T => [async.Future$(response$.Response$(T)), [core.Uri], { cancelToken: cancel_token.CancelToken, data: dart.dynamic, onReceiveProgress: dart.fnType(dart.void, [core.int, core.int]), onSendProgress: dart.fnType(dart.void, [core.int, core.int]), options: options$.Options }, {}]),
  resolve: dart.gFnType(T => [async.Future$(response$.Response$(T)), [dart.dynamic]]),
  reject: dart.gFnType(T => [async.Future$(response$.Response$(T)), [dart.dynamic]]),
  lock: dart.fnType(dart.void, []),
  unlock: dart.fnType(dart.void, []),
  clear: dart.fnType(dart.void, []),
  download: dart.fnType(async.Future$(response$.Response), [core.String, dart.dynamic], { cancelToken: cancel_token.CancelToken, data: dart.dynamic, deleteOnError: core.bool, lengthHeader: core.String, onReceiveProgress: dart.fnType(dart.void, [core.int, core.int]), options: options$.Options, queryParameters: core.Map$(core.String, dart.dynamic) }, {}),
  downloadUri: dart.fnType(async.Future$(response$.Response), [core.Uri, dart.dynamic], { cancelToken: cancel_token.CancelToken, data: dart.dynamic, deleteOnError: core.bool, lengthHeader: core.String, onReceiveProgress: dart.fnType(dart.void, [core.int, core.int]), options: options$.Options }, {}),
  request: dart.gFnType(T => [async.Future$(response$.Response$(T)), [core.String], { cancelToken: cancel_token.CancelToken, data: dart.dynamic, onReceiveProgress: dart.fnType(dart.void, [core.int, core.int]), onSendProgress: dart.fnType(dart.void, [core.int, core.int]), options: options$.Options, queryParameters: core.Map$(core.String, dart.dynamic) }, {}]),
  requestUri: dart.gFnType(T => [async.Future$(response$.Response$(T)), [core.Uri], { cancelToken: cancel_token.CancelToken, data: dart.dynamic, onReceiveProgress: dart.fnType(dart.void, [core.int, core.int]), onSendProgress: dart.fnType(dart.void, [core.int, core.int]), options: options$.Options }, {}]),
  [_request]: dart.gFnType(T => [async.Future$(response$.Response$(T)), [core.String], { cancelToken: cancel_token.CancelToken, data: dart.dynamic, onReceiveProgress: dart.fnType(dart.void, [core.int, core.int]), onSendProgress: dart.fnType(dart.void, [core.int, core.int]), options: options$.Options, queryParameters: core.Map$(core.String, dart.dynamic) }, {}]),
  [_dispatchRequest]: dart.gFnType(T => [async.Future$(response$.Response$(T)), [options$.RequestOptions]]),
  checkCancelled: dart.fnType(dart.void, [cancel_token.CancelToken]),
  listenCancelForAsyncTask: dart.gFnType(T => [async.Future$(T), [cancel_token.CancelToken, async.Future$(T)]]),
  [_transformData]: dart.fnType(async.Future$(async.Stream$(typed_data.Uint8List)), [options$.RequestOptions]),
  mergeOptions: dart.fnType(options$.RequestOptions, [options$.Options, core.String, dart.dynamic, core.Map$(core.String, dart.dynamic)]),
  checkOptions: dart.fnType(options$.Options, [dart.dynamic, dart.dynamic]),
  checkIfNeedEnqueue: dart.fnType(dart.dynamic, [interceptor.Lock, dart.fnType(dart.dynamic, [])]),
  assureDioError: dart.fnType(dio_error.DioError, [dart.dynamic], [options$.RequestOptions]),
  assureResponse: dart.gFnType(T => [response$.Response$(T), [dart.dynamic], [options$.RequestOptions]])
}));
dart.setGetterSignature(dio.DioMixin, () => ({
  __proto__: dart.getGetters(dio.DioMixin.__proto__),
  interceptors: interceptor.Interceptors
}));
dart.setLibraryUri(dio.DioMixin, L1);
dart.setFieldSignature(dio.DioMixin, () => ({
  __proto__: dart.getFields(dio.DioMixin.__proto__),
  options: dart.fieldType(options$.BaseOptions),
  [_interceptors$]: dart.finalFieldType(interceptor.Interceptors),
  httpClientAdapter: dart.fieldType(adapter.HttpClientAdapter),
  transformer: dart.fieldType(transformer.Transformer),
  [_closed]: dart.fieldType(core.bool)
}));
const Object_DioMixin$36 = class Object_DioMixin extends core.Object { };
(Object_DioMixin$36.new = function () {
  dio.DioMixin.new.call(this);
}).prototype = Object_DioMixin$36.prototype;
dart.applyMixin(Object_DioMixin$36, dio.DioMixin);
dio_for_browser.DioForBrowser = class DioForBrowser extends Object_DioMixin$36 { };
(dio_for_browser.DioForBrowser.new = function (options = null) {
  let t0;
  dio_for_browser.DioForBrowser.__proto__.new.call(this);
  this.options = (t0 = options, t0 == null ? new options$.BaseOptions.new() : t0);
  this.httpClientAdapter = new browser_adapter.BrowserHttpClientAdapter.new();
}).prototype = dio_for_browser.DioForBrowser.prototype;
dart.addTypeTests(dio_for_browser.DioForBrowser);
dart.addTypeCaches(dio_for_browser.DioForBrowser);
dio_for_browser.DioForBrowser[dart.implements] = () => [dio.Dio];
dart.setLibraryUri(dio_for_browser.DioForBrowser, L2);
dio_for_browser.createDio = function createDio(options = null) {
  return new dio_for_browser.DioForBrowser.new(options);
};
var options$0 = dart.privateName(dio, "Dio.options");
var httpClientAdapter$ = dart.privateName(dio, "Dio.httpClientAdapter");
var transformer$0 = dart.privateName(dio, "Dio.transformer");
dio.Dio = class Dio extends core.Object {
  get options() {
    return this[options$0];
  }
  set options(value) {
    this[options$0] = value;
  }
  get httpClientAdapter() {
    return this[httpClientAdapter$];
  }
  set httpClientAdapter(value) {
    this[httpClientAdapter$] = value;
  }
  get transformer() {
    return this[transformer$0];
  }
  set transformer(value) {
    this[transformer$0] = value;
  }
  static new(options = null) {
    return dio_for_browser.createDio(options);
  }
};
(dio.Dio[dart.mixinNew] = function () {
  this[options$0] = null;
  this[httpClientAdapter$] = null;
  this[transformer$0] = null;
}).prototype = dio.Dio.prototype;
dart.addTypeTests(dio.Dio);
dart.addTypeCaches(dio.Dio);
dart.setLibraryUri(dio.Dio, L1);
dart.setFieldSignature(dio.Dio, () => ({
  __proto__: dart.getFields(dio.Dio.__proto__),
  options: dart.fieldType(options$.BaseOptions),
  httpClientAdapter: dart.fieldType(adapter.HttpClientAdapter),
  transformer: dart.fieldType(transformer.Transformer)
}));
dart.trackLibraries("packages/dio/src/entry/dio_for_browser.dart", {
  "package:dio/src/entry/dio_for_browser.dart": dio_for_browser,
  "package:dio/src/dio.dart": dio
}, {
}, '{"version":3,"sourceRoot":"","sources":["../dio.dart","dio_for_browser.dart"],"names":[],"mappings":"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","file":"../../../../../../../../../../../../../../packages/dio/src/entry/dio_for_browser.dart.lib.js"}');
// Exports:

exports.src__entry__dio_for_browser = dio_for_browser;
exports.src__dio = dio;

exports.Dio = dio.Dio;

//# sourceMappingURL=dio_for_browser.dart.lib.js.map
