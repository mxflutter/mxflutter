//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

package com.mojitox.mxflutter.framework.utils;

import android.util.Log;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;

/**
 * Created by wennliu on 2020-03-27
 */
public class ClassUtils {

    public static final String TAG = "ClassUtils";

    public static Object getInstance(Class<?> clazz, Class[] classParas, Object[] paras) {
        Object o = null;
        try {
            Constructor con = clazz.getConstructor(classParas);
            try {
                o = con.newInstance(paras);
            } catch (InstantiationException e) {
                Log.e(TAG, "", e);
            } catch (IllegalAccessException e) {
                Log.e(TAG, "", e);
            } catch (IllegalArgumentException e) {
                Log.e(TAG, "", e);
            } catch (InvocationTargetException e) {
                Log.e(TAG, "", e);
            }
        } catch (NoSuchMethodException e) {
            Log.e(TAG, "", e);
        } catch (SecurityException e) {
            Log.e(TAG, "", e);
        }

        return o;
    }

    public static Object getInstance(Class clazz) {
        Object o = null;
        try {
            o = clazz.newInstance();
        } catch (InstantiationException e) {
            Log.e(TAG, "", e);
        } catch (IllegalAccessException e) {
            Log.e(TAG, "", e);
        }
        return o;
    }

}

