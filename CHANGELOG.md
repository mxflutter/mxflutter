### 【*New】0.8.0 Beta   2021-1-29 


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

#### 对v0.8.0版本的js编译器在开发中。

### 0.2.5 Beta   2020-05-18

   MXFlutter 发布 [mxjsbuilder v0.0.2](https://github.com/mxflutter/mxjsbuilder) 编译器,支持编译 Flutter 工程为 mxflutter 可运行的 JS 代码。
 
### 0.2.1 Beta   2020-05-07

 升级适配 Flutter 1.17.0 ，对应Channel stable tag:v1.17.0
  
### 0.2.0 Beta   2020-05-06

   mxflutter 重构为 Flutter 标准 package，大大简化引入流程，三步接入现有工程。

  *   库代码移动到 ./mxflutter ，接入使用 package 的标准方式
  *   接入示例 mxflutter/example，[接入指南文档](https://github.com/mxflutter/mxflutter/tree/master/mxflutter) 
  *   **对应Flutter (Channel stable tag:v1.12.13+hotfix.9) 和 (Channel master tag:v1.16.2)**
  *   支持Packages
      1.   dio
      2.   pull_to_refresh
      3.   cached_network_image
      4.   shared_preferences
  *   支持MessageChannel
  *   性能和稳定性优化，Bug Fix
  
###  0.1.2 Beta   2020-04-22

为实现两端功能一致，减少Native层工作量，确定Native层只做通道，JS能力完全由Flutter实现的技术方案。

  *   Android功能对齐iOS
  *   实现JS和Dart镜像类通用调用模块

### 0.1.1 Beta   2020-04-8

  *   增加性能测试页面
  *   Android功能完善
  *   Bug Fix
  
### 0.1.0 Beta   2020-03-30 

 性能和稳定性优化，0.1.0版本已在iOS线上使用，Android的支持在开发中。

  *   **API变化：区分MXJSStatefulWidget、MXJSStatelessWidget**
  *   **Framework目录整理**
  *   支持Packages
      1.   dio
      2.   pull_to_refresh
      3.   cached_network_image
      4.   shared_preferences
  *   支持MessageChannel
  *   性能和稳定性优化，Bug Fix


###  0.0.3 Preview   2020-02-10

  增加示例代码
  
  *   丰富Widget使用示例
  *   丰富动画使用示例
  *   Bug Fix

###  0.0.2 Preview   2019-10-19

  *   支持android版本

###  0.0.1 Preview   2019-06-25

  MXFlutter第一次发布版本
  
  * 使用JavaScript 开发Widget，响应式渲染框架
  * 知乎Demo
  * 简单Widget使用示例

