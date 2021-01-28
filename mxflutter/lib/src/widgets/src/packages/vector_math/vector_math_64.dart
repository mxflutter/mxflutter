//  MXFlutterFramework
//  Copyright (C) 2021 THL A29 Limited, a Tencent company.  All rights reserved.
//  Use of this source code is governed by a BSD-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:vector_math/vector_math_64.dart';
import 'dart:math' as math;
import 'dart:typed_data';
import 'package:vector_math/hash.dart' as quiver;

///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerVectorMath64Series() {
  var m = <String, MXFunctionInvoke>{};
  m[_aabb2.funName] = _aabb2;
  m[_aabb2CenterAndHalfExtents.funName] = _aabb2CenterAndHalfExtents;
  m[_aabb2Copy.funName] = _aabb2Copy;
  m[_aabb2MinMax.funName] = _aabb2MinMax;
  m[_aabb2FromBuffer.funName] = _aabb2FromBuffer;
  m[_aabb3.funName] = _aabb3;
  m[_aabb3FromSphere.funName] = _aabb3FromSphere;
  m[_aabb3FromTriangle.funName] = _aabb3FromTriangle;
  m[_aabb3FromQuad.funName] = _aabb3FromQuad;
  m[_aabb3FromObb3.funName] = _aabb3FromObb3;
  m[_aabb3FromRay.funName] = _aabb3FromRay;
  m[_aabb3CenterAndHalfExtents.funName] = _aabb3CenterAndHalfExtents;
  m[_aabb3Copy.funName] = _aabb3Copy;
  m[_aabb3MinMax.funName] = _aabb3MinMax;
  m[_aabb3FromBuffer.funName] = _aabb3FromBuffer;
  m[_colorsFromRgba.funName] = _colorsFromRgba;
  m[_colorsFromHexString.funName] = _colorsFromHexString;
  m[_colorsAlphaBlend.funName] = _colorsAlphaBlend;
  m[_colorsToGrayscale.funName] = _colorsToGrayscale;
  m[_colorsLinearToGamma.funName] = _colorsLinearToGamma;
  m[_colorsGammaToLinear.funName] = _colorsGammaToLinear;
  m[_colorsRgbToHsv.funName] = _colorsRgbToHsv;
  m[_colorsHsvToRgb.funName] = _colorsHsvToRgb;
  m[_colorsRgbToHsl.funName] = _colorsRgbToHsl;
  m[_colorsHslToRgb.funName] = _colorsHslToRgb;
  m[_frustum.funName] = _frustum;
  m[_frustumCopy.funName] = _frustumCopy;
  m[_frustumMatrix.funName] = _frustumMatrix;
  m[_intersectionResult.funName] = _intersectionResult;
  m[_matrix2Solve.funName] = _matrix2Solve;
  m[_matrix2.funName] = _matrix2;
  m[_matrix2FromList.funName] = _matrix2FromList;
  m[_matrix2Identity.funName] = _matrix2Identity;
  m[_matrix2Copy.funName] = _matrix2Copy;
  m[_matrix2Columns.funName] = _matrix2Columns;
  m[_matrix2Outer.funName] = _matrix2Outer;
  m[_matrix2Rotation.funName] = _matrix2Rotation;
  m[_matrix2Zero.funName] = _matrix2Zero;
  m[_matrix3Solve2.funName] = _matrix3Solve2;
  m[_matrix3Solve.funName] = _matrix3Solve;
  m[_matrix3.funName] = _matrix3;
  m[_matrix3FromList.funName] = _matrix3FromList;
  m[_matrix3Identity.funName] = _matrix3Identity;
  m[_matrix3Copy.funName] = _matrix3Copy;
  m[_matrix3Columns.funName] = _matrix3Columns;
  m[_matrix3Outer.funName] = _matrix3Outer;
  m[_matrix3RotationX.funName] = _matrix3RotationX;
  m[_matrix3RotationY.funName] = _matrix3RotationY;
  m[_matrix3RotationZ.funName] = _matrix3RotationZ;
  m[_matrix3Zero.funName] = _matrix3Zero;
  m[_matrix4Solve2.funName] = _matrix4Solve2;
  m[_matrix4Solve3.funName] = _matrix4Solve3;
  m[_matrix4Solve.funName] = _matrix4Solve;
  m[_matrix4.funName] = _matrix4;
  m[_matrix4FromList.funName] = _matrix4FromList;
  m[_matrix4Identity.funName] = _matrix4Identity;
  m[_matrix4Copy.funName] = _matrix4Copy;
  m[_matrix4Inverted.funName] = _matrix4Inverted;
  m[_matrix4Columns.funName] = _matrix4Columns;
  m[_matrix4Outer.funName] = _matrix4Outer;
  m[_matrix4RotationX.funName] = _matrix4RotationX;
  m[_matrix4RotationY.funName] = _matrix4RotationY;
  m[_matrix4RotationZ.funName] = _matrix4RotationZ;
  m[_matrix4Translation.funName] = _matrix4Translation;
  m[_matrix4TranslationValues.funName] = _matrix4TranslationValues;
  m[_matrix4Diagonal3.funName] = _matrix4Diagonal3;
  m[_matrix4Diagonal3Values.funName] = _matrix4Diagonal3Values;
  m[_matrix4SkewX.funName] = _matrix4SkewX;
  m[_matrix4SkewY.funName] = _matrix4SkewY;
  m[_matrix4Skew.funName] = _matrix4Skew;
  m[_matrix4Compose.funName] = _matrix4Compose;
  m[_matrix4Zero.funName] = _matrix4Zero;
  m[_matrix4FromFloat64List.funName] = _matrix4FromFloat64List;
  m[_matrix4FromBuffer.funName] = _matrix4FromBuffer;
  m[_obb3.funName] = _obb3;
  m[_obb3Copy.funName] = _obb3Copy;
  m[_obb3CenterExtentsAxes.funName] = _obb3CenterExtentsAxes;
  m[_plane.funName] = _plane;
  m[_planeIntersection.funName] = _planeIntersection;
  m[_planeCopy.funName] = _planeCopy;
  m[_planeComponents.funName] = _planeComponents;
  m[_planeNormalconstant.funName] = _planeNormalconstant;
  m[_quad.funName] = _quad;
  m[_quadCopy.funName] = _quadCopy;
  m[_quadPoints.funName] = _quadPoints;
  m[_quaternion.funName] = _quaternion;
  m[_quaternionFromRotation.funName] = _quaternionFromRotation;
  m[_quaternionAxisAngle.funName] = _quaternionAxisAngle;
  m[_quaternionFromTwoVectors.funName] = _quaternionFromTwoVectors;
  m[_quaternionCopy.funName] = _quaternionCopy;
  m[_quaternionRandom.funName] = _quaternionRandom;
  m[_quaternionIdentity.funName] = _quaternionIdentity;
  m[_quaternionDq.funName] = _quaternionDq;
  m[_quaternionEuler.funName] = _quaternionEuler;
  m[_quaternionFromFloat64List.funName] = _quaternionFromFloat64List;
  m[_quaternionFromBuffer.funName] = _quaternionFromBuffer;
  m[_ray.funName] = _ray;
  m[_rayCopy.funName] = _rayCopy;
  m[_rayOriginDirection.funName] = _rayOriginDirection;
  m[_sphere.funName] = _sphere;
  m[_sphereCopy.funName] = _sphereCopy;
  m[_sphereCenterRadius.funName] = _sphereCenterRadius;
  m[_simplexNoise.funName] = _simplexNoise;
  m[_triangle.funName] = _triangle;
  m[_triangleCopy.funName] = _triangleCopy;
  m[_trianglePoints.funName] = _trianglePoints;
  m[_vector2Min.funName] = _vector2Min;
  m[_vector2Max.funName] = _vector2Max;
  m[_vector2Mix.funName] = _vector2Mix;
  m[_vector2.funName] = _vector2;
  m[_vector2Array.funName] = _vector2Array;
  m[_vector2All.funName] = _vector2All;
  m[_vector2Copy.funName] = _vector2Copy;
  m[_vector2Random.funName] = _vector2Random;
  m[_vector2Zero.funName] = _vector2Zero;
  m[_vector2FromFloat64List.funName] = _vector2FromFloat64List;
  m[_vector2FromBuffer.funName] = _vector2FromBuffer;
  m[_vector3Min.funName] = _vector3Min;
  m[_vector3Max.funName] = _vector3Max;
  m[_vector3Mix.funName] = _vector3Mix;
  m[_vector3.funName] = _vector3;
  m[_vector3Array.funName] = _vector3Array;
  m[_vector3All.funName] = _vector3All;
  m[_vector3Copy.funName] = _vector3Copy;
  m[_vector3Random.funName] = _vector3Random;
  m[_vector3Zero.funName] = _vector3Zero;
  m[_vector3FromFloat64List.funName] = _vector3FromFloat64List;
  m[_vector3FromBuffer.funName] = _vector3FromBuffer;
  m[_vector4Min.funName] = _vector4Min;
  m[_vector4Max.funName] = _vector4Max;
  m[_vector4Mix.funName] = _vector4Mix;
  m[_vector4.funName] = _vector4;
  m[_vector4Array.funName] = _vector4Array;
  m[_vector4Identity.funName] = _vector4Identity;
  m[_vector4All.funName] = _vector4All;
  m[_vector4Copy.funName] = _vector4Copy;
  m[_vector4Random.funName] = _vector4Random;
  m[_vector4Zero.funName] = _vector4Zero;
  m[_vector4FromFloat64List.funName] = _vector4FromFloat64List;
  m[_vector4FromBuffer.funName] = _vector4FromBuffer;
  return m;
}

