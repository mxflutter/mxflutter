//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

package com.imatrixteam.jsflutter.utils

import android.util.Log

/**
 * Created by wennliu on 2020-04-02
 */

fun MXJSFlutterLog(tag: String, msg: String) {
    val element = Thread.currentThread().stackTrace[3]
    Log.d("MXJSFlutter:[Native]",     //log tag
            " -|" + "[" + element.className + "]" + "[" + element.methodName + "]" + "[" + element.lineNumber + "]" + "| "   //log 代码定位
                    + " -|" + java.lang.String.format(tag, msg) + "| "     //log msg
    )
}

fun MXFLogWarn(tag: String, msg: String) {
    val element = Thread.currentThread().stackTrace[3]
    Log.w("MXJSFlutter:[Native]",     //log tag
            " -|" + "[" + element.className + "]" + "[" + element.methodName + "]" + "[" + element.lineNumber + "]" + "| "   //代码定位
                    + " -|" + java.lang.String.format(tag, msg) + "| "     //log msg
    )
}

fun MXFLogError(tag: String, msg: String) {
    val element = Thread.currentThread().stackTrace[3]
    Log.e("MXJSFlutter:[Native]",     //log tag
            " -|" + "[" + element.className + "]" + "[" + element.methodName + "]" + "[" + element.lineNumber + "]" + "| "   //代码定位
                    + " -|" + java.lang.String.format(tag, msg) + "| "     //log msg
    )
}