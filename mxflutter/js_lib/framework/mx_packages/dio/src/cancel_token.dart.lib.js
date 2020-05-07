// define(['dart_sdk', 
// '/packages/dio/src/headers.dart.lib.js',
//  '/packages/dio/src/redirect_record.dart.lib.js',
//   '/packages/dio/src/utils.dart.lib.js', 
//   '/packages/http_parser/src/media_type.dart.lib.js'], 

//   function(dart_sdk, packages__dio__src__headers,
//      packages__dio__src__redirect_record, 
//      packages__dio__src__utils,
//       packages__http_parser__src__media_type) {


'use strict';
const dart_sdk = require("dart_sdk");
let packages__dio__src__headers = require('packages/dio/src/headers.dart.lib.js');
let packages__dio__src__redirect_record = require('packages/dio/src/redirect_record.dart.lib.js');
let packages__dio__src__utils = require('packages/dio/src/utils.dart.lib.js');
//let packages__http_parser__src__media_type = require('packages/http_parser/src/media_type.dart.lib.js');
const core = dart_sdk.core;
const async = dart_sdk.async;
const convert = dart_sdk.convert;
const typed_data = dart_sdk.typed_data;
const _interceptors = dart_sdk._interceptors;
const _native_typed_data = dart_sdk._native_typed_data;
const collection = dart_sdk.collection;
const _js_helper = dart_sdk._js_helper;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const headers = packages__dio__src__headers.src__headers;
const redirect_record = packages__dio__src__redirect_record.src__redirect_record;
const utils = packages__dio__src__utils.src__utils;
const media_type = {}; //TODO = packages__http_parser__src__media_type.src__media_type;

