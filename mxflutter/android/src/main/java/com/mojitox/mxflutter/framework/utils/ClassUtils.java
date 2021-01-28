//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

package com.mojitox.mxflutter.framework.utils;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

/**
 * Created by wennliu on 2020-03-27
 */
public class ClassUtils {

    public static final String TAG = "ClassUtils";

    /**
     * 获取实例
     */
    public static Object getInstance(Class<?> clazz, Class[] classParas, Object[] paras) {
        Object o = null;
        try {
            Constructor con = clazz.getConstructor(classParas);
            try {
                o = con.newInstance(paras);
            } catch (InstantiationException e) {
                MxLog.e(TAG, "", e);
            } catch (IllegalAccessException e) {
                MxLog.e(TAG, "", e);
            } catch (IllegalArgumentException e) {
                MxLog.e(TAG, "", e);
            } catch (InvocationTargetException e) {
                MxLog.e(TAG, "", e);
            }
        } catch (NoSuchMethodException e) {
            MxLog.e(TAG, "", e);
        } catch (SecurityException e) {
            MxLog.e(TAG, "", e);
        }

        return o;
    }

    /**
     * 获取实例
     */
    public static Object getInstance(Class clazz) {
        Object o = null;
        try {
            o = clazz.newInstance();
        } catch (InstantiationException e) {
            MxLog.e(TAG, "", e);
        } catch (IllegalAccessException e) {
            MxLog.e(TAG, "", e);
        }
        return o;
    }

}

