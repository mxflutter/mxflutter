# 基于JS的高性能动态化框架 MXFlutter —对 dart 的支持

MXFlutter 自去年6月份在 GitHub 开源后，得到了很多开发者的关注和肯定。同时，也收到不少建议和优化，如：JS 写法不友好，开发效率不高，Flutter 生态无法复用等问题。为此，我们进行了探索和研究，实现了编写 Dart 代码，通过 dart2js 编译器，将 Dart 编译成 JS，运行在 MXFlutter 上，最终实现 Flutter 动态化。该方案已在 [GitHub](https://github.com/TGIF-iMatrix/MXFlutter) 开源

## 对dart的支持

Flutter For Web 是 Flutter 使用标准 Web 技术，跑在浏览器上的兼容实现。它上层使用dart2js编译器，将业务代码、Flutter Framework一起编译成JS代码，通过重新实现 dart:ui 库，用针对 DOM 和 Canvas 的代码，替换移动端使用的对 Skia 引擎的绑定，使用 HTML+CSS+Cavas 完成绘制。

![](https://github.com/TGIF-lucaliu/Image/blob/master/dart2js/flutter%20for%20web.png?raw=true)

只引入dart2js编译器，将dart代码编译成js代码，运行在MXFlutter上。只要编译出的js代码能实现调用MXFlutter，就能正常跑起来了。

dart2js编译器有dart2js和dartdevc两种环境。

> dart2js：生产环境。经过minify优化，文件相对较小，但混淆后代码不可读
> dartdevc：开发环境。代码可读性较强，但文件太大，调试信息多

dart2js编译出JS代码如下

```javascript
(function dartProgram(){function copyProperties(a,b){var t=Object.keys(a)
for(var s=0;s<t.length;s++){var r=t[s]
b[r]=a[r]}}var z=function(){var t=function(){}
t.prototype={p:{}}
var s=new t()
if(!(s.__proto__&&s.__proto__.p===t.prototype.p))return false
try{if(typeof navigator!="undefined"&&typeof navigator.userAgent=="string"&&navigator.userAgent.indexOf("Chrome/")>=0)return true
if(typeof version=="function"&&version.length==0){var r=version()
if(/^\d+\.\d+\.\d+\.\d+$/.test(r))return true}}catch(q){}return false}()
function setFunctionNamesIfNecessary(a){function t(){};if(typeof t.name=="string")return
for(var t=0;t<a.length;t++){var s=a[t]
var r=Object.keys(s)
for(var q=0;q<r.length;q++){var p=r[q]
var o=s[p]
if(typeof o=='function')o.name=p}}}function inherit(a,b){a.prototype.constructor=a
a.prototype["$i"+a.name]=a
```

dartdevc编译出JS代码如下

```javascript
main.ZhiHu = class ZhiHu extends framework.StatelessWidget {
    build(context) {
      return new app.MaterialApp.new({title: "知乎-高仿版", home: new index.Index.new({$creationLocationd_0dea112b090073317d4: C0 || CT.C0}), $creationLocationd_0dea112b090073317d4: C2 || CT.C2});
    }
  };
  (main.ZhiHu.new = function(opts) {
    let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
    main.ZhiHu.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
    ;
  }).prototype = main.ZhiHu.prototype;
  dart.addTypeTests(main.ZhiHu);
  dart.addTypeCaches(main.ZhiHu);
  dart.setMethodSignature(main.ZhiHu, () => ({
    __proto__: dart.getMethods(main.ZhiHu.__proto__),
    build: dart.fnType(framework.Widget, [framework.BuildContext])
  }));
  dart.setLibraryUri(main.ZhiHu, L0);
  var C6;
  main.main = function main$() {
    return binding.runApp(new main.ZhiHu.new({$creationLocationd_0dea112b090073317d4: C6 || CT.C6}));
  };
```

考虑到开发过程的代码可读性及调试，先考虑用dartdevc接入，并在适配完成和稳定后，再接入dart2js

接入dartdevc，需解决下面两个难点，接下来一一详述
> 编译器的抽取
> MXFlutter的适配

#### 一、dart2js编译器的抽取

#### 二、MXFlutter的适配

MXFlutter适配，主要包括几部分
> 编译出的Widget如何与MXFlutter对应
> Channel 的支持
> dart_sdk太大及过多调试信息

**1、编译出的Widget如何与MXFlutter对应**

在桥接类中，创建相关空类，通过引用 MXFlutter 的 Framework 文件，声明 dartdevc 中 使用的widget。

![](https://github.com/TGIF-lucaliu/Image/blob/master/dart2js/%E6%A1%A5%E6%8E%A5%E7%B1%BB.png?raw=true)

编译出来的业务代码，文件引用如下

```javascript
const packages__flutter__src__widgets__widget_span$46dart = require('packages/flutter/src/widgets/widget_span.dart');
const container = packages__flutter__src__widgets__widget_span$46dart.src__widgets__container;
const basic = packages__flutter__src__widgets__widget_span$46dart.src__widgets__basic;
const navigator = packages__flutter__src__widgets__widget_span$46dart.src__widgets__navigator;
const text = packages__flutter__src__widgets__widget_span$46dart.src__widgets__text;
const packages__flutter__src__material__icon_button$46dart = require('packages/flutter/src/material/icon_button.dart');
const flat_button = packages__flutter__src__material__icon_button$46dart.src__material__flat_button;
const scaffold = packages__flutter__src__material__icon_button$46dart.src__material__scaffold;
const app_bar = packages__flutter__src__material__icon_button$46dart.src__material__app_bar;
const tabs = packages__flutter__src__material__icon_button$46dart.src__material__tabs;
const packages__flutter__src__material__page$46dart = require('packages/flutter/src/material/page.dart');
const page = packages__flutter__src__material__page$46dart.src__material__page;
const packages__zhihu__home__search_page$46dart = require('packages/zhihu/home/search_page.dart');
const search_page = packages__zhihu__home__search_page$46dart.home__search_page;
```

桥接类代码如下

```javascript
let src__widgets__container = Object.create(null);
src__widgets__container.DecoratedBox  = layoutExports.DecoratedBox;
src__widgets__container.Container  = layoutExports.Container;
exports.src__widgets__container = src__widgets__container;
let src__widgets__navigator = Object.create(null);
src__widgets__navigator.Navigator = materialExports.Navigator;
src__widgets__navigator.RouteSettings = materialExports.RouteSettings;
exports.src__widgets__navigator = src__widgets__navigator;
let src__widgets__basic = Object.create(null);
src__widgets__basic.Center = layoutExports.Center;
src__widgets__basic.Column = layoutExports.Column;
src__widgets__basic.Padding = layoutExports.Padding;
src__widgets__basic.Align = layoutExports.Align;
exports.src__widgets__basic = src__widgets__basic;
let src__material__scaffold = Object.create(null);
src__material__scaffold.Scaffold = materialExports.Scaffold;
src__material__scaffold.ScaffoldState = materialExports.ScaffoldState;
exports.src__material__scaffold = src__material__scaffold;
```


按照 dart2js 的路径引用，重新整理 lib 库，按照对应路径放置，并优化 JS 文件的重复引用

![](https://github.com/TGIF-lucaliu/Image/blob/master/dart2js/%E7%9B%AE%E5%BD%95%E8%B0%83%E6%95%B4.png?raw=true)

MXFlutter Framework中，也要做相应的方法修改。

* 增加 Objec.new = {} 方法
* 增加 class.fuction() = {} 静态方法
* 支持以 index 和 name 定义的枚举。如:

```dart
MainAxisAlignment = {
    start: { _name: "MainAxisAlignment.start", index: 0 },
    end: { _name: "MainAxisAlignment.end", index: 1 },
    center: { _name: "MainAxisAlignment.center", index: 2 },
    spaceBetween: { _name: "MainAxisAlignment.spaceBetween", index: 3 },
    spaceAround: { _name: "MainAxisAlignment.spaceAround", index: 4 },
    spaceEvenly: { _name: "MainAxisAlignment.spaceEvenly", index: 5 }
};
```

**2、Channel的支持**

对于 Channel，我们在 JS 侧定义同名镜像类，通过 JS 绑定，native 引擎 hook Flutter 的 Method/Event Channel 的注册方法，注册 JS 回调，实现直接从 Native 回调 JS。

![](https://github.com/TGIF-lucaliu/Image/blob/master/dart2js/channel.png?raw=true)

**3、dart_sdk太大及过多调试信息**

dart_sdk 精简包括：

* 删除 web_sql、web_gl 以及 html 等在web上使用的类
* 保留 dart_sdk 必须的库，如dart_sdk.ui、dart_sdk.core、 dart_sdk.io 等

dartdevc 精简包括：

* 删除无用调试信息，例如widget_inspector、 _Location_line
* 删除编译 Flutter Framework 库生成的 JS 文件，如 action.js，material.js

通过一系列精简，可以看到业务代码可以减少86%，dart_sdk 大小减少了73%

![](https://github.com/TGIF-lucaliu/Image/blob/master/dart2js/%E7%B2%BE%E7%AE%80%E6%95%88%E6%9E%9C1-3.png?raw=true)




![](https://github.com/TGIF-lucaliu/Image/blob/master/dart2js/%E7%B2%BE%E7%AE%80%E6%95%88%E6%9E%9C1-4.png?raw=true)

## 第三方插件

第三方插件，我们可以分为常用插件、简单插件及自定义插件

* 常用插件。我们在框架内已经集成，开发者直接使用。如 pull_to_refresh、cached_network_image等
* 简单插件。通过 native 或 js 等现有框架，无需 Flutter 就能实现的插件，重新封装，简化通信流程。如：dio、storage等插件
* 自定义插件。MXFlutter 也支持用户将自定义插件作为一个普通 widget，按照指定方式接入框架，拓展 MXFlutter 生态


## 示例


## 许可协议

MXFlutter遵循[MIT](http://opensource.org/licenses/MIT)开源许可证协议。

## 参与贡献

如果你有好的意见或建议，欢迎给我们提 Issues 或 Pull Requests。

## 参考文献

[Flutter 和 Web 生态如何对接？](https://mp.weixin.qq.com/s/C1VLXVNK9-fjrmsoQk7nig)

## QQ群

对MXFlutter感兴趣的小伙伴，可以加QQ群交流，QQ群: 747535761。

![qrcode](https://github.com/langbluesky/Image/blob/master/qrcode.png?raw=true)




