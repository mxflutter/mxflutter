import 'mx_flutter.dart';

class MXHandler{

  static MXHandler _instance;
  static MXHandler getInstance() {
    if (_instance == null) {
      _instance = MXHandler();
    }
    return _instance;
  }

  /// 定制loadingWidget 和 errorWidget
  MXWidgetBuildHandler loadingHandler;
  MXWidgetBuildHandler errorHandler;

  /// 设置一个处理器，当JS页面加载时，定制Loading widget
  setJSWidgetLoadingHandler(MXWidgetBuildHandler handler) {
    loadingHandler = handler;
  }

  setJSWidgetBuildErrorHandler(MXWidgetBuildHandler handler) {
    errorHandler = handler;
  }

}