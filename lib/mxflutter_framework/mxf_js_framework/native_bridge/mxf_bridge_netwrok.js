//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

'use strict';
const dart_sdk = require("dart_sdk");
const convert = dart_sdk.convert;
const _js_helper = dart_sdk._js_helper;

class MXFNetworking {
  constructor() {

  }

  sendRequest(
    { method, //: string,
      url,    //: string,
      data,   //Object,
      headers,// Object,
      responseType, // : Object, // TODO: Use stricter type.
      incrementalUpdates,//: boolean,
      timeout,
      withCredentials,// boolean,
      trackingName,  //: string,
      //
      onCreateRequest,   // fun(requestID){}
      onReceiveResponse, //status: number,responseHeaders: ?Object,responseURL: ?string,
      onCompleteResponse,  //* all in one: onCompleteResponse(status, respHeaders,responseType, responseData, errorDesc, isTimeOut);
      onReceiveIncrementalData,
      onReceiveDataProgress,
      onUploadProgress,  // fun(requestId: number,progress: number,total: number,)
    }
  ) {

    let body = this.convertRequestBody(data);
    let origResponseType = responseType;
    responseType = this.getNativeResponseType(responseType);

    MXNativeJSFlutterApp.networking.sendRequest(
      {
        method,
        url,
        data: { ...body, trackingName },
        headers,
        responseType,
        incrementalUpdates,
        timeout,
        withCredentials,
      },
      function (eventName, args) {

        if (eventName == "didReceiveRequestID") {

          let requestID = args[0];
          if (onCreateRequest != null) onCreateRequest(requestID);

        } else if (eventName == "didReceiveNetworkResponse") {

          //@[task.requestID, @(status), headers, responseURL];
          let status = args[1];
          let respHeaders = args[2];
          let responseURL = args[3];
          if (onReceiveResponse != null) onReceiveResponse(status, respHeaders, responseURL);

        } else if (eventName == "didSendNetworkData") {

          //[task.requestID, @((double)progress), @((double)total)];
          let progress = args[1];
          let total = args[2];

          if (onUploadProgress != null) onUploadProgress(progress, total);

        } else if (eventName == "didReceiveNetworkIncrementalData") {

          // @[task.requestID,
          //   responseString,
          //   @(progress + initialCarryLength - incrementalDataCarry.length),
          //   @(total)];
          let responseString = args[1];
          let progress = args[2];
          let total = args[3];

          if (onReceiveIncrementalData != null) onReceiveIncrementalData(responseString, progress, total);

        } else if (eventName == "didReceiveNetworkDataProgress") {

          let progress = args[1];
          let total = args[2];
          if (onReceiveDataProgress != null) onReceiveDataProgress(progress, total);
        } else if (eventName == "didCompleteNetworkResponse") {

          // @[task.requestID,
          //   responseData?:@"",
          //   MXNullIfNil(error.localizedDescription),
          //   error.code == kCFURLErrorTimedOut ? @YES : @NO];

          let status = args[1];
          let respHeaders = args[2];

          let responseData = args[3];
          let errorDesc = args[4];
          let isTimeOut = args[5];

          if (origResponseType === 'arraybuffer') {
            responseData = convert.base64Decode(responseData);
          }

          if (onCompleteResponse != null) onCompleteResponse(status, respHeaders, origResponseType, responseData, errorDesc, isTimeOut);

        }

      }.bind(this),
    );
  }

  abortRequest(requestId) {
    MXNativeJSFlutterApp.networking.abortRequest(requestId);
  }

  clearCookies(callback) {
    MXNativeJSFlutterApp.networking.clearCookies(callback);
  }

  getNativeResponseType(responseType) {

    let nativeResponseType = responseType;

    if (responseType == null) {
      nativeResponseType = 'text';
    } else if (responseType === 'arraybuffer') {
      nativeResponseType = 'base64';
    }
    else if (responseType === 'blob') {
      nativeResponseType = 'base64'; //暂不支持
    }

    return nativeResponseType;

  }

  convertRequestBody(body) {
    if (typeof body === 'string') {
      return { string: body };
    }
    // if (body instanceof Blob) {
    //   return {blob: body.data};
    // }
    // if (body instanceof FormData) {
    //   return {formData: body.getParts()};
    // }
    if (body instanceof ArrayBuffer || ArrayBuffer.isView(body)) {
      // $FlowFixMe: no way to assert that 'body' is indeed an ArrayBufferVie
      return { base64: convert.base64Encode(body) };
    }
    return body;
  }
}



class FetchResponse {
  constructor({ url, type, status, ok, statusText, headers, json, text, data }) {
    this.type = type;
    this.status = status;
    this.ok = this.status >= 200 && this.status < 300;
    this.statusText = statusText;
    this.headers = headers;
    this.url = url || '';
    this.json = json;
    this.text = text;
    this.data = data;
  }
}

//支持fetch接口
exports.fetch = function (url, { method, headers, body, credentials } = {}) {

  return new Promise(function (resolve, reject) {

    let withCredentials = credentials;

    network.sendRequest({
      url, method, headers, body, withCredentials,
      onCompleteResponse: function (status, respHeaders, origResponseType, responseData, errorDesc, isTimeOut) {

        let r = new Response({
          url: url,
          type: origResponseType,
          status: status,
          headers: respHeaders,
          statusText: errorDesc,
          json: responseData,
          text: responseData,
          data: responseData, //FIXME

        });
        if (errorDesc == null) {

          resolve(r);
        }
        else {
          reject(r);
        }

      }
    });
  });
};

let network = new MXFNetworking;
exports.network_ios = network;
exports.Response = FetchResponse;



