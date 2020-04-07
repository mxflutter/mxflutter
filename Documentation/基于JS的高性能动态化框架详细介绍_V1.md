# 基于JS的高性能Flutter动态化框架

可能是目前放出来的相对最完整的Flutter动态化方案。

----

## 一、动态化技术方案选型思路分析

### （一）动态化的几个候选方案

#### （1） 前提知识点：Flutter的核心渲染模块三棵树

##### 1.Flutter是响应式UI框架，包含三大“Tree”

* 1.WidgetTree:Widget 里面存储了一个视图的配置信息，可以高效的创建（build）和销毁
* 2.Element 是分离 WidgetTree 和真正的渲染对象的中间层， WidgetTree 用来描述对应的Element 属性
* 3.RenderObject 来执行 Diff， Hit Test 布局、绘制

##### 2.三大“Tree”渲染流程图解

![](https://github.com/langbluesky/Image/blob/master/0x00_2.jpeg?raw=true)

#### （2） 方案一：静态解析Dart语言，生成UI描述

##### 1.特点

Dart 本身是描述语言，IDE 的 Outline 工具可以解析 Dart 代码生成树形结构，我们可以利用其源码，生成 JSON UI 描述。

> Android Studio Outline工具：

![](https://github.com/langbluesky/Image/blob/master/0x00_1.jpeg?raw=true)

> 相关代码请查看：

* [https://github.com/flutter/flutter-intellij/tree/master/src/io/flutter/preview/PreviewView.java](https://github.com/flutter/flutter-intellij/tree/master/src/io/flutter/preview/PreviewView.java)

* [dart-sdk: analysis_server](https://github.com/dart-lang/sdk/tree/master/pkg/analysis_server)

##### 2.结合代码看看JIT和AOT创建树

第一棵树有完整的UI描述信息，那么我只要JIT下通过 DartVM 创建第一棵树，其他耗时的操作都丢到AOT里去。

> 具体如下图所示：

![](https://github.com/langbluesky/Image/blob/master/0x00_3.jpeg?raw=true)

##### 3.缺点

静态解析 Dart 缺点，不能写逻辑，对编写UI代码有很多限制，不能写判断语句，不能写函数，要支持这些成本很高。所以只好放弃。

#### （3）方案二：动态运行 Dart 语言，生产UI描述

和方案一静态解析Dart对比，第二个方案是写一个极其轻量的运行时库，让编写UI的Dart 代码运行了起来，生成树形结构，再序列化为 JSON（debug），FlatBuffers （release）UI 描述。可以称之为动态解析方案。

##### 1.各部分负责的功能

如下图所示：

![](https://github.com/langbluesky/Image/blob/master/0x00_4.jpeg?raw=true)

##### 2.具体渲染逻辑

如下图所示：

![](https://github.com/langbluesky/Image/blob/master/0x00_5.jpeg?raw=true)

##### 3.总体架构图

如下图所示：

![](https://github.com/langbluesky/Image/blob/master/16b8cec2d34ded87.jpeg?raw=true)

架构也有了，方案也有了，要Run起来还有几个麻烦事要忙活，DartVM 要抽出来，Dart JIT层的轻量级运行时库，Dart AOT层把DSL转成真正Widget的UIEngin也要写哦，就是图中黄色和红色的三部分

##### 4.核心难题：抽离DartVM

###### a.遇到的麻烦及解决思路

> 遇到的麻烦：

Dart源代码在进行编译时会通过DART_PRECOMPILED_RUNTIME宏进行条件编译从而在Debug版编译JIT模式，Release版编译AOT模式。并且这两种模式是互斥的，无法同时存在。

> 解决方案：

我们单独编译出一个DartVM，打包成动态库，修改导出符号，避免符合冲突

###### b.引入DartVM需要做的工作

* 1.开发DartVM与Native互通接口，参考了Flutter，使用Native Extension和Dart_Invoke实现互相调用

* 2.双DartVM调试方案，两个DartVM独立运行，通过远程端口单独调试DartFlutter

* 3.支持引入第三方库，DartFlutter在打包发布时会通过shell脚本分析.packages文件将依赖库自动打包随Dart File Zip一起随包下发。常用库可以预先打包的App本地，减少下发文件大小。

###### c.难题：DartVM安装包过大

安装包过大，DartVM增大安装包30M，如果加上原本的AOT40M，整个Flutter安装包会增大到70M，站在开发者的角度来说，如果打包一个应用，光是DartVM就要占用了70M，显然这是不可以被开发者所容忍的。

### （二）最终选型方案:JavasSriptCore  替换DartVM

使用静态运行Dart语言，限制因素太多，不利于开发和调试；而使用DartVM又会导致安装包过大（DartVM会让安装包增大70M），显然不是很友好，做一最终选择决定使用 `JavasSriptCore`  替换 `DartVM`。

#### （1）可行性分析

* 1.JavasSriptCore 是iOS官方库，不增加安装包
* 2.Dart代码和JS代码非常相近，可以用工具转换
* 3.JavasSriptCore 与 Native有更方便的互调接口
* 4.ReactNative 已验证通过JS开发App能力是可行的
* 5.JS的执行效率是DartVM的3倍编码1M的JSON只需 2毫秒

#### （2）需要解决的问题

* 1.用JS开发假的Flutter Runtime
* 2.封装JavasSriptCore与Native、 Flutter互调接口

----

## 二、MXFlutter渲染原理

### （一）渲染树

MXFlutter有两个重要的数据结构：

- MXScriptWidget 
- MXWidgetTree

`MXScriptWidget`管理一个Script页面或控件，负责创建管理 `ScriptWidgetTree`，以自增ID与Flutter对应Widget相互调用，每次Build都会创建一个新的`MXWidgetTree`，具体流程如下图所示：

![](https://github.com/langbluesky/Image/blob/master/0x02_1.jpeg?raw=true)

### （二）MXFlutter事件

在 JavaScript 侧 `buildWidget` 时，我们会对 **function** 事件，生成自增的唯一 `callbackID`，并与 `widgetID` 组合拼接成 `widgetID/callbackID`，作为事件的唯一标识。用户点击界面某个 **button** 时，事件由 Flutter 侧传到 JavaScript 侧，通过解析 `widgetID/callbackID`，找到对应 **widget** 的 `callback`，完成事件处理。

具体流程如下图所示：

![](https://github.com/langbluesky/Image/blob/master/0x02_2.jpeg?raw=true)

### （三）MXFlutter高效的动态列表

#### （1）JavaScript端的代码处理

MXFlutter的列表也是很高效的。通过在 JvavaScript 侧，`ListView` 调用 `Build` 方法时，提前展开 `child` , 并为 `ListView` 增加 `children` 成员变量。此时，因为仅有数据配置，不会有多余的 `Layout` 过程，所以速度是非常快的。

JavaScript端的代码如下所示：

``` javascript
preBuild(jsWidget, buildContext) {
    if(this.builder) {
        for (let i = 0; i < this.childCount; ++i) {
            let w = this.builder(buildContext, i);
            this.children.push(w);
        }
        delete this.builder;
    }

    super.preBuild(jsWidget, buildContext);
}
```

#### （2）Flutter端的代码处理

在 `Flutter` 侧，`ListView` 仍然是动态创建，滑动列表，**MXFlutter Engine** 根据 `Children` 数组里的配置数据,创建真正的 **Flutter WidgetCell**，效率与原生相同完全一致。

Flutter端的代码如下所示：

```Dart
ListView.builder(
    itemCount: children.length,
    itemBuilder: (context, index) {
        return UIEngine.toWidget(children[index]);
    },
)
```

#### （3）使用示意图如下所示：

 ![](https://github.com/langbluesky/Image/blob/master/pesto_demo.jpeg?raw=true)


### （四）MXFlutter动画的方案

动画参数在VM层配置一次，动画开始后在Flutter层闭环循环rebuild,形成动画效果，这个是比较通用的做法了。

具体的流程图如下图所示：

![](https://github.com/langbluesky/Image/blob/master/0x02_3.jpeg?raw=true)

----

## 三、MXFlutter渲染优化

不管JSWidget创建有多快，总是有跨语言执行，所以减少`Build次数`和减小Build出来的`DSL UI描述大小`，可以优化性能。

### （一）渲染优化

#### （1）局部刷新：配置树Diff

##### 1.一个事实：

自动对比两次Widget 无论如何都没有直接创建一个新的快，如果开发者不参与，由框架来自动计算Diff是得不偿失的

##### 2.具体解决方案：

* 牺牲响应式UI框架的设计模式
* 采用和Native、Web的方式，由开发者参与自己设置Diff的节点，即根据ID获取对应Widget，修改Widget参数，Rebuild生成新DSL。

#### （2）局部刷新-嵌套节点

##### 具体解决方案：

* MXScriptWidget 是一个具备Build WidgetTree，缓存Callback映射表，动画支持的基本单位。可以作为普通FlutterWidget来使用。
* 在Flutter层，如果Widget树中节点有MXScriptWidget，则在对应节点上创建MXFlutterWidget自定义控件
* 两个子树可以相互对应获得局部刷新，callback回调，动画支持，Rebuild时所生产的UI DSL 大大减少，加快刷新速率

> 交互流程图如下图所示：

![](https://github.com/langbluesky/Image/blob/master/0x03_1.jpeg?raw=true)


#### （3）可以分离动态和静态控件

##### 具体解决方案：

MXStatelessWidget 可以通过使用无状态的ScriptWidget来向框架标示，其下面的子树，在每次build中不会变化，其build结果会被缓存，下次在Flutter层直接复用

> 交互流程图如下图所示：

![](https://github.com/langbluesky/Image/blob/master/0x03_2.jpeg?raw=true)

### （二）内存-跨层镜像对象的生命周期(任何跨平台技术必须解决的问题)

#### Q:VM层，Flutter层，Native层镜像对象的生命周期如何控制？

#### A:可以参考苹果 iOS JavaScriptCore 和 Objective-C的解决方法。

具体思路如下：

* 1. 以Flutter层的对象生命周期为主
* 2. 在VM层增加WeakMap支持，不增加对象引用计数，Flutter层释放之后，释放VM层对象
* 3. 在Native层使用 `JSManagerValue`，VM层对象释放后，Native的引用被自动置空

> 交互流程图如下图所示：

![](https://github.com/langbluesky/Image/blob/master/0x03_3.jpeg?raw=true)

### （三）线程问题

#### （1）参照业界RN等框架的设计，VM层跑在一个单独的后台线程：

* 1. 从Flutter层通过Native通道调用到VM，发生两次线程切换
* 2. Flutter UI层和MXScript层是异步调用，限制动态控件的架构设计

#### （2）一个可行方案

修改FlutterEngine ，定制开发Dart->Native->VM 这个通道，调用到VM不切换线程
VM不新建线程，直接由Flutter UI Thread 消息循环驱动，这样也同时支持了和Flutter UI 层的高效同步调用，但要注意从Native调用到VM，需要通过定制FlutterEngine的接口。

----

## 四、MXFlutter编码规范（让你的代码更有逼格）

让开发者写出优雅的代码,咳咳，这里有点吹了，总之，我们想让使用MXFlutter的开发同学写出来的代码看来正规一些，好看一些。

- 完美支持Dart Flutter语法
- 定义所有Flutter 中同名Widget类，构建Widget的参数类，支持相同的Build方式，SetState触发刷新，事件响应函数
- Callback函数自动生成CallbackID
- Callback函数自动This绑定
- ListView 像Dart层一样开发，支持itemBuilder回调函数

具体的可以参考JS示例源码： [TGIF-iMatrix home_page.js](https://github.com/TGIF-iMatrix/MXFlutter/blob/master/mxflutter_js_src/mxflutter_app_demo/home_page.js)

----

## 五、MXFlutter开发建议

因为 JavaScript `不支持模块化开发`，不能引用其他文件代码，我们参照 RN，使用 Node.js 的模块化代码，在Native 层支持 require 语法。开发时，IDE最好选用 `VSCode`，因为可以按装JS插件，直接运行调试JS

另外，我们通过重定向模拟器 JS 路径文件到开发机，用户修改完 JS 文件，便可直接看到相应修改，实现模拟器的页面热更新。