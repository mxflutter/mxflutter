
import 'dart:io';
import 'package:dio/dio.dart';


void getHttp() async {
  try {
    Response response = await Dio().get("http://www.qq.com");
    print(response);
  } catch (e) {
    print(e);
  }
}

main(List<String> args) {
  getHttp();
}