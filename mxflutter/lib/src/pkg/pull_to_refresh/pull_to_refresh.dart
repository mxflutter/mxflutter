import 'src/smart_refresher.dart';
import 'src/indicator/classic_indicator.dart';
import 'package:mxflutter/src/mirror/mx_mirror.dart';

Map<String, MXFunctionInvoke> registerPullToRefreshSeries() {
  Map<String, MXFunctionInvoke> m = {};
  m.addAll(registerSmartRefresherSeries());
  m.addAll(registerClassicIndicatorSeries());
  return m;
}
