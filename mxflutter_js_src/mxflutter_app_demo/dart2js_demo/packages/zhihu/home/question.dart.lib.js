'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const _interceptors = dart_sdk._interceptors;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
var question = Object.create(dart.library);
var JSArrayOfQuestion = () => (JSArrayOfQuestion = dart.constFn(_interceptors.JSArray$(question.Question)))();
const CT = Object.create(null);
var L0 = "package:zhihu/home/question.dart";
var order$ = dart.privateName(question, "Question.order");
var rise$ = dart.privateName(question, "Question.rise");
var title$ = dart.privateName(question, "Question.title");
var mark$ = dart.privateName(question, "Question.mark");
var hotNum$ = dart.privateName(question, "Question.hotNum");
var imgUrl$ = dart.privateName(question, "Question.imgUrl");
question.Question = class Question extends core.Object {
  get order() {
    return this[order$];
  }
  set order(value) {
    this[order$] = value;
  }
  get rise() {
    return this[rise$];
  }
  set rise(value) {
    this[rise$] = value;
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
  get hotNum() {
    return this[hotNum$];
  }
  set hotNum(value) {
    this[hotNum$] = value;
  }
  get imgUrl() {
    return this[imgUrl$];
  }
  set imgUrl(value) {
    this[imgUrl$] = value;
  }
};
(question.Question.new = function(order, title, hotNum, imgUrl, opts) {
  let mark = opts && 'mark' in opts ? opts.mark : null;
  let rise = opts && 'rise' in opts ? opts.rise : null;
  this[order$] = order;
  this[title$] = title;
  this[hotNum$] = hotNum;
  this[imgUrl$] = imgUrl;
  this[mark$] = mark;
  this[rise$] = rise;
  ;
}).prototype = question.Question.prototype;
dart.addTypeTests(question.Question);
dart.addTypeCaches(question.Question);
dart.setLibraryUri(question.Question, L0);
dart.setFieldSignature(question.Question, () => ({
  __proto__: dart.getFields(question.Question.__proto__),
  order: dart.fieldType(core.String),
  rise: dart.fieldType(core.String),
  title: dart.fieldType(core.String),
  mark: dart.fieldType(core.String),
  hotNum: dart.fieldType(core.String),
  imgUrl: dart.fieldType(core.String)
}));
dart.defineLazy(question, {
  /*question.questionList*/get questionList() {
    return JSArrayOfQuestion().of([new question.Question.new("01", "了不起的新时代，世界竞争中的中国制造", "4427 万热度", "https://pic2.zhimg.com/50/v2-710b7a6fea12a7203945b666790b7181_hd.jpg"), new question.Question.new("02", "一个女生怎样才算见过世面？", "4157 万热度", "https://pic3.zhimg.com/50/v2-56dca99cd8718f9303d43b3015342ba7_hd.jpg", {rise: "3", mark: "所谓世面，就是世界的每一面"}), new question.Question.new("03", "如果朱标没死，削藩的话，朱棣会造反吗？", "4009 万热度", "https://pic4.zhimg.com/v2-095d2b48970889b108247e6d2dd0fa6b_b.jpg"), new question.Question.new("04", "如何编译 Linux 内核？", "3110 万热度", "https://pic3.zhimg.com/80/v2-1ea1b0cf80c85b88893b2b97a94d7e71_hd.jpg", {mark: "内核？呵呵"}), new question.Question.new("05", "如何看待将神话故事拍成电影这件事？", "2119 万热度", "https://pic4.zhimg.com/50/v2-267b1dda62f770bd2bd13cb545117b78_hd.jpg", {rise: "3"})]);
  },
  set questionList(_) {}
}, true);
// Exports:
exports.home__question = question;

//# sourceMappingURL=question.dart.lib.js.map