var _aabb2 = MXFunctionInvoke(
  "Aabb2",
  () => Aabb2(),
  [],
);
var _aabb2CenterAndHalfExtents = MXFunctionInvoke(
  "Aabb2.centerAndHalfExtents",
  ({
    Vector2 center,
    Vector2 halfExtents,
  }) =>
      Aabb2.centerAndHalfExtents(
    center,
    halfExtents,
  ),
  [
    "center",
    "halfExtents",
  ],
);
var _aabb2Copy = MXFunctionInvoke(
  "Aabb2.copy",
  ({
    Aabb2 other,
  }) =>
      Aabb2.copy(
    other,
  ),
  [
    "other",
  ],
);
var _aabb2MinMax = MXFunctionInvoke(
  "Aabb2.minMax",
  ({
    Vector2 min,
    Vector2 max,
  }) =>
      Aabb2.minMax(
    min,
    max,
  ),
  [
    "min",
    "max",
  ],
);
var _aabb2FromBuffer = MXFunctionInvoke(
  "Aabb2.fromBuffer",
  ({
    ByteBuffer buffer,
    int offset,
  }) =>
      Aabb2.fromBuffer(
    buffer,
    offset,
  ),
  [
    "buffer",
    "offset",
  ],
);
var _aabb3 = MXFunctionInvoke(
  "Aabb3",
  () => Aabb3(),
  [],
);
var _aabb3FromSphere = MXFunctionInvoke(
  "Aabb3.fromSphere",
  ({
    Sphere sphere,
  }) =>
      Aabb3.fromSphere(
    sphere,
  ),
  [
    "sphere",
  ],
);
var _aabb3FromTriangle = MXFunctionInvoke(
  "Aabb3.fromTriangle",
  ({
    Triangle triangle,
  }) =>
      Aabb3.fromTriangle(
    triangle,
  ),
  [
    "triangle",
  ],
);
var _aabb3FromQuad = MXFunctionInvoke(
  "Aabb3.fromQuad",
  ({
    Quad quad,
  }) =>
      Aabb3.fromQuad(
    quad,
  ),
  [
    "quad",
  ],
);
var _aabb3FromObb3 = MXFunctionInvoke(
  "Aabb3.fromObb3",
  ({
    Obb3 obb,
  }) =>
      Aabb3.fromObb3(
    obb,
  ),
  [
    "obb",
  ],
);
var _aabb3FromRay = MXFunctionInvoke(
  "Aabb3.fromRay",
  ({
    Ray ray,
    dynamic limitMin,
    dynamic limitMax,
  }) =>
      Aabb3.fromRay(
    ray,
    limitMin?.toDouble(),
    limitMax?.toDouble(),
  ),
  [
    "ray",
    "limitMin",
    "limitMax",
  ],
);
var _aabb3CenterAndHalfExtents = MXFunctionInvoke(
  "Aabb3.centerAndHalfExtents",
  ({
    Vector3 center,
    Vector3 halfExtents,
  }) =>
      Aabb3.centerAndHalfExtents(
    center,
    halfExtents,
  ),
  [
    "center",
    "halfExtents",
  ],
);
var _aabb3Copy = MXFunctionInvoke(
  "Aabb3.copy",
  ({
    Aabb3 other,
  }) =>
      Aabb3.copy(
    other,
  ),
  [
    "other",
  ],
);
var _aabb3MinMax = MXFunctionInvoke(
  "Aabb3.minMax",
  ({
    Vector3 min,
    Vector3 max,
  }) =>
      Aabb3.minMax(
    min,
    max,
  ),
  [
    "min",
    "max",
  ],
);
var _aabb3FromBuffer = MXFunctionInvoke(
  "Aabb3.fromBuffer",
  ({
    ByteBuffer buffer,
    int offset,
  }) =>
      Aabb3.fromBuffer(
    buffer,
    offset,
  ),
  [
    "buffer",
    "offset",
  ],
);
var _colorsFromRgba = MXFunctionInvoke(
  "Colors.fromRgba",
  ({
    int r,
    int g,
    int b,
    int a,
    Vector4 result,
  }) =>
      Colors.fromRgba(
    r,
    g,
    b,
    a,
    result,
  ),
  [
    "r",
    "g",
    "b",
    "a",
    "result",
  ],
);
var _colorsFromHexString = MXFunctionInvoke(
  "Colors.fromHexString",
  ({
    String value,
    Vector4 result,
  }) =>
      Colors.fromHexString(
    value,
    result,
  ),
  [
    "value",
    "result",
  ],
);
var _colorsAlphaBlend = MXFunctionInvoke(
  "Colors.alphaBlend",
  ({
    Vector4 foreground,
    Vector4 background,
    Vector4 result,
  }) =>
      Colors.alphaBlend(
    foreground,
    background,
    result,
  ),
  [
    "foreground",
    "background",
    "result",
  ],
);
var _colorsToGrayscale = MXFunctionInvoke(
  "Colors.toGrayscale",
  ({
    Vector4 input,
    Vector4 result,
  }) =>
      Colors.toGrayscale(
    input,
    result,
  ),
  [
    "input",
    "result",
  ],
);
var _colorsLinearToGamma = MXFunctionInvoke(
  "Colors.linearToGamma",
  ({
    Vector4 linearColor,
    Vector4 gammaColor,
    dynamic gamma,
  }) =>
      Colors.linearToGamma(
    linearColor,
    gammaColor,
    gamma?.toDouble(),
  ),
  [
    "linearColor",
    "gammaColor",
    "gamma",
  ],
);
var _colorsGammaToLinear = MXFunctionInvoke(
  "Colors.gammaToLinear",
  ({
    Vector4 gammaColor,
    Vector4 linearColor,
    dynamic gamma,
  }) =>
      Colors.gammaToLinear(
    gammaColor,
    linearColor,
    gamma?.toDouble(),
  ),
  [
    "gammaColor",
    "linearColor",
    "gamma",
  ],
);
var _colorsRgbToHsv = MXFunctionInvoke(
  "Colors.rgbToHsv",
  ({
    Vector4 rgbColor,
    Vector4 hsvColor,
  }) =>
      Colors.rgbToHsv(
    rgbColor,
    hsvColor,
  ),
  [
    "rgbColor",
    "hsvColor",
  ],
);
var _colorsHsvToRgb = MXFunctionInvoke(
  "Colors.hsvToRgb",
  ({
    Vector4 hsvColor,
    Vector4 rgbColor,
  }) =>
      Colors.hsvToRgb(
    hsvColor,
    rgbColor,
  ),
  [
    "hsvColor",
    "rgbColor",
  ],
);
var _colorsRgbToHsl = MXFunctionInvoke(
  "Colors.rgbToHsl",
  ({
    Vector4 rgbColor,
    Vector4 hslColor,
  }) =>
      Colors.rgbToHsl(
    rgbColor,
    hslColor,
  ),
  [
    "rgbColor",
    "hslColor",
  ],
);
var _colorsHslToRgb = MXFunctionInvoke(
  "Colors.hslToRgb",
  ({
    Vector4 hslColor,
    Vector4 rgbColor,
  }) =>
      Colors.hslToRgb(
    hslColor,
    rgbColor,
  ),
  [
    "hslColor",
    "rgbColor",
  ],
);
var _frustum = MXFunctionInvoke(
  "Frustum",
  () => Frustum(),
  [],
);
var _frustumCopy = MXFunctionInvoke(
  "Frustum.copy",
  ({
    Frustum other,
  }) =>
      Frustum.copy(
    other,
  ),
  [
    "other",
  ],
);
var _frustumMatrix = MXFunctionInvoke(
  "Frustum.matrix",
  ({
    Matrix4 matrix,
  }) =>
      Frustum.matrix(
    matrix,
  ),
  [
    "matrix",
  ],
);
var _intersectionResult = MXFunctionInvoke(
  "IntersectionResult",
  () => IntersectionResult(),
  [],
);
var _matrix2Solve = MXFunctionInvoke(
  "Matrix2.solve",
  ({
    Matrix2 A,
    Vector2 x,
    Vector2 b,
  }) =>
      Matrix2.solve(
    A,
    x,
    b,
  ),
  [
    "A",
    "x",
    "b",
  ],
);
var _matrix2 = MXFunctionInvoke(
  "Matrix2",
  ({
    dynamic arg0,
    dynamic arg1,
    dynamic arg2,
    dynamic arg3,
  }) =>
      Matrix2(
    arg0?.toDouble(),
    arg1?.toDouble(),
    arg2?.toDouble(),
    arg3?.toDouble(),
  ),
  [
    "arg0",
    "arg1",
    "arg2",
    "arg3",
  ],
);
var _matrix2FromList = MXFunctionInvoke(
  "Matrix2.fromList",
  ({
    dynamic values,
  }) =>
      Matrix2.fromList(
    toListT<double>(values),
  ),
  [
    "values",
  ],
);
var _matrix2Identity = MXFunctionInvoke(
  "Matrix2.identity",
  () => Matrix2.identity(),
  [],
);
var _matrix2Copy = MXFunctionInvoke(
  "Matrix2.copy",
  ({
    Matrix2 other,
  }) =>
      Matrix2.copy(
    other,
  ),
  [
    "other",
  ],
);
var _matrix2Columns = MXFunctionInvoke(
  "Matrix2.columns",
  ({
    Vector2 arg0,
    Vector2 arg1,
  }) =>
      Matrix2.columns(
    arg0,
    arg1,
  ),
  [
    "arg0",
    "arg1",
  ],
);
var _matrix2Outer = MXFunctionInvoke(
  "Matrix2.outer",
  ({
    Vector2 u,
    Vector2 v,
  }) =>
      Matrix2.outer(
    u,
    v,
  ),
  [
    "u",
    "v",
  ],
);
var _matrix2Rotation = MXFunctionInvoke(
  "Matrix2.rotation",
  ({
    dynamic radians,
  }) =>
      Matrix2.rotation(
    radians?.toDouble(),
  ),
  [
    "radians",
  ],
);
var _matrix2Zero = MXFunctionInvoke(
  "Matrix2.zero",
  () => Matrix2.zero(),
  [],
);
var _matrix3Solve2 = MXFunctionInvoke(
  "Matrix3.solve2",
  ({
    Matrix3 A,
    Vector2 x,
    Vector2 b,
  }) =>
      Matrix3.solve2(
    A,
    x,
    b,
  ),
  [
    "A",
    "x",
    "b",
  ],
);
var _matrix3Solve = MXFunctionInvoke(
  "Matrix3.solve",
  ({
    Matrix3 A,
    Vector3 x,
    Vector3 b,
  }) =>
      Matrix3.solve(
    A,
    x,
    b,
  ),
  [
    "A",
    "x",
    "b",
  ],
);
var _matrix3 = MXFunctionInvoke(
  "Matrix3",
  ({
    dynamic arg0,
    dynamic arg1,
    dynamic arg2,
    dynamic arg3,
    dynamic arg4,
    dynamic arg5,
    dynamic arg6,
    dynamic arg7,
    dynamic arg8,
  }) =>
      Matrix3(
    arg0?.toDouble(),
    arg1?.toDouble(),
    arg2?.toDouble(),
    arg3?.toDouble(),
    arg4?.toDouble(),
    arg5?.toDouble(),
    arg6?.toDouble(),
    arg7?.toDouble(),
    arg8?.toDouble(),
  ),
  [
    "arg0",
    "arg1",
    "arg2",
    "arg3",
    "arg4",
    "arg5",
    "arg6",
    "arg7",
    "arg8",
  ],
);
var _matrix3FromList = MXFunctionInvoke(
  "Matrix3.fromList",
  ({
    dynamic values,
  }) =>
      Matrix3.fromList(
    toListT<double>(values),
  ),
  [
    "values",
  ],
);
var _matrix3Identity = MXFunctionInvoke(
  "Matrix3.identity",
  () => Matrix3.identity(),
  [],
);
var _matrix3Copy = MXFunctionInvoke(
  "Matrix3.copy",
  ({
    Matrix3 other,
  }) =>
      Matrix3.copy(
    other,
  ),
  [
    "other",
  ],
);
var _matrix3Columns = MXFunctionInvoke(
  "Matrix3.columns",
  ({
    Vector3 arg0,
    Vector3 arg1,
    Vector3 arg2,
  }) =>
      Matrix3.columns(
    arg0,
    arg1,
    arg2,
  ),
  [
    "arg0",
    "arg1",
    "arg2",
  ],
);
var _matrix3Outer = MXFunctionInvoke(
  "Matrix3.outer",
  ({
    Vector3 u,
    Vector3 v,
  }) =>
      Matrix3.outer(
    u,
    v,
  ),
  [
    "u",
    "v",
  ],
);
var _matrix3RotationX = MXFunctionInvoke(
  "Matrix3.rotationX",
  ({
    dynamic radians,
  }) =>
      Matrix3.rotationX(
    radians?.toDouble(),
  ),
  [
    "radians",
  ],
);
var _matrix3RotationY = MXFunctionInvoke(
  "Matrix3.rotationY",
  ({
    dynamic radians,
  }) =>
      Matrix3.rotationY(
    radians?.toDouble(),
  ),
  [
    "radians",
  ],
);
var _matrix3RotationZ = MXFunctionInvoke(
  "Matrix3.rotationZ",
  ({
    dynamic radians,
  }) =>
      Matrix3.rotationZ(
    radians?.toDouble(),
  ),
  [
    "radians",
  ],
);
var _matrix3Zero = MXFunctionInvoke(
  "Matrix3.zero",
  () => Matrix3.zero(),
  [],
);
var _matrix4Solve2 = MXFunctionInvoke(
  "Matrix4.solve2",
  ({
    Matrix4 A,
    Vector2 x,
    Vector2 b,
  }) =>
      Matrix4.solve2(
    A,
    x,
    b,
  ),
  [
    "A",
    "x",
    "b",
  ],
);
var _matrix4Solve3 = MXFunctionInvoke(
  "Matrix4.solve3",
  ({
    Matrix4 A,
    Vector3 x,
    Vector3 b,
  }) =>
      Matrix4.solve3(
    A,
    x,
    b,
  ),
  [
    "A",
    "x",
    "b",
  ],
);
var _matrix4Solve = MXFunctionInvoke(
  "Matrix4.solve",
  ({
    Matrix4 A,
    Vector4 x,
    Vector4 b,
  }) =>
      Matrix4.solve(
    A,
    x,
    b,
  ),
  [
    "A",
    "x",
    "b",
  ],
);
var _matrix4 = MXFunctionInvoke(
  "Matrix4",
  ({
    dynamic arg0,
    dynamic arg1,
    dynamic arg2,
    dynamic arg3,
    dynamic arg4,
    dynamic arg5,
    dynamic arg6,
    dynamic arg7,
    dynamic arg8,
    dynamic arg9,
    dynamic arg10,
    dynamic arg11,
    dynamic arg12,
    dynamic arg13,
    dynamic arg14,
    dynamic arg15,
  }) =>
      Matrix4(
    arg0?.toDouble(),
    arg1?.toDouble(),
    arg2?.toDouble(),
    arg3?.toDouble(),
    arg4?.toDouble(),
    arg5?.toDouble(),
    arg6?.toDouble(),
    arg7?.toDouble(),
    arg8?.toDouble(),
    arg9?.toDouble(),
    arg10?.toDouble(),
    arg11?.toDouble(),
    arg12?.toDouble(),
    arg13?.toDouble(),
    arg14?.toDouble(),
    arg15?.toDouble(),
  ),
  [
    "arg0",
    "arg1",
    "arg2",
    "arg3",
    "arg4",
    "arg5",
    "arg6",
    "arg7",
    "arg8",
    "arg9",
    "arg10",
    "arg11",
    "arg12",
    "arg13",
    "arg14",
    "arg15",
  ],
);
var _matrix4FromList = MXFunctionInvoke(
  "Matrix4.fromList",
  ({
    dynamic values,
  }) =>
      Matrix4.fromList(
    toListT<double>(values),
  ),
  [
    "values",
  ],
);
var _matrix4Identity = MXFunctionInvoke(
  "Matrix4.identity",
  () => Matrix4.identity(),
  [],
);
var _matrix4Copy = MXFunctionInvoke(
  "Matrix4.copy",
  ({
    Matrix4 other,
  }) =>
      Matrix4.copy(
    other,
  ),
  [
    "other",
  ],
);
var _matrix4Inverted = MXFunctionInvoke(
  "Matrix4.inverted",
  ({
    Matrix4 other,
  }) =>
      Matrix4.inverted(
    other,
  ),
  [
    "other",
  ],
);
var _matrix4Columns = MXFunctionInvoke(
  "Matrix4.columns",
  ({
    Vector4 arg0,
    Vector4 arg1,
    Vector4 arg2,
    Vector4 arg3,
  }) =>
      Matrix4.columns(
    arg0,
    arg1,
    arg2,
    arg3,
  ),
  [
    "arg0",
    "arg1",
    "arg2",
    "arg3",
  ],
);
var _matrix4Outer = MXFunctionInvoke(
  "Matrix4.outer",
  ({
    Vector4 u,
    Vector4 v,
  }) =>
      Matrix4.outer(
    u,
    v,
  ),
  [
    "u",
    "v",
  ],
);
var _matrix4RotationX = MXFunctionInvoke(
  "Matrix4.rotationX",
  ({
    dynamic radians,
  }) =>
      Matrix4.rotationX(
    radians?.toDouble(),
  ),
  [
    "radians",
  ],
);
var _matrix4RotationY = MXFunctionInvoke(
  "Matrix4.rotationY",
  ({
    dynamic radians,
  }) =>
      Matrix4.rotationY(
    radians?.toDouble(),
  ),
  [
    "radians",
  ],
);
var _matrix4RotationZ = MXFunctionInvoke(
  "Matrix4.rotationZ",
  ({
    dynamic radians,
  }) =>
      Matrix4.rotationZ(
    radians?.toDouble(),
  ),
  [
    "radians",
  ],
);
var _matrix4Translation = MXFunctionInvoke(
  "Matrix4.translation",
  ({
    Vector3 translation,
  }) =>
      Matrix4.translation(
    translation,
  ),
  [
    "translation",
  ],
);
var _matrix4TranslationValues = MXFunctionInvoke(
  "Matrix4.translationValues",
  ({
    dynamic x,
    dynamic y,
    dynamic z,
  }) =>
      Matrix4.translationValues(
    x?.toDouble(),
    y?.toDouble(),
    z?.toDouble(),
  ),
  [
    "x",
    "y",
    "z",
  ],
);
var _matrix4Diagonal3 = MXFunctionInvoke(
  "Matrix4.diagonal3",
  ({
    Vector3 scale,
  }) =>
      Matrix4.diagonal3(
    scale,
  ),
  [
    "scale",
  ],
);
var _matrix4Diagonal3Values = MXFunctionInvoke(
  "Matrix4.diagonal3Values",
  ({
    dynamic x,
    dynamic y,
    dynamic z,
  }) =>
      Matrix4.diagonal3Values(
    x?.toDouble(),
    y?.toDouble(),
    z?.toDouble(),
  ),
  [
    "x",
    "y",
    "z",
  ],
);
var _matrix4SkewX = MXFunctionInvoke(
  "Matrix4.skewX",
  ({
    dynamic alpha,
  }) =>
      Matrix4.skewX(
    alpha?.toDouble(),
  ),
  [
    "alpha",
  ],
);
var _matrix4SkewY = MXFunctionInvoke(
  "Matrix4.skewY",
  ({
    dynamic beta,
  }) =>
      Matrix4.skewY(
    beta?.toDouble(),
  ),
  [
    "beta",
  ],
);
var _matrix4Skew = MXFunctionInvoke(
  "Matrix4.skew",
  ({
    dynamic alpha,
    dynamic beta,
  }) =>
      Matrix4.skew(
    alpha?.toDouble(),
    beta?.toDouble(),
  ),
  [
    "alpha",
    "beta",
  ],
);
var _matrix4Compose = MXFunctionInvoke(
  "Matrix4.compose",
  ({
    Vector3 translation,
    Quaternion rotation,
    Vector3 scale,
  }) =>
      Matrix4.compose(
    translation,
    rotation,
    scale,
  ),
  [
    "translation",
    "rotation",
    "scale",
  ],
);
var _matrix4Zero = MXFunctionInvoke(
  "Matrix4.zero",
  () => Matrix4.zero(),
  [],
);
var _matrix4FromFloat64List = MXFunctionInvoke(
  "Matrix4.fromFloat64List",
  ({
    Float64List m4storage,
  }) =>
      Matrix4.fromFloat64List(
    m4storage,
  ),
  [
    "m4storage",
  ],
);
var _matrix4FromBuffer = MXFunctionInvoke(
  "Matrix4.fromBuffer",
  ({
    ByteBuffer buffer,
    int offset,
  }) =>
      Matrix4.fromBuffer(
    buffer,
    offset,
  ),
  [
    "buffer",
    "offset",
  ],
);
var _obb3 = MXFunctionInvoke(
  "Obb3",
  () => Obb3(),
  [],
);
var _obb3Copy = MXFunctionInvoke(
  "Obb3.copy",
  ({
    Obb3 other,
  }) =>
      Obb3.copy(
    other,
  ),
  [
    "other",
  ],
);
var _obb3CenterExtentsAxes = MXFunctionInvoke(
  "Obb3.centerExtentsAxes",
  ({
    Vector3 center,
    Vector3 halfExtents,
    Vector3 axis0,
    Vector3 axis1,
    Vector3 axis2,
  }) =>
      Obb3.centerExtentsAxes(
    center,
    halfExtents,
    axis0,
    axis1,
    axis2,
  ),
  [
    "center",
    "halfExtents",
    "axis0",
    "axis1",
    "axis2",
  ],
);
var _plane = MXFunctionInvoke(
  "Plane",
  () => Plane(),
  [],
);
var _planeIntersection = MXFunctionInvoke(
  "Plane.intersection",
  ({
    Plane a,
    Plane b,
    Plane c,
    Vector3 result,
  }) =>
      Plane.intersection(
    a,
    b,
    c,
    result,
  ),
  [
    "a",
    "b",
    "c",
    "result",
  ],
);
var _planeCopy = MXFunctionInvoke(
  "Plane.copy",
  ({
    Plane other,
  }) =>
      Plane.copy(
    other,
  ),
  [
    "other",
  ],
);
var _planeComponents = MXFunctionInvoke(
  "Plane.components",
  ({
    dynamic x,
    dynamic y,
    dynamic z,
    dynamic w,
  }) =>
      Plane.components(
    x?.toDouble(),
    y?.toDouble(),
    z?.toDouble(),
    w?.toDouble(),
  ),
  [
    "x",
    "y",
    "z",
    "w",
  ],
);
var _planeNormalconstant = MXFunctionInvoke(
  "Plane.normalconstant",
  ({
    Vector3 normal_,
    dynamic constant_,
  }) =>
      Plane.normalconstant(
    normal_,
    constant_?.toDouble(),
  ),
  [
    "normal_",
    "constant_",
  ],
);
var _quad = MXFunctionInvoke(
  "Quad",
  () => Quad(),
  [],
);
var _quadCopy = MXFunctionInvoke(
  "Quad.copy",
  ({
    Quad other,
  }) =>
      Quad.copy(
    other,
  ),
  [
    "other",
  ],
);
var _quadPoints = MXFunctionInvoke(
  "Quad.points",
  ({
    Vector3 point0,
    Vector3 point1,
    Vector3 point2,
    Vector3 point3,
  }) =>
      Quad.points(
    point0,
    point1,
    point2,
    point3,
  ),
  [
    "point0",
    "point1",
    "point2",
    "point3",
  ],
);
var _quaternion = MXFunctionInvoke(
  "Quaternion",
  ({
    dynamic x,
    dynamic y,
    dynamic z,
    dynamic w,
  }) =>
      Quaternion(
    x?.toDouble(),
    y?.toDouble(),
    z?.toDouble(),
    w?.toDouble(),
  ),
  [
    "x",
    "y",
    "z",
    "w",
  ],
);
var _quaternionFromRotation = MXFunctionInvoke(
  "Quaternion.fromRotation",
  ({
    Matrix3 rotationMatrix,
  }) =>
      Quaternion.fromRotation(
    rotationMatrix,
  ),
  [
    "rotationMatrix",
  ],
);
var _quaternionAxisAngle = MXFunctionInvoke(
  "Quaternion.axisAngle",
  ({
    Vector3 axis,
    dynamic angle,
  }) =>
      Quaternion.axisAngle(
    axis,
    angle?.toDouble(),
  ),
  [
    "axis",
    "angle",
  ],
);
var _quaternionFromTwoVectors = MXFunctionInvoke(
  "Quaternion.fromTwoVectors",
  ({
    Vector3 a,
    Vector3 b,
  }) =>
      Quaternion.fromTwoVectors(
    a,
    b,
  ),
  [
    "a",
    "b",
  ],
);
var _quaternionCopy = MXFunctionInvoke(
  "Quaternion.copy",
  ({
    Quaternion original,
  }) =>
      Quaternion.copy(
    original,
  ),
  [
    "original",
  ],
);
var _quaternionRandom = MXFunctionInvoke(
  "Quaternion.random",
  ({
    math.Random rn,
  }) =>
      Quaternion.random(
    rn,
  ),
  [
    "rn",
  ],
);
var _quaternionIdentity = MXFunctionInvoke(
  "Quaternion.identity",
  () => Quaternion.identity(),
  [],
);
var _quaternionDq = MXFunctionInvoke(
  "Quaternion.dq",
  ({
    Quaternion q,
    Vector3 omega,
  }) =>
      Quaternion.dq(
    q,
    omega,
  ),
  [
    "q",
    "omega",
  ],
);
var _quaternionEuler = MXFunctionInvoke(
  "Quaternion.euler",
  ({
    dynamic yaw,
    dynamic pitch,
    dynamic roll,
  }) =>
      Quaternion.euler(
    yaw?.toDouble(),
    pitch?.toDouble(),
    roll?.toDouble(),
  ),
  [
    "yaw",
    "pitch",
    "roll",
  ],
);
var _quaternionFromFloat64List = MXFunctionInvoke(
  "Quaternion.fromFloat64List",
  ({
    Float64List qStorage,
  }) =>
      Quaternion.fromFloat64List(
    qStorage,
  ),
  [
    "qStorage",
  ],
);
var _quaternionFromBuffer = MXFunctionInvoke(
  "Quaternion.fromBuffer",
  ({
    ByteBuffer buffer,
    int offset,
  }) =>
      Quaternion.fromBuffer(
    buffer,
    offset,
  ),
  [
    "buffer",
    "offset",
  ],
);
var _ray = MXFunctionInvoke(
  "Ray",
  () => Ray(),
  [],
);
var _rayCopy = MXFunctionInvoke(
  "Ray.copy",
  ({
    Ray other,
  }) =>
      Ray.copy(
    other,
  ),
  [
    "other",
  ],
);
var _rayOriginDirection = MXFunctionInvoke(
  "Ray.originDirection",
  ({
    Vector3 origin,
    Vector3 direction,
  }) =>
      Ray.originDirection(
    origin,
    direction,
  ),
  [
    "origin",
    "direction",
  ],
);
var _sphere = MXFunctionInvoke(
  "Sphere",
  () => Sphere(),
  [],
);
var _sphereCopy = MXFunctionInvoke(
  "Sphere.copy",
  ({
    Sphere other,
  }) =>
      Sphere.copy(
    other,
  ),
  [
    "other",
  ],
);
var _sphereCenterRadius = MXFunctionInvoke(
  "Sphere.centerRadius",
  ({
    Vector3 center,
    dynamic radius,
  }) =>
      Sphere.centerRadius(
    center,
    radius?.toDouble(),
  ),
  [
    "center",
    "radius",
  ],
);
var _simplexNoise = MXFunctionInvoke(
  "SimplexNoise",
  ({
    math.Random r,
  }) =>
      SimplexNoise(
    r,
  ),
  [
    "r",
  ],
);
var _triangle = MXFunctionInvoke(
  "Triangle",
  () => Triangle(),
  [],
);
var _triangleCopy = MXFunctionInvoke(
  "Triangle.copy",
  ({
    Triangle other,
  }) =>
      Triangle.copy(
    other,
  ),
  [
    "other",
  ],
);
var _trianglePoints = MXFunctionInvoke(
  "Triangle.points",
  ({
    Vector3 point0,
    Vector3 point1,
    Vector3 point2,
  }) =>
      Triangle.points(
    point0,
    point1,
    point2,
  ),
  [
    "point0",
    "point1",
    "point2",
  ],
);
var _vector2Min = MXFunctionInvoke(
  "Vector2.min",
  ({
    Vector2 a,
    Vector2 b,
    Vector2 result,
  }) =>
      Vector2.min(
    a,
    b,
    result,
  ),
  [
    "a",
    "b",
    "result",
  ],
);
var _vector2Max = MXFunctionInvoke(
  "Vector2.max",
  ({
    Vector2 a,
    Vector2 b,
    Vector2 result,
  }) =>
      Vector2.max(
    a,
    b,
    result,
  ),
  [
    "a",
    "b",
    "result",
  ],
);
var _vector2Mix = MXFunctionInvoke(
  "Vector2.mix",
  ({
    Vector2 min,
    Vector2 max,
    dynamic a,
    Vector2 result,
  }) =>
      Vector2.mix(
    min,
    max,
    a?.toDouble(),
    result,
  ),
  [
    "min",
    "max",
    "a",
    "result",
  ],
);
var _vector2 = MXFunctionInvoke(
  "Vector2",
  ({
    dynamic x,
    dynamic y,
  }) =>
      Vector2(
    x?.toDouble(),
    y?.toDouble(),
  ),
  [
    "x",
    "y",
  ],
);
var _vector2Array = MXFunctionInvoke(
  "Vector2.array",
  ({
    dynamic array,
    int offset,
  }) =>
      Vector2.array(
    toListT<double>(array),
    offset,
  ),
  [
    "array",
    "offset",
  ],
);
var _vector2All = MXFunctionInvoke(
  "Vector2.all",
  ({
    dynamic value,
  }) =>
      Vector2.all(
    value?.toDouble(),
  ),
  [
    "value",
  ],
);
var _vector2Copy = MXFunctionInvoke(
  "Vector2.copy",
  ({
    Vector2 other,
  }) =>
      Vector2.copy(
    other,
  ),
  [
    "other",
  ],
);
var _vector2Random = MXFunctionInvoke(
  "Vector2.random",
  ({
    math.Random rng,
  }) =>
      Vector2.random(
    rng,
  ),
  [
    "rng",
  ],
);
var _vector2Zero = MXFunctionInvoke(
  "Vector2.zero",
  () => Vector2.zero(),
  [],
);
var _vector2FromFloat64List = MXFunctionInvoke(
  "Vector2.fromFloat64List",
  ({
    Float64List v2storage,
  }) =>
      Vector2.fromFloat64List(
    v2storage,
  ),
  [
    "v2storage",
  ],
);
var _vector2FromBuffer = MXFunctionInvoke(
  "Vector2.fromBuffer",
  ({
    ByteBuffer buffer,
    int offset,
  }) =>
      Vector2.fromBuffer(
    buffer,
    offset,
  ),
  [
    "buffer",
    "offset",
  ],
);
var _vector3Min = MXFunctionInvoke(
  "Vector3.min",
  ({
    Vector3 a,
    Vector3 b,
    Vector3 result,
  }) =>
      Vector3.min(
    a,
    b,
    result,
  ),
  [
    "a",
    "b",
    "result",
  ],
);
var _vector3Max = MXFunctionInvoke(
  "Vector3.max",
  ({
    Vector3 a,
    Vector3 b,
    Vector3 result,
  }) =>
      Vector3.max(
    a,
    b,
    result,
  ),
  [
    "a",
    "b",
    "result",
  ],
);
var _vector3Mix = MXFunctionInvoke(
  "Vector3.mix",
  ({
    Vector3 min,
    Vector3 max,
    dynamic a,
    Vector3 result,
  }) =>
      Vector3.mix(
    min,
    max,
    a?.toDouble(),
    result,
  ),
  [
    "min",
    "max",
    "a",
    "result",
  ],
);
var _vector3 = MXFunctionInvoke(
  "Vector3",
  ({
    dynamic x,
    dynamic y,
    dynamic z,
  }) =>
      Vector3(
    x?.toDouble(),
    y?.toDouble(),
    z?.toDouble(),
  ),
  [
    "x",
    "y",
    "z",
  ],
);
var _vector3Array = MXFunctionInvoke(
  "Vector3.array",
  ({
    dynamic array,
    int offset,
  }) =>
      Vector3.array(
    toListT<double>(array),
    offset,
  ),
  [
    "array",
    "offset",
  ],
);
var _vector3All = MXFunctionInvoke(
  "Vector3.all",
  ({
    dynamic value,
  }) =>
      Vector3.all(
    value?.toDouble(),
  ),
  [
    "value",
  ],
);
var _vector3Copy = MXFunctionInvoke(
  "Vector3.copy",
  ({
    Vector3 other,
  }) =>
      Vector3.copy(
    other,
  ),
  [
    "other",
  ],
);
var _vector3Random = MXFunctionInvoke(
  "Vector3.random",
  ({
    math.Random rng,
  }) =>
      Vector3.random(
    rng,
  ),
  [
    "rng",
  ],
);
var _vector3Zero = MXFunctionInvoke(
  "Vector3.zero",
  () => Vector3.zero(),
  [],
);
var _vector3FromFloat64List = MXFunctionInvoke(
  "Vector3.fromFloat64List",
  ({
    Float64List v3storage,
  }) =>
      Vector3.fromFloat64List(
    v3storage,
  ),
  [
    "v3storage",
  ],
);
var _vector3FromBuffer = MXFunctionInvoke(
  "Vector3.fromBuffer",
  ({
    ByteBuffer buffer,
    int offset,
  }) =>
      Vector3.fromBuffer(
    buffer,
    offset,
  ),
  [
    "buffer",
    "offset",
  ],
);
var _vector4Min = MXFunctionInvoke(
  "Vector4.min",
  ({
    Vector4 a,
    Vector4 b,
    Vector4 result,
  }) =>
      Vector4.min(
    a,
    b,
    result,
  ),
  [
    "a",
    "b",
    "result",
  ],
);
var _vector4Max = MXFunctionInvoke(
  "Vector4.max",
  ({
    Vector4 a,
    Vector4 b,
    Vector4 result,
  }) =>
      Vector4.max(
    a,
    b,
    result,
  ),
  [
    "a",
    "b",
    "result",
  ],
);
var _vector4Mix = MXFunctionInvoke(
  "Vector4.mix",
  ({
    Vector4 min,
    Vector4 max,
    dynamic a,
    Vector4 result,
  }) =>
      Vector4.mix(
    min,
    max,
    a?.toDouble(),
    result,
  ),
  [
    "min",
    "max",
    "a",
    "result",
  ],
);
var _vector4 = MXFunctionInvoke(
  "Vector4",
  ({
    dynamic x,
    dynamic y,
    dynamic z,
    dynamic w,
  }) =>
      Vector4(
    x?.toDouble(),
    y?.toDouble(),
    z?.toDouble(),
    w?.toDouble(),
  ),
  [
    "x",
    "y",
    "z",
    "w",
  ],
);
var _vector4Array = MXFunctionInvoke(
  "Vector4.array",
  ({
    dynamic array,
    int offset,
  }) =>
      Vector4.array(
    toListT<double>(array),
    offset,
  ),
  [
    "array",
    "offset",
  ],
);
var _vector4Identity = MXFunctionInvoke(
  "Vector4.identity",
  () => Vector4.identity(),
  [],
);
var _vector4All = MXFunctionInvoke(
  "Vector4.all",
  ({
    dynamic value,
  }) =>
      Vector4.all(
    value?.toDouble(),
  ),
  [
    "value",
  ],
);
var _vector4Copy = MXFunctionInvoke(
  "Vector4.copy",
  ({
    Vector4 other,
  }) =>
      Vector4.copy(
    other,
  ),
  [
    "other",
  ],
);
var _vector4Random = MXFunctionInvoke(
  "Vector4.random",
  ({
    math.Random rng,
  }) =>
      Vector4.random(
    rng,
  ),
  [
    "rng",
  ],
);
var _vector4Zero = MXFunctionInvoke(
  "Vector4.zero",
  () => Vector4.zero(),
  [],
);
var _vector4FromFloat64List = MXFunctionInvoke(
  "Vector4.fromFloat64List",
  ({
    Float64List v4storage,
  }) =>
      Vector4.fromFloat64List(
    v4storage,
  ),
  [
    "v4storage",
  ],
);
var _vector4FromBuffer = MXFunctionInvoke(
  "Vector4.fromBuffer",
  ({
    ByteBuffer buffer,
    int offset,
  }) =>
      Vector4.fromBuffer(
    buffer,
    offset,
  ),
  [
    "buffer",
    "offset",
  ],
);
