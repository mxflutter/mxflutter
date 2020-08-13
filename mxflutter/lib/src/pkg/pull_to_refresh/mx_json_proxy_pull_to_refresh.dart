import 'src/mx_json_proxy_smart_refresher.dart';
import 'src/indicator/mx_json_proxy_classic_indicator.dart';
import 'package:mxflutter/src/mirror/mx_mirror.dart';

Map<String, MXFunctionInvoke> registerPullToRefreshSeries() {
  Map<String, MXFunctionInvoke> m = {};
  m.addAll(registerSmartRefresherSeries());
  m.addAll(registerClassicIndicatorSeries());
  return m;
}
