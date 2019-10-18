//app环境增加JS基本运行环境

var MXJSFlutterJSBasicLib = {
    _loadedMoudleCache: {},
    _loadedMoudleCahceWithAbsolutePath: {},
    require(file) {

        var prefix = "./";
        if(file.indexOf(prefix) == 0){
            file = file.slice(prefix.length);
        }

        var fileExports = this._loadedMoudleCache[file];

        if (fileExports != null) {
            return fileExports;
        }

        var { absolutePath, exports } = JSAPI_require(file);

        //没找到文件
        if (absolutePath == null || absolutePath.length == 0) {
            return {};
        }

        //找到了文件，并且返回了exports
        if (exports != null) {
            this._loadedMoudleCache[file] = exports;
            this._loadedMoudleCahceWithAbsolutePath[absolutePath] = exports;

            return exports;
         }

         //找到了文件，并且返回了exports是空的，可能重复加载，查找绝对路径缓存
         fileExports =  this._loadedMoudleCahceWithAbsolutePath[absolutePath];

         return fileExports; 
    }



};


function mxRequire(file) {
    return MXJSFlutterJSBasicLib.require(file);
}

//mxRequire("a");
