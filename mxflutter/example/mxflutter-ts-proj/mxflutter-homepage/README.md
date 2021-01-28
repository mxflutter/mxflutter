## 开发环境准备

### 安装 vscode 插件

1. eslint
2. Prettier - Code formatter

### 配置 node 环境

为 node 环境 npm 指定公司内部仓库

```bash
npm config set registry http://r.tnpm.oa.com
```

## MXFlutter 业务接入
安装 mxflutter cli 工具，通过 create 命令根据提示创建项目模板

```bash
npm install @tencent/mxflutter-toolchain@latest -g

cd {workspace}

mxflutter create
```

### 调试阶段

mxflutter cli 工具会帮您创建好项目文件夹并安装好项目依赖，通过执行 dev 命令可以实时输出 bundle 包到您需要的位置 （ mxflutter 终端项目的 js 资源目录 ）

```bash
npm run dev

npm run build # 如只需单次构建
```
### 打包阶段

mxflutter cli 打包支持生产模式 bundle 的构建，并可以兼容低版本 jscore ( ios 9 - 10 )

```bash
npm run build:production # 正常构建

npm run build:es5 # es版本兼容构建 主要针对 ios 9 - 10
```
