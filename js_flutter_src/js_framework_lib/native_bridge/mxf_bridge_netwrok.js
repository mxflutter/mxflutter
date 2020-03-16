'use strict';

// return @[@"didCompleteNetworkResponse",
// @"didReceiveNetworkResponse",
// @"didSendNetworkData",
// @"didReceiveNetworkIncrementalData",
// @"didReceiveNetworkDataProgress",
// @"didReceiveNetworkData"];

class MXFNetworking {
  constructor() {
    super();
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
      onUploadProgress,  // fun(requestId: number,progress: number,total: number,)
      onReceiveResponse, //status: number,responseHeaders: ?Object,responseURL: ?string,
      onReceiveData,
      onReceiveIncrementalData,
      onReceiveDataProgress,
      onCompleteResponse,


      // onload,
      // onloadstart,
      // onprogress,
      // ontimeout,
      // onerror,
      // onabort,
      // onloadend,
      // onreadystatechange,
    },
    callback,  //: (eventName ,eventInfo) => void,
  ) {

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
      function (eventName, eventInfo) {

        if (callback != null) {
          callback(arguments);
        }

        if (eventName == "didReceiveNetworkResponse") {



        } else if (eventName == "didReceiveNetworkResponse") {



        } else if (eventName == "didSendNetworkData") {

        } else if (eventName == "didReceiveNetworkIncrementalData") {

        } else if (eventName == "didReceiveNetworkDataProgress") {

        } else if (eventName == "didReceiveNetworkData") {

        } else if (eventName == "didCompleteNetworkResponse") {

        }



      },
    );
  }

  abortRequest(requestId) {
    MXNativeJSFlutterApp.networking.abortRequest(requestId);
  }

  clearCookies(callback) {
    MXNativeJSFlutterApp.networking.clearCookies(callback);
  }
}

module.JSINetworkInstance = new MXFNetworking();
