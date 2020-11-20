package com.mojitox.mxflutter.framework.utils;

import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

/**
 * create by ericpsun on 2020/11/5.
 */
public class JsUtil {

    @Nullable
    public static Map<String, Object> getMap(String jsonString) {
        JSONObject jsonObject;
        try {
            jsonObject = new JSONObject(jsonString);
            Iterator<String> keyIter = jsonObject.keys();
            String key;
            Object value;
            Map<String, Object> valueMap = new HashMap<>();
            while (keyIter.hasNext()) {
                key = (String) keyIter.next();
                value = jsonObject.get(key);
                valueMap.put(key, value);
            }
            return valueMap;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
