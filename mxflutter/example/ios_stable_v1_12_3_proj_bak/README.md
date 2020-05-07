## 运行报错
如果运行出现如下错误，可能是因为在flutter master channel运行后，再切换到stable channel 报错，或者运行flutter v1.17.0 后，又切换到低版本。


```
Failed to find assets path for "Frameworks/App.framework/flutter_assets"
[VERBOSE-2:engine.cc(127)] Engine run configuration was invalid.
[VERBOSE-2:shell.cc(437)] Could not launch engine with configuration.

```

## 解决方法

* 拷贝 ios_stable_v1_12_3_proj_bak/Runner.xcodeproj ，替换原ios文件夹中的工程文件，再尝试运行

* 如果从stable channel 切换到 master channel之后 一般运行不会报错，再次切换回stable channel 后，注意用上一条的方法，解决错误。

