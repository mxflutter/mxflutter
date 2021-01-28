![](https://raw.githubusercontent.com/mxflutter/mxflutter/master/mxflutter/mxflutterlogo.png)
----
[![Pub Version (including pre-releases)](https://img.shields.io/pub/v/mxflutter?include_prereleases)](https://pub.flutter-io.cn/packages/mxflutter) [![GitHub license](https://img.shields.io/github/license/mxflutter/mxflutter)](https://github.com/mxflutter/mxflutter/blob/master/LICENSE) [![GitHub stars](https://img.shields.io/github/stars/mxflutter/mxflutter?style=social)](https://github.com/mxflutter/mxflutter/stargazers)


# MXFlutter Beta

 
##### *重要提示：MXFlutter目前处于开发阶段， 因Flutter Widget数量太多，团队人力有限，v0.8.0 Beta版本中提供的TS Widget 未经过完整测试，不建议直接使用在生产环境。如在生产环境使用，确保理解MXFlutter运行原理，并对业务使用到的TS Widget进行完整测试，也欢迎贡献测试完成的名单。*

## 新版本

### 【*New】0.8.0 Beta   2021-1-29 不兼容更新

### v0.8.0 主要更新

#### 工程优化和开发方式变化

1. 开发语言切换到 TypeScript ：使用TS完整重构框架代码，带来了静态代码检查和代码自动提示。
2. 完整接入npm生态：重新设计拆分JS层框架模块，使用Monorepo模式组织模块的关联开发及npm发布。业务代码通过npm包引入框架。
3. 增加工程cli工具：一键创建业务初始工程。内置框架与业务的编译脚本，一键完成业务开发调试与编译打包。

#### 框架逻辑优化
1. 支持了JS Widget的状态保持
2. 通过dart:ffi实现小数据量属性同步调用
3. 支持了异步Widget，同步Widget
4. 提供了更全面的TS Widget， 支持更多UI效果
5. 主框架支持更丰富的性能监控指标。首帧、页面刷新、FPS、Crash率等。
6. 对应 Flutter 1.20.3版本

**特别注意：** 因为 v0.8.0 使用了 dart:ffi，mxflutter 作为静态库打包进宿主工程，在 iOS 打包发布时，Xcode 会把相关符号stripped，需要修改引用mxflutter的App proj Xcode配置，详细见Flutter官网说明 [Strip Style 配置](https://flutter.dev/docs/development/platform-integration/c-interop#ios-symbols-stripped)，否则会引起release archive (IPA)包 **crash**，对应 [issue](https://github.com/dart-lang/ffi/issues/41)。后续 MXFlutter 会做成动态库形式，减少业务修改。
 
``` 
运行 MXFlutter
  如果遇到其他问题，可在QQ群（747535761）中讨论。
```

---

*  [一、项目介绍](#title1)
*  [二、项目演示](#title2)
*  [三、项目特性](#title3)
*  [四、核心思想](#title3)
*  [五、项目架构](#title4)
*  [六、MXFlutter基本使用](#title5)
    * [接入指南](#title5_1)
*  [七、许可协议](#title7)
*  [八、参与贡献](#title8)
*  [九、联系我们](#title9)

----

##  <a name="title1">一、项目介绍</a>

MXFlutter 是一套基于 TypeScript 的 Flutter 框架，可以用 Flutter Widget 的开发方式，通过编写 TypeScript 代码，来开发 Flutter 应用，。代码位置 [MXFlutter Github](https://github.com/mxflutter/mxflutter.git) ，可以安装 Android的包来体验  [MXFlutter_v0-1-2.apk](https://github.com/TGIF-iMatrix/MXFlutter/releases/download/v0.1.2-beta/MXFlutter_v0-1-2.apk)。



## <a name="title2">二、项目演示</a>


![](https://github.com/langbluesky/Image/blob/master/demo_0.gif?raw=true)

对应JS代码 [zhihu/home/home_page.js](https://github.com/mxflutter/mxflutter/blob/master/mxflutter_js_src/app_demo/zhihu/index.js)

本项目里面高仿知乎页面示例借鉴了 [zhihu-flutter](https://github.com/HackSoul/zhihu-flutter) 的示例代码，在此，鸣谢作者 [HackSoul](https://github.com/HackSoul)。



## <a name="title3">三、项目特性</a>

* 支持Dart Flutter语法
* 支持定义Flutter中同名Widget类
* 支持定义相同的Build方式，setState刷新及事件响应方法
* 支持 TS 模块化开发
* 支持模拟器页面热更新



## <a name="title4">四、核心思想</a>

把 Flutter 的渲染逻辑中的三棵树（即：WidgetTree、Element、RenderObject ）中的第一棵（即：WidgetTree），放到 TypeScript 中生成。用 TypeScript 完整实现了 Flutter 控件层封装，可以用极其类似 Flutter 的开发方式，通过编写 TypeScript 代码，来开发 Flutter 应用，在 TypeScript 层，生成UI描述， Flutter 层的UI引擎把UI描述生产真正的 Flutter 控件。所以，它是完全动态化的。



## <a name="title5">五、项目结构</a>



![](https://raw.githubusercontent.com/mxflutter/doc_image/master/Readme/mxflutter.png)

#### 1.VM层：</a>

* MXFlutter TS Framework
* 定义和Flutter Widget同名镜像类
* 响应式UI框架

#### 2.Flutter层：</a>

* Script脚本管理模块
* DSL2Widget UIEngine，事件支持
* Dart业务API支持
* 内存管理，对象生命周期管理

#### 3.Native层：</a>

* VM虚拟机
* 线程管理
* Native业务API支持






## <a name="title6">六、MXFlutter基本使用</a>


从0.7.0版本开始，MXFlutter 最大的变化是开发语言切换到了 TypeScript，接入了npm生态，相比原来裸写JS的开发方式，向前端生态靠拢。这样就解决了之前版本最痛的没有代码提示和静态检查的问题。

所以 MXFlutter 目前分为两个部分，一个是发布在 npm 上的 mxflutter TypeScript 库，一个是 mxflutter flutter plugin。

开发方式变为三部曲：

* 第一步 在你的 Flutter 工程里引入 mxflutter flutter plugin。
* 第二步 用 mxflutter cli 工具新建一个TS的 mxflutter 工程。 这个工程是一个标准的 npm 包，开发完成之后编译输出JS Bundle文件。
* 第三步 把 TS 工程编译的bundle-xxx.js 放置在你的Flutter工程制定目录下，然后就可以调用 mxflutter 提供的接口打开 TS 页面了。

在开始接入之前，运行体验两个例子，对接入会有帮助，一个是示例丰富但比较复杂的例子，在 https://github.com/mxflutter/mxflutter.git 主库根目录，另一个是最简化的示例，推荐第一次接入参考 https://github.com/mxflutter/mxflutter/tree/master/mxflutter/example 完整例子。


接入的详细步骤，请参阅 [mxflutter 接入指南](Documentation/接入指南.md)

## <a name="title7">七、许可协议</a>

MXFlutter遵循[BSD](./LICENSE)开源许可证协议。



## <a name="title8">八、参与贡献</a>

MXFlutter还需要很多工作去完善功能，修改BUG，建设配套设施，如果大家有兴趣，欢迎加入一起开发。
如果你有好的意见或建议，也欢迎给我们提 `Issues` 或 `Pull Requests`。





## <a name="title9">九、联系我们</a>

`MXFlutter Team` 是一个技术氛围浓厚，有美女有帅哥有趣有爱的团队，欢迎终端，后台，前端同学投递简历哦：mxflutter@qq.com

对MXFlutter有兴趣的小伙伴，可以加群交流 QQ群:747535761

![qrcode](https://github.com/langbluesky/Image/blob/master/qrcode.png?raw=true)
















