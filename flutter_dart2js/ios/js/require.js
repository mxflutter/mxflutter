var require, define;
(function(global) {
    var config = {
        paths: {},
    };
    // 缓存所有的模块
    var moduleMap = {};
    //主要函数定义
    function define(id, deps, factory) {
        var name;

        //存该模块对应的参数，即factory的参数
        var params = [];

        if (typeof id == "object") { // 对应require(deps, factory)情况
            factory = deps;
            deps = id;
        } else { // 对应deine(id，deps, factory)和require(id)情况
            name = id;
        }
        // 记录模块的依赖数
        var depCount = deps && deps.length;
        // 如果没有依赖，直接保存或执行模块
        if (!depCount || depCount == 0) {
            return saveModule(name, null, factory)
        } else {
            deps.forEach(function(dep, i) {
                // 用闭包解决经典的问题
                (function(i) {
                    // 加载依赖的模块，加载完之后的回调函数
                    loadScript(dep,
                    function(param) {
                        // 加载一个，计数器减一
                        depCount--;
                        params[i] = param;
                        //将计数器为0，说明依赖加载完毕，可以保存或执行当前的模块
                        if (depCount == 0) {
                            return saveModule(name, params, factory);
                        }
                    })
                } (i))
            })
        }
    }

    function loadScript(name, callback) {
        var mod = moduleMap[name];

        if (mod) {
            // 如果加载完毕，直接执行回调
            if (mod.status == 'loaded') {
                callback & callback(mod.export);
            } else { // 正在加载，将回掉函数存起来
                mod.onload.push(callback);
            }
        } else {
            // 若该模块从没加载过，定义并且利用Dom加载
            moduleMap[name] = {
                status: 'loading',
                export: null,
                onload: [callback]
            }

            loadModule(name);
        }
    }

    function loadModule(moduleName, path) {
        if (path == null) {
            path = config.baseUrl + (config.paths[moduleName] || moduleName) + '.js';
        }
        var js_file = load_file_native(path);
        js_file = js_file.replace('define([', 'define(' + '\'' + moduleName + '\'' + ',[');
        var fun = new Function(js_file);
        fun();
    }

    // 保存或者执行模块
    function saveModule(name, params, callback) {
        var mod = moduleMap[name];
        if (mod) {
            //设置状态为完成加载
            mod.status = 'loaded';

            //执行模块的函数，将结果存在export中
            mod.export = callback && callback.apply(this, params);

            // 执行上一级模块的回调函数
            while (fn = mod.onload.pop()) {
                fn && fn(mod.export);
            }
        } else {
            //若该模块未定义，直接执行返回结果，对应require(deps, factory)的情况
            callback.apply(this, params);
        }
    }
    define.config = function(c) {
        if (c.baseUrl && !c.baseUrl.endsWith('/')) {
            c.baseUrl = c.baseUrl + '/';
        }
        Object.assign(config, c);
    }
    global.define = define;
    global.require = define;

})(this);
