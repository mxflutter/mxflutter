add_library( mxflutter

             SHARED

        mxflutter_ffi.cpp
        mxflutter_app.cpp
        jni_helper.cpp
        MXFFICallbackManager.cpp)

# 从系统库中查找依赖库
find_library( # Sets the name of the path variable.
        # 设置依赖库的名字，下面链接库的时候会用到
        log-lib

        # Specifies the name of the NDK library that
        # you want CMake to locate.

        # 查找log依赖库
        # {sdk-path}/ndk-bundle/sysroot/usr/include/android/log.h
        log )

# 配置库的依赖关系(链接关系)
target_link_libraries( # Specifies the target library.
        # 目标库
        mxflutter

        # Links the target library to the log library
        # included in the NDK.
        # 依赖库，可以是多个
        ${log-lib} )