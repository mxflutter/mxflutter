import 'dart_builder.dart';

var list = <String>[

  """
RequestOptions({
    String method,
    int sendTimeout,
    int receiveTimeout,
    this.connectTimeout,
    this.data,
    this.path,
    this.queryParameters,
    this.baseUrl,
    this.onReceiveProgress,
    this.onSendProgress,
    this.cancelToken,
    Map<String, dynamic> extra,
    Map<String, dynamic> headers,
    ResponseType responseType,
    String contentType,
    ValidateStatus validateStatus,
    bool receiveDataWhenStatusError = true,
    bool followRedirects = true,
    int maxRedirects,
    RequestEncoder requestEncoder,
    ResponseDecoder responseDecoder,
  }) 
  """,
  """
enum ResponseType {
  /// Transform the response data to JSON object only when the
  /// content-type of response is "application/json" .
  json,

  /// Get the response stream without any transformation. The
  /// Response data will be a `ResponseBody` instance.
  ///
  ///    Response<ResponseBody> rs = await Dio().get<ResponseBody>(
  ///      url,
  ///      options: Options(
  ///        responseType: ResponseType.stream,
  ///      ),
  ///    );
  stream,

  /// Transform the response data to a String encoded with UTF8.
  plain,

  /// Get original bytes, the type of [Response.data] will be List<int>
  bytes
}
  """,
  """
  Options({
    String method,
    int sendTimeout,
    int receiveTimeout,
    Map<String, dynamic> extra,
    Map<String, dynamic> headers,
    ResponseType responseType,
    String contentType,
    ValidateStatus validateStatus,
    bool receiveDataWhenStatusError,
    bool followRedirects,
    int maxRedirects,
    RequestEncoder requestEncoder,
    ResponseDecoder responseDecoder,
  }) 
""",
  """
  Response({
    this.data,
    this.headers,
    this.request,
    this.isRedirect,
    this.statusCode,
    this.statusMessage,
    this.redirects,
    this.extra,
  });
"""
,
  """
  BaseOptions({
    String method,
    this.connectTimeout,
    int receiveTimeout,
    int sendTimeout,
    this.baseUrl,
    this.queryParameters,
    Map<String, dynamic> extra,
    Map<String, dynamic> headers,
    ResponseType responseType = ResponseType.json,
    String contentType,
    ValidateStatus validateStatus,
    bool receiveDataWhenStatusError = true,
    bool followRedirects = true,
    int maxRedirects = 5,
    RequestEncoder requestEncoder,
    ResponseDecoder responseDecoder,
  }) 

"""
];

void main(List<String> arguments) {
  //打印输出所有
  list.map(translate).toList().join('\n\n\n');

  //打印输出最后一个
  //translate(list.last);
}

 translate(String src) {
  print(translateDart(src));
  print(translateJS(src));
}
