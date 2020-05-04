

//global_config.js 正式开始，😝

let {
  runApp,
  MXJSFlutterApp,
  ThemeData,
  Color,
  Colors
} = require("js_flutter.js");

class GlobalConfig {
    static get themeData() {
      return new ThemeData({brightness: Brightness.light});
    } 

    static get searchBackgroundColor() {
      return new Color(0xFFEEEEEE);
    }
    
    static get cardBackgroundColor() {
      return Colors.white;
    }

    static get fontColor() {
      return new Color(0xFF444444);
    }
}

module.exports = { GlobalConfig };
