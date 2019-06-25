//VSCode Run support=====================================================================================
//为便于在JS IDE如VSCode，webStorm里脱离APP环境执行JS，以快速验证JS代码正确性
//用g_isNativeEnvironment检查是否在App环境，
//如果不在App环境，Native接口重定向到JS同名函数打印调用
//jsFlutterRequire 转调Node运行环境中的require
//如果不能运行，核对下js_ide_node_run_support.js文件中jsFlutterLibDir 相对路径
//新建文件拷贝这个头
let g_isNativeEnvironment = typeof JSAPI_require != "undefined" ? true : false;
function jsFlutterRequire(file) {
  if (!g_isNativeEnvironment) {
    console.log("[JS]-MXJSFlutter:: jsFlutterRequire", ...arguments);
    let { calcJSFrameworkFilePath } = require("./js_ide_node_run_support.js");
    return require(calcJSFrameworkFilePath(file));
  }
    return mxRequire(file);
}
//VSCode Run support end ================================================================================

//article.js 正式开始，😝

let {
  runApp,
  MXJSFlutterApp,
} = jsFlutterRequire("js_flutter_ui.js");

class Article {
    constructor(
        headUrl,
        user,
        action,
        time,
        title,
        mark,
        agreeNum,
        commentNum, 
        {
        imgUrl
        } = {}) {
        this.headUrl = headUrl;
        this.user = user;
        this.action = action;
        this.time = time;
        this.title = title;
        this.mark = mark;
        this.agreeNum = agreeNum;
        this.commentNum = commentNum;
        this.imgUrl = imgUrl;
    }
}

let articleList = [
    new Article(
        "https://pic3.zhimg.com/50/2b8be8010409012e7cdd764e1befc4d1_s.jpg",
        "learner",
        "赞同了回答",
        "2小时前",
        "在三体中，罗辑为什么会把控制权交给程心，难道他没有推测过后果吗？",
        "因为罗辑遵守了人类伦理。这个伦理大概就叫民主。 大刘其实是个典型的精英主义者，在他笔下...",
        32, 
        10,
        {imgUrl: "https://pic2.zhimg.com/50/v2-710b7a6fea12a7203945b666790b7181_hd.jpg"},
    ),
    new Article(
      "https://pic4.zhimg.com/50/v2-9a3cb5d5ee4339b8cf4470ece18d404f_s.jpg",
      "learner",
      "回答了问题",
      "5小时前",
      "我的手机系统是安卓。无意间发现自己的屏幕被人监控，请问怎样才能彻底摆脱被监控的处境呢？",
      "检查一下你手机里是不是被人装了什么软件，把你不认识的非系统软件删掉。不会删就去找手机店里的小哥，为什么这么多人...",
      38, 
      13,
    ),
    new Article(
        "https://pic3.zhimg.com/50/v2-8943c20cecab028e19644cccf0f3a38b_s.jpg",
        "learner",
        "回答了问题",
        "7小时前",
        "如何评价2018年安徽省程序设计竞赛？",
        "带着政治任务和压力去打了比赛，所幸最后被高中生抬了一手。榜可以见另外某回答。大概经历就是前...",
        38, 
        13,
        {imgUrl: "https://pic4.zhimg.com/v2-a7493d69f0d8f849c6345f8f693454f3_200x112.jpg"},
    ),
    new Article(
        "https://pic3.zhimg.com/50/v2-8943c20cecab028e19644cccf0f3a38b_s.jpg",
        "learner",
        "回答了问题",
        "7小时前",
        "极致的文明是什么样的？会真的像黑暗森林法则一样对其他低等生物进行屠杀吗？",
        "最喜欢的人物是章北海和维德但最喜欢的情节却是这一段，地球上的人承诺给他们鲜花和荣誉...",
        38,
        13,
        {imgUrl: "https://pic3.zhimg.com/v2-b67be50be51e2e6d6112a64528683b09_b.jpg"},
    )
  ];

module.exports = { Article, articleList };


//测试代码，修改Widget name
//在VSCode 直接运行测试JS代码正确性,在app无任何效果
IDERunFileTestWidget(Article);

//拷贝一份到目标文件
function IDERunFileTestWidget(TestPage) {
    if (g_isNativeEnvironment) {
        return;
    }
    class AppTest extends MXJSFlutterApp {
        constructor() {
            super("app_test", "initRouteName");
        }

        //子类重写
        //flutter->js 用于路由跳转
        //return MXJSWidget subclass
        createJSWidgetWithName(pageName) {
            let w = new TestPage;
            return w;
        }
    }

    let app = new AppTest;
    runApp(app);

    app.runWithPageName();
};