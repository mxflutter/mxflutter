# 基于JS的高性能动态化框架MXFlutter-对dart的支持

Flutter 以其高性能、快速交付、流畅快速体验等特点，近两年已发展成为最流行的跨平台框架，得到了越来越多的应用。各个公司也在 Flutter 体系方面做了一系列尝试，如标准化、自动化、容器化、动态化等，并取得了不错的效果。Flutter 动态化是我们重点关注的部分。

## Flutter动态化现状

Flutter 在发布时使用了 AOT 编译，以本地机器码的方式，一起打包进 APP 中。iOS 平台因为系统的限制，不支持动态更新，而 Android 平台可以通过下发 libapp.so，替换本地资源，实现动态更新。

Flutter动态化有三个方向：JS对接、JS魔改、C++魔改


考虑到开发时间和可行性，并结合团队现状，MXFlutter 采用了JS对接的方式。


## MXFlutter框架

Flutter的三棵树我们是比较熟悉的。Widget树存放渲染内容、视图布局等信息，重新创建的开销小。Element树存放上下文，通过 Element 遍历视图树，Element 同时持有 Widget 和 RenderObject。
RenderObject树根据 Widget 的布局属性进行布局，绘制 Widget 传入的内容。它的创建是非常昂贵的。

图 widget树

我们在JS侧复制了一棵和Widget树一样的树，作为虚拟Dom树，来描述我们的页面。每个 widget 通过唯一的 widgetID 对应，callback 也通过 callbackID 来实现对应。

图 四棵树

整体架构图如下。更多框架细节在 [基于JavaScript的Flutter框架详细介绍](https://juejin.im/post/5d11a4f06fb9a07ec63b21ea)。

## 现有问题

MXFlutter自去年6月份在github开源后，得到了很多开发者的关注和肯定，同时，也收到很多开发者对MXFlutter的建议和优化，如：JS写法不友好，开发效率不高，Flutter生态无法复用等问题。如果采用Dart作为上层语言，上述问题也可以迎刃而解，因此我们开始预研MXFlutter对Dart的支持

目前现有问题截图

## 对dart的支持

Flutter For Web 是 Flutter 使用标准 Web 技术，跑在浏览器上的兼容实现。它上层使用dart2js编译器，将业务代码、Flutter Framework一起编译成JS代码，通过重新实现 dart:ui 库，用针对 DOM 和 Canvas 的代码，替换移动端使用的对 Skia 引擎的绑定，使用 HTML+CSS+Cavas 完成绘制。


### 方案一

修改dart:ui库和Flutter Engine，将Browser引擎替换回移动端使用的Skia引擎，这样既可以实现动态更新，也能保证性能。

替换Browser的图片

顺着这个思路，我们初步尝试了下，单单dart:ui的接口就需要改动近200个，工作量很大。另外，Flutter Engine部分也要一并修改定制。这对后续更新升级也有影响。因此，该方法没有继续研究下去。

### 方案二

只引入dart2js编译器，将dart代码编译成js代码，运行在MXFlutter上。只要编译出的js代码能实现调用MXFlutter，就能正常跑起来了。

## 第三方库

## 许可协议

MXFlutter遵循[MIT](http://opensource.org/licenses/MIT)开源许可证协议。

## 参与贡献

如果你有好的意见或建议，欢迎给我们提 Issues 或 Pull Requests。

## 参考文献

[Flutter 和 Web 生态如何对接？](https://mp.weixin.qq.com/s/C1VLXVNK9-fjrmsoQk7nig)

## QQ群

对MXFlutter感兴趣的小伙伴，可以加QQ群交流，QQ群: 747535761。

![qrcode](https://github.com/langbluesky/Image/blob/master/qrcode.png?raw=true)




