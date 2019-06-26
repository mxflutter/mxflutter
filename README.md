## 基于JS的高性能Flutter动态化框架
可能是目前放出来的相对最完整的Flutter动态化方案

缘起：18年10月份，我们团队的iOS产品尝试引入 Flutter，做为iOS开发，一接触到Flutter就马上感受到，Flutter 虽然强大，但不能动态化是阻碍我们使用她的唯一障碍了。舍弃Native的开发方式，一个很大的诉求是获取动态更新的能力。看Google团队对动态化的措辞，应该指望不上了，撸起袖子自己动手丰衣足食。

# 简介
项目代号：MXFlutter （Matrix Flutter）[github TGIF-iMatrix](https://github.com/TGIF-iMatrix/MXFlutter)

核心思路是把 Flutter 的渲染逻辑中的三棵树中的第一棵，放到 JavaScript 中生成。用 JavaScript 完整实现了 Flutter 控件层封装，可以使用 JavaScript，用极其类似 Dart 的开发方式，开发Flutter应用，利用JavaScript版的轻量级Flutter Runtime，生成UI描述，传递给Dart层的UI引擎，UI引擎把UI描述生产真正的 Flutter 控件。所以，他在iOS上是完全动态化的 ，完整代码开源在：
[github TGIF-iMatrix](https://github.com/TGIF-iMatrix/MXFlutter)
如果能帮助到大家，请给MXFlutter点个Star，给我们动力继续更新下去^_*


继续前先瞥一眼整体的架构，一句话介绍MXFlutter，就是用JavaScript，以Flutter的写法开发Flutter。汗...还是有点绕，大家看下面贴出来的代码吧。

![](https://github.com/langbluesky/Image/blob/master/16b8cec2d34ded87.jpeg?raw=true)

## 效果
先看看使用效果，以下截图是在MXFlutter框架下用JS开发，大家可以把上面的源码下载下来，里面有完整的JS代码示例：

这个是APP示例截图

![](https://user-gold-cdn.xitu.io/2019/6/25/16b8cec2d533b9e0?w=420&h=835&f=jpeg&s=70936)

下面是UI截图对应的JS代码，没错，你没有眼花，这个是真的 JavaScript 代码，可以在 MXFlutter 的运行时库上渲染出 Flutter 的UI

```
class JSPestoPage extends MXJSWidget {
  constructor() {
    super("JSPestoPage");
    this.recipes = recipeList;

  }

  build(context) {
    let statusBarHeight = 24;
    let mq = MediaQuery.of(context);
    if (mq) {
      statusBarHeight = mq.padding.top
    }

    let w = new Scaffold({
      appBar: new AppBar({
        title: new Text("Pesto Demo")
      }),
      floatingActionButton: new FloatingActionButton({
        child: new Icon(new IconData(0xe3c9)),
        onPressed: this.createCallbackID(function () {

        }),
      }),
      body: new CustomScrollView({
        semanticChildCount: this.recipes.length,
        slivers: [
          //this.buildAppBar(context, statusBarHeight),
          this.buildBody(context, statusBarHeight),
        ],
      }),
      //body:this.buildItems()[0]
    });

    return w;
  }

  buildAppBar(context, statusBarHeight) {
    return SliverAppBar({
      pinned: true,
      expandedHeight: _kAppBarHeight,
      actions: [
        IconButton({
          icon: new Icon(new IconData(1)),
          tooltip: 'Search',
          onPressed: this.createCallbackID(function () {

          }),
        }),
      ],
      flexibleSpace: LayoutBuilder({
        builder: function (context, constraints) {
          size = constraints.biggest;
          appBarHeight = size.height - statusBarHeight;
          t = (appBarHeight - kToolbarHeight) / (_kAppBarHeight - kToolbarHeight);
          extraPadding = new Tween({ begin: 10.0, end: 24.0 }).transform(t);
          logoHeight = appBarHeight - 1.5 * extraPadding;
          return Padding({
            padding: EdgeInsets.only({
              top: statusBarHeight + 0.5 * extraPadding,
              bottom: extraPadding,
            }),
            child: Center({
              child: new Icon(new IconData(1))
            }),
          });
        },
      }),
    });
  }

  buildBody(context, statusBarHeight) {

    let mediaPadding = EdgeInsets.all(0);
    let mq = MediaQuery.of(context);
    if (mq) {
      mediaPadding = MediaQuery.of(context).padding;
    }
    let padding = EdgeInsets.only({
      top: 8.0,
      left: 8.0 + mediaPadding.left,
      right: 8.0 + mediaPadding.right,
      bottom: 8.0
    });

    return new SliverPadding({
      padding: padding,
      sliver: new SliverGrid({
        gridDelegate: new SliverGridDelegateWithMaxCrossAxisExtent({
          maxCrossAxisExtent: _kRecipePageMaxWidth,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        }),
        delegate: new SliverChildBuilderDelegate(
          function (context, index) {
            let recipe = this.recipes[index];
            let w = new RecipeCard({
              recipe: recipe,
              onTap: function () { showRecipePage(context, recipe); },
            });

            return w;
          },
          {
            childCount: this.recipes.length,
          }),
      }),
    });
  }


```


源码中还有更丰满的示例，高仿知乎页面JSFlutter版
[https://github.com/TGIF-iMatrix/MXFlutter/blob/master/js_flutter_src/app_test/zhihu/home/home_page.js](https://github.com/TGIF-iMatrix/MXFlutter/blob/master/js_flutter_src/app_test/zhihu/home/home_page.js)
 ，这是对应UI，已经接近在线上版直接使用了。



![](https://user-gold-cdn.xitu.io/2019/6/25/16b8da4a18677397?w=400&h=794&f=jpeg&s=78361)


# 现状
MXFlutter虽然各个模块已相对完整，但投入生产还需要解决其中的BUG，由于19年初，小组启动新项目，非常繁忙，几乎没有时间继续开发，从3月份一直暂停，目前人力仍然很紧张，如果大家有兴趣，期待小伙伴们一起加入，共同丰富 MXFlutter 动态化能力。

## 0x00 分享下动态化探索过程中的几个炮灰方案

### Flutter 动态化方案一： 静态解析Dart语言，生成UI描述

Dart 本身是描述语言，IDE 的 Outline 工具可以解析 Dart 代码生成树形结构，我们可以利用其源码，生成 JSON UI 描述，相关代码：[https://github.com/flutter/flutter-intellij/blob/b6461e8d8ed3857a9e4350bc61133c8f48249f43/src/io/flutter/preview/PreviewView.java](https://github.com/flutter/flutter-intellij/blob/b6461e8d8ed3857a9e4350bc61133c8f48249f43/src/io/flutter/preview/PreviewView.java)
dart-sdk: analysis_server

![](https://user-gold-cdn.xitu.io/2019/6/25/16b8cec2db7491a3?w=2172&h=1046&f=jpeg&s=239649)

静态解析 Dart 缺点，不能写逻辑，对编写UI代码有很多限制，不能写判断语句，不能写函数，要支持这些成本很高。所以只好放弃。

### 快速介绍下Flutter的核心渲染模块三棵树

响应式UI框架

1. WidgetTree:Widget 里面存储了一个视图的配置信息，可以高效的创建（build）和销毁
2. Element 是分离 WidgetTree 和真正的渲染对象的中间层， WidgetTree 用来描述对应的Element 属性
3. RenderObject 来执行 Diff， Hit Test 布局、绘制

![](https://user-gold-cdn.xitu.io/2019/6/25/16b8cec2fe6a0164?w=1524&h=1080&f=jpeg&s=167348)

第一棵树有完整的UI描述信息，那么我只要JIT下通过 DartVM 创建第一棵树，其他耗时的操作都丢到AOT里去。

![](https://user-gold-cdn.xitu.io/2019/6/25/16b8cec3000a37d7?w=2890&h=944&f=jpeg&s=226839)

### Flutter 动态化方案二： 动态运行 Dart 语言，生产UI描述

和方案一静态解析Dart对比，第二个方案是写一个极其轻量的运行时库，让编写UI的Dart 代码运行了起来，生成树形结构，再序列化为 JSON（debug），FlatBuffers （release）UI 描述。可以称之为动态解析方案

![](https://user-gold-cdn.xitu.io/2019/6/25/16b8cec3060a0f92?w=2794&h=988&f=jpeg&s=384791)

具体渲染逻辑

![](https://user-gold-cdn.xitu.io/2019/6/25/16b8cec304d27a3f?w=2262&h=1080&f=jpeg&s=266280)

总体架构

![](https://github.com/langbluesky/Image/blob/master/16b8cec2d34ded87.jpeg?raw=true)

架构也有了，方案也有了，要Run起来还有几个麻烦事要忙活，DartVM 要抽出来，Dart JIT层的轻量级运行时库，Dart AOT层把DSL转成真正Widget的UIEngin也要写哦，就是图中黄色和红色的三部分

### 抽离DartVM

#### 无法简单修改编译条件抽离
Dart源代码在进行编译时会通过DART_PRECOMPILED_RUNTIME宏进行条件编译从而在Debug版编译JIT模式，Release版编译AOT模式。并且这两种模式是互斥的，无法同时存在。


#### 简单的解决方法是
我们单独编译出一个DartVM，打包成动态库，修改导出符号，避免符合冲突

#### 引入DartVM还需要的工作

* 开发DartVM与Native互通接口，参考了Flutter，使用Native Extension和Dart_Invoke实现互相调用
* 双DartVM调试方案，两个DartVM独立运行，通过远程端口单独调试DartFlutter
* 支持引入第三方库，DartFlutter在打包发布时会通过shell脚本分析.packages文件将依赖库自动打包随Dart File Zip一起随包下发。
常用库可以预先打包的App本地，减少下发文件大小

#### 一个暂时无法解决的问题

安装包过大，DartVM增大安装包30M，如果加上原本的AOT40M，整个Flutter安装包会增大到70M,用DartVM不现实。怎么办呢。

## 0x01 最终方案JavasSriptCore  替换DartVM

### 可性能分析
1. JavasSriptCore 是iOS官方库，不增加安装包
2. Dart代码和JS代码非常相近，可以用工具转换
3. JavasSriptCore 与 Native有更方便的互调接口
4. ReactNative 已验证通过JS开发App能力是可行的
5. JS的执行效率是DartVM的3倍编码1M的JSON只需 2毫秒

### 需要解决的问题
用JS开发假的Flutter Runtime
封装JavasSriptCore与Native、 Flutter互调接口


## 0x02 讲解下MXFlutter的渲染原理

### 渲染树
两个重要的数据结构
* MXScriptWidget 
* MXWidgetTree

MXScriptWidget管理一个Script页面或控件，负责创建管理 ScriptWidgetTree，以自增ID与Flutter对应Widget相互调用
，每次Build都会创建一个新的MXWidgetTree

![](https://user-gold-cdn.xitu.io/2019/6/25/16b8cec334ac9e1a?w=1904&h=1080&f=jpeg&s=214715)

### MXFlutter 事件

在 JS 侧 buildWidget 时，我们会对 function 事件，生成自增的唯一 callbackID，并与 widgetID 组合拼接成 widgetID/callbackID，作为事件的唯一标识。用户点击界面某个 button 时，事件由 Flutter 侧传到 JS 侧，通过解析 widgetID/callbackID，找到对应 widget 的 callback，完成事件处理。

![](https://user-gold-cdn.xitu.io/2019/6/25/16b8cec33b003aae?w=2099&h=1080&f=jpeg&s=277873)


### MXFlutter 高效的动态列表

通过在 JS 侧，ListView 调用 Build 方法时，提前展开 child, 并为 ListView 增加 children 成员变量。此时，因为仅有数据配置，不会有多余的 Layout 过程，所以速度是非常快的。

```
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

在 Flutter 侧，ListView 仍然是动态创建，滑动列表，MXFlutter Engine 根据 Children 数组里的配置数据,创建真正的 Flutter WidgetCell，效率与原生相同完全一致。

```
ListView.builder(
    itemCount: children.length,
    itemBuilder: (context, index) {
        return UIEngine.toWidget(children[index]);
    },
)
```

![](https://user-gold-cdn.xitu.io/2019/6/25/16b8cec2d533b9e0?w=420&h=835&f=jpeg&s=70936)

### MXFlutter 动画的方案
动画参数在VM层配置一次，动画开始后在Flutter层闭环循环rebuild,形成动画效果，这个是比较通用的做法了。

![](https://user-gold-cdn.xitu.io/2019/6/25/16b8cec340511d89?w=2110&h=1080&f=jpeg&s=261800)

## 0x03 渲染优化

不管JSWidget创建有多快，总是有跨语言执行，所以减少Build次数和减小Build出来的DSL UI描述大小，可以优化性能。

### 渲染优化1-局部刷新：配置树Diff

#### 一个事实
自动对比两次Widget 无论如何都没有直接创建一个新的快，如果开发者不参与，由框架来自动计算Diff是得不偿失的
#### 可行的方法
牺牲响应式UI框架的设计模式
采用和Native、Web的方式，由开发者参与自己设置Diff的节点，即根据ID获取对应Widget，修改Widget参数，Rebuild生成新DSL

### 渲染优化2-局部刷新-嵌套节点

* MXScriptWidget 是一个具备Build WidgetTree，缓存Callback映射表，动画支持的基本单位。可以作为普通FlutterWidget来使用。
* 在Flutter层，如果Widget树中节点有MXScriptWidget，则在对应节点上创建MXFlutterWidget自定义控件
* 两个子树可以相互对应获得局部刷新，callback回调，动画支持，Rebuild时所生产的UI DSL 大大减少，加快刷新速率

![](https://user-gold-cdn.xitu.io/2019/6/25/16b8cec34356d9b8?w=1606&h=1080&f=jpeg&s=193244)


### 渲染优化3-可以分离动态和静态控件

MXStatelessWidget 可以通过使用无状态的ScriptWidget来向框架标示，其下面的子树，在每次build中不会变化，其build结果会被缓存，下次在Flutter层直接复用

![](https://user-gold-cdn.xitu.io/2019/6/25/16b8cec340afef1c?w=1913&h=1080&f=jpeg&s=240105)

### 内存-跨层镜像对象的生命周期

VM层，Flutter层，Native层镜像对象的生命周期如何控制？
参考苹果 iOS JavaScriptCore 和 Objective-C的解决方法

1. 以Flutter层的对象生命周期为主
2. 在VM层增加WeakMap支持，不增加对象引用计数，Flutter层释放之后，释放VM层对象
3. 在Native层使用 JSManagerValue，VM层对象释放后，Native的引用被自动置空

![](https://user-gold-cdn.xitu.io/2019/6/25/16b8cec3469607b3?w=1596&h=826&f=jpeg&s=142557)

### 线程问题

参照业界RN等框架的设计，VM层跑在一个单独的后台线程
1. 从Flutter层通过Native通道调用到VM，发生两次线程切换
2. Flutter UI层和MXScript层是异步调用，限制动态控件的架构设计

一个可行方案
修改FlutterEngine ，定制开发Dart->Native->VM 这个通道，调用到VM不切换线程
VM不新建线程，直接由Flutter UI Thread 消息循环驱动，这样也同时支持了和Flutter UI 层的高效同步调用，但要注意从Native调用到VM，需要通过定制FlutterEngine的接口。

## 0x04 让开发者写出优雅的代码

让开发者写出优雅的代码,咳咳，这里有点吹了，总之，我们想让使用MXFlutter的开发同学写出来的代码看来正规一些，好看一些。

* 完美支持Dart Flutter语法
* 定义所有Flutter 中同名Widget类，构建Widget的参数类，支持相同的Build方式，SetState触发刷新，事件响应函数
* Callback函数自动生成CallbackID
* Callback函数自动This绑定
* ListView 像Dart层一样开发，支持itemBuilder回调函数

参考JS示例源码 
[TGIF-iMatrix home_page.js](https://github.com/TGIF-iMatrix/MXFlutter/blob/master/js_flutter_src/app_test/home_page.js)


## 0x05 MXFlutter 基础建设

因为 JavaScript 不支持模块化开发，不能引用其他文件代码，我们参照 RN，使用 Node.js 的模块化代码，在Native 层支持 require 语法。开发时，IDE最好选用 VSCode，因为可以按装JS插件，直接运行调试JS

另外，我们通过重定向模拟器 JS 路径文件到开发机，用户修改完 JS 文件，便可直接看到相应修改，实现模拟器的页面热更新。


## 结语
由于时间紧张，MXFlutter还有很多遗留的问题，作为一个技术探索，非常辛苦但非常有趣，期待各位大牛指导，期待小伙伴们提出问题一起讨论解决。

要了解全部，一定要拉下源码，运行起来看看，有问题可以留言一讨论，MXFlutter会持续更新。

项目成员luca浪哥，nice，yockie帅哥贡献了动画，控件，示例APP等核心实现， chaodong老师负责了DartVM方案，IP老师帮忙提供了单元测试。 

TGIF-iMatrix  是一个技术氛围浓厚，有美女有帅哥有趣有爱的团队，还有精通量子计算，5G等前沿技术的数据分析victor老王，欢迎iOS，Android开发小伙伴，数据开发，数据分析岗位同学投递简历哦：imatrixteam@qq.com



另外做个小广告，大家轻拍， 看点视频-腾讯短视频，年轻人都爱看
[看点视频](https://kandian.qq.com/mqq/kdapp/html/videoShare.html?_wv=1&x5PreFetch=1&rowkey=2085cdfbb05789bp)
https://apps.apple.com/cn/app/id1458686461

![](https://user-gold-cdn.xitu.io/2019/6/25/16b8d05b881bfd14?w=1390&h=506&f=png&s=173235)



