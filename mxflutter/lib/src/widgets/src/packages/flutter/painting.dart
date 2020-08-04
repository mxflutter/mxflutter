//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'src/painting/alignment.dart';
import 'src/painting/basic_types.dart';
import 'src/painting/beveled_rectangle_border.dart';
import 'src/painting/binding.dart';
import 'src/painting/border_radius.dart';
import 'src/painting/borders.dart';
import 'src/painting/box_border.dart';
import 'src/painting/box_decoration.dart';
import 'src/painting/box_fit.dart';
import 'src/painting/box_shadow.dart';
import 'src/painting/circle_border.dart';
import 'src/painting/clip.dart';
import 'src/painting/colors.dart';
import 'src/painting/continuous_rectangle_border.dart';
import 'src/painting/debug.dart';
import 'src/painting/decoration.dart';
import 'src/painting/decoration_image.dart';
import 'src/painting/edge_insets.dart';
import 'src/painting/flutter_logo.dart';
import 'src/painting/fractional_offset.dart';
import 'src/painting/geometry.dart';
import 'src/painting/gradient.dart';
import 'src/painting/image_cache.dart';
import 'src/painting/image_decoder.dart';
import 'src/painting/_network_image_web.dart';
import 'src/painting/image_resolution.dart';
import 'src/painting/image_stream.dart';
import 'src/painting/placeholder_span.dart';
import 'src/painting/matrix_utils.dart';
import 'src/painting/notched_shapes.dart';
import 'src/painting/paint_utilities.dart';
import 'src/painting/rounded_rectangle_border.dart';
import 'src/painting/shader_warm_up.dart';
import 'src/painting/shape_decoration.dart';
import 'src/painting/stadium_border.dart';
import 'src/painting/strut_style.dart';


class MXProxyPainting {
  static Map<String, MXFunctionInvoke> registerSeries() {
    Map<String, MXFunctionInvoke> m = {};
    m.addAll(MXProxyAlignment.registerSeries());
    m.addAll(MXProxyBasicTypes.registerSeries());
    m.addAll(MXProxyBeveledRectangleBorder.registerSeries());
    m.addAll(MXProxyBinding.registerSeries());
    m.addAll(MXProxyBorderRadius.registerSeries());
    m.addAll(MXProxyBorders.registerSeries());
    m.addAll(MXProxyBoxBorder.registerSeries());
    m.addAll(MXProxyBoxDecoration.registerSeries());
    m.addAll(MXProxyBoxFit.registerSeries());
    m.addAll(MXProxyBoxShadow.registerSeries());
    m.addAll(MXProxyCircleBorder.registerSeries());
    m.addAll(MXProxyClip.registerSeries());
    m.addAll(MXProxyColors.registerSeries());
    m.addAll(MXProxyContinuousRectangleBorder.registerSeries());
    m.addAll(MXProxyDebug.registerSeries());
    m.addAll(MXProxyDecoration.registerSeries());
    m.addAll(MXProxyDecorationImage.registerSeries());
    m.addAll(MXProxyEdgeInsets.registerSeries());
    m.addAll(MXProxyFlutterLogo.registerSeries());
    m.addAll(MXProxyFractionalOffset.registerSeries());
    m.addAll(MXProxyGeometry.registerSeries());
    m.addAll(MXProxyGradient.registerSeries());
    m.addAll(MXProxyImageCache.registerSeries());
    m.addAll(MXProxyImageDecoder.registerSeries());
    m.addAll(MXProxyNetworkImageWeb.registerSeries());
    m.addAll(MXProxyImageResolution.registerSeries());
    m.addAll(MXProxyImageStream.registerSeries());
    m.addAll(MXProxyPlaceholderSpan.registerSeries());
    m.addAll(MXProxyMatrixUtils.registerSeries());
    m.addAll(MXProxyNotchedShapes.registerSeries());
    m.addAll(MXProxyPaintUtilities.registerSeries());
    m.addAll(MXProxyRoundedRectangleBorder.registerSeries());
    m.addAll(MXProxyShaderWarmUp.registerSeries());
    m.addAll(MXProxyShapeDecoration.registerSeries());
    m.addAll(MXProxyStadiumBorder.registerSeries());
    m.addAll(MXProxyStrutStyle.registerSeries());
    return m;
  }
}
