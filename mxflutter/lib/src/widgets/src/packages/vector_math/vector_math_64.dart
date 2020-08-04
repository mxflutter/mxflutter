//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import 'package:mxflutter/src/mirror/mx_mirror.dart';
import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart';


class MXProxyVectorMath64 {
  ///把自己能处理的类注册到分发器中
  static Map<String, MXFunctionInvoke> registerSeries() {
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
    m[colors_.funName] = colors_;
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
    m[quaternion_.funName] = quaternion_;
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
  static var aabb2 = MXFunctionInvoke(
      "Aabb2",
      ({
      }) =>
        Aabb2(
      ),
    );
  static var aabb2_centerAndHalfExtents = MXFunctionInvoke(
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
  static var aabb2_copy = MXFunctionInvoke(
    "aabb2.copy",
      ({
        Aabb2 other,
      }) =>
        Aabb2.copy(
        other,
      ),
    );
  static var aabb2_minMax = MXFunctionInvoke(
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
  static var aabb2_fromBuffer = MXFunctionInvoke(
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
  static var aabb3 = MXFunctionInvoke(
      "Aabb3",
      ({
      }) =>
        Aabb3(
      ),
    );
  static var aabb3_fromSphere = MXFunctionInvoke(
    "aabb3.fromSphere",
      ({
        Sphere sphere,
      }) =>
        Aabb3.fromSphere(
        sphere,
      ),
    );
  static var aabb3_fromTriangle = MXFunctionInvoke(
    "aabb3.fromTriangle",
      ({
        Triangle triangle,
      }) =>
        Aabb3.fromTriangle(
        triangle,
      ),
    );
  static var aabb3_fromQuad = MXFunctionInvoke(
    "aabb3.fromQuad",
      ({
        Quad quad,
      }) =>
        Aabb3.fromQuad(
        quad,
      ),
    );
  static var aabb3_fromObb3 = MXFunctionInvoke(
    "aabb3.fromObb3",
      ({
        Obb3 obb,
      }) =>
        Aabb3.fromObb3(
        obb,
      ),
    );
  static var aabb3_fromRay = MXFunctionInvoke(
    "aabb3.fromRay",
      ({
        Ray ray,
        double limitMin,
        double limitMax,
      }) =>
        Aabb3.fromRay(
        ray,
        limitMin,
        limitMax,
      ),
    );
  static var aabb3_centerAndHalfExtents = MXFunctionInvoke(
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
  static var aabb3_copy = MXFunctionInvoke(
    "aabb3.copy",
      ({
        Aabb3 other,
      }) =>
        Aabb3.copy(
        other,
      ),
    );
  static var aabb3_minMax = MXFunctionInvoke(
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
  static var aabb3_fromBuffer = MXFunctionInvoke(
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
  static var colors_ = MXFunctionInvoke(
    "colors.",
      ({
      }) =>
        Colors.(
      ),
    );
  static var frustum = MXFunctionInvoke(
      "Frustum",
      ({
      }) =>
        Frustum(
      ),
    );
  static var frustum_copy = MXFunctionInvoke(
    "frustum.copy",
      ({
        Frustum other,
      }) =>
        Frustum.copy(
        other,
      ),
    );
  static var frustum_matrix = MXFunctionInvoke(
    "frustum.matrix",
      ({
        Matrix4 matrix,
      }) =>
        Frustum.matrix(
        matrix,
      ),
    );
  static var intersectionResult = MXFunctionInvoke(
      "IntersectionResult",
      ({
      }) =>
        IntersectionResult(
      ),
    );
  static var matrix2 = MXFunctionInvoke(
      "Matrix2",
      ({
        double arg0,
        double arg1,
        double arg2,
        double arg3,
      }) =>
        Matrix2(
        arg0,
        arg1,
        arg2,
        arg3,
      ),
    );
  static var matrix2_fromList = MXFunctionInvoke(
    "matrix2.fromList",
      ({
        List<double> values,
      }) =>
        Matrix2.fromList(
        values,
      ),
    );
  static var matrix2_identity = MXFunctionInvoke(
    "matrix2.identity",
      ({
      }) =>
        Matrix2.identity(
      ),
    );
  static var matrix2_copy = MXFunctionInvoke(
    "matrix2.copy",
      ({
        Matrix2 other,
      }) =>
        Matrix2.copy(
        other,
      ),
    );
  static var matrix2_columns = MXFunctionInvoke(
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
  static var matrix2_outer = MXFunctionInvoke(
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
  static var matrix2_rotation = MXFunctionInvoke(
    "matrix2.rotation",
      ({
        double radians,
      }) =>
        Matrix2.rotation(
        radians,
      ),
    );
  static var matrix2_zero = MXFunctionInvoke(
    "matrix2.zero",
      ({
      }) =>
        Matrix2.zero(
      ),
    );
  static var matrix3 = MXFunctionInvoke(
      "Matrix3",
      ({
        double arg0,
        double arg1,
        double arg2,
        double arg3,
        double arg4,
        double arg5,
        double arg6,
        double arg7,
        double arg8,
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
  static var matrix3_fromList = MXFunctionInvoke(
    "matrix3.fromList",
      ({
        List<double> values,
      }) =>
        Matrix3.fromList(
        values,
      ),
    );
  static var matrix3_identity = MXFunctionInvoke(
    "matrix3.identity",
      ({
      }) =>
        Matrix3.identity(
      ),
    );
  static var matrix3_copy = MXFunctionInvoke(
    "matrix3.copy",
      ({
        Matrix3 other,
      }) =>
        Matrix3.copy(
        other,
      ),
    );
  static var matrix3_columns = MXFunctionInvoke(
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
  static var matrix3_outer = MXFunctionInvoke(
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
  static var matrix3_rotationX = MXFunctionInvoke(
    "matrix3.rotationX",
      ({
        double radians,
      }) =>
        Matrix3.rotationX(
        radians,
      ),
    );
  static var matrix3_rotationY = MXFunctionInvoke(
    "matrix3.rotationY",
      ({
        double radians,
      }) =>
        Matrix3.rotationY(
        radians,
      ),
    );
  static var matrix3_rotationZ = MXFunctionInvoke(
    "matrix3.rotationZ",
      ({
        double radians,
      }) =>
        Matrix3.rotationZ(
        radians,
      ),
    );
  static var matrix3_zero = MXFunctionInvoke(
    "matrix3.zero",
      ({
      }) =>
        Matrix3.zero(
      ),
    );
  static var matrix4 = MXFunctionInvoke(
      "Matrix4",
      ({
        double arg0,
        double arg1,
        double arg2,
        double arg3,
        double arg4,
        double arg5,
        double arg6,
        double arg7,
        double arg8,
        double arg9,
        double arg10,
        double arg11,
        double arg12,
        double arg13,
        double arg14,
        double arg15,
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
  static var matrix4_fromList = MXFunctionInvoke(
    "matrix4.fromList",
      ({
        List<double> values,
      }) =>
        Matrix4.fromList(
        values,
      ),
    );
  static var matrix4_identity = MXFunctionInvoke(
    "matrix4.identity",
      ({
      }) =>
        Matrix4.identity(
      ),
    );
  static var matrix4_copy = MXFunctionInvoke(
    "matrix4.copy",
      ({
        Matrix4 other,
      }) =>
        Matrix4.copy(
        other,
      ),
    );
  static var matrix4_inverted = MXFunctionInvoke(
    "matrix4.inverted",
      ({
        Matrix4 other,
      }) =>
        Matrix4.inverted(
        other,
      ),
    );
  static var matrix4_columns = MXFunctionInvoke(
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
  static var matrix4_outer = MXFunctionInvoke(
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
  static var matrix4_rotationX = MXFunctionInvoke(
    "matrix4.rotationX",
      ({
        double radians,
      }) =>
        Matrix4.rotationX(
        radians,
      ),
    );
  static var matrix4_rotationY = MXFunctionInvoke(
    "matrix4.rotationY",
      ({
        double radians,
      }) =>
        Matrix4.rotationY(
        radians,
      ),
    );
  static var matrix4_rotationZ = MXFunctionInvoke(
    "matrix4.rotationZ",
      ({
        double radians,
      }) =>
        Matrix4.rotationZ(
        radians,
      ),
    );
  static var matrix4_translation = MXFunctionInvoke(
    "matrix4.translation",
      ({
        Vector3 translation,
      }) =>
        Matrix4.translation(
        translation,
      ),
    );
  static var matrix4_translationValues = MXFunctionInvoke(
    "matrix4.translationValues",
      ({
        double x,
        double y,
        double z,
      }) =>
        Matrix4.translationValues(
        x,
        y,
        z,
      ),
    );
  static var matrix4_diagonal3 = MXFunctionInvoke(
    "matrix4.diagonal3",
      ({
        Vector3 scale,
      }) =>
        Matrix4.diagonal3(
        scale,
      ),
    );
  static var matrix4_diagonal3Values = MXFunctionInvoke(
    "matrix4.diagonal3Values",
      ({
        double x,
        double y,
        double z,
      }) =>
        Matrix4.diagonal3Values(
        x,
        y,
        z,
      ),
    );
  static var matrix4_skewX = MXFunctionInvoke(
    "matrix4.skewX",
      ({
        double alpha,
      }) =>
        Matrix4.skewX(
        alpha,
      ),
    );
  static var matrix4_skewY = MXFunctionInvoke(
    "matrix4.skewY",
      ({
        double beta,
      }) =>
        Matrix4.skewY(
        beta,
      ),
    );
  static var matrix4_skew = MXFunctionInvoke(
    "matrix4.skew",
      ({
        double alpha,
        double beta,
      }) =>
        Matrix4.skew(
        alpha,
        beta,
      ),
    );
  static var matrix4_compose = MXFunctionInvoke(
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
  static var matrix4_zero = MXFunctionInvoke(
    "matrix4.zero",
      ({
      }) =>
        Matrix4.zero(
      ),
    );
  static var matrix4_fromFloat64List = MXFunctionInvoke(
    "matrix4.fromFloat64List",
      ({
        Float64List _m4storage,
      }) =>
        Matrix4.fromFloat64List(
        _m4storage,
      ),
    );
  static var matrix4_fromBuffer = MXFunctionInvoke(
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
  static var obb3 = MXFunctionInvoke(
      "Obb3",
      ({
      }) =>
        Obb3(
      ),
    );
  static var obb3_copy = MXFunctionInvoke(
    "obb3.copy",
      ({
        Obb3 other,
      }) =>
        Obb3.copy(
        other,
      ),
    );
  static var obb3_centerExtentsAxes = MXFunctionInvoke(
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
  static var plane = MXFunctionInvoke(
      "Plane",
      ({
      }) =>
        Plane(
      ),
    );
  static var plane_copy = MXFunctionInvoke(
    "plane.copy",
      ({
        Plane other,
      }) =>
        Plane.copy(
        other,
      ),
    );
  static var plane_components = MXFunctionInvoke(
    "plane.components",
      ({
        double x,
        double y,
        double z,
        double w,
      }) =>
        Plane.components(
        x,
        y,
        z,
        w,
      ),
    );
  static var plane_normalconstant = MXFunctionInvoke(
    "plane.normalconstant",
      ({
        Vector3 normal_,
        double constant_,
      }) =>
        Plane.normalconstant(
        normal_,
        constant_,
      ),
    );
  static var quad = MXFunctionInvoke(
      "Quad",
      ({
      }) =>
        Quad(
      ),
    );
  static var quad_copy = MXFunctionInvoke(
    "quad.copy",
      ({
        Quad other,
      }) =>
        Quad.copy(
        other,
      ),
    );
  static var quad_points = MXFunctionInvoke(
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
  static var quaternion = MXFunctionInvoke(
      "Quaternion",
      ({
        double x,
        double y,
        double z,
        double w,
      }) =>
        Quaternion(
        x,
        y,
        z,
        w,
      ),
    );
  static var quaternion_fromRotation = MXFunctionInvoke(
    "quaternion.fromRotation",
      ({
        Matrix3 rotationMatrix,
      }) =>
        Quaternion.fromRotation(
        rotationMatrix,
      ),
    );
  static var quaternion_axisAngle = MXFunctionInvoke(
    "quaternion.axisAngle",
      ({
        Vector3 axis,
        double angle,
      }) =>
        Quaternion.axisAngle(
        axis,
        angle,
      ),
    );
  static var quaternion_fromTwoVectors = MXFunctionInvoke(
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
  static var quaternion_copy = MXFunctionInvoke(
    "quaternion.copy",
      ({
        Quaternion original,
      }) =>
        Quaternion.copy(
        original,
      ),
    );
  static var quaternion_random = MXFunctionInvoke(
    "quaternion.random",
      ({
        Random rn,
      }) =>
        Quaternion.random(
        rn,
      ),
    );
  static var quaternion_identity = MXFunctionInvoke(
    "quaternion.identity",
      ({
      }) =>
        Quaternion.identity(
      ),
    );
  static var quaternion_dq = MXFunctionInvoke(
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
  static var quaternion_euler = MXFunctionInvoke(
    "quaternion.euler",
      ({
        double yaw,
        double pitch,
        double roll,
      }) =>
        Quaternion.euler(
        yaw,
        pitch,
        roll,
      ),
    );
  static var quaternion_ = MXFunctionInvoke(
    "quaternion.",
      ({
      }) =>
        Quaternion.(
      ),
    );
  static var quaternion_fromFloat64List = MXFunctionInvoke(
    "quaternion.fromFloat64List",
      ({
        Float64List _qStorage,
      }) =>
        Quaternion.fromFloat64List(
        _qStorage,
      ),
    );
  static var quaternion_fromBuffer = MXFunctionInvoke(
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
  static var ray = MXFunctionInvoke(
      "Ray",
      ({
      }) =>
        Ray(
      ),
    );
  static var ray_copy = MXFunctionInvoke(
    "ray.copy",
      ({
        Ray other,
      }) =>
        Ray.copy(
        other,
      ),
    );
  static var ray_originDirection = MXFunctionInvoke(
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
  static var sphere = MXFunctionInvoke(
      "Sphere",
      ({
      }) =>
        Sphere(
      ),
    );
  static var sphere_copy = MXFunctionInvoke(
    "sphere.copy",
      ({
        Sphere other,
      }) =>
        Sphere.copy(
        other,
      ),
    );
  static var sphere_centerRadius = MXFunctionInvoke(
    "sphere.centerRadius",
      ({
        Vector3 center,
        double radius,
      }) =>
        Sphere.centerRadius(
        center,
        radius,
      ),
    );
  static var simplexNoise = MXFunctionInvoke(
      "SimplexNoise",
      ({
        Random r,
      }) =>
        SimplexNoise(
        r,
      ),
    );
  static var triangle = MXFunctionInvoke(
      "Triangle",
      ({
      }) =>
        Triangle(
      ),
    );
  static var triangle_copy = MXFunctionInvoke(
    "triangle.copy",
      ({
        Triangle other,
      }) =>
        Triangle.copy(
        other,
      ),
    );
  static var triangle_points = MXFunctionInvoke(
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
  static var vector2 = MXFunctionInvoke(
      "Vector2",
      ({
        double x,
        double y,
      }) =>
        Vector2(
        x,
        y,
      ),
    );
  static var vector2_array = MXFunctionInvoke(
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
  static var vector2_all = MXFunctionInvoke(
    "vector2.all",
      ({
        double value,
      }) =>
        Vector2.all(
        value,
      ),
    );
  static var vector2_copy = MXFunctionInvoke(
    "vector2.copy",
      ({
        Vector2 other,
      }) =>
        Vector2.copy(
        other,
      ),
    );
  static var vector2_random = MXFunctionInvoke(
    "vector2.random",
      ({
        Random rng,
      }) =>
        Vector2.random(
        rng,
      ),
    );
  static var vector2_zero = MXFunctionInvoke(
    "vector2.zero",
      ({
      }) =>
        Vector2.zero(
      ),
    );
  static var vector2_fromFloat64List = MXFunctionInvoke(
    "vector2.fromFloat64List",
      ({
        Float64List _v2storage,
      }) =>
        Vector2.fromFloat64List(
        _v2storage,
      ),
    );
  static var vector2_fromBuffer = MXFunctionInvoke(
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
  static var vector3 = MXFunctionInvoke(
      "Vector3",
      ({
        double x,
        double y,
        double z,
      }) =>
        Vector3(
        x,
        y,
        z,
      ),
    );
  static var vector3_array = MXFunctionInvoke(
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
  static var vector3_all = MXFunctionInvoke(
    "vector3.all",
      ({
        double value,
      }) =>
        Vector3.all(
        value,
      ),
    );
  static var vector3_copy = MXFunctionInvoke(
    "vector3.copy",
      ({
        Vector3 other,
      }) =>
        Vector3.copy(
        other,
      ),
    );
  static var vector3_random = MXFunctionInvoke(
    "vector3.random",
      ({
        Random rng,
      }) =>
        Vector3.random(
        rng,
      ),
    );
  static var vector3_zero = MXFunctionInvoke(
    "vector3.zero",
      ({
      }) =>
        Vector3.zero(
      ),
    );
  static var vector3_fromFloat64List = MXFunctionInvoke(
    "vector3.fromFloat64List",
      ({
        Float64List _v3storage,
      }) =>
        Vector3.fromFloat64List(
        _v3storage,
      ),
    );
  static var vector3_fromBuffer = MXFunctionInvoke(
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
  static var vector4 = MXFunctionInvoke(
      "Vector4",
      ({
        double x,
        double y,
        double z,
        double w,
      }) =>
        Vector4(
        x,
        y,
        z,
        w,
      ),
    );
  static var vector4_array = MXFunctionInvoke(
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
  static var vector4_identity = MXFunctionInvoke(
    "vector4.identity",
      ({
      }) =>
        Vector4.identity(
      ),
    );
  static var vector4_all = MXFunctionInvoke(
    "vector4.all",
      ({
        double value,
      }) =>
        Vector4.all(
        value,
      ),
    );
  static var vector4_copy = MXFunctionInvoke(
    "vector4.copy",
      ({
        Vector4 other,
      }) =>
        Vector4.copy(
        other,
      ),
    );
  static var vector4_random = MXFunctionInvoke(
    "vector4.random",
      ({
        Random rng,
      }) =>
        Vector4.random(
        rng,
      ),
    );
  static var vector4_zero = MXFunctionInvoke(
    "vector4.zero",
      ({
      }) =>
        Vector4.zero(
      ),
    );
  static var vector4_fromFloat64List = MXFunctionInvoke(
    "vector4.fromFloat64List",
      ({
        Float64List _v4storage,
      }) =>
        Vector4.fromFloat64List(
        _v4storage,
      ),
    );
  static var vector4_fromBuffer = MXFunctionInvoke(
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
}
