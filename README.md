# MXFlutter Beta

[中文版文档](README.md)|[English Document](Documentation/README-EN.md)

----

## 新版本

### 【*NEW】MXFlutter Beta (0.1.2) Version   2020-04-22 

      性能和稳定性优化，0.1.2版本已在iOS线上使用，Android平台已支持。

  *   **对应Flutter (Channel stable tag:v1.12.13+hotfix.9) 和 (Channel master tag:v1.16.2)**
  *   **API变化：区分MXJSStatefulWidget、MXJSStatelessWidget**
  *   **Framework目录整理**
  *   支持Packages
      1.   dio
      2.   pull_to_refresh
      3.   cached_network_image
      4.   shared_preferences
  *   支持MessageChannel
  *   性能和稳定性优化，Bug Fix

 
``` 
运行 MXFlutter
  如果本机是 Flutter Channel stable，请更新到最新 tag:v1.12.13+hotfix.9
  如果本机是 Flutter Channel master，请更新到 tag:v1.16.2 
  如果遇到其他问题，可在QQ群（747535761）中讨论。
```

----

预告：（0.2.0）版本预计5月11日发布

----

*  [一、项目介绍](#title1)
*  [二、项目特性](#title2)
*  [三、核心思想](#title3)
*  [四、项目架构](#title4)
    * [1.VM层](#title4_1)
    * [2.Flutter层](#title4_2)
    * [3.Native层](#title4_3)
*  [五、MXFlutter基本使用](#title5)
    * [1.Flutter侧，创建并启动MXJSFlutterApp](#title5_1)
    * [2.JS侧，编写MXJSWidget页面](#title5_2)
    * [3.Flutter侧，进入MXJSWidget页面](#title5_3)
*  [六、项目效果UI展示](#title6)
*  [七、许可协议](#title7)
*  [八、参与贡献](#title8)
*  [九、团队介绍](#title9)
*  [十、联系我们](#title10)

----

##  <a name="title1">一、项目介绍</a>

MXFlutter是一套基于JavaScript的Flutter框架，它用极类似Dart的开发方式，通过编写JavaScript代码，来开发Flutter应用。更多细节在 [基于JavaScript的Flutter框架详细介绍](Documentation/基于JS的高性能动态化框架详细介绍.md)。

----

## <a name="title2">二、项目特性</a>

* 支持Dart Flutter语法
* 支持定义Flutter中同名Widget类
* 支持定义相同的Build方式，SetState刷新及事件响应方法
* 支持js模块化开发
* 支持VS Code直接调试
* 支持模拟器页面热更新

----

## <a name="title3">三、核心思想</a>

把 Flutter 的渲染逻辑中的三棵树（即：WidgetTree、Element、RenderObject ）中的第一棵（即：WidgetTree），放到 JavaScript 中生成。用 JavaScript 完整实现了 Flutter 控件层封装，可以使用 JavaScript，用极其类似 Dart 的开发方式，开发Flutter应用，利用JavaScript版的轻量级Flutter Runtime，生成UI描述，传递给Dart层的UI引擎，UI引擎把UI描述生产真正的 Flutter 控件。所以，它在iOS上是完全动态化的。

关于MXFlutter动态化框架渲染、优化等更多详细细节介绍，请看文档：[基于JavaScript的Flutter框架详细介绍](Documentation/基于JS的高性能动态化框架详细介绍.md)。

----

## <a name="title4">四、项目结构</a>

MXFlutter，就是用JavaScript，以Flutter的写法开发Flutter。具体的项目结构分为三层，请看下图：

![](https://github.com/TGIF-lucaliu/Image/blob/master/16b8cec2d34ded87.jpeg?raw=true)

#### <a name="title4_1">1.VM层：</a>

* MXFlutter Runtime
* 定义和Flutter Widget同名镜像类
* 响应式UI框架

#### <a name="title4_2">2.Flutter层：</a>

* Script脚本管理模块
* DSL2Widget UIEngine，事件支持
* Dart业务API支持
* 内存管理，对象生命周期管理

#### <a name="title4_3">3.Native层：</a>

* VM虚拟机
* 线程管理
* Native业务API支持

----

## <a name="title5">五、MXFlutter基本使用</a>

#### <a name="title5_1">1. Flutter侧，创建并启动MXJSFlutterApp</a>

```Dart
MXJSFlutter.getInstance().setup();
MXJSFlutter.getInstance().runJSApp(jsAppName: "app_test", pageName: null);
```

#### <a name="title5_2">2. JS侧，编写MXJSWidget页面</a>

```JavaScript
class AppTest extends MXJSFlutterApp {
    constructor() {
        super("app_test", "initRouteName");
    }

    createJSWidgetWithName(pageName) {
        let w = new JSWidgetHomePage;
        return w;
    }
}

function main(pageName) {

    MXJSLog.log("main:pageName" + pageName);

    let app = new AppTest;
    runApp(app);
}
```

#### <a name="title5_3">3.Flutter侧，进入MXJSWidget页面</a>

```Dart
Navigator.push(context, MaterialPageRoute(builder: (context) => MXJSFlutter.getInstance().navigatorPushWithPageName("JSWidgetHomePage")));
```

----

## <a name="title6">六、项目效果UI展示</a>

先看看使用效果，以下截图是在MXFlutter框架下用JS开发，大家可以把上面的源码下载下来，里面有完整的JS代码示例：

> 单页面演示

下图是APP示例截图：

![](https://github.com/langbluesky/Image/blob/master/pesto_demo.jpeg?raw=true)

下面是UI截图对应的JS代码，没错，你没有眼花，这个是真的 JavaScript 代码，可以在 MXFlutter 的运行时库上渲染出 Flutter 的UI，（是不是很像Flutter里面的组件代码）！

```javascript
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
        onPressed: function () {

        },
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
          onPressed: function () {

          },
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

> 项目演示

源码中还有更丰满的示例，高仿知乎页面JSFlutter版，可以点此进入查看代码：

[zhihu/home/home_page.js](https://github.com/TGIF-iMatrix/MXFlutter/blob/master/mxflutter_js_src/mxflutter_app_demo/app_demo/zhihu/home/home_page.js)

下图是对应的UI，已经接近在线上版直接使用了：

![](https://github.com/langbluesky/Image/blob/master/demo_0.gif?raw=true)

本项目里面高仿知乎页面示例借鉴了 [zhihu-flutter](https://github.com/HackSoul/zhihu-flutter) 的示例代码，在此，鸣谢作者 [HackSoul](https://github.com/HackSoul)。

----

## <a name="title7">七、许可协议</a>

MXFlutter遵循[MIT](http://opensource.org/licenses/MIT)开源许可证协议。

----

## <a name="title8">八、参与贡献</a>

MXFlutter还需要很多工作去完善功能，修改BUG，建设配套设施，如果大家有兴趣，欢迎加入一起开发。
如果你有好的意见或建议，也欢迎给我们提 `Issues` 或 `Pull Requests`。

特别感谢以下开发者的贡献

![](https://avatars1.githubusercontent.com/u/1397062?s=60&v=4) [colin3dmax](https://github.com/colin3dmax)
 
![](https://avatars1.githubusercontent.com/u/14990734?s=60&v=4) [yuxizhe](https://github.com/yuxizhe)
 
![](https://avatars1.githubusercontent.com/u/26341415?s=60&v=4) [Johnny](https://github.com/chenzhengxu)
 
[AiNiBaBa](https://github.com/AiNiBaBa)
 
----

## <a name="title9">九、团队介绍</a>

> 成员

项目成员luca浪哥，nice，yockie帅哥贡献了动画，控件，示例APP等核心实现， chaodong老师负责了DartVM方案，wenn和不咸同学负责了Android平台的实现，IP老师提供了单元测试，健身大神yofer老师负责了代码维护，工具建设。 

> 项目由来

18年10月份，团队开始引入 Flutter，Flutter 功能强大，开发快捷，但不能像ReactNative一样使用JavaScript语言开发，为了扩展Flutter的开发者阵营，所以启动了这个技术探索项目。

> 现状

要实现JS开发Flutter是一个很大的工程，团队成员平时工作也非常繁忙，只能业余时间投入，所以人力情况非常紧张，如果大家有兴趣，期待小伙伴们一起加入，共同建设 MXFlutter ，各自为战，不如一起做一个完善的。

由于项目代码量大，时间紧张，MXFlutter还有很多遗留的问题，作为一个技术探索，非常辛苦但非常有趣，期待各位大牛指导，期待小伙伴们提出问题一起讨论解决。

要了解全部，一定要拉下源码，运行起来看看，有问题可以留言一讨论，MXFlutter会持续更新。

----

## <a name="title10">十、联系我们</a>

`iMatrix Team` 是一个技术氛围浓厚，有美女有帅哥有趣有爱的团队，欢迎终端，后台，前端同学投递简历哦：imatrixteam@qq.com

对MXFlutter有兴趣的小伙伴，可以加群交流 QQ群:747535761

![qrcode](https://github.com/langbluesky/Image/blob/master/qrcode.png?raw=true)






