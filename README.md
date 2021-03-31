![](http://pub.idqqimg.com/pc/misc/files/20210319/c54881a48c8847559bc80e1c1500dfe4.png)
----


# MXFlutter Beta 

## 公告
**MXFlutter 主库的后续更新迁移到Github Tencent帐号下继续开发迭代，v0.9.0以上版本请移步 https://github.com/tencent/mxflutter ，本代码仓库停止更新。感谢各位同学的帮助！**

---
 MXFlutter 是一套使用 TypeScript/JavaScript 来开发 Flutter 应用的框架。

框架支持两种开发方式
1. 基于 mxflutter-js 前端框架，使用  TypeScript 语言，以类似 Flutter 的 Widget 组装方式开发UI，借助前端生态的基础能力，开发App。（前端框架已开源: [github:mxflutter-js](https://github.com/mxflutter/mxflutter-js)）
2. 不改变现有 Flutter 的开发方式，使用 MXJSCompiler 把现有工程编译为JS，运行在 mxflutter 框架之上。（ MXJSCompiler JS编译工具在开源计划中 ）


可以安装 Android的包来体验  [MXFlutter_v0-9-0.apk](https://github.com/mxflutter/awesome_mxflutter/releases/download/v0.9.0/awesome-mxflutter-0-9-0.apk)。

接入的详细步骤，请参阅 [mxflutter 接入指南](Documentation/接入指南.md)

#### 版本对应关系

| [*new v0.9.0](https://github.com/tencent/mxflutter) | Flutter 1.22.3 |
| --- | --- |
| [v0.8.0](https://github.com/mxflutter/mxflutter) | Flutter 1.20.3  |

#### 相关代码库


| 代码库 | 简介 | 地址 |
| --- | --- | --- |
| mxflutter | Flutter Plugin ，使用JS Bundle 渲染页面 | https://github.com/tencent/mxflutter.git |
| mxflutter-js | TS 前端框架，支撑使用Flutter Widget 组装方式开发UI | https://github.com/mxflutter/mxflutter-js |
| mxflutter_pkg | mxflutter 第三方Package支持的示例 | https://github.com/mxflutter/mxflutter_pkg |
| awesome_mxflutter | Flutter 示例工程，演示如何运行JS Bundle | https://github.com/mxflutter/awesome_mxflutter |
| mxflutter-js-demo | JS 示例工程，演示如何使用TS开发Flutter | https://github.com/mxflutter/mxflutter-js-demo |
| mx_mirror_builder | 辅助工具，用于生成 TS 类定义和 Mirror 映射 | https://github.com/mxflutter/mx_mirror_builder |






