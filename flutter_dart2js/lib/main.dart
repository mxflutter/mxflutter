import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  Future runiOSMethod() async {
    const platform = const MethodChannel('flutter.js.channel');
    platform.setMethodCallHandler((MethodCall call) async {
      print(call.arguments);
    });

    var result;
    try {
      result = await platform.invokeMethod('call_native');
      print(result);
      return Future.value(result);
    } on PlatformException catch (e) {
      return Future.error(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    runiOSMethod();
    
    return Center(
        child: (
          Text("Hello World!", textDirection: TextDirection.ltr)
        ),
      );
  }
}