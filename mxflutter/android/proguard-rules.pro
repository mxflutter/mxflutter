# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile
#Flutter Wrapper

#js
-keep class com.eclipsesource.v8.**  { *; }
-keep class * implements com.eclipsesource.v8.JavaVoidCallback  { *; }
-keep class * implements com.mojitox.mxflutter.framework.js.IJsEngine  { *; }
-keep class * implements com.mojitox.mxflutter.framework.js.IJsExecutor  { *; }
-keep class com.mojitox.mxflutter.framework.js.v8.MXNativeJSFlutterApp  { *; }
-keep class com.mojitox.mxflutter.framework.js.v8.V8JsModule  { *; }
-keep class com.mojitox.mxflutter.framework.js.v8.Console { *; }
-keep class com.mojitox.mxflutter.framework.js.x5.X5Interface {*;}
