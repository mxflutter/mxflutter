package com.imatrixteam.jsflutter;

import android.content.Context;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class FileUtils {
    public static String getFromAssets(Context context, String fileName){
        InputStream input = null;
        try {
            input = context.getAssets().open(fileName);
            ByteArrayOutputStream output = new ByteArrayOutputStream();
            byte[] buffer = new byte[1024];
            int len = 0;
            while ((len = input.read(buffer)) != -1) {
                output.write(buffer, 0, len);
            }
            output.close();
            input.close();
            return output.toString();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }
}