var cancel_token = Object.create(dart.library);
var response = Object.create(dart.library);
var dio_error = Object.create(dart.library);
var transformer = Object.create(dart.library);
var options$ = Object.create(dart.library);
var adapter = Object.create(dart.library);
var $last = dartx.last;
var $toString = dartx.toString;
var $_get = dartx._get;
var $first = dartx.first;
var $length = dartx.length;
var $add = dartx.add;
var $setAll = dartx.setAll;
var $isNotEmpty = dartx.isNotEmpty;
var $toLowerCase = dartx.toLowerCase;
var $map = dartx.map;
var $trim = dartx.trim;
var $_set = dartx._set;
var $startsWith = dartx.startsWith;
var $split = dartx.split;
var $replaceAll = dartx.replaceAll;
var $contains = dartx.contains;
var $toList = dartx.toList;
var StringAndObjectToString = () => (StringAndObjectToString = dart.constFn(dart.fnType(core.String, [core.String, core.Object])))();
var _StreamHandlerTransformerOfUint8List$Uint8List = () => (_StreamHandlerTransformerOfUint8List$Uint8List = dart.constFn(async._StreamHandlerTransformer$(typed_data.Uint8List, typed_data.Uint8List)))();
var EventSinkOfUint8List = () => (EventSinkOfUint8List = dart.constFn(async.EventSink$(typed_data.Uint8List)))();
var Uint8ListAndEventSinkOfUint8ListToNull = () => (Uint8ListAndEventSinkOfUint8ListToNull = dart.constFn(dart.fnType(core.Null, [typed_data.Uint8List, EventSinkOfUint8List()])))();
var JSArrayOfUint8List = () => (JSArrayOfUint8List = dart.constFn(_interceptors.JSArray$(typed_data.Uint8List)))();
var Uint8ListToNull = () => (Uint8ListToNull = dart.constFn(dart.fnType(core.Null, [typed_data.Uint8List])))();
var dynamicToNull = () => (dynamicToNull = dart.constFn(dart.fnType(core.Null, [dart.dynamic])))();
var VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
var FutureOfvoid = () => (FutureOfvoid = dart.constFn(async.Future$(dart.void)))();
var voidToFutureOfvoid = () => (voidToFutureOfvoid = dart.constFn(dart.fnType(FutureOfvoid(), [dart.void])))();
var LinkedHashMapOfString$dynamic = () => (LinkedHashMapOfString$dynamic = dart.constFn(collection.LinkedHashMap$(core.String, dart.dynamic)))();
var IdentityMapOfString$dynamic = () => (IdentityMapOfString$dynamic = dart.constFn(_js_helper.IdentityMap$(core.String, dart.dynamic)))();
var MapEntryOfString$dynamic = () => (MapEntryOfString$dynamic = dart.constFn(core.MapEntry$(core.String, dart.dynamic)))();
var StringAnddynamicToMapEntryOfString$dynamic = () => (StringAnddynamicToMapEntryOfString$dynamic = dart.constFn(dart.fnType(MapEntryOfString$dynamic(), [core.String, dart.dynamic])))();
var StreamOfUint8List = () => (StreamOfUint8List = dart.constFn(async.Stream$(typed_data.Uint8List)))();
var JSArrayOfint = () => (JSArrayOfint = dart.constFn(_interceptors.JSArray$(core.int)))();
var intToUint8List = () => (intToUint8List = dart.constFn(dart.fnType(typed_data.Uint8List, [core.int])))();
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
const CT = Object.create(null);
var L0 = "package:dio/src/cancel_token.dart";
var L4 = "package:dio/src/options.dart";
var L1 = "package:dio/src/response.dart";
var L2 = "package:dio/src/dio_error.dart";
var L5 = "package:dio/src/adapter.dart";
var L3 = "package:dio/src/transformer.dart";
dart.defineLazy(CT, {
  get C0() {
    return C0 = dart.const({
      __proto__: dio_error.DioErrorType.prototype,
      [_name$]: "DioErrorType.CONNECT_TIMEOUT",
      index: 0
    });
  },
  get C1() {
    return C1 = dart.const({
      __proto__: dio_error.DioErrorType.prototype,
      [_name$]: "DioErrorType.SEND_TIMEOUT",
      index: 1
    });
  },
  get C2() {
    return C2 = dart.const({
      __proto__: dio_error.DioErrorType.prototype,
      [_name$]: "DioErrorType.RECEIVE_TIMEOUT",
      index: 2
    });
  },
  get C3() {
    return C3 = dart.const({
      __proto__: dio_error.DioErrorType.prototype,
      [_name$]: "DioErrorType.RESPONSE",
      index: 3
    });
  },
  get C4() {
    return C4 = dart.const({
      __proto__: dio_error.DioErrorType.prototype,
      [_name$]: "DioErrorType.CANCEL",
      index: 4
    });
  },
  get C5() {
    return C5 = dart.const({
      __proto__: dio_error.DioErrorType.prototype,
      [_name$]: "DioErrorType.DEFAULT",
      index: 5
    });
  },
  get C6() {
    return C6 = dart.constList([C0 || CT.C0, C1 || CT.C1, C2 || CT.C2, C3 || CT.C3, C4 || CT.C4, C5 || CT.C5], dio_error.DioErrorType);
  },
  get C7() {
    return C7 = dart.const({
      __proto__: options$.ResponseType.prototype,
      [_name$0]: "ResponseType.json",
      index: 0
    });
  },
  get C8() {
    return C8 = dart.const({
      __proto__: options$.ResponseType.prototype,
      [_name$0]: "ResponseType.stream",
      index: 1
    });
  },
  get C9() {
    return C9 = dart.const({
      __proto__: options$.ResponseType.prototype,
      [_name$0]: "ResponseType.plain",
      index: 2
    });
  },
  get C10() {
    return C10 = dart.const({
      __proto__: options$.ResponseType.prototype,
      [_name$0]: "ResponseType.bytes",
      index: 3
    });
  },
  get C11() {
    return C11 = dart.constList([C7 || CT.C7, C8 || CT.C8, C9 || CT.C9, C10 || CT.C10], options$.ResponseType);
  }
}, false);
var _cancelError = dart.privateName(cancel_token, "_cancelError");
var _completer = dart.privateName(cancel_token, "_completer");
cancel_token.CancelToken = class CancelToken extends core.Object {
  static isCancel(e) {
    return dart.equals(e.type, dio_error.DioErrorType.CANCEL);
  }
  get cancelError() {
    return this[_cancelError];
  }
  get isCancelled() {
    return this[_cancelError] != null;
  }
  get whenCancel() {
    return this[_completer].future;
  }
  cancel(reason = null) {
    this[_cancelError] = new dio_error.DioError.new({ type: dio_error.DioErrorType.CANCEL, error: reason });
    this[_completer].complete();
  }
};
(cancel_token.CancelToken.new = function () {
  this[_cancelError] = null;
  this[_completer] = null;
  this[_completer] = async.Completer.new();
}).prototype = cancel_token.CancelToken.prototype;
dart.addTypeTests(cancel_token.CancelToken);
dart.addTypeCaches(cancel_token.CancelToken);
dart.setMethodSignature(cancel_token.CancelToken, () => ({
  __proto__: dart.getMethods(cancel_token.CancelToken.__proto__),
  cancel: dart.fnType(dart.void, [], [dart.dynamic])
}));
dart.setGetterSignature(cancel_token.CancelToken, () => ({
  __proto__: dart.getGetters(cancel_token.CancelToken.__proto__),
  cancelError: dio_error.DioError,
  isCancelled: core.bool,
  whenCancel: async.Future$(dart.void)
}));
dart.setLibraryUri(cancel_token.CancelToken, L0);
dart.setFieldSignature(cancel_token.CancelToken, () => ({
  __proto__: dart.getFields(cancel_token.CancelToken.__proto__),
  [_cancelError]: dart.fieldType(dio_error.DioError),
  [_completer]: dart.fieldType(async.Completer)
}));
const _is_Response_default = Symbol('_is_Response_default');
var data$ = dart.privateName(response, "Response.data");
var headers$ = dart.privateName(response, "Response.headers");
var request$ = dart.privateName(response, "Response.request");
var statusCode$ = dart.privateName(response, "Response.statusCode");
var statusMessage$ = dart.privateName(response, "Response.statusMessage");
var extra$ = dart.privateName(response, "Response.extra");
var redirects$ = dart.privateName(response, "Response.redirects");
var isRedirect$ = dart.privateName(response, "Response.isRedirect");
response.Response$ = dart.generic(T => {
  class Response extends core.Object {
    get data() {
      return this[data$];
    }
    set data(value) {
      this[data$] = T.as(value);
    }
    get headers() {
      return this[headers$];
    }
    set headers(value) {
      this[headers$] = value;
    }
    get request() {
      return this[request$];
    }
    set request(value) {
      this[request$] = value;
    }
    get statusCode() {
      return this[statusCode$];
    }
    set statusCode(value) {
      this[statusCode$] = value;
    }
    get statusMessage() {
      return this[statusMessage$];
    }
    set statusMessage(value) {
      this[statusMessage$] = value;
    }
    get extra() {
      return this[extra$];
    }
    set extra(value) {
      this[extra$] = value;
    }
    get redirects() {
      return this[redirects$];
    }
    set redirects(value) {
      this[redirects$] = value;
    }
    get isRedirect() {
      return this[isRedirect$];
    }
    set isRedirect(value) {
      super.isRedirect = value;
    }
    get realUri() {
      let t0, t0$;
      t0$ = (t0 = this.redirects[$last], t0 == null ? null : t0.location);
      return t0$ == null ? this.request.uri : t0$;
    }
    toString() {
      if (core.Map.is(this.data)) {
        return convert.json.encode(this.data);
      }
      return dart.toString(this.data);
    }
  }
  (Response.new = function (opts) {
    let data = opts && 'data' in opts ? opts.data : null;
    let headers = opts && 'headers' in opts ? opts.headers : null;
    let request = opts && 'request' in opts ? opts.request : null;
    let isRedirect = opts && 'isRedirect' in opts ? opts.isRedirect : null;
    let statusCode = opts && 'statusCode' in opts ? opts.statusCode : null;
    let statusMessage = opts && 'statusMessage' in opts ? opts.statusMessage : null;
    let redirects = opts && 'redirects' in opts ? opts.redirects : null;
    let extra = opts && 'extra' in opts ? opts.extra : null;
    this[data$] = data;
    this[headers$] = headers;
    this[request$] = request;
    this[isRedirect$] = isRedirect;
    this[statusCode$] = statusCode;
    this[statusMessage$] = statusMessage;
    this[redirects$] = redirects;
    this[extra$] = extra;
    ;
  }).prototype = Response.prototype;
  dart.addTypeTests(Response);
  Response.prototype[_is_Response_default] = true;
  dart.addTypeCaches(Response);
  dart.setGetterSignature(Response, () => ({
    __proto__: dart.getGetters(Response.__proto__),
    realUri: core.Uri
  }));
  dart.setLibraryUri(Response, L1);
  dart.setFieldSignature(Response, () => ({
    __proto__: dart.getFields(Response.__proto__),
    data: dart.fieldType(T),
    headers: dart.fieldType(headers.Headers),
    request: dart.fieldType(options$.RequestOptions),
    statusCode: dart.fieldType(core.int),
    statusMessage: dart.fieldType(core.String),
    extra: dart.fieldType(core.Map$(core.String, dart.dynamic)),
    redirects: dart.fieldType(core.List$(redirect_record.RedirectRecord)),
    isRedirect: dart.finalFieldType(core.bool)
  }));
  dart.defineExtensionMethods(Response, ['toString']);
  return Response;
});
response.Response = response.Response$();
dart.addTypeTests(response.Response, _is_Response_default);
var _name$ = dart.privateName(dio_error, "_name");
var C0;
var C1;
var C2;
var C3;
var C4;
var C5;
var C6;
dio_error.DioErrorType = class DioErrorType extends core.Object {
  toString() {
    return this[_name$];
  }
};
(dio_error.DioErrorType.new = function (index, _name) {
  this.index = index;
  this[_name$] = _name;
  ;
}).prototype = dio_error.DioErrorType.prototype;
dart.addTypeTests(dio_error.DioErrorType);
dart.addTypeCaches(dio_error.DioErrorType);
dart.setLibraryUri(dio_error.DioErrorType, L2);
dart.setFieldSignature(dio_error.DioErrorType, () => ({
  __proto__: dart.getFields(dio_error.DioErrorType.__proto__),
  index: dart.finalFieldType(core.int),
  [_name$]: dart.finalFieldType(core.String)
}));
dart.defineExtensionMethods(dio_error.DioErrorType, ['toString']);
dio_error.DioErrorType.CONNECT_TIMEOUT = C0 || CT.C0;
dio_error.DioErrorType.SEND_TIMEOUT = C1 || CT.C1;
dio_error.DioErrorType.RECEIVE_TIMEOUT = C2 || CT.C2;
dio_error.DioErrorType.RESPONSE = C3 || CT.C3;
dio_error.DioErrorType.CANCEL = C4 || CT.C4;
dio_error.DioErrorType.DEFAULT = C5 || CT.C5;
dio_error.DioErrorType.values = C6 || CT.C6;
var request$0 = dart.privateName(dio_error, "DioError.request");
var response$ = dart.privateName(dio_error, "DioError.response");
var type$ = dart.privateName(dio_error, "DioError.type");
var error$ = dart.privateName(dio_error, "DioError.error");
dio_error.DioError = class DioError extends core.Object {
  get request() {
    return this[request$0];
  }
  set request(value) {
    this[request$0] = value;
  }
  get response() {
    return this[response$];
  }
  set response(value) {
    this[response$] = value;
  }
  get type() {
    return this[type$];
  }
  set type(value) {
    this[type$] = value;
  }
  get error() {
    return this[error$];
  }
  set error(value) {
    this[error$] = value;
  }
  get message() {
    let t0, t0$;
    t0$ = (t0 = this.error, t0 == null ? null : dart.toString(t0));
    return t0$ == null ? "" : t0$;
  }
  toString() {
    let msg = "DioError [" + dart.str(this.type) + "]: " + dart.str(this.message);
    if (core.Error.is(this.error)) {
      msg = msg + ("\n" + dart.str(dart.dload(this.error, 'stackTrace')));
    }
    return msg;
  }
};
(dio_error.DioError.new = function (opts) {
  let request = opts && 'request' in opts ? opts.request : null;
  let response = opts && 'response' in opts ? opts.response : null;
  let type = opts && 'type' in opts ? opts.type : C5 || CT.C5;
  let error = opts && 'error' in opts ? opts.error : null;
  this[request$0] = request;
  this[response$] = response;
  this[type$] = type;
  this[error$] = error;
  ;
}).prototype = dio_error.DioError.prototype;
dart.addTypeTests(dio_error.DioError);
dart.addTypeCaches(dio_error.DioError);
dio_error.DioError[dart.implements] = () => [core.Exception];
dart.setGetterSignature(dio_error.DioError, () => ({
  __proto__: dart.getGetters(dio_error.DioError.__proto__),
  message: core.String
}));
dart.setLibraryUri(dio_error.DioError, L2);
dart.setFieldSignature(dio_error.DioError, () => ({
  __proto__: dart.getFields(dio_error.DioError.__proto__),
  request: dart.fieldType(options$.RequestOptions),
  response: dart.fieldType(response.Response),
  type: dart.fieldType(dio_error.DioErrorType),
  error: dart.fieldType(dart.dynamic)
}));
dart.defineExtensionMethods(dio_error.DioError, ['toString']);
transformer.Transformer = class Transformer extends core.Object {
  static urlEncodeMap(map) {
    return utils.encodeMap(map, dart.fn((key, value) => {
      if (value == null) return key;
      return dart.str(key) + "=" + dart.str(core.Uri.encodeQueryComponent(dart.toString(value)));
    }, StringAndObjectToString()));
  }
};
(transformer.Transformer.new = function () {
  ;
}).prototype = transformer.Transformer.prototype;
dart.addTypeTests(transformer.Transformer);
dart.addTypeCaches(transformer.Transformer);
dart.setLibraryUri(transformer.Transformer, L3);
var _isJsonMime = dart.privateName(transformer, "_isJsonMime");
var jsonDecodeCallback$ = dart.privateName(transformer, "DefaultTransformer.jsonDecodeCallback");
transformer.DefaultTransformer = class DefaultTransformer extends transformer.Transformer {
  get jsonDecodeCallback() {
    return this[jsonDecodeCallback$];
  }
  set jsonDecodeCallback(value) {
    this[jsonDecodeCallback$] = value;
  }
  transformRequest(options) {
    return async.async(core.String, (function* transformRequest() {
      let t0;
      let data = (t0 = options.data, t0 == null ? "" : t0);
      if (!(typeof data == 'string')) {
        if (dart.test(this[_isJsonMime](options.contentType))) {
          return convert.json.encode(options.data);
        } else if (core.Map.is(data)) {
          return transformer.Transformer.urlEncodeMap(data);
        }
      }
      return dart.toString(data);
    }).bind(this));
  }
  transformResponse(options, response) {
    return async.async(dart.dynamic, (function* transformResponse() {
      let t0, t0$, t0$0, t0$1, t2, t5, t4, t3, t2$, t2$0, t2$1;
      if (dart.equals(options.responseType, options$.ResponseType.stream)) {
        return response;
      }
      let length = 0;
      let received = 0;
      let showDownloadProgress = options.onReceiveProgress != null;
      showDownloadProgress = false; //FIXME can prof
      if (showDownloadProgress) {
        length = core.int.parse((t0$ = (t0 = response.headers[$_get]("content-length"), t0 == null ? null : t0[$first]), t0$ == null ? "-1" : t0$));
      }
      let completer = async.Completer.new();
      let stream = response.stream.transform(typed_data.Uint8List, new (_StreamHandlerTransformerOfUint8List$Uint8List()).new({
        handleData: dart.fn((data, sink) => {
          let t2, t1, t0;
          sink.add(data);
          if (showDownloadProgress) {
            received = received + dart.notNull(data[$length]);
            t0 = options;
            t1 = received;
            t2 = length;
            t0.onReceiveProgress(t1, t2);
          }
        }, Uint8ListAndEventSinkOfUint8ListToNull())
      }));
      let chunks = JSArrayOfUint8List().of([]);
      let finalSize = 0;
      let subscription = stream.listen(dart.fn(chunk => {
        finalSize = finalSize + dart.notNull(chunk[$length]);
        chunks[$add](chunk);
      }, Uint8ListToNull()), {
        onError: dart.fn(e => {
          completer.completeError(e);
        }, dynamicToNull()), onDone: dart.fn(() => {
          completer.complete();
        }, VoidToNull()), cancelOnError: true
      });
      t0$1 = (t0$0 = options.cancelToken, t0$0 == null ? null : t0$0.whenCancel);
      t0$1 == null ? null : t0$1.then(dart.void, dart.fn(_ => subscription.cancel(), voidToFutureOfvoid()));
      if (dart.notNull(options.receiveTimeout) > 0) {
        try {
          yield completer.future.timeout(new core.Duration.new({ milliseconds: options.receiveTimeout }));
        } catch (e) {
          let ex = dart.getThrown(e);
          if (async.TimeoutException.is(ex)) {
            yield subscription.cancel();
            dart.throw(new dio_error.DioError.new({ request: options, error: "Receiving data timeout[" + dart.str(options.receiveTimeout) + "ms]", type: dio_error.DioErrorType.RECEIVE_TIMEOUT }));
          } else
            throw e;
        }
      } else {
        yield completer.future;
      }
      let responseBytes = _native_typed_data.NativeUint8List.new(finalSize);
      let chunkOffset = 0;
      for (let chunk of chunks) {
        responseBytes[$setAll](chunkOffset, chunk);
        chunkOffset = chunkOffset + dart.notNull(chunk[$length]);
      }
      if (dart.equals(options.responseType, options$.ResponseType.bytes)) return responseBytes;
      let responseBody = null;
      if (options.responseDecoder != null) {
        responseBody = (t2$ = options, t3 = responseBytes, t4 = options, t5 = (t2 = response, t2.stream = null, t2), t2$.responseDecoder(t3, t4, t5));
      } else {
        responseBody = convert.utf8.decode(responseBytes, { allowMalformed: true });
      }
      if (responseBody != null && responseBody[$isNotEmpty] && dart.equals(options.responseType, options$.ResponseType.json) && dart.test(this[_isJsonMime]((t2$0 = response.headers[$_get]("content-type"), t2$0 == null ? null : t2$0[$first])))) {
        if (this.jsonDecodeCallback != null) {
          t2$1 = responseBody;
          return this.jsonDecodeCallback(t2$1);
        } else {
          return convert.json.decode(responseBody);
        }
      }
      return responseBody;
    }).bind(this));
  }
  [_isJsonMime](contentType) {
    if (contentType == null) return false;
    //return media_type.MediaType.parse(contentType).mimeType[$toLowerCase]() === headers.Headers.jsonMimeType.mimeType;
    return contentType[$toLowerCase]() === headers.Headers.jsonContentType;
  }
};
(transformer.DefaultTransformer.new = function (opts) {
  let jsonDecodeCallback = opts && 'jsonDecodeCallback' in opts ? opts.jsonDecodeCallback : null;
  this[jsonDecodeCallback$] = jsonDecodeCallback;
  ;
}).prototype = transformer.DefaultTransformer.prototype;
dart.addTypeTests(transformer.DefaultTransformer);
dart.addTypeCaches(transformer.DefaultTransformer);
dart.setMethodSignature(transformer.DefaultTransformer, () => ({
  __proto__: dart.getMethods(transformer.DefaultTransformer.__proto__),
  transformRequest: dart.fnType(async.Future$(core.String), [options$.RequestOptions]),
  transformResponse: dart.fnType(async.Future, [options$.RequestOptions, adapter.ResponseBody]),
  [_isJsonMime]: dart.fnType(core.bool, [core.String])
}));
dart.setLibraryUri(transformer.DefaultTransformer, L3);
dart.setFieldSignature(transformer.DefaultTransformer, () => ({
  __proto__: dart.getFields(transformer.DefaultTransformer.__proto__),
  jsonDecodeCallback: dart.fieldType(dart.fnType(dart.dynamic, [core.String]))
}));
var _name$0 = dart.privateName(options$, "_name");
var C7;
var C8;
var C9;
var C10;
var C11;
options$.ResponseType = class ResponseType extends core.Object {
  toString() {
    return this[_name$0];
  }
};
(options$.ResponseType.new = function (index, _name) {
  this.index = index;
  this[_name$0] = _name;
  ;
}).prototype = options$.ResponseType.prototype;
dart.addTypeTests(options$.ResponseType);
dart.addTypeCaches(options$.ResponseType);
dart.setLibraryUri(options$.ResponseType, L4);
dart.setFieldSignature(options$.ResponseType, () => ({
  __proto__: dart.getFields(options$.ResponseType.__proto__),
  index: dart.finalFieldType(core.int),
  [_name$0]: dart.finalFieldType(core.String)
}));
dart.defineExtensionMethods(options$.ResponseType, ['toString']);
options$.ResponseType.json = C7 || CT.C7;
options$.ResponseType.stream = C8 || CT.C8;
options$.ResponseType.plain = C9 || CT.C9;
options$.ResponseType.bytes = C10 || CT.C10;
options$.ResponseType.values = C11 || CT.C11;
var method$ = dart.privateName(options$, "_RequestConfig.method");
var headers$0 = dart.privateName(options$, "_RequestConfig.headers");
var sendTimeout$ = dart.privateName(options$, "_RequestConfig.sendTimeout");
var receiveTimeout$ = dart.privateName(options$, "_RequestConfig.receiveTimeout");
var responseType$ = dart.privateName(options$, "_RequestConfig.responseType");
var validateStatus$ = dart.privateName(options$, "_RequestConfig.validateStatus");
var receiveDataWhenStatusError$ = dart.privateName(options$, "_RequestConfig.receiveDataWhenStatusError");
var extra$0 = dart.privateName(options$, "_RequestConfig.extra");
var followRedirects$ = dart.privateName(options$, "_RequestConfig.followRedirects");
var maxRedirects$ = dart.privateName(options$, "_RequestConfig.maxRedirects");
var requestEncoder$ = dart.privateName(options$, "_RequestConfig.requestEncoder");
var responseDecoder$ = dart.privateName(options$, "_RequestConfig.responseDecoder");
options$._RequestConfig = class _RequestConfig extends core.Object {
  get method() {
    return this[method$];
  }
  set method(value) {
    this[method$] = value;
  }
  get headers() {
    return this[headers$0];
  }
  set headers(value) {
    //MXFlutterDioFix
    value = convertJSMap2DartMapOfString$dynamic(value);
    this[headers$0] = value;
  }
  get sendTimeout() {
    return this[sendTimeout$];
  }
  set sendTimeout(value) {
    //MXFlutterDioFix 暂不支持
    value = 0;
    this[sendTimeout$] = value;
  }
  get receiveTimeout() {
    return this[receiveTimeout$];
  }
  set receiveTimeout(value) {
    //MXFlutterDioFix 暂不支持
    value = 0;
    this[receiveTimeout$] = value;
  }
  get responseType() {
    return this[responseType$];
  }
  set responseType(value) {
    this[responseType$] = value;
  }
  get validateStatus() {
    return this[validateStatus$];
  }
  set validateStatus(value) {
    this[validateStatus$] = value;
  }
  get receiveDataWhenStatusError() {
    return this[receiveDataWhenStatusError$];
  }
  set receiveDataWhenStatusError(value) {
    this[receiveDataWhenStatusError$] = value;
  }
  get extra() {
    return this[extra$0];
  }
  set extra(value) {
    this[extra$0] = value;
  }
  get followRedirects() {
    return this[followRedirects$];
  }
  set followRedirects(value) {
    this[followRedirects$] = value;
  }
  get maxRedirects() {
    return this[maxRedirects$];
  }
  set maxRedirects(value) {
    this[maxRedirects$] = value;
  }
  get requestEncoder() {
    return this[requestEncoder$];
  }
  set requestEncoder(value) {
    this[requestEncoder$] = value;
  }
  get responseDecoder() {
    return this[responseDecoder$];
  }
  set responseDecoder(value) {
    this[responseDecoder$] = value;
  }
  set contentType(contentType) {
    let t2, t2$;
    this.headers[$_set]("content-type", (t2$ = (t2 = contentType, t2 == null ? null : t2[$toLowerCase]()), t2$ == null ? null : t2$[$trim]()));
  }
  get contentType() {
    return core.String.as(this.headers[$_get]("content-type"));
  }
};
(options$._RequestConfig.new = function (opts) {
  let t2, t2$;
  let method = opts && 'method' in opts ? opts.method : null;
  let receiveTimeout = opts && 'receiveTimeout' in opts ? opts.receiveTimeout : null;
  let sendTimeout = opts && 'sendTimeout' in opts ? opts.sendTimeout : null;
  let extra = opts && 'extra' in opts ? opts.extra : null;
  let headers = opts && 'headers' in opts ? opts.headers : null;
  let contentType = opts && 'contentType' in opts ? opts.contentType : null;
  let responseType = opts && 'responseType' in opts ? opts.responseType : null;
  let validateStatus = opts && 'validateStatus' in opts ? opts.validateStatus : null;
  let receiveDataWhenStatusError = opts && 'receiveDataWhenStatusError' in opts ? opts.receiveDataWhenStatusError : true;
  let followRedirects = opts && 'followRedirects' in opts ? opts.followRedirects : true;
  let maxRedirects = opts && 'maxRedirects' in opts ? opts.maxRedirects : 5;
  let requestEncoder = opts && 'requestEncoder' in opts ? opts.requestEncoder : null;
  let responseDecoder = opts && 'responseDecoder' in opts ? opts.responseDecoder : null;
  this[headers$0] = null;
  this[extra$0] = null;
  this[method$] = method;
  this[receiveTimeout$] = receiveTimeout;
  this[sendTimeout$] = sendTimeout;
  this[responseType$] = responseType;
  this[validateStatus$] = validateStatus;
  this[receiveDataWhenStatusError$] = receiveDataWhenStatusError;
  this[followRedirects$] = followRedirects;
  this[maxRedirects$] = maxRedirects;
  this[requestEncoder$] = requestEncoder;
  this[responseDecoder$] = responseDecoder;
  this.headers = (t2 = headers, t2 == null ? new (IdentityMapOfString$dynamic()).new() : t2);
  this.extra = (t2$ = extra, t2$ == null ? new (IdentityMapOfString$dynamic()).new() : t2$);
  this.contentType = contentType;
  this.headers = this.headers[$map](core.String, dart.dynamic, dart.fn((key, v) => new (MapEntryOfString$dynamic()).__(key[$toLowerCase]()[$toString](), v), StringAnddynamicToMapEntryOfString$dynamic()));
}).prototype = options$._RequestConfig.prototype;
dart.addTypeTests(options$._RequestConfig);
dart.addTypeCaches(options$._RequestConfig);
dart.setGetterSignature(options$._RequestConfig, () => ({
  __proto__: dart.getGetters(options$._RequestConfig.__proto__),
  contentType: core.String
}));
dart.setSetterSignature(options$._RequestConfig, () => ({
  __proto__: dart.getSetters(options$._RequestConfig.__proto__),
  contentType: core.String
}));
dart.setLibraryUri(options$._RequestConfig, L4);
dart.setFieldSignature(options$._RequestConfig, () => ({
  __proto__: dart.getFields(options$._RequestConfig.__proto__),
  method: dart.fieldType(core.String),
  headers: dart.fieldType(core.Map$(core.String, dart.dynamic)),
  sendTimeout: dart.fieldType(core.int),
  receiveTimeout: dart.fieldType(core.int),
  responseType: dart.fieldType(options$.ResponseType),
  validateStatus: dart.fieldType(dart.fnType(core.bool, [core.int])),
  receiveDataWhenStatusError: dart.fieldType(core.bool),
  extra: dart.fieldType(core.Map$(core.String, dart.dynamic)),
  followRedirects: dart.fieldType(core.bool),
  maxRedirects: dart.fieldType(core.int),
  requestEncoder: dart.fieldType(dart.fnType(core.List$(core.int), [core.String, options$.RequestOptions])),
  responseDecoder: dart.fieldType(dart.fnType(core.String, [core.List$(core.int), options$.RequestOptions, adapter.ResponseBody]))
}));
var baseUrl$ = dart.privateName(options$, "BaseOptions.baseUrl");
var queryParameters$ = dart.privateName(options$, "BaseOptions.queryParameters");
var connectTimeout$ = dart.privateName(options$, "BaseOptions.connectTimeout");
options$.BaseOptions = class BaseOptions extends options$._RequestConfig {
  get baseUrl() {
    return this[baseUrl$];
  }
  set baseUrl(value) {
    this[baseUrl$] = value;
  }
  get queryParameters() {
    return this[queryParameters$];
  }
  set queryParameters(value) {
    //MXFlutterDioFix
    value = convertJSMap2DartMapOfString$dynamic(value);
    this[queryParameters$] = value;
  }
  get connectTimeout() {
    return this[connectTimeout$];
  }
  set connectTimeout(value) {
    //MXFlutterDioFix 暂不支持
    value = 0;
    this[connectTimeout$] = value;
  }
  merge(opts) {
    let t2, t2$, t2$0, t2$1, t2$2, t2$3, t3, t2$4, t3$, t2$5, t2$6, t2$7, t2$8, t2$9, t2$10, t2$11, t2$12;
    let method = opts && 'method' in opts ? opts.method : null;
    let baseUrl = opts && 'baseUrl' in opts ? opts.baseUrl : null;
    let queryParameters = opts && 'queryParameters' in opts ? opts.queryParameters : null;
    let path = opts && 'path' in opts ? opts.path : null;
    let connectTimeout = opts && 'connectTimeout' in opts ? opts.connectTimeout : null;
    let receiveTimeout = opts && 'receiveTimeout' in opts ? opts.receiveTimeout : null;
    let sendTimeout = opts && 'sendTimeout' in opts ? opts.sendTimeout : null;
    let extra = opts && 'extra' in opts ? opts.extra : null;
    let headers = opts && 'headers' in opts ? opts.headers : null;
    let responseType = opts && 'responseType' in opts ? opts.responseType : null;
    let contentType = opts && 'contentType' in opts ? opts.contentType : null;
    let validateStatus = opts && 'validateStatus' in opts ? opts.validateStatus : null;
    let receiveDataWhenStatusError = opts && 'receiveDataWhenStatusError' in opts ? opts.receiveDataWhenStatusError : null;
    let followRedirects = opts && 'followRedirects' in opts ? opts.followRedirects : null;
    let maxRedirects = opts && 'maxRedirects' in opts ? opts.maxRedirects : null;
    let requestEncoder = opts && 'requestEncoder' in opts ? opts.requestEncoder : null;
    let responseDecoder = opts && 'responseDecoder' in opts ? opts.responseDecoder : null;
    return new options$.BaseOptions.new({ method: (t2 = method, t2 == null ? this.method : t2), baseUrl: (t2$ = baseUrl, t2$ == null ? this.baseUrl : t2$), queryParameters: (t2$0 = queryParameters, t2$0 == null ? this.queryParameters : t2$0), connectTimeout: (t2$1 = connectTimeout, t2$1 == null ? this.connectTimeout : t2$1), receiveTimeout: (t2$2 = receiveTimeout, t2$2 == null ? this.receiveTimeout : t2$2), sendTimeout: (t2$3 = sendTimeout, t2$3 == null ? this.sendTimeout : t2$3), extra: (t2$4 = extra, t2$4 == null ? LinkedHashMapOfString$dynamic().from((t3 = this.extra, t3 == null ? new _js_helper.LinkedMap.new() : t3)) : t2$4), headers: (t2$5 = headers, t2$5 == null ? LinkedHashMapOfString$dynamic().from((t3$ = this.headers, t3$ == null ? new _js_helper.LinkedMap.new() : t3$)) : t2$5), responseType: (t2$6 = responseType, t2$6 == null ? this.responseType : t2$6), contentType: (t2$7 = contentType, t2$7 == null ? this.contentType : t2$7), validateStatus: (t2$8 = validateStatus, t2$8 == null ? this.validateStatus : t2$8), receiveDataWhenStatusError: (t2$9 = receiveDataWhenStatusError, t2$9 == null ? this.receiveDataWhenStatusError : t2$9), followRedirects: (t2$10 = followRedirects, t2$10 == null ? this.followRedirects : t2$10), maxRedirects: (t2$11 = maxRedirects, t2$11 == null ? this.maxRedirects : t2$11), requestEncoder: requestEncoder, responseDecoder: (t2$12 = responseDecoder, t2$12 == null ? this.responseDecoder : t2$12) });
  }
};
(options$.BaseOptions.new = function (opts) {
  let method = opts && 'method' in opts ? opts.method : null;
  let connectTimeout = opts && 'connectTimeout' in opts ? opts.connectTimeout : null;
  let receiveTimeout = opts && 'receiveTimeout' in opts ? opts.receiveTimeout : null;
  let sendTimeout = opts && 'sendTimeout' in opts ? opts.sendTimeout : null;
  let baseUrl = opts && 'baseUrl' in opts ? opts.baseUrl : null;
  let queryParameters = opts && 'queryParameters' in opts ? opts.queryParameters : null;
  let extra = opts && 'extra' in opts ? opts.extra : null;
  let headers = opts && 'headers' in opts ? opts.headers : null;
  //MXFlutterDioFix
  headers = convertJSMap2DartMapOfString$dynamic(headers);
  let responseType = opts && 'responseType' in opts ? opts.responseType : C7 || CT.C7;
  let contentType = opts && 'contentType' in opts ? opts.contentType : null;
  let validateStatus = opts && 'validateStatus' in opts ? opts.validateStatus : null;
  let receiveDataWhenStatusError = opts && 'receiveDataWhenStatusError' in opts ? opts.receiveDataWhenStatusError : true;
  let followRedirects = opts && 'followRedirects' in opts ? opts.followRedirects : true;
  let maxRedirects = opts && 'maxRedirects' in opts ? opts.maxRedirects : 5;
  let requestEncoder = opts && 'requestEncoder' in opts ? opts.requestEncoder : null;
  let responseDecoder = opts && 'responseDecoder' in opts ? opts.responseDecoder : null;
  this[connectTimeout$] = connectTimeout;
  this[baseUrl$] = baseUrl;
  this[queryParameters$] = queryParameters;
  options$.BaseOptions.__proto__.new.call(this, { method: method, receiveTimeout: receiveTimeout, sendTimeout: sendTimeout, extra: extra, headers: headers, responseType: responseType, contentType: contentType, validateStatus: validateStatus, receiveDataWhenStatusError: receiveDataWhenStatusError, followRedirects: followRedirects, maxRedirects: maxRedirects, requestEncoder: requestEncoder, responseDecoder: responseDecoder });
  ;
}).prototype = options$.BaseOptions.prototype;
dart.addTypeTests(options$.BaseOptions);
dart.addTypeCaches(options$.BaseOptions);
dart.setMethodSignature(options$.BaseOptions, () => ({
  __proto__: dart.getMethods(options$.BaseOptions.__proto__),
  merge: dart.fnType(options$.BaseOptions, [], { baseUrl: core.String, connectTimeout: core.int, contentType: core.String, extra: core.Map$(core.String, dart.dynamic), followRedirects: core.bool, headers: core.Map$(core.String, dart.dynamic), maxRedirects: core.int, method: core.String, path: core.String, queryParameters: core.Map$(core.String, dart.dynamic), receiveDataWhenStatusError: core.bool, receiveTimeout: core.int, requestEncoder: dart.fnType(core.List$(core.int), [core.String, options$.RequestOptions]), responseDecoder: dart.fnType(core.String, [core.List$(core.int), options$.RequestOptions, adapter.ResponseBody]), responseType: options$.ResponseType, sendTimeout: core.int, validateStatus: dart.fnType(core.bool, [core.int]) }, {})
}));
dart.setLibraryUri(options$.BaseOptions, L4);
dart.setFieldSignature(options$.BaseOptions, () => ({
  __proto__: dart.getFields(options$.BaseOptions.__proto__),
  baseUrl: dart.fieldType(core.String),
  queryParameters: dart.fieldType(core.Map$(core.String, dart.dynamic)),
  connectTimeout: dart.fieldType(core.int)
}));
options$.Options = class Options extends options$._RequestConfig {
  merge(opts) {
    let t2, t2$, t2$0, t3, t2$1, t3$, t2$2, t2$3, t2$4, t2$5, t2$6, t2$7, t2$8, t2$9;
    let method = opts && 'method' in opts ? opts.method : null;
    let sendTimeout = opts && 'sendTimeout' in opts ? opts.sendTimeout : null;
    let receiveTimeout = opts && 'receiveTimeout' in opts ? opts.receiveTimeout : null;
    let extra = opts && 'extra' in opts ? opts.extra : null;
    let headers = opts && 'headers' in opts ? opts.headers : null;
    let responseType = opts && 'responseType' in opts ? opts.responseType : null;
    let contentType = opts && 'contentType' in opts ? opts.contentType : null;
    let validateStatus = opts && 'validateStatus' in opts ? opts.validateStatus : null;
    let receiveDataWhenStatusError = opts && 'receiveDataWhenStatusError' in opts ? opts.receiveDataWhenStatusError : null;
    let followRedirects = opts && 'followRedirects' in opts ? opts.followRedirects : null;
    let maxRedirects = opts && 'maxRedirects' in opts ? opts.maxRedirects : null;
    let requestEncoder = opts && 'requestEncoder' in opts ? opts.requestEncoder : null;
    let responseDecoder = opts && 'responseDecoder' in opts ? opts.responseDecoder : null;
    return new options$.Options.new({ method: (t2 = method, t2 == null ? this.method : t2), sendTimeout: (t2$ = sendTimeout, t2$ == null ? this.sendTimeout : t2$), receiveTimeout: (t2$0 = receiveTimeout, t2$0 == null ? this.receiveTimeout : t2$0), extra: (t2$1 = extra, t2$1 == null ? LinkedHashMapOfString$dynamic().from((t3 = this.extra, t3 == null ? new _js_helper.LinkedMap.new() : t3)) : t2$1), headers: (t2$2 = headers, t2$2 == null ? LinkedHashMapOfString$dynamic().from((t3$ = this.headers, t3$ == null ? new _js_helper.LinkedMap.new() : t3$)) : t2$2), responseType: (t2$3 = responseType, t2$3 == null ? this.responseType : t2$3), contentType: (t2$4 = contentType, t2$4 == null ? this.contentType : t2$4), validateStatus: (t2$5 = validateStatus, t2$5 == null ? this.validateStatus : t2$5), receiveDataWhenStatusError: (t2$6 = receiveDataWhenStatusError, t2$6 == null ? this.receiveDataWhenStatusError : t2$6), followRedirects: (t2$7 = followRedirects, t2$7 == null ? this.followRedirects : t2$7), maxRedirects: (t2$8 = maxRedirects, t2$8 == null ? this.maxRedirects : t2$8), requestEncoder: requestEncoder, responseDecoder: (t2$9 = responseDecoder, t2$9 == null ? this.responseDecoder : t2$9) });
  }
};
(options$.Options.new = function (opts) {
  let method = opts && 'method' in opts ? opts.method : null;
  let sendTimeout = opts && 'sendTimeout' in opts ? opts.sendTimeout : null;
  let receiveTimeout = opts && 'receiveTimeout' in opts ? opts.receiveTimeout : null;
  let extra = opts && 'extra' in opts ? opts.extra : null;
  let headers = opts && 'headers' in opts ? opts.headers : null;
  let responseType = opts && 'responseType' in opts ? opts.responseType : null;
  let contentType = opts && 'contentType' in opts ? opts.contentType : null;
  let validateStatus = opts && 'validateStatus' in opts ? opts.validateStatus : null;
  let receiveDataWhenStatusError = opts && 'receiveDataWhenStatusError' in opts ? opts.receiveDataWhenStatusError : null;
  let followRedirects = opts && 'followRedirects' in opts ? opts.followRedirects : null;
  let maxRedirects = opts && 'maxRedirects' in opts ? opts.maxRedirects : null;
  let requestEncoder = opts && 'requestEncoder' in opts ? opts.requestEncoder : null;
  let responseDecoder = opts && 'responseDecoder' in opts ? opts.responseDecoder : null;
  options$.Options.__proto__.new.call(this, { method: method, sendTimeout: sendTimeout, receiveTimeout: receiveTimeout, extra: extra, headers: headers, responseType: responseType, contentType: contentType, validateStatus: validateStatus, receiveDataWhenStatusError: receiveDataWhenStatusError, followRedirects: followRedirects, maxRedirects: maxRedirects, requestEncoder: requestEncoder, responseDecoder: responseDecoder });
  ;
}).prototype = options$.Options.prototype;
dart.addTypeTests(options$.Options);
dart.addTypeCaches(options$.Options);
dart.setMethodSignature(options$.Options, () => ({
  __proto__: dart.getMethods(options$.Options.__proto__),
  merge: dart.fnType(options$.Options, [], { contentType: core.String, extra: core.Map$(core.String, dart.dynamic), followRedirects: core.bool, headers: core.Map$(core.String, dart.dynamic), maxRedirects: core.int, method: core.String, receiveDataWhenStatusError: core.bool, receiveTimeout: core.int, requestEncoder: dart.fnType(core.List$(core.int), [core.String, options$.RequestOptions]), responseDecoder: dart.fnType(core.String, [core.List$(core.int), options$.RequestOptions, adapter.ResponseBody]), responseType: options$.ResponseType, sendTimeout: core.int, validateStatus: dart.fnType(core.bool, [core.int]) }, {})
}));
dart.setLibraryUri(options$.Options, L4);
var data$0 = dart.privateName(options$, "RequestOptions.data");
var baseUrl$0 = dart.privateName(options$, "RequestOptions.baseUrl");
var path$ = dart.privateName(options$, "RequestOptions.path");
var queryParameters$0 = dart.privateName(options$, "RequestOptions.queryParameters");
var cancelToken$ = dart.privateName(options$, "RequestOptions.cancelToken");
var onReceiveProgress$ = dart.privateName(options$, "RequestOptions.onReceiveProgress");
var onSendProgress$ = dart.privateName(options$, "RequestOptions.onSendProgress");
var connectTimeout$0 = dart.privateName(options$, "RequestOptions.connectTimeout");
options$.RequestOptions = class RequestOptions extends options$.Options {
  get data() {
    return this[data$0];
  }
  set data(value) {
    this[data$0] = value;
  }
  get baseUrl() {
    return this[baseUrl$0];
  }
  set baseUrl(value) {
    this[baseUrl$0] = value;
  }
  get path() {
    return this[path$];
  }
  set path(value) {
    this[path$] = value;
  }
  get queryParameters() {
    return this[queryParameters$0];
  }
  set queryParameters(value) {
    //MXFlutterDioFix
    value = convertJSMap2DartMapOfString$dynamic(value);
    this[queryParameters$0] = value;
  }
  get cancelToken() {
    return this[cancelToken$];
  }
  set cancelToken(value) {
    this[cancelToken$] = value;
  }
  get onReceiveProgress() {
    return this[onReceiveProgress$];
  }
  set onReceiveProgress(value) {
    this[onReceiveProgress$] = value;
  }
  get onSendProgress() {
    return this[onSendProgress$];
  }
  set onSendProgress(value) {
    this[onSendProgress$] = value;
  }
  get connectTimeout() {
    return this[connectTimeout$0];
  }
  set connectTimeout(value) {
    this[connectTimeout$0] = value;
  }
  merge(opts) {
    let t2, t2$, t2$0, t2$1, t2$2, t2$3, t2$4, t2$5, t2$6, t2$7, t2$8, t3, t2$9, t3$, t2$10, t2$11, t2$12, t2$13, t2$14, t2$15, t2$16, t2$17;
    let method = opts && 'method' in opts ? opts.method : null;
    let sendTimeout = opts && 'sendTimeout' in opts ? opts.sendTimeout : null;
    let receiveTimeout = opts && 'receiveTimeout' in opts ? opts.receiveTimeout : null;
    let connectTimeout = opts && 'connectTimeout' in opts ? opts.connectTimeout : null;
    let data = opts && 'data' in opts ? opts.data : null;
    let path = opts && 'path' in opts ? opts.path : null;
    let queryParameters = opts && 'queryParameters' in opts ? opts.queryParameters : null;
    let baseUrl = opts && 'baseUrl' in opts ? opts.baseUrl : null;
    let onReceiveProgress = opts && 'onReceiveProgress' in opts ? opts.onReceiveProgress : null;
    let onSendProgress = opts && 'onSendProgress' in opts ? opts.onSendProgress : null;
    let cancelToken = opts && 'cancelToken' in opts ? opts.cancelToken : null;
    let extra = opts && 'extra' in opts ? opts.extra : null;
    let headers = opts && 'headers' in opts ? opts.headers : null;
    let responseType = opts && 'responseType' in opts ? opts.responseType : null;
    let contentType = opts && 'contentType' in opts ? opts.contentType : null;
    let validateStatus = opts && 'validateStatus' in opts ? opts.validateStatus : null;
    let receiveDataWhenStatusError = opts && 'receiveDataWhenStatusError' in opts ? opts.receiveDataWhenStatusError : true;
    let followRedirects = opts && 'followRedirects' in opts ? opts.followRedirects : true;
    let maxRedirects = opts && 'maxRedirects' in opts ? opts.maxRedirects : null;
    let requestEncoder = opts && 'requestEncoder' in opts ? opts.requestEncoder : null;
    let responseDecoder = opts && 'responseDecoder' in opts ? opts.responseDecoder : null;
    return new options$.RequestOptions.new({ method: (t2 = method, t2 == null ? this.method : t2), sendTimeout: (t2$ = sendTimeout, t2$ == null ? this.sendTimeout : t2$), receiveTimeout: (t2$0 = receiveTimeout, t2$0 == null ? this.receiveTimeout : t2$0), connectTimeout: (t2$1 = connectTimeout, t2$1 == null ? this.connectTimeout : t2$1), data: (t2$2 = data, t2$2 == null ? this.data : t2$2), path: (t2$3 = path, t2$3 == null ? this.path : t2$3), queryParameters: (t2$4 = queryParameters, t2$4 == null ? this.queryParameters : t2$4), baseUrl: (t2$5 = baseUrl, t2$5 == null ? this.baseUrl : t2$5), onReceiveProgress: (t2$6 = onReceiveProgress, t2$6 == null ? this.onReceiveProgress : t2$6), onSendProgress: (t2$7 = onSendProgress, t2$7 == null ? this.onSendProgress : t2$7), cancelToken: (t2$8 = cancelToken, t2$8 == null ? this.cancelToken : t2$8), extra: (t2$9 = extra, t2$9 == null ? LinkedHashMapOfString$dynamic().from((t3 = this.extra, t3 == null ? new _js_helper.LinkedMap.new() : t3)) : t2$9), headers: (t2$10 = headers, t2$10 == null ? LinkedHashMapOfString$dynamic().from((t3$ = this.headers, t3$ == null ? new _js_helper.LinkedMap.new() : t3$)) : t2$10), responseType: (t2$11 = responseType, t2$11 == null ? this.responseType : t2$11), contentType: (t2$12 = contentType, t2$12 == null ? this.contentType : t2$12), validateStatus: (t2$13 = validateStatus, t2$13 == null ? this.validateStatus : t2$13), receiveDataWhenStatusError: (t2$14 = receiveDataWhenStatusError, t2$14 == null ? this.receiveDataWhenStatusError : t2$14), followRedirects: (t2$15 = followRedirects, t2$15 == null ? this.followRedirects : t2$15), maxRedirects: (t2$16 = maxRedirects, t2$16 == null ? this.maxRedirects : t2$16), requestEncoder: requestEncoder, responseDecoder: (t2$17 = responseDecoder, t2$17 == null ? this.responseDecoder : t2$17) });
  }
  get uri() {
    let _url = this.path;
    if (!_url[$startsWith](core.RegExp.new("https?:"))) {
      _url = dart.notNull(this.baseUrl) + dart.notNull(_url);
      let s = _url[$split](":/");
      _url = dart.notNull(s[$_get](0)) + ":/" + s[$_get](1)[$replaceAll]("//", "/");
    }
    let query = transformer.Transformer.urlEncodeMap(this.queryParameters);
    if (query[$isNotEmpty]) {
      _url = dart.notNull(_url) + ((_url[$contains]("?") ? "&" : "?") + dart.notNull(query));
    }
    return core.Uri.parse(_url).normalizePath();
  }
};
(options$.RequestOptions.new = function (opts) {
  let method = opts && 'method' in opts ? opts.method : null;
  let sendTimeout = opts && 'sendTimeout' in opts ? opts.sendTimeout : null;
  let receiveTimeout = opts && 'receiveTimeout' in opts ? opts.receiveTimeout : null;
  let connectTimeout = opts && 'connectTimeout' in opts ? opts.connectTimeout : null;
  let data = opts && 'data' in opts ? opts.data : null;
  let path = opts && 'path' in opts ? opts.path : null;
  let queryParameters = opts && 'queryParameters' in opts ? opts.queryParameters : null;
  let baseUrl = opts && 'baseUrl' in opts ? opts.baseUrl : null;
  let onReceiveProgress = opts && 'onReceiveProgress' in opts ? opts.onReceiveProgress : null;
  let onSendProgress = opts && 'onSendProgress' in opts ? opts.onSendProgress : null;
  let cancelToken = opts && 'cancelToken' in opts ? opts.cancelToken : null;
  let extra = opts && 'extra' in opts ? opts.extra : null;
  let headers = opts && 'headers' in opts ? opts.headers : null;
  let responseType = opts && 'responseType' in opts ? opts.responseType : null;
  let contentType = opts && 'contentType' in opts ? opts.contentType : null;
  let validateStatus = opts && 'validateStatus' in opts ? opts.validateStatus : null;
  let receiveDataWhenStatusError = opts && 'receiveDataWhenStatusError' in opts ? opts.receiveDataWhenStatusError : true;
  let followRedirects = opts && 'followRedirects' in opts ? opts.followRedirects : true;
  let maxRedirects = opts && 'maxRedirects' in opts ? opts.maxRedirects : null;
  let requestEncoder = opts && 'requestEncoder' in opts ? opts.requestEncoder : null;
  let responseDecoder = opts && 'responseDecoder' in opts ? opts.responseDecoder : null;
  this[path$] = "";
  this[connectTimeout$0] = connectTimeout;
  this[data$0] = data;
  this[path$] = path;
  this[queryParameters$0] = queryParameters;
  this[baseUrl$0] = baseUrl;
  this[onReceiveProgress$] = onReceiveProgress;
  this[onSendProgress$] = onSendProgress;
  this[cancelToken$] = cancelToken;
  options$.RequestOptions.__proto__.new.call(this, { method: method, sendTimeout: sendTimeout, receiveTimeout: receiveTimeout, extra: extra, headers: headers, responseType: responseType, contentType: contentType, validateStatus: validateStatus, receiveDataWhenStatusError: receiveDataWhenStatusError, followRedirects: followRedirects, maxRedirects: maxRedirects, requestEncoder: requestEncoder, responseDecoder: responseDecoder });
  ;
}).prototype = options$.RequestOptions.prototype;
dart.addTypeTests(options$.RequestOptions);
dart.addTypeCaches(options$.RequestOptions);
dart.setMethodSignature(options$.RequestOptions, () => ({
  __proto__: dart.getMethods(options$.RequestOptions.__proto__),
  merge: dart.fnType(options$.RequestOptions, [], { baseUrl: core.String, cancelToken: cancel_token.CancelToken, connectTimeout: core.int, contentType: core.String, data: core.String, extra: core.Map$(core.String, dart.dynamic), followRedirects: core.bool, headers: core.Map$(core.String, dart.dynamic), maxRedirects: core.int, method: core.String, onReceiveProgress: dart.fnType(dart.void, [core.int, core.int]), onSendProgress: dart.fnType(dart.void, [core.int, core.int]), path: core.String, queryParameters: core.Map$(core.String, dart.dynamic), receiveDataWhenStatusError: core.bool, receiveTimeout: core.int, requestEncoder: dart.fnType(core.List$(core.int), [core.String, options$.RequestOptions]), responseDecoder: dart.fnType(core.String, [core.List$(core.int), options$.RequestOptions, adapter.ResponseBody]), responseType: options$.ResponseType, sendTimeout: core.int, validateStatus: dart.fnType(core.bool, [core.int]) }, {})
}));
dart.setGetterSignature(options$.RequestOptions, () => ({
  __proto__: dart.getGetters(options$.RequestOptions.__proto__),
  uri: core.Uri
}));
dart.setLibraryUri(options$.RequestOptions, L4);
dart.setFieldSignature(options$.RequestOptions, () => ({
  __proto__: dart.getFields(options$.RequestOptions.__proto__),
  data: dart.fieldType(dart.dynamic),
  baseUrl: dart.fieldType(core.String),
  path: dart.fieldType(core.String),
  queryParameters: dart.fieldType(core.Map$(core.String, dart.dynamic)),
  cancelToken: dart.fieldType(cancel_token.CancelToken),
  onReceiveProgress: dart.fieldType(dart.fnType(dart.void, [core.int, core.int])),
  onSendProgress: dart.fieldType(dart.fnType(dart.void, [core.int, core.int])),
  connectTimeout: dart.fieldType(core.int)
}));
adapter.HttpClientAdapter = class HttpClientAdapter extends core.Object { };
(adapter.HttpClientAdapter.new = function () {
  ;
}).prototype = adapter.HttpClientAdapter.prototype;
dart.addTypeTests(adapter.HttpClientAdapter);
dart.addTypeCaches(adapter.HttpClientAdapter);
dart.setLibraryUri(adapter.HttpClientAdapter, L5);
var stream$ = dart.privateName(adapter, "ResponseBody.stream");
var headers$1 = dart.privateName(adapter, "ResponseBody.headers");
var statusCode$0 = dart.privateName(adapter, "ResponseBody.statusCode");
var statusMessage$0 = dart.privateName(adapter, "ResponseBody.statusMessage");
var isRedirect$0 = dart.privateName(adapter, "ResponseBody.isRedirect");
var redirects$0 = dart.privateName(adapter, "ResponseBody.redirects");
var extra = dart.privateName(adapter, "ResponseBody.extra");
adapter.ResponseBody = class ResponseBody extends core.Object {
  get stream() {
    return this[stream$];
  }
  set stream(value) {
    this[stream$] = value;
  }
  get headers() {
    return this[headers$1];
  }
  set headers(value) {
    this[headers$1] = value;
  }
  get statusCode() {
    return this[statusCode$0];
  }
  set statusCode(value) {
    this[statusCode$0] = value;
  }
  get statusMessage() {
    return this[statusMessage$0];
  }
  set statusMessage(value) {
    this[statusMessage$0] = value;
  }
  get isRedirect() {
    return this[isRedirect$0];
  }
  set isRedirect(value) {
    super.isRedirect = value;
  }
  get redirects() {
    return this[redirects$0];
  }
  set redirects(value) {
    this[redirects$0] = value;
  }
  get extra() {
    return this[extra];
  }
  set extra(value) {
    this[extra] = value;
  }
};
(adapter.ResponseBody.new = function (stream, statusCode, opts) {
  let headers = opts && 'headers' in opts ? opts.headers : null;
  let statusMessage = opts && 'statusMessage' in opts ? opts.statusMessage : null;
  let isRedirect = opts && 'isRedirect' in opts ? opts.isRedirect : null;
  let redirects = opts && 'redirects' in opts ? opts.redirects : null;
  this[extra] = new (IdentityMapOfString$dynamic()).new();
  this[stream$] = stream;
  this[statusCode$0] = statusCode;
  this[headers$1] = headers;
  this[statusMessage$0] = statusMessage;
  this[isRedirect$0] = isRedirect;
  this[redirects$0] = redirects;
  ;
}).prototype = adapter.ResponseBody.prototype;
(adapter.ResponseBody.fromString = function (text, statusCode, opts) {
  let headers = opts && 'headers' in opts ? opts.headers : null;
  let statusMessage = opts && 'statusMessage' in opts ? opts.statusMessage : null;
  let isRedirect = opts && 'isRedirect' in opts ? opts.isRedirect : null;
  this[extra] = new (IdentityMapOfString$dynamic()).new();
  this[redirects$0] = null;
  this[statusCode$0] = statusCode;
  this[headers$1] = headers;
  this[statusMessage$0] = statusMessage;
  this[isRedirect$0] = isRedirect;
  this[stream$] = StreamOfUint8List().fromIterable(convert.utf8.encode(text)[$map](typed_data.Uint8List, dart.fn(e => _native_typed_data.NativeUint8List.fromList(JSArrayOfint().of([e])), intToUint8List()))[$toList]());
  ;
}).prototype = adapter.ResponseBody.prototype;
(adapter.ResponseBody.fromBytes = function (bytes, statusCode, opts) {
  let headers = opts && 'headers' in opts ? opts.headers : null;
  let statusMessage = opts && 'statusMessage' in opts ? opts.statusMessage : null;
  let isRedirect = opts && 'isRedirect' in opts ? opts.isRedirect : null;
  this[extra] = new (IdentityMapOfString$dynamic()).new();
  this[redirects$0] = null;
  this[statusCode$0] = statusCode;
  this[headers$1] = headers;
  this[statusMessage$0] = statusMessage;
  this[isRedirect$0] = isRedirect;
  this[stream$] = StreamOfUint8List().fromIterable(bytes[$map](typed_data.Uint8List, dart.fn(e => _native_typed_data.NativeUint8List.fromList(JSArrayOfint().of([e])), intToUint8List()))[$toList]());
  ;
}).prototype = adapter.ResponseBody.prototype;
dart.addTypeTests(adapter.ResponseBody);
dart.addTypeCaches(adapter.ResponseBody);
dart.setLibraryUri(adapter.ResponseBody, L5);
dart.setFieldSignature(adapter.ResponseBody, () => ({
  __proto__: dart.getFields(adapter.ResponseBody.__proto__),
  stream: dart.fieldType(async.Stream$(typed_data.Uint8List)),
  headers: dart.fieldType(core.Map$(core.String, core.List$(core.String))),
  statusCode: dart.fieldType(core.int),
  statusMessage: dart.fieldType(core.String),
  isRedirect: dart.finalFieldType(core.bool),
  redirects: dart.fieldType(core.List$(redirect_record.RedirectRecord)),
  extra: dart.fieldType(core.Map$(core.String, dart.dynamic))
}));
dart.trackLibraries("packages/dio/src/cancel_token.dart", {
  "package:dio/src/cancel_token.dart": cancel_token,
  "package:dio/src/response.dart": response,
  "package:dio/src/dio_error.dart": dio_error,
  "package:dio/src/transformer.dart": transformer,
  "package:dio/src/options.dart": options$,
  "package:dio/src/adapter.dart": adapter
}, {
}, '{"version":3,"sourceRoot":"","sources":["cancel_token.dart","response.dart","dio_error.dart","transformer.dart","options.dart","adapter.dart"],"names":[],"mappings":";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;oBAagC;AAC5B,YAAc,aAAP,AAAE,CAAD,OAAsB;IAChC;;AAM4B;IAAY;;AAKhB,YAAA,AAAa,uBAAG;IAAI;;AAGb,YAAA,AAAW;IAAM;WAG3B;AAC8C,MAAjE,qBAAe,kCAA4B,sCAAe,MAAM;AAC3C,MAArB,AAAW;IACb;;;IAjBS;IAKC;AAdgB,IAAxB,mBAAa;EACf;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;MCSE;;;;;;MAGM;;;;;;MAGO;;;;;;MAGX;;;;;;MAKG;;;;;;MAGc;;;;;;MAQA;;;;;;MAKV;;;;;;;;AAMQ,oBAAA,AAAU,oCAAA,OAAM;sBAAN,OAAkB,AAAQ;MAAG;;AAKxD,YAAS,YAAL;AACF,gBAAO,AAAK,qBAAO;;AAErB,cAAY,eAAL;MACT;;;UAxDO;UACA;UACA;UACA;UACA;UACA;UACA;UACA;MAPA;MACA;MACA;MACA;MACA;MACA;MACA;MACA;;IACL;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;ICMJ;;gDAnBK;;;;EAmBL;;;;;;;;;;;;;;;;;;;;;;IAYiB;;;;;;IAIN;;;;;;IAEI;;;;;;IAIL;;;;;;;;AAEc,2CAAC,OAAO;oBAAP,OAAqB;IAAG;;AAIzC,gBAAM,AAA4B,wBAAhB,aAAI,iBAAI;AAC9B,UAAU,cAAN;AAC4B,QAA9B,MAAA,AAAI,GAAD,IAAI,AAAuB,gBAAZ,WAAN;;AAEd,YAAO,IAAG;IACZ;;;QA5BO;QACA;QACA;QACA;IAHA;IACA;IACA;IACA;;EACL;;;;;;;;;;;;;;;;;;wBCM6B;AAC7B,YAAO,iBAAU,GAAG,EAAE,SAAC,KAAK;AAC1B,YAAI,AAAM,KAAD,IAAI,MAAM,MAAO,IAAG;AAC7B,cAA2D,UAAlD,GAAG,mBAAO,8BAA2B,cAAN,KAAK;;IAEjD;;;;EACF;;;;;;;IAWqB;;;;;;qBAG4B;AAAhB;;AACzB,oBAAoB,KAAb,AAAQ,OAAD,aAAC,OAAQ;AAC3B,cAAS,OAAL,IAAI;AACN,wBAAI,kBAAY,AAAQ,OAAD;AACrB,kBAAO,AAAK,qBAAO,AAAQ,OAAD;gBACrB,KAAS,YAAL,IAAI;AACb,kBAAmB,sCAAa,IAAI;;;AAGxC,cAAY,eAAL,IAAI;MACb;;sBAMmB,SAAsB;AADjB;;AAEtB,YAAyB,YAArB,AAAQ,OAAD,eAA8B;AACvC,gBAAO,SAAQ;;AAEb,qBAAS;AACT,uBAAW;AACX,mCAAuB,AAAQ,AAAkB,OAAnB,sBAAsB;AACxD,YAAI,oBAAoB;AAE2C,UADjE,SAAa,gBAC4C,YAArD,AAAS,AAAO,QAAR,gDAAQ,OAA+B,oBAA/B,OAAwC;;AAE1D,wBAAY;AACZ,qBACJ,AAAS,AAAO,QAAR,wCAA+C,wEACzC,SAAC,MAAM;;AACH,YAAd,AAAK,IAAD,KAAK,IAAI;AACb,gBAAI,oBAAoB;AACC,cAAvB,WAAA,AAAS,QAAD,gBAAI,AAAK,IAAD;AAC2B,mBAA3C,OAAO;mBAAmB,QAAQ;mBAAE,MAAM;cAAlC;;;AAKP,qBAAoB;AACvB,wBAAY;AACG,2BAAe,AAAO,MAAD,QAClC,QAAC;AACsB,UAAzB,YAAA,AAAU,SAAD,gBAAI,AAAM,KAAD;AACD,UAAjB,AAAO,MAAD,OAAK,KAAK;yCAET,QAAC;AACkB,YAA1B,AAAU,SAAD,eAAe,CAAC;uCAEnB;AACc,YAApB,AAAU,SAAD;2CAEI;AAKf,uBAFF,AAAQ,OAAD,6BAAC,OAAa;uBAAb,OAAyB,qBAAK,QAAC,KAC9B,AAAa,YAAD;AAErB,YAA2B,aAAvB,AAAQ,OAAD,mBAAkB;AAC3B;AAE8D,YAD5D,MAAM,AAAU,AACX,SADU,gBACF,qCAAuB,AAAQ,OAAD;;;AAC3C;AAC2B,cAA3B,MAAM,AAAa,YAAD;AAKjB,cAJD,WAAM,qCACK,OAAO,SACT,AAAqD,qCAA3B,AAAQ,OAAD,mBAAgB,aACrC;;;;;AAID,UAAtB,MAAM,AAAU,SAAD;;AAGX,4BAAgB,uCAAU,SAAS;AACrC,0BAAc;AAClB,iBAAS,QAAS,OAAM;AACkB,UAAxC,AAAc,aAAD,UAAQ,WAAW,EAAE,KAAK;AACZ,UAA3B,cAAA,AAAY,WAAD,gBAAI,AAAM,KAAD;;AAGtB,YAAyB,YAArB,AAAQ,OAAD,eAA8B,8BAAO,MAAO,cAAa;AAE7D;AACP,YAAI,AAAQ,OAAD,oBAAoB;AAEuB,UADpD,sBAAe,OAAO,OAClB,aAAa,OAAE,OAAO,aAAE,QAAQ,EAAE,YAAS,WADxB;;AAGwC,UAA/D,eAAe,AAAK,oBAAO,aAAa,mBAAkB;;AAE5D,YAAI,YAAY,IAAI,QAChB,AAAa,YAAD,iBACS,YAArB,AAAQ,OAAD,eAA8B,yCACrC,0BAAY,AAAS,AAAO,QAAR,gDAAQ,OAA6B;AAC3D,cAAI,2BAAsB;AACxB,mBAA0B,YAAY;kBAA/B;;AAEP,kBAAO,AAAK,qBAAO,YAAY;;;AAGnC,cAAO,aAAY;MACrB;;kBAEwB;AACtB,UAAI,AAAY,WAAD,IAAI,MAAM,MAAO;AAChC,YAAiB,AAAmB,AAAS,AAAc,4BAApC,WAAW,+BACtB,AAAa;IAC3B;;;QAhHyB;;;EAAoB;;;;;;;;;;;;;;;;;;;;;;;ICZ/C;;+CArBK;;;;EAqBL;;;;;;;;;;;;;;;;;;;;;;;;;;;;IA6TS;;;;;;IAMc;;;;;;IAKjB;;;;;;IAOA;;;;;;IAyBS;;;;;;IAKE;;;;;;IAGV;;;;;;IAGgB;;;;;;IAGhB;;;;;;IAOD;;;;;;IAIW;;;;;;IAIC;;;;;;oBAhDO;;AACkD,MAAvE,AAAO,iDAA8B,WAAW,eAAX,OAAa,mCAAb,OAA4B;IACnE;;AAE0B,4BAAA,AAAO;IAA2B;;;;QAlDrD;QACA;QACA;QACgB;QACA;QACd;QACF;QACA;QACA;QACA;QACA;QACA;QACA;IAgBc;IAgDA;IA5Ed;IACA;IACA;IAIA;IACA;IACA;IACA;IACA;IACA;IACA;AAEuB,IAAvB,gBAAkB,KAAR,OAAO,QAAP,OAAW;AACF,IAAnB,cAAc,MAAN,KAAK,SAAL,OAAS;AACQ,IAAzB,mBAAc,WAAW;AAE6C,IADtE,eACI,AAAQ,8CAAI,SAAC,KAAK,MAAM,oCAAS,AAAI,AAAc,GAAf,+BAA2B,CAAC;EAC3E;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;IApOO;;;;;;IAGc;;;;;;IAKjB;;;;;;;;UAhDK;UACA;UACc;UACd;UACH;UACA;UACA;UACiB;UACA;UACR;UACN;UACQ;UACV;UACA;UACD;UACW;UACC;AAEhB,YAAO,wCACU,KAAP,MAAM,QAAN,OAAe,6BACN,MAAR,OAAO,SAAP,OAAgB,uCACQ,OAAhB,eAAe,UAAf,OAAwB,+CACV,OAAf,cAAc,UAAd,OAAuB,8CACR,OAAf,cAAc,UAAd,OAAuB,2CACd,OAAZ,WAAW,UAAX,OAAoB,kCACpB,OAAN,KAAK,UAAL,OAAa,sCAAgB,uBAAN,OAAS,yDACtB,OAAR,OAAO,UAAP,OAAe,sCAAkB,2BAAR,OAAW,+DAClB,OAAb,YAAY,UAAZ,OAAqB,yCACV,OAAZ,WAAW,UAAX,OAAoB,2CACF,OAAf,cAAc,UAAd,OAAuB,0DAER,OAA3B,0BAA0B,UAA1B,OAAmC,2DACN,QAAhB,eAAe,WAAf,OAAwB,8CACd,QAAb,YAAY,WAAZ,OAAqB,4CACnB,cAAc,oBACG,QAAhB,eAAe,WAAf,OAAwB;IAE7C;;;QAvES;QACF;QACD;QACA;QACC;QACA;QACgB;QACA;QACR;QACN;QACQ;QACV;QACA;QACD;QACW;QACC;IAdX;IAGA;IACA;AAWF,2DACW,MAAM,kBACE,cAAc,eACjB,WAAW,SACjB,KAAK,WACH,OAAO,gBACF,YAAY,eACb,WAAW,kBACR,cAAc,8BACF,0BAA0B,mBACrC,eAAe,gBAClB,YAAY,kBACV,cAAc,mBACb,eAAe;;EACjC;;;;;;;;;;;;;;;;;UAyFE;UACH;UACA;UACiB;UACA;UACR;UACN;UACQ;UACV;UACA;UACD;UACW;UACC;AAEhB,YAAO,oCACU,KAAP,MAAM,QAAN,OAAe,iCACE,MAAZ,WAAW,SAAX,OAAoB,0CACF,OAAf,cAAc,UAAd,OAAuB,qCAC1B,OAAN,KAAK,UAAL,OAAa,sCAAgB,uBAAN,OAAS,yDACtB,OAAR,OAAO,UAAP,OAAe,sCAAkB,2BAAR,OAAW,+DAClB,OAAb,YAAY,UAAZ,OAAqB,yCACV,OAAZ,WAAW,UAAX,OAAoB,2CACF,OAAf,cAAc,UAAd,OAAuB,0DAER,OAA3B,0BAA0B,UAA1B,OAAmC,2DACN,OAAhB,eAAe,UAAf,OAAwB,6CACd,OAAb,YAAY,UAAZ,OAAqB,2CACnB,cAAc,oBACG,OAAhB,eAAe,UAAf,OAAwB;IAE7C;;;QA7DS;QACH;QACA;QACiB;QACA;QACR;QACN;QACQ;QACV;QACA;QACD;QACW;QACC;AACb,uDACW,MAAM,eACD,WAAW,kBACR,cAAc,SACvB,KAAK,WACH,OAAO,gBACF,YAAY,eACb,WAAW,kBACR,cAAc,8BACF,0BAA0B,mBACrC,eAAe,gBAClB,YAAY,kBACV,cAAc,mBACb,eAAe;;EACjC;;;;;;;;;;;;;;;;;IAgJC;;;;;;IAGD;;;;;;IAIA;;;;;;IAGc;;;;;;IAET;;;;;;IAEK;;;;;;IAEA;;;;;;IAEb;;;;;;;;UAnFK;UACH;UACA;UACA;UACG;UACA;UACc;UACd;UACU;UACA;UACL;UACS;UACA;UACR;UACN;UACQ;UACV;UACA;UACD;UACW;UACC;AAEhB,YAAO,2CACU,KAAP,MAAM,QAAN,OAAe,iCACE,MAAZ,WAAW,SAAX,OAAoB,0CACF,OAAf,cAAc,UAAd,OAAuB,8CACR,OAAf,cAAc,UAAd,OAAuB,oCAC5B,OAAL,IAAI,UAAJ,OAAa,0BACR,OAAL,IAAI,UAAJ,OAAa,qCACc,OAAhB,eAAe,UAAf,OAAwB,wCACxB,OAAR,OAAO,UAAP,OAAgB,0CACY,OAAlB,iBAAiB,UAAjB,OAA0B,iDACd,OAAf,cAAc,UAAd,OAAuB,2CACd,OAAZ,WAAW,UAAX,OAAoB,kCACpB,OAAN,KAAK,UAAL,OAAa,sCAAgB,uBAAN,OAAS,yDACtB,QAAR,OAAO,WAAP,OAAe,sCAAkB,2BAAR,OAAW,gEAClB,QAAb,YAAY,WAAZ,OAAqB,0CACV,QAAZ,WAAW,WAAX,OAAoB,4CACF,QAAf,cAAc,WAAd,OAAuB,2DAER,QAA3B,0BAA0B,WAA1B,OAAmC,4DACN,QAAhB,eAAe,WAAf,OAAwB,8CACd,QAAb,YAAY,WAAZ,OAAqB,4CACnB,cAAc,oBACG,QAAhB,eAAe,WAAf,OAAwB;IAE7C;;AAIM,iBAAO;AACX,WAAK,AAAK,IAAD,cAAY,gBAAO;AACL,QAArB,OAAe,aAAR,6BAAU,IAAI;AACjB,gBAAI,AAAK,IAAD,SAAO;AAC4B,QAA/C,OAAY,AAAO,aAAZ,AAAC,CAAA,QAAC,MAAK,OAAO,AAAC,AAAI,CAAJ,QAAC,gBAAc,MAAM;;AAEzC,kBAAoB,qCAAa;AACrC,UAAI,AAAM,KAAD;AACyC,QAAhD,OAAK,aAAL,IAAI,KAAqC,CAAhC,AAAK,IAAD,YAAU,OAAO,MAAM,oBAAO,KAAK;;AAGlD,YAAW,AAAY,gBAAN,IAAI;IACvB;;;QAtGS;QACH;QACA;QACC;QACA;QACA;QACA;QACA;QACA;QACA;QACA;QACgB;QACA;QACR;QACN;QACQ;QACV;QACA;QACD;QACW;QACC;IA4FX,cAAO;IA7GP;IACA;IACA;IACA;IACA;IACA;IACA;IACA;AAWF,8DACW,MAAM,eACD,WAAW,kBACR,cAAc,SACvB,KAAK,WACH,OAAO,gBACF,YAAY,eACb,WAAW,kBACR,cAAc,8BACF,0BAA0B,mBACrC,eAAe,gBAClB,YAAY,kBACV,cAAc,mBACb,eAAe;;EACjC;;;;;;;;;;;;;;;;;;;;;;;;;;EC/LT;;;;;;;;;;;;IAaoB;;;;;;IAGQ;;;;;;IAGtB;;;;;;IAKG;;;;;;IAGI;;;;;;IAEU;;;;;;IAEA;;;;;;;uCA3Bd,QACA;QACA;QACA;QACA;QACA;IAsBc,cAAQ;IA3BtB;IACA;IACA;IACA;IACA;IACA;;EACL;8CAwBO,MACF;QACA;QACA;QACA;IAPc,cAAQ;;IAItB;IACA;IACA;IACA;IACK,gBAAS,iCACX,AAAK,AAAa,AAAoC,oBAA1C,IAAI,8BAAM,QAAC,KAAgB,4CAAS,mBAAC,CAAC;;EAAa;6CAG7D,OACL;QACA;QACA;QACA;IAhBc,cAAQ;;IAatB;IACA;IACA;IACA;IACK,gBAAS,iCACX,AAAM,AAAoC,KAArC,6BAAK,QAAC,KAAgB,4CAAS,mBAAC,CAAC;;EAAa","file":"../../../../../../../../../../../../../packages/dio/src/cancel_token.dart.lib.js"}');
// // Exports:
// return {
//   src__cancel_token: cancel_token,
//   src__response: response,
//   src__dio_error: dio_error,
//   src__transformer: transformer,
//   src__options: options$,
//   src__adapter: adapter
// };

// Exports:

exports.src__cancel_token = cancel_token;
exports.src__response = response;
exports.src__dio_error = dio_error;
exports.src__transformer = transformer;
exports.src__options = options$;
exports.src__adapter = adapter;
//# sourceMappingURL=cancel_token.dart.lib.js.map
