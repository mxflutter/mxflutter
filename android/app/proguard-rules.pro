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

#flutter
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.**  { *; }
-keep class io.flutter.util.**  { *; }
-keep class io.flutter.view.**  { *; }
-keep class io.flutter.**  { *; }
-keep class io.flutter.plugins.**  { *; }

#js
-keep class com.eclipsesource.v8.**  { *; }
-keep class * implements com.eclipsesource.v8.JavaVoidCallback  { *; }
-keep class com.imatrixteam.mxflutter.framework.MXJSEngine*  { *; }
-keep class com.imatrixteam.mxflutter.framework.MXJSFlutterApp$MXNativeJSFlutterApp  { *; }
-keep class com.imatrixteam.mxflutter.framework.JSModule  { *; }
