
class MXFNetworking  {
    static sendRequest(
       {method, //: string,
        url,    //: string,
        data,   //Object,
        headers,// Object,
        responseType, // : Object, // TODO: Use stricter type.
        incrementalUpdates,//: boolean,
        timeout,
        withCredentials,// boolean,
        callback,  //: (requestId: number) => void,
      |}) {
          
      }
    +abortRequest: (requestId: number) => void;
    +clearCookies: (callback: (result: boolean) => void) => void;
  
    // RCTEventEmitter
    +addListener: (eventName: string) => void;
    +removeListeners: (count: number) => void;
  }