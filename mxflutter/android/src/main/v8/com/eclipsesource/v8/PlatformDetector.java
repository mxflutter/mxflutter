/*******************************************************************************
 * Copyright (c) 2017 EclipseSource and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *    Trustin Lee - original OS/Arch/Vendor detection code (see: https://github.com/trustin/os-maven-plugin)
 *    Wolfgang Steiner - initial API and implementation
 *
 * Copyright 2014 Trustin Heuiseung Lee.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 ******************************************************************************/
package com.eclipsesource.v8;

import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Locale;

public class PlatformDetector {
    public static class Arch {
        public static String getName() {
            final String archProperty = System.getProperty("os.arch");
            final String archName = normalizeArch(archProperty);

            if (archName.equals(Platform.UNKNOWN)) {
                throw new UnsatisfiedLinkError("Unsupported arch: " + archProperty);
            }

            return archName;
        }
    }

    public static class OS {
        public static String getName() {
            final String osProperty = System.getProperty("os.name");
            final String osName = normalizeOs(osProperty);

            final String vendorProperty = System.getProperty("java.specification.vendor");
            final String vendorName = normalize(vendorProperty);

            // special handling for android
            if (vendorName.contains("android") || osName.contains("android")) {
                return Platform.ANDROID;
            }

            if (osName.equals(Platform.UNKNOWN)) {
                throw new UnsatisfiedLinkError("Unsupported platform/vendor: " + osProperty + " / " + vendorProperty);
            }

            return osName;
        }

        public static boolean isWindows() {
            return getName().equals(Platform.WINDOWS);
        }

        public static boolean isMac() {
            return getName().equals(Platform.MACOSX);
        }

        public static boolean isLinux() {
            return getName().equals(Platform.LINUX);
        }

        public static boolean isNativeClient() {
            return getName().equals(Platform.NATIVE_CLIENT);
        }

        public static boolean isAndroid() {
            return getName().equals(Platform.ANDROID);
        }

        public static String getLibFileExtension() {
            if (isWindows()) {
                return "dll";
            }

            if (isMac()) {
                return "dylib";
            }

            if (isLinux()
                || isAndroid()
                || isNativeClient()) {
                return "so";
            }

            throw new UnsatisfiedLinkError("Unsupported platform library-extension for: " + getName());
        }
    }

    public static class Vendor {
        private static final String[] LINUX_OS_RELEASE_FILES = {"/etc/os-release", "/usr/lib/os-release"};
        private static final String REDHAT_RELEASE_FILE = "/etc/redhat-release";
        private static final String LINUX_ID_PREFIX = "ID=";

        public static String getName() {
            if (OS.isWindows()) {
                return "microsoft";
            }
            if (OS.isMac()) {
                return "apple";
            }
            if (OS.isLinux()) {
                return getLinuxOsReleaseId();
            }
            if (OS.isAndroid()) {
                return "google";
            }

            throw new UnsatisfiedLinkError("Unsupported vendor: " + getName());
        }

        private static String getLinuxOsReleaseId() {
            // First, look for the os-release file.
            for (String osReleaseFileName : LINUX_OS_RELEASE_FILES) {
                File file = new File(osReleaseFileName);
                if (file.exists()) {
                    return parseLinuxOsReleaseFile(file);
                }
            }

            // Older versions of redhat don't have /etc/os-release. In this case, try
            // parsing this file.
            File file = new File(REDHAT_RELEASE_FILE);
            if (file.exists()) {
                return parseLinuxRedhatReleaseFile(file);
            }

            throw new UnsatisfiedLinkError("Unsupported linux vendor: " + getName());
        }

        private static String parseLinuxOsReleaseFile(final File file) {
            BufferedReader reader = null;
            try {
                reader = new BufferedReader(new InputStreamReader(new FileInputStream(file), "utf-8"));

                String id = null;
                String line;
                while((line = reader.readLine()) != null) {
                    // Parse the ID line.
                    if (line.startsWith(LINUX_ID_PREFIX)) {
                        // Set the ID for this version.
                        id = normalizeOsReleaseValue(line.substring(LINUX_ID_PREFIX.length()));
                        break;
                    }
                }

                return id;
            } catch (IOException ignored) {
                // Just absorb. Don't treat failure to read /etc/os-release as an error.
            } finally {
                closeQuietly(reader);
            }
            return null;
        }

