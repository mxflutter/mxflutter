因为flutter master channel和stable channel有很多不兼容
如果从master channel切换到stable channel 之后 iOS运行报错，拷贝 Runner.xcodeproj ，替换原ios文件夹中的工程文件，再尝试运行
如果从stable channel 切换到 master channel之后 一般运行不会报错，再次切换回stable channel 后，注意用上一条的方法，解决错误。