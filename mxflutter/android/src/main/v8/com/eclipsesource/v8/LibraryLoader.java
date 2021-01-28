/*******************************************************************************
 * Copyright (c) 2015 EclipseSource and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *    EclipseSource - initial API and implementation
 *    Wolfgang Steiner - code separation PlatformDetector/LibraryLoader
 ******************************************************************************/
package com.eclipsesource.v8;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

class LibraryLoader {

    static final String SEPARATOR;
    static final String DELIMITER;

    static final String SWT_LIB_DIR = ".j2v8";

    static {
        DELIMITER = System.getProperty("line.separator"); //$NON-NLS-1$
        SEPARATOR = System.getProperty("file.separator"); //$NON-NLS-1$
    }

    /**
     * Returns the base-name for the native J2V8 library file.
     * @param withLinuxVendor include/exclude the {vendor} part from the returned filename
     * <p>NOTE: Vendors are only included for linux systems</p>
     * @return The filename string has the following structure:
     * <pre><code>{arch}-[vendor]-{operating_system}</pre></code>
     */
    public static String computeLibraryShortName(boolean withLinuxVendor) {
        String prefix = "j2v8";
        String vendor = withLinuxVendor && PlatformDetector.OS.isLinux() ? PlatformDetector.Vendor.getName() : null;
        String os = PlatformDetector.OS.getName();
        String arch = PlatformDetector.Arch.getName();

        final String separator = "-";

        return
            prefix +
            (vendor != null ? separator + vendor : "") +
            separator + os +
            separator + arch;
    }

    public static String computeLibraryFullName(boolean withLinuxVendor) {
        return "lib" + computeLibraryShortName(withLinuxVendor) + "." + PlatformDetector.OS.getLibFileExtension();
    }

    static boolean tryLoad(boolean withLinuxVendor, StringBuffer message) {
        String libShortName = computeLibraryShortName(withLinuxVendor);
        String libFullName = computeLibraryFullName(withLinuxVendor);
        String ideLocation = System.getProperty("user.dir") + SEPARATOR + "jni" + SEPARATOR + libFullName;

        /* Try loading library from java library path */
        if (load(libFullName, message)) {
            return true;
        }
        if (load(libShortName, message)) {
            return true;
        }

        /* Try loading library from the IDE location */
        if (new File(ideLocation).exists()) {
            if (load(ideLocation, message)) {
                return true;
            }
        }

        return false;
    }

    static void loadLibrary(final String tempDirectory) {
        if (PlatformDetector.OS.isAndroid()) {
            if(tempDirectory != null) {
                System.load(tempDirectory);
            } else {
                System.loadLibrary("j2v8");
            }
            return;
        }

        StringBuffer message = new StringBuffer();

        // try loading a vendor-specific library first
        if (tryLoad(true, message))
            return;

        // if there is no vendor-specific library, just try to load the default OS library
        if (tryLoad(false, message))
            return;

        String path = null;
            
        if (tempDirectory != null) {
            path = tempDirectory;
        } else {
            path = System.getProperty("java.io.tmpdir"); //$NON-NLS-1$
        }

        // try extracting a vendor-specific library first
        if (extract(path, true, message))
            return;

        // if there is no vendor-specific library, just try to extract the default OS library
        if (extract(path, false, message))
            return;

        /* Failed to find the library */
        throw new UnsatisfiedLinkError("Could not load J2V8 library. Reasons: " + message.toString()); //$NON-NLS-1$
    }

    static boolean load(final String libName, final StringBuffer message) {
        try {
            if (libName.indexOf(SEPARATOR) != -1) {
                System.load(libName);
            } else {
                System.loadLibrary(libName);
            }
            return true;
        } catch (UnsatisfiedLinkError e) {
            if (message.length() == 0) {
                message.append(DELIMITER);
            }
            message.append('\t');
            message.append(e.getMessage());
            message.append(DELIMITER);
        }
        return false;
    }

    static boolean extract(String libPath, boolean withLinuxVendor, StringBuffer message) {
        String libFullName = computeLibraryFullName(withLinuxVendor);
        return extract(libPath + SEPARATOR + libFullName, libFullName, message);
    }

    static boolean extract(final String fileName, final String mappedName, final StringBuffer message) {
        FileOutputStream os = null;
        InputStream is = null;
        File file = new File(fileName);
        boolean extracted = false;
        try {
            if (file.exists()) {
                file.delete();
            }
            is = LibraryLoader.class.getResourceAsStream("/" + mappedName); //$NON-NLS-1$
            if (is != null) {
                extracted = true;
                int read;
                byte[] buffer = new byte[4096];
                os = new FileOutputStream(fileName);
                while ((read = is.read(buffer)) != -1) {
                    os.write(buffer, 0, read);
                }
                os.close();
                is.close();
                chmod("755", fileName);
                if (load(fileName, message)) {
                    return true;
                }
            }
        } catch (Throwable e) {
            try {
                if (os != null) {
                    os.close();
                }
            } catch (IOException e1) {
            }
            try {
                if (is != null) {
                    is.close();
                }
            } catch (IOException e1) {
            }
            if (extracted && file.exists()) {
                file.delete();
            }
        }
        return false;
    }

    static void chmod(final String permision, final String path) {
        if (PlatformDetector.OS.isWindows()) {
            return;
        }
        try {
            Runtime.getRuntime().exec(new String[] { "chmod", permision, path }).waitFor(); //$NON-NLS-1$
        } catch (Throwable e) {
        }
    }
}