        private static String parseLinuxRedhatReleaseFile(final File file) {
            BufferedReader reader = null;
            try {
                reader = new BufferedReader(new InputStreamReader(new FileInputStream(file), "utf-8"));

                // There is only a single line in this file.
                String line = reader.readLine();
                if (line != null) {
                    line = line.toLowerCase(Locale.US);

                    String id;
                    if (line.contains("centos")) {
                        id = "centos";
                    } else if (line.contains("fedora")) {
                        id = "fedora";
                    } else if (line.contains("red hat enterprise linux")) {
                        id = "rhel";
                    } else {
                        // Other variants are not currently supported.
                        return null;
                    }

                    return id;
                }
            } catch (IOException ignored) {
                // Just absorb. Don't treat failure to read /etc/os-release as an error.
            } finally {
                closeQuietly(reader);
            }
            return null;
        }

        private static void closeQuietly(final Closeable obj) {
            try {
                if (obj != null) {
                    obj.close();
                }
            } catch (IOException ignored) {
                // Ignore.
            }
        }
    }

    private static String normalizeOsReleaseValue(final String value) {
        // Remove any quotes from the string.
        return value.trim().replace("\"", "");
    }

    private static String normalizeOs(String value) {
        value = normalize(value);
        if (value.startsWith("aix")) {
            return "aix";
        }
        if (value.startsWith("hpux")) {
            return "hpux";
        }
        if (value.startsWith("os400")) {
            // Avoid the names such as os4000
            if ((value.length() <= 5) || !Character.isDigit(value.charAt(5))) {
                return "os400";
            }
        }
        if (value.startsWith("android")) {
            return Platform.ANDROID;
        }
        if (value.startsWith("linux")) {
            return Platform.LINUX;
        }
        if (value.startsWith("nacl")) {
            return Platform.NATIVE_CLIENT;
        }
        if (value.startsWith("macosx") || value.startsWith("osx")) {
            return Platform.MACOSX;
        }
        if (value.startsWith("freebsd")) {
            return "freebsd";
        }
        if (value.startsWith("openbsd")) {
            return "openbsd";
        }
        if (value.startsWith("netbsd")) {
            return "netbsd";
        }
        if (value.startsWith("solaris") || value.startsWith("sunos")) {
            return "sunos";
        }
        if (value.startsWith("windows")) {
            return Platform.WINDOWS;
        }

        return Platform.UNKNOWN;
    }

    private static String normalizeArch(String value) {
        value = normalize(value);
        if (value.matches("^(x8664|amd64|ia32e|em64t|x64)$")) {
            return "x86_64";
        }
        if (value.matches("^(x8632|x86|i[3-6]86|ia32|x32)$")) {
            return "x86_32";
        }
        if (value.matches("^(ia64|itanium64)$")) {
            return "itanium_64";
        }
        if (value.matches("^(sparc|sparc32)$")) {
            return "sparc_32";
        }
        if (value.matches("^(sparcv9|sparc64)$")) {
            return "sparc_64";
        }
        if (value.matches("^(arm|arm32)$") || value.startsWith("armv7")) {
            return "arm_32";
        }
        if ("aarch64".equals(value) || value.startsWith("armv8")) {
            return "aarch_64";
        }
        if (value.matches("^(ppc|ppc32)$")) {
            return "ppc_32";
        }
        if ("ppc64".equals(value)) {
            return "ppc_64";
        }
        if ("ppc64le".equals(value)) {
            return "ppcle_64";
        }
        if ("s390".equals(value)) {
            return "s390_32";
        }
        if ("s390x".equals(value)) {
            return "s390_64";
        }

        return Platform.UNKNOWN;
    }

    private static String normalize(final String value) {
        if (value == null) {
            return "";
        }
        return value.toLowerCase(Locale.US).replaceAll("[^a-z0-9]+", "");
    }
}
