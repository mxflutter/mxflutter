//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

let packages__shared_preferences__shared_preferences = require('packages/shared_preferences/shared_preferences.dart.lib.js');
const shared_preferences = packages__shared_preferences__shared_preferences.shared_preferences;
const dart_sdk = require("dart_sdk");
const dart = dart_sdk.dart;
const async = dart_sdk.async;
const core = dart_sdk.core;

var SharedPreferencesToNull = () => (SharedPreferencesToNull = dart.constFn(dart.fnType(core.Null, [shared_preferences.SharedPreferences])))();
var dynamicToNull = () => (dynamicToNull = dart.constFn(dart.fnType(core.Null, [dart.dynamic])))();

class MXSharedPreferences extends core.Object //shared_preferences.SharedPreferences
{
    static getInstance() {

        let promiseResult = new Promise(function (resolve, reject) {

            shared_preferences.SharedPreferences.getInstance().then(core.Null, dart.fn(value => {
                let sp = new MXSharedPreferences;
                sp.sharedPreferences = value;
                sp.hookFun(value);
                resolve(value);
            }, SharedPreferencesToNull())).catchError(dart.fn(e => {
                core.print("shared_preferences.SharedPreferences:error: " + dart.str(e));
                reject(e);
            }, dynamicToNull()));


        }.bind(this));

        return promiseResult;
    }

    hookFun(sharedPreferences) {

        // sharedPreferences.setStringList_mx = sharedPreferences.setStringList;
        // sharedPreferences.setStringList = function (key,value) {
        //     core.print("setStringList:key" + key + " " + value);
        //     return sharedPreferences.setStringList_mx(key,value);
        // };


        // sharedPreferences.getStringList_mx = sharedPreferences.getStringList;
        // sharedPreferences.getStringList = function (key) {
        //     core.print("getStringList:key" + key);
        //     return sharedPreferences.getStringList_mx(key);
        // };
    }

}



exports.shared_preferences = shared_preferences;


//----手写JS支持

exports.SharedPreferences = MXSharedPreferences;