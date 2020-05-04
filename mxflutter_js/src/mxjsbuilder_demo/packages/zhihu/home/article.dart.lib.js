'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const _interceptors = dart_sdk._interceptors;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
var article = Object.create(dart.library);
var JSArrayOfArticle = () => (JSArrayOfArticle = dart.constFn(_interceptors.JSArray$(article.Article)))();
const CT = Object.create(null);
var L0 = "package:zhihu/home/article.dart";
var headUrl$ = dart.privateName(article, "Article.headUrl");
var user$ = dart.privateName(article, "Article.user");
var action$ = dart.privateName(article, "Article.action");
var time$ = dart.privateName(article, "Article.time");
var title$ = dart.privateName(article, "Article.title");
var mark$ = dart.privateName(article, "Article.mark");
var imgUrl$ = dart.privateName(article, "Article.imgUrl");
var agreeNum$ = dart.privateName(article, "Article.agreeNum");
var commentNum$ = dart.privateName(article, "Article.commentNum");
article.Article = class Article extends core.Object {
  get headUrl() {
    return this[headUrl$];
  }
  set headUrl(value) {
    this[headUrl$] = value;
  }
  get user() {
    return this[user$];
  }
  set user(value) {
    this[user$] = value;
  }
  get action() {
    return this[action$];
  }
  set action(value) {
    this[action$] = value;
  }
  get time() {
    return this[time$];
  }
  set time(value) {
    this[time$] = value;
  }
  get title() {
    return this[title$];
  }
  set title(value) {
    this[title$] = value;
  }
  get mark() {
    return this[mark$];
  }
  set mark(value) {
    this[mark$] = value;
  }
  get imgUrl() {
    return this[imgUrl$];
  }
  set imgUrl(value) {
    this[imgUrl$] = value;
  }
  get agreeNum() {
    return this[agreeNum$];
  }
  set agreeNum(value) {
    this[agreeNum$] = value;
  }
  get commentNum() {
    return this[commentNum$];
  }
  set commentNum(value) {
    this[commentNum$] = value;
  }
};
(article.Article.new = function(headUrl, user, action, time, title, mark, agreeNum, commentNum, opts) {
  let imgUrl = opts && 'imgUrl' in opts ? opts.imgUrl : null;
  this[headUrl$] = headUrl;
  this[user$] = user;
  this[action$] = action;
  this[time$] = time;
  this[title$] = title;
  this[mark$] = mark;
  this[agreeNum$] = agreeNum;
  this[commentNum$] = commentNum;
  this[imgUrl$] = imgUrl;
  ;
}).prototype = article.Article.prototype;
dart.addTypeTests(article.Article);
dart.addTypeCaches(article.Article);
dart.setLibraryUri(article.Article, L0);
dart.setFieldSignature(article.Article, () => ({
  __proto__: dart.getFields(article.Article.__proto__),
  headUrl: dart.fieldType(core.String),
  user: dart.fieldType(core.String),
  action: dart.fieldType(core.String),
  time: dart.fieldType(core.String),
  title: dart.fieldType(core.String),
  mark: dart.fieldType(core.String),
  imgUrl: dart.fieldType(core.String),
  agreeNum: dart.fieldType(core.int),
  commentNum: dart.fieldType(core.int)
}));
dart.defineLazy(article, {
  /*article.articleList*/get articleList() {
    return JSArrayOfArticle().of([new article.Article.new("https://pic3.zhimg.com/50/2b8be8010409012e7cdd764e1befc4d1_s.jpg", "learner", "赞同了回答", "2小时前", "在三体中，罗辑为什么会把控制权交给程心，难道他没有推测过后果吗？", "因为罗辑遵守了人类伦理。这个伦理大概就叫民主。 大刘其实是个典型的精英主义者，在他笔下...", 32, 10, {imgUrl: "https://pic2.zhimg.com/50/v2-710b7a6fea12a7203945b666790b7181_hd.jpg"}), new article.Article.new("https://pic4.zhimg.com/50/v2-9a3cb5d5ee4339b8cf4470ece18d404f_s.jpg", "learner", "回答了问题", "5小时前", "我的手机系统是安卓。无意间发现自己的屏幕被人监控，请问怎样才能彻底摆脱被监控的处境呢？", "检查一下你手机里是不是被人装了什么软件，把你不认识的非系统软件删掉。不会删就去找手机店里的小哥，为什么这么多人...", 38, 13), new article.Article.new("https://pic3.zhimg.com/50/v2-8943c20cecab028e19644cccf0f3a38b_s.jpg", "learner", "回答了问题", "7小时前", "如何评价2018年安徽省程序设计竞赛？", "带着政治任务和压力去打了比赛，所幸最后被高中生抬了一手。榜可以见另外某回答。大概经历就是前...", 38, 13, {imgUrl: "https://pic4.zhimg.com/v2-a7493d69f0d8f849c6345f8f693454f3_200x112.jpg"}), new article.Article.new("https://pic3.zhimg.com/50/v2-8943c20cecab028e19644cccf0f3a38b_s.jpg", "learner", "回答了问题", "7小时前", "极致的文明是什么样的？会真的像黑暗森林法则一样对其他低等生物进行屠杀吗？", "最喜欢的人物是章北海和维德但最喜欢的情节却是这一段，地球上的人承诺给他们鲜花和荣誉...", 38, 13, {imgUrl: "https://pic3.zhimg.com/v2-b67be50be51e2e6d6112a64528683b09_b.jpg"})]);
  },
  set articleList(_) {}
}, true);
// Exports:
exports.home__article = article;

//# sourceMappingURL=article.dart.lib.js.map
