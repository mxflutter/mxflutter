//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

package com.mojitox.mxflutter.framework.utils

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

    //todo 为了防止crash做了较为完善的异常catch逻辑，在开发/debug模式下，建议开启异常log提示
//    Toast.makeText(MXFlutterApplication.getApplication(),"检测到了异常，请检查log",Toast.LENGTH_SHORT).show()

    val element = Thread.currentThread().stackTrace[3]
    Log.e("MXJSFlutter:[Native]",     //log tag
            " -|" + "[" + element.className + "]" + "[" + element.methodName + "]" + "[" + element.lineNumber + "]" + "| "   //代码定位
                    + " -|" + java.lang.String.format(tag, msg) + "| "     //log msg
    )
}