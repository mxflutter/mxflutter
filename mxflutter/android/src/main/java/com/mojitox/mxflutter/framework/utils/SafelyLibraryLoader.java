package com.mojitox.mxflutter.framework.utils;

import android.content.Context;
import android.os.Build;
import androidx.annotation.IntDef;
import com.mojitox.mxflutter.framework.utils.FileUtils;
import com.mojitox.mxflutter.framework.utils.MxLog;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/**
 * 解决安装apk so拷贝失败或者so损坏的问题 1、通过系统System.loadLibrary()加载so 2、加载失败，直接从apk解压so到内部存储路径，再使用System.load()加载
 */
public class SafelyLibraryLoader {

    private static final String TAG = "SafelyLibraryLoader";
    private static final String LIB_DIR = "libso";

    //系统load失败
    private static final int SYS_ERROR = 1;
    //系统load抛异常
    private static final int SYS_EXCEPTION = 2;
    //从apk解压后，仍然load失败
    private static final int RECOVER_FAIL = 3;
    //从apk解压后，load成功
    private static final int RECOVER_UNPACK_LOAD_SUC = 4;
    //从容错路径load成功
    private static final int RECOVER_LOAD_SUC = 5;

    @IntDef({SYS_ERROR, SYS_EXCEPTION, RECOVER_FAIL, RECOVER_UNPACK_LOAD_SUC, RECOVER_LOAD_SUC})
    @Retention(RetentionPolicy.SOURCE)
    public @interface LoadType {

    }

    /**
     * 加载so
     * @return true ，成功。false，失败
     */
    public static boolean loadLibrary(Context context, String libName) {
        try {
            //load成功，直接返回
            System.loadLibrary(libName);
            return true;
        } catch (UnsatisfiedLinkError e) {
            MxLog.e(TAG, e.toString(), e);
            //上报，系统load失败
            report(SYS_ERROR, e.getMessage());
            //////////////////////////////进入容错逻辑
            try {
                //构造容错路径
                File libraryFile = getLibraryFile(context, libName);
                //1、如果存在，尝试加载
                if (libraryFile != null && libraryFile.exists() && libraryFile.isFile()) {
                    try {
                        System.load(libraryFile.getAbsolutePath());
                        report(RECOVER_LOAD_SUC, "recover success, from direct load");
                        return true;
                    } catch (UnsatisfiedLinkError e1) {
                        //加载失败，直接删除
                        if (libraryFile.exists()) {
                            libraryFile.delete();
                        }
                    }
                }
                //2、从apk中解压so
                if (unpackLibrary(context, libName, libraryFile)) {
                    //解压成功，尝试加载
                    try {
                        System.load(libraryFile.getAbsolutePath());
                        report(RECOVER_UNPACK_LOAD_SUC, "recover success, unpack and load");
                        return true;
                    } catch (UnsatisfiedLinkError e1) {
                        //加载失败，直接删除
                        if (libraryFile.exists()) {
                            libraryFile.delete();
                        }
                    }
                } else {
                    //解压失败，上报，抛异常
                    String msg = "Can't  recover library from apk: "
                            + libName;
                    report(RECOVER_FAIL, msg);
                    //解压失败，直接删除
                    if (libraryFile != null && libraryFile.exists()) {
                        libraryFile.delete();
                    }
                }
            } catch (Throwable e2) {
                //容错失败，上报，抛异常
                report(RECOVER_FAIL, e2.getMessage());
            }
            //////////////////////////////进入容错逻辑
        } catch (Throwable e) {
            MxLog.e(TAG, e.toString(), e);
            //上报，系统load抛异常
            report(SYS_EXCEPTION, e.getMessage());
        }
        return false;
    }

    /**
     * 全新安装或者升级安装先清掉这个目录，防止so版本升级后仍然读取到旧的so
     */
    private static synchronized File getLibraryFolder(Context context) {
        if (context == null || context.getFilesDir() == null) {
            return null;
        } else {
            File file = new File(context.getFilesDir(), LIB_DIR);
            if (file.exists()) {
                return file;
            }
            file.mkdirs();
            return file;
        }
    }

    /**
     * 根据libname获取lib路径
     */
    private static File getLibraryFile(Context context, String str) {
        String mapLibraryName = System.mapLibraryName(str);
        File libraryFolder = getLibraryFolder(context);
        return libraryFolder != null ? new File(libraryFolder, mapLibraryName) : null;
    }

    /**
     * 解压apk包lib so 到 libso目录下面 libso路径
     */
    private static boolean unpackLibrary(Context context, String libname, File file) {
        ZipFile zipFile = null;
        InputStream inputStream = null;
        try {
            zipFile = new ZipFile(new File(context.getApplicationInfo().sourceDir), 1);
            inputStream = getInputStreamByLibName(zipFile, libname);
            if (inputStream != null) {
                file.createNewFile();
                return FileUtils.copy(inputStream, file);
            }
        } catch (Throwable e) {
            MxLog.e(TAG, e.toString(), e);
        } finally {
            try {
                FileUtils.safetyCloseStream(inputStream);
                closeZipFile(zipFile);
            } catch (Exception ignored) {
                //ignore
            }
        }
        return false;
    }

    /**
     * 获取zpk安装包中lib so文件流
     */
    public static InputStream getInputStreamByLibName(ZipFile zipFile, String libName) {
        InputStream inputStream = null;
        try {
            //CPU_ABI "armeabi-v7a"
            ZipEntry entry = zipFile.getEntry("lib/" + Build.CPU_ABI + "/" + System.mapLibraryName(libName));
            if (entry == null) {
                int indexOf = Build.CPU_ABI.indexOf('-');
                StringBuilder append = new StringBuilder().append("lib/");
                String str3 = Build.CPU_ABI;
                if (indexOf <= 0) {
                    indexOf = Build.CPU_ABI.length();
                }
                String stringBuilder = append.append(str3.substring(0, indexOf)).append("/")
                        .append(System.mapLibraryName(libName)).toString();
                entry = zipFile.getEntry(stringBuilder);
                if (entry == null) {
                    return null;
                }
            }

            inputStream = zipFile.getInputStream(entry);
        } catch (Throwable e) {
            MxLog.e(TAG, e.toString(), e);
            return null;
        }
        return inputStream;
    }

    public static void closeZipFile(ZipFile zipFile) {
        if (zipFile != null) {
            try {
                zipFile.close();
            } catch (IOException ignored) {
                //ignore
            }
        }
    }

    /**
     * 上报
     */
    public static void report(@LoadType int loadType, String msg) {
        //todo
    }
}
