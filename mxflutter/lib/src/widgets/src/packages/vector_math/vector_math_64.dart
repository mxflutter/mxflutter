//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:vector_math/vector_math_64.dart';
import 'dart:math';
import 'dart:typed_data';
import 'package:vector_math/hash.dart';


///把自己能处理的类注册到分发器中
Map<String, MXFunctionInvoke> registerVectorMath64Series() {
  var m = <String, MXFunctionInvoke>{};
  m[aabb2.funName] = aabb2;
  m[aabb2_centerAndHalfExtents.funName] = aabb2_centerAndHalfExtents;
  m[aabb2_copy.funName] = aabb2_copy;
  m[aabb2_minMax.funName] = aabb2_minMax;
  m[aabb2_fromBuffer.funName] = aabb2_fromBuffer;
  m[aabb3.funName] = aabb3;
  m[aabb3_fromSphere.funName] = aabb3_fromSphere;
  m[aabb3_fromTriangle.funName] = aabb3_fromTriangle;
  m[aabb3_fromQuad.funName] = aabb3_fromQuad;
  m[aabb3_fromObb3.funName] = aabb3_fromObb3;
  m[aabb3_fromRay.funName] = aabb3_fromRay;
  m[aabb3_centerAndHalfExtents.funName] = aabb3_centerAndHalfExtents;
  m[aabb3_copy.funName] = aabb3_copy;
  m[aabb3_minMax.funName] = aabb3_minMax;
  m[aabb3_fromBuffer.funName] = aabb3_fromBuffer;
  m[frustum.funName] = frustum;
  m[frustum_copy.funName] = frustum_copy;
  m[frustum_matrix.funName] = frustum_matrix;
  m[intersectionResult.funName] = intersectionResult;
  m[matrix2.funName] = matrix2;
  m[matrix2_fromList.funName] = matrix2_fromList;
  m[matrix2_identity.funName] = matrix2_identity;
  m[matrix2_copy.funName] = matrix2_copy;
  m[matrix2_columns.funName] = matrix2_columns;
  m[matrix2_outer.funName] = matrix2_outer;
  m[matrix2_rotation.funName] = matrix2_rotation;
  m[matrix2_zero.funName] = matrix2_zero;
  m[matrix3.funName] = matrix3;
  m[matrix3_fromList.funName] = matrix3_fromList;
  m[matrix3_identity.funName] = matrix3_identity;
  m[matrix3_copy.funName] = matrix3_copy;
  m[matrix3_columns.funName] = matrix3_columns;
  m[matrix3_outer.funName] = matrix3_outer;
  m[matrix3_rotationX.funName] = matrix3_rotationX;
  m[matrix3_rotationY.funName] = matrix3_rotationY;
  m[matrix3_rotationZ.funName] = matrix3_rotationZ;
  m[matrix3_zero.funName] = matrix3_zero;
  m[matrix4.funName] = matrix4;
  m[matrix4_fromList.funName] = matrix4_fromList;
  m[matrix4_identity.funName] = matrix4_identity;
  m[matrix4_copy.funName] = matrix4_copy;
  m[matrix4_inverted.funName] = matrix4_inverted;
  m[matrix4_columns.funName] = matrix4_columns;
  m[matrix4_outer.funName] = matrix4_outer;
  m[matrix4_rotationX.funName] = matrix4_rotationX;
  m[matrix4_rotationY.funName] = matrix4_rotationY;
  m[matrix4_rotationZ.funName] = matrix4_rotationZ;
  m[matrix4_translation.funName] = matrix4_translation;
  m[matrix4_translationValues.funName] = matrix4_translationValues;
  m[matrix4_diagonal3.funName] = matrix4_diagonal3;
  m[matrix4_diagonal3Values.funName] = matrix4_diagonal3Values;
  m[matrix4_skewX.funName] = matrix4_skewX;
  m[matrix4_skewY.funName] = matrix4_skewY;
  m[matrix4_skew.funName] = matrix4_skew;
  m[matrix4_compose.funName] = matrix4_compose;
  m[matrix4_zero.funName] = matrix4_zero;
  m[matrix4_fromFloat64List.funName] = matrix4_fromFloat64List;
  m[matrix4_fromBuffer.funName] = matrix4_fromBuffer;
  m[obb3.funName] = obb3;
  m[obb3_copy.funName] = obb3_copy;
  m[obb3_centerExtentsAxes.funName] = obb3_centerExtentsAxes;
  m[plane.funName] = plane;
  m[plane_copy.funName] = plane_copy;
  m[plane_components.funName] = plane_components;
  m[plane_normalconstant.funName] = plane_normalconstant;
  m[quad.funName] = quad;
  m[quad_copy.funName] = quad_copy;
  m[quad_points.funName] = quad_points;
  m[quaternion.funName] = quaternion;
  m[quaternion_fromRotation.funName] = quaternion_fromRotation;
  m[quaternion_axisAngle.funName] = quaternion_axisAngle;
  m[quaternion_fromTwoVectors.funName] = quaternion_fromTwoVectors;
  m[quaternion_copy.funName] = quaternion_copy;
  m[quaternion_random.funName] = quaternion_random;
  m[quaternion_identity.funName] = quaternion_identity;
  m[quaternion_dq.funName] = quaternion_dq;
  m[quaternion_euler.funName] = quaternion_euler;
  m[quaternion_fromFloat64List.funName] = quaternion_fromFloat64List;
  m[quaternion_fromBuffer.funName] = quaternion_fromBuffer;
  m[ray.funName] = ray;
  m[ray_copy.funName] = ray_copy;
  m[ray_originDirection.funName] = ray_originDirection;
  m[sphere.funName] = sphere;
  m[sphere_copy.funName] = sphere_copy;
  m[sphere_centerRadius.funName] = sphere_centerRadius;
  m[simplexNoise.funName] = simplexNoise;
  m[triangle.funName] = triangle;
  m[triangle_copy.funName] = triangle_copy;
  m[triangle_points.funName] = triangle_points;
  m[vector2.funName] = vector2;
  m[vector2_array.funName] = vector2_array;
  m[vector2_all.funName] = vector2_all;
  m[vector2_copy.funName] = vector2_copy;
  m[vector2_random.funName] = vector2_random;
  m[vector2_zero.funName] = vector2_zero;
  m[vector2_fromFloat64List.funName] = vector2_fromFloat64List;
  m[vector2_fromBuffer.funName] = vector2_fromBuffer;
  m[vector3.funName] = vector3;
  m[vector3_array.funName] = vector3_array;
  m[vector3_all.funName] = vector3_all;
  m[vector3_copy.funName] = vector3_copy;
  m[vector3_random.funName] = vector3_random;
  m[vector3_zero.funName] = vector3_zero;
  m[vector3_fromFloat64List.funName] = vector3_fromFloat64List;
  m[vector3_fromBuffer.funName] = vector3_fromBuffer;
  m[vector4.funName] = vector4;
  m[vector4_array.funName] = vector4_array;
  m[vector4_identity.funName] = vector4_identity;
  m[vector4_all.funName] = vector4_all;
  m[vector4_copy.funName] = vector4_copy;
  m[vector4_random.funName] = vector4_random;
  m[vector4_zero.funName] = vector4_zero;
  m[vector4_fromFloat64List.funName] = vector4_fromFloat64List;
  m[vector4_fromBuffer.funName] = vector4_fromBuffer;
  return m;
}
var aabb2 = MXFunctionInvoke(
    "Aabb2",
    ({
    }) =>
      Aabb2(
    ),
);
var aabb2_centerAndHalfExtents = MXFunctionInvoke(
  "aabb2.centerAndHalfExtents",
    ({
      Vector2 center,
      Vector2 halfExtents,
    }) =>
      Aabb2.centerAndHalfExtents(
      center,
      halfExtents,
    ),
);
var aabb2_copy = MXFunctionInvoke(
  "aabb2.copy",
    ({
      Aabb2 other,
    }) =>
      Aabb2.copy(
      other,
    ),
);
var aabb2_minMax = MXFunctionInvoke(
  "aabb2.minMax",
    ({
      Vector2 min,
      Vector2 max,
    }) =>
      Aabb2.minMax(
      min,
      max,
    ),
);
var aabb2_fromBuffer = MXFunctionInvoke(
  "aabb2.fromBuffer",
    ({
      ByteBuffer buffer,
      int offset,
    }) =>
      Aabb2.fromBuffer(
      buffer,
      offset,
    ),
);
var aabb3 = MXFunctionInvoke(
    "Aabb3",
    ({
    }) =>
      Aabb3(
    ),
);
var aabb3_fromSphere = MXFunctionInvoke(
  "aabb3.fromSphere",
    ({
      Sphere sphere,
    }) =>
      Aabb3.fromSphere(
      sphere,
    ),
);
var aabb3_fromTriangle = MXFunctionInvoke(
  "aabb3.fromTriangle",
    ({
      Triangle triangle,
    }) =>
      Aabb3.fromTriangle(
      triangle,
    ),
);
var aabb3_fromQuad = MXFunctionInvoke(
  "aabb3.fromQuad",
    ({
      Quad quad,
    }) =>
      Aabb3.fromQuad(
      quad,
    ),
);
var aabb3_fromObb3 = MXFunctionInvoke(
  "aabb3.fromObb3",
    ({
      Obb3 obb,
    }) =>
      Aabb3.fromObb3(
      obb,
    ),
);
var aabb3_fromRay = MXFunctionInvoke(
  "aabb3.fromRay",
    ({
      Ray ray,
      dynamic limitMin,
      dynamic limitMax,
    }) =>
      Aabb3.fromRay(
      ray,
      limitMin,
      limitMax,
    ),
);
var aabb3_centerAndHalfExtents = MXFunctionInvoke(
  "aabb3.centerAndHalfExtents",
    ({
      Vector3 center,
      Vector3 halfExtents,
    }) =>
      Aabb3.centerAndHalfExtents(
      center,
      halfExtents,
    ),
);
var aabb3_copy = MXFunctionInvoke(
  "aabb3.copy",
    ({
      Aabb3 other,
    }) =>
      Aabb3.copy(
      other,
    ),
);
var aabb3_minMax = MXFunctionInvoke(
  "aabb3.minMax",
    ({
      Vector3 min,
      Vector3 max,
    }) =>
      Aabb3.minMax(
      min,
      max,
    ),
);
var aabb3_fromBuffer = MXFunctionInvoke(
  "aabb3.fromBuffer",
    ({
      ByteBuffer buffer,
      int offset,
    }) =>
      Aabb3.fromBuffer(
      buffer,
      offset,
    ),
);
var frustum = MXFunctionInvoke(
    "Frustum",
    ({
    }) =>
      Frustum(
    ),
);
var frustum_copy = MXFunctionInvoke(
  "frustum.copy",
    ({
      Frustum other,
    }) =>
      Frustum.copy(
      other,
    ),
);
var frustum_matrix = MXFunctionInvoke(
  "frustum.matrix",
    ({
      Matrix4 matrix,
    }) =>
      Frustum.matrix(
      matrix,
    ),
);
var intersectionResult = MXFunctionInvoke(
    "IntersectionResult",
    ({
    }) =>
      IntersectionResult(
    ),
);
var matrix2 = MXFunctionInvoke(
    "Matrix2",
    ({
      dynamic arg0,
      dynamic arg1,
      dynamic arg2,
      dynamic arg3,
    }) =>
      Matrix2(
      arg0,
      arg1,
      arg2,
      arg3,
    ),
);
var matrix2_fromList = MXFunctionInvoke(
  "matrix2.fromList",
    ({
      List<double> values,
    }) =>
      Matrix2.fromList(
      values,
    ),
);
var matrix2_identity = MXFunctionInvoke(
  "matrix2.identity",
    ({
    }) =>
      Matrix2.identity(
    ),
);
var matrix2_copy = MXFunctionInvoke(
  "matrix2.copy",
    ({
      Matrix2 other,
    }) =>
      Matrix2.copy(
      other,
    ),
);
var matrix2_columns = MXFunctionInvoke(
  "matrix2.columns",
    ({
      Vector2 arg0,
      Vector2 arg1,
    }) =>
      Matrix2.columns(
      arg0,
      arg1,
    ),
);
var matrix2_outer = MXFunctionInvoke(
  "matrix2.outer",
    ({
      Vector2 u,
      Vector2 v,
    }) =>
      Matrix2.outer(
      u,
      v,
    ),
);
var matrix2_rotation = MXFunctionInvoke(
  "matrix2.rotation",
    ({
      dynamic radians,
    }) =>
      Matrix2.rotation(
      radians,
    ),
);
var matrix2_zero = MXFunctionInvoke(
  "matrix2.zero",
    ({
    }) =>
      Matrix2.zero(
    ),
);
var matrix3 = MXFunctionInvoke(
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
      arg0,
      arg1,
      arg2,
      arg3,
      arg4,
      arg5,
      arg6,
      arg7,
      arg8,
    ),
);
var matrix3_fromList = MXFunctionInvoke(
  "matrix3.fromList",
    ({
      List<double> values,
    }) =>
      Matrix3.fromList(
      values,
    ),
);
var matrix3_identity = MXFunctionInvoke(
  "matrix3.identity",
    ({
    }) =>
      Matrix3.identity(
    ),
);
var matrix3_copy = MXFunctionInvoke(
  "matrix3.copy",
    ({
      Matrix3 other,
    }) =>
      Matrix3.copy(
      other,
    ),
);
var matrix3_columns = MXFunctionInvoke(
  "matrix3.columns",
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
);
var matrix3_outer = MXFunctionInvoke(
  "matrix3.outer",
    ({
      Vector3 u,
      Vector3 v,
    }) =>
      Matrix3.outer(
      u,
      v,
    ),
);
var matrix3_rotationX = MXFunctionInvoke(
  "matrix3.rotationX",
    ({
      dynamic radians,
    }) =>
      Matrix3.rotationX(
      radians,
    ),
);
var matrix3_rotationY = MXFunctionInvoke(
  "matrix3.rotationY",
    ({
      dynamic radians,
    }) =>
      Matrix3.rotationY(
      radians,
    ),
);
var matrix3_rotationZ = MXFunctionInvoke(
  "matrix3.rotationZ",
    ({
      dynamic radians,
    }) =>
      Matrix3.rotationZ(
      radians,
    ),
);
var matrix3_zero = MXFunctionInvoke(
  "matrix3.zero",
    ({
    }) =>
      Matrix3.zero(
    ),
);
var matrix4 = MXFunctionInvoke(
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
      arg0,
      arg1,
      arg2,
      arg3,
      arg4,
      arg5,
      arg6,
      arg7,
      arg8,
      arg9,
      arg10,
      arg11,
      arg12,
      arg13,
      arg14,
      arg15,
    ),
);
var matrix4_fromList = MXFunctionInvoke(
  "matrix4.fromList",
    ({
      List<double> values,
    }) =>
      Matrix4.fromList(
      values,
    ),
);
var matrix4_identity = MXFunctionInvoke(
  "matrix4.identity",
    ({
    }) =>
      Matrix4.identity(
    ),
);
var matrix4_copy = MXFunctionInvoke(
  "matrix4.copy",
    ({
      Matrix4 other,
    }) =>
      Matrix4.copy(
      other,
    ),
);
var matrix4_inverted = MXFunctionInvoke(
  "matrix4.inverted",
    ({
      Matrix4 other,
    }) =>
      Matrix4.inverted(
      other,
    ),
);
var matrix4_columns = MXFunctionInvoke(
  "matrix4.columns",
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
);
var matrix4_outer = MXFunctionInvoke(
  "matrix4.outer",
    ({
      Vector4 u,
      Vector4 v,
    }) =>
      Matrix4.outer(
      u,
      v,
    ),
);
var matrix4_rotationX = MXFunctionInvoke(
  "matrix4.rotationX",
    ({
      dynamic radians,
    }) =>
      Matrix4.rotationX(
      radians,
    ),
);
var matrix4_rotationY = MXFunctionInvoke(
  "matrix4.rotationY",
    ({
      dynamic radians,
    }) =>
      Matrix4.rotationY(
      radians,
    ),
);
var matrix4_rotationZ = MXFunctionInvoke(
  "matrix4.rotationZ",
    ({
      dynamic radians,
    }) =>
      Matrix4.rotationZ(
      radians,
    ),
);
var matrix4_translation = MXFunctionInvoke(
  "matrix4.translation",
    ({
      Vector3 translation,
    }) =>
      Matrix4.translation(
      translation,
    ),
);
var matrix4_translationValues = MXFunctionInvoke(
  "matrix4.translationValues",
    ({
      dynamic x,
      dynamic y,
      dynamic z,
    }) =>
      Matrix4.translationValues(
      x,
      y,
      z,
    ),
);
var matrix4_diagonal3 = MXFunctionInvoke(
  "matrix4.diagonal3",
    ({
      Vector3 scale,
    }) =>
      Matrix4.diagonal3(
      scale,
    ),
);
var matrix4_diagonal3Values = MXFunctionInvoke(
  "matrix4.diagonal3Values",
    ({
      dynamic x,
      dynamic y,
      dynamic z,
    }) =>
      Matrix4.diagonal3Values(
      x,
      y,
      z,
    ),
);
var matrix4_skewX = MXFunctionInvoke(
  "matrix4.skewX",
    ({
      dynamic alpha,
    }) =>
      Matrix4.skewX(
      alpha,
    ),
);
var matrix4_skewY = MXFunctionInvoke(
  "matrix4.skewY",
    ({
      dynamic beta,
    }) =>
      Matrix4.skewY(
      beta,
    ),
);
var matrix4_skew = MXFunctionInvoke(
  "matrix4.skew",
    ({
      dynamic alpha,
      dynamic beta,
    }) =>
      Matrix4.skew(
      alpha,
      beta,
    ),
);
var matrix4_compose = MXFunctionInvoke(
  "matrix4.compose",
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
);
var matrix4_zero = MXFunctionInvoke(
  "matrix4.zero",
    ({
    }) =>
      Matrix4.zero(
    ),
);
var matrix4_fromFloat64List = MXFunctionInvoke(
  "matrix4.fromFloat64List",
    ({
      Float64List _m4storage,
    }) =>
      Matrix4.fromFloat64List(
      _m4storage,
    ),
);
var matrix4_fromBuffer = MXFunctionInvoke(
  "matrix4.fromBuffer",
    ({
      ByteBuffer buffer,
      int offset,
    }) =>
      Matrix4.fromBuffer(
      buffer,
      offset,
    ),
);
var obb3 = MXFunctionInvoke(
    "Obb3",
    ({
    }) =>
      Obb3(
    ),
);
var obb3_copy = MXFunctionInvoke(
  "obb3.copy",
    ({
      Obb3 other,
    }) =>
      Obb3.copy(
      other,
    ),
);
var obb3_centerExtentsAxes = MXFunctionInvoke(
  "obb3.centerExtentsAxes",
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
);
var plane = MXFunctionInvoke(
    "Plane",
    ({
    }) =>
      Plane(
    ),
);
var plane_copy = MXFunctionInvoke(
  "plane.copy",
    ({
      Plane other,
    }) =>
      Plane.copy(
      other,
    ),
);
var plane_components = MXFunctionInvoke(
  "plane.components",
    ({
      dynamic x,
      dynamic y,
      dynamic z,
      dynamic w,
    }) =>
      Plane.components(
      x,
      y,
      z,
      w,
    ),
);
var plane_normalconstant = MXFunctionInvoke(
  "plane.normalconstant",
    ({
      Vector3 normal_,
      dynamic constant_,
    }) =>
      Plane.normalconstant(
      normal_,
      constant_,
    ),
);
var quad = MXFunctionInvoke(
    "Quad",
    ({
    }) =>
      Quad(
    ),
);
var quad_copy = MXFunctionInvoke(
  "quad.copy",
    ({
      Quad other,
    }) =>
      Quad.copy(
      other,
    ),
);
var quad_points = MXFunctionInvoke(
  "quad.points",
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
);
var quaternion = MXFunctionInvoke(
    "Quaternion",
    ({
      dynamic x,
      dynamic y,
      dynamic z,
      dynamic w,
    }) =>
      Quaternion(
      x,
      y,
      z,
      w,
    ),
);
var quaternion_fromRotation = MXFunctionInvoke(
  "quaternion.fromRotation",
    ({
      Matrix3 rotationMatrix,
    }) =>
      Quaternion.fromRotation(
      rotationMatrix,
    ),
);
var quaternion_axisAngle = MXFunctionInvoke(
  "quaternion.axisAngle",
    ({
      Vector3 axis,
      dynamic angle,
    }) =>
      Quaternion.axisAngle(
      axis,
      angle,
    ),
);
var quaternion_fromTwoVectors = MXFunctionInvoke(
  "quaternion.fromTwoVectors",
    ({
      Vector3 a,
      Vector3 b,
    }) =>
      Quaternion.fromTwoVectors(
      a,
      b,
    ),
);
var quaternion_copy = MXFunctionInvoke(
  "quaternion.copy",
    ({
      Quaternion original,
    }) =>
      Quaternion.copy(
      original,
    ),
);
var quaternion_random = MXFunctionInvoke(
  "quaternion.random",
    ({
      Random rn,
    }) =>
      Quaternion.random(
      rn,
    ),
);
var quaternion_identity = MXFunctionInvoke(
  "quaternion.identity",
    ({
    }) =>
      Quaternion.identity(
    ),
);
var quaternion_dq = MXFunctionInvoke(
  "quaternion.dq",
    ({
      Quaternion q,
      Vector3 omega,
    }) =>
      Quaternion.dq(
      q,
      omega,
    ),
);
var quaternion_euler = MXFunctionInvoke(
  "quaternion.euler",
    ({
      dynamic yaw,
      dynamic pitch,
      dynamic roll,
    }) =>
      Quaternion.euler(
      yaw,
      pitch,
      roll,
    ),
);
var quaternion_fromFloat64List = MXFunctionInvoke(
  "quaternion.fromFloat64List",
    ({
      Float64List _qStorage,
    }) =>
      Quaternion.fromFloat64List(
      _qStorage,
    ),
);
var quaternion_fromBuffer = MXFunctionInvoke(
  "quaternion.fromBuffer",
    ({
      ByteBuffer buffer,
      int offset,
    }) =>
      Quaternion.fromBuffer(
      buffer,
      offset,
    ),
);
var ray = MXFunctionInvoke(
    "Ray",
    ({
    }) =>
      Ray(
    ),
);
var ray_copy = MXFunctionInvoke(
  "ray.copy",
    ({
      Ray other,
    }) =>
      Ray.copy(
      other,
    ),
);
var ray_originDirection = MXFunctionInvoke(
  "ray.originDirection",
    ({
      Vector3 origin,
      Vector3 direction,
    }) =>
      Ray.originDirection(
      origin,
      direction,
    ),
);
var sphere = MXFunctionInvoke(
    "Sphere",
    ({
    }) =>
      Sphere(
    ),
);
var sphere_copy = MXFunctionInvoke(
  "sphere.copy",
    ({
      Sphere other,
    }) =>
      Sphere.copy(
      other,
    ),
);
var sphere_centerRadius = MXFunctionInvoke(
  "sphere.centerRadius",
    ({
      Vector3 center,
      dynamic radius,
    }) =>
      Sphere.centerRadius(
      center,
      radius,
    ),
);
var simplexNoise = MXFunctionInvoke(
    "SimplexNoise",
    ({
      Random r,
    }) =>
      SimplexNoise(
      r,
    ),
);
var triangle = MXFunctionInvoke(
    "Triangle",
    ({
    }) =>
      Triangle(
    ),
);
var triangle_copy = MXFunctionInvoke(
  "triangle.copy",
    ({
      Triangle other,
    }) =>
      Triangle.copy(
      other,
    ),
);
var triangle_points = MXFunctionInvoke(
  "triangle.points",
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
);
var vector2 = MXFunctionInvoke(
    "Vector2",
    ({
      dynamic x,
      dynamic y,
    }) =>
      Vector2(
      x,
      y,
    ),
);
var vector2_array = MXFunctionInvoke(
  "vector2.array",
    ({
      List<double> array,
      int offset,
    }) =>
      Vector2.array(
      array,
      offset,
    ),
);
var vector2_all = MXFunctionInvoke(
  "vector2.all",
    ({
      dynamic value,
    }) =>
      Vector2.all(
      value,
    ),
);
var vector2_copy = MXFunctionInvoke(
  "vector2.copy",
    ({
      Vector2 other,
    }) =>
      Vector2.copy(
      other,
    ),
);
var vector2_random = MXFunctionInvoke(
  "vector2.random",
    ({
      Random rng,
    }) =>
      Vector2.random(
      rng,
    ),
);
var vector2_zero = MXFunctionInvoke(
  "vector2.zero",
    ({
    }) =>
      Vector2.zero(
    ),
);
var vector2_fromFloat64List = MXFunctionInvoke(
  "vector2.fromFloat64List",
    ({
      Float64List _v2storage,
    }) =>
      Vector2.fromFloat64List(
      _v2storage,
    ),
);
var vector2_fromBuffer = MXFunctionInvoke(
  "vector2.fromBuffer",
    ({
      ByteBuffer buffer,
      int offset,
    }) =>
      Vector2.fromBuffer(
      buffer,
      offset,
    ),
);
var vector3 = MXFunctionInvoke(
    "Vector3",
    ({
      dynamic x,
      dynamic y,
      dynamic z,
    }) =>
      Vector3(
      x,
      y,
      z,
    ),
);
var vector3_array = MXFunctionInvoke(
  "vector3.array",
    ({
      List<double> array,
      int offset,
    }) =>
      Vector3.array(
      array,
      offset,
    ),
);
var vector3_all = MXFunctionInvoke(
  "vector3.all",
    ({
      dynamic value,
    }) =>
      Vector3.all(
      value,
    ),
);
var vector3_copy = MXFunctionInvoke(
  "vector3.copy",
    ({
      Vector3 other,
    }) =>
      Vector3.copy(
      other,
    ),
);
var vector3_random = MXFunctionInvoke(
  "vector3.random",
    ({
      Random rng,
    }) =>
      Vector3.random(
      rng,
    ),
);
var vector3_zero = MXFunctionInvoke(
  "vector3.zero",
    ({
    }) =>
      Vector3.zero(
    ),
);
var vector3_fromFloat64List = MXFunctionInvoke(
  "vector3.fromFloat64List",
    ({
      Float64List _v3storage,
    }) =>
      Vector3.fromFloat64List(
      _v3storage,
    ),
);
var vector3_fromBuffer = MXFunctionInvoke(
  "vector3.fromBuffer",
    ({
      ByteBuffer buffer,
      int offset,
    }) =>
      Vector3.fromBuffer(
      buffer,
      offset,
    ),
);
var vector4 = MXFunctionInvoke(
    "Vector4",
    ({
      dynamic x,
      dynamic y,
      dynamic z,
      dynamic w,
    }) =>
      Vector4(
      x,
      y,
      z,
      w,
    ),
);
var vector4_array = MXFunctionInvoke(
  "vector4.array",
    ({
      List<double> array,
      int offset,
    }) =>
      Vector4.array(
      array,
      offset,
    ),
);
var vector4_identity = MXFunctionInvoke(
  "vector4.identity",
    ({
    }) =>
      Vector4.identity(
    ),
);
var vector4_all = MXFunctionInvoke(
  "vector4.all",
    ({
      dynamic value,
    }) =>
      Vector4.all(
      value,
    ),
);
var vector4_copy = MXFunctionInvoke(
  "vector4.copy",
    ({
      Vector4 other,
    }) =>
      Vector4.copy(
      other,
    ),
);
var vector4_random = MXFunctionInvoke(
  "vector4.random",
    ({
      Random rng,
    }) =>
      Vector4.random(
      rng,
    ),
);
var vector4_zero = MXFunctionInvoke(
  "vector4.zero",
    ({
    }) =>
      Vector4.zero(
    ),
);
var vector4_fromFloat64List = MXFunctionInvoke(
  "vector4.fromFloat64List",
    ({
      Float64List _v4storage,
    }) =>
      Vector4.fromFloat64List(
      _v4storage,
    ),
);
var vector4_fromBuffer = MXFunctionInvoke(
  "vector4.fromBuffer",
    ({
      ByteBuffer buffer,
      int offset,
    }) =>
      Vector4.fromBuffer(
      buffer,
      offset,
    ),
);
