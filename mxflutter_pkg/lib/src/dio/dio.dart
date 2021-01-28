//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/mxflutter.dart';

import './src/adapter.dart';
import './src/cancel_token.dart';
import './src/dio.dart';
import './src/dio_error.dart';
import './src/form_data.dart';
import './src/headers.dart';
import './src/interceptor.dart';
import './src/interceptors/log.dart';
import './src/multipart_file.dart';
import './src/options.dart';
import './src/redirect_record.dart';
import './src/response.dart';
import './src/transformer.dart';

Map<String, MXFunctionInvoke> registerDioLibrarySeries() {
  Map<String, MXFunctionInvoke> m = {};
  m.addAll(registerDioSeries());
  m.addAll(registerFormDataSeries());
  m.addAll(registerDioErrorSeries());
  m.addAll(registerTransformerSeries());
  m.addAll(registerInterceptorSeries());
  m.addAll(registerOptionsSeries());
  m.addAll(registerResponseSeries());
  m.addAll(registerCancelTokenSeries());
  m.addAll(registerMultipartFileSeries());
  m.addAll(registerAdapterSeries());
  m.addAll(registerHeadersSeries());
  m.addAll(registerLogSeries());
  m.addAll(registerRedirectRecordSeries());
  return m;
}
