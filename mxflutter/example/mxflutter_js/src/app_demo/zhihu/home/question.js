

//question.js 正式开始，😝

let {
  runApp,
  MXJSFlutterApp
} = require("js_flutter.js");

class Question {
    constructor(
        order,
        title,
        hotNum,
        imgUrl,
        {mark,
        rise}= {}
    ) {
        this.order = order;
        this.title = title;
        this.hotNum = hotNum;
        this.imgUrl = imgUrl;
        this.mark = mark;
        this.rise = rise;
    }
}

let questionList = [
    new Question("01", "了不起的新时代，世界竞争中的中国制造", "4427 万热度", "https://pic2.zhimg.com/50/v2-710b7a6fea12a7203945b666790b7181_hd.jpg"),
    new Question("02", "一个女生怎样才算见过世面？", "4157 万热度", "https://pic3.zhimg.com/50/v2-56dca99cd8718f9303d43b3015342ba7_hd.jpg", {rise: "3", mark: "所谓世面，就是世界的每一面"}),
    new Question("03", "如果朱标没死，削藩的话，朱棣会造反吗？", "4009 万热度", "https://pic4.zhimg.com/v2-095d2b48970889b108247e6d2dd0fa6b_b.jpg"),
    new Question("04", "如何编译 Linux 内核？", "3110 万热度", "https://pic3.zhimg.com/80/v2-1ea1b0cf80c85b88893b2b97a94d7e71_hd.jpg", {mark: "内核？呵呵"}),
    new Question("05", "如何看待将神话故事拍成电影这件事？", "2119 万热度", "https://pic4.zhimg.com/50/v2-267b1dda62f770bd2bd13cb545117b78_hd.jpg", {rise: "3"})
];

module.exports = { Question, questionList };
