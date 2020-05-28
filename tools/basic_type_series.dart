import 'dart_builder.dart';

var list = <String>[
  """
Key(
  String value
  )
  """,
  """
AlignmentDirectional(
  this.start, 
  this.y
  )
  """,
  """
EdgeInsetsDirectional.fromSTEB(
  this.start,
   this.top,
    this.end, 
    this.bottom
    )
  """,
  """
  const EdgeInsetsDirectional.only({
    this.start = 0.0,
    this.top = 0.0,
    this.end = 0.0,
    this.bottom = 0.0
  });
  """,
  """
enum BlendMode {
  // This list comes from Skia's SkXfermode.h and the values (order) should be
  // kept in sync.
  // See: https://skia.org/user/api/skpaint#SkXfermode

  /// Drop both the source and destination images, leaving nothing.
  ///
  /// This corresponds to the "clear" Porter-Duff operator.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/blend_mode_clear.png)
  clear,

  /// Drop the destination image, only paint the source image.
  ///
  /// Conceptually, the destination is first cleared, then the source image is
  /// painted.
  ///
  /// This corresponds to the "Copy" Porter-Duff operator.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/blend_mode_src.png)
  src,

  /// Drop the source image, only paint the destination image.
  ///
  /// Conceptually, the source image is discarded, leaving the destination
  /// untouched.
  ///
  /// This corresponds to the "Destination" Porter-Duff operator.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/blend_mode_dst.png)
  dst,

  /// Composite the source image over the destination image.
  ///
  /// This is the default value. It represents the most intuitive case, where
  /// shapes are painted on top of what is below, with transparent areas showing
  /// the destination layer.
  ///
  /// This corresponds to the "Source over Destination" Porter-Duff operator,
  /// also known as the Painter's Algorithm.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/blend_mode_srcOver.png)
  srcOver,

  /// Composite the source image under the destination image.
  ///
  /// This is the opposite of [srcOver].
  ///
  /// This corresponds to the "Destination over Source" Porter-Duff operator.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/blend_mode_dstOver.png)
  ///
  /// This is useful when the source image should have been painted before the
  /// destination image, but could not be.
  dstOver,

  /// Show the source image, but only where the two images overlap. The
  /// destination image is not rendered, it is treated merely as a mask. The
  /// color channels of the destination are ignored, only the opacity has an
  /// effect.
  ///
  /// To show the destination image instead, consider [dstIn].
  ///
  /// To reverse the semantic of the mask (only showing the source where the
  /// destination is absent, rather than where it is present), consider
  /// [srcOut].
  ///
  /// This corresponds to the "Source in Destination" Porter-Duff operator.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/blend_mode_srcIn.png)
  srcIn,

  /// Show the destination image, but only where the two images overlap. The
  /// source image is not rendered, it is treated merely as a mask. The color
  /// channels of the source are ignored, only the opacity has an effect.
  ///
  /// To show the source image instead, consider [srcIn].
  ///
  /// To reverse the semantic of the mask (only showing the source where the
  /// destination is present, rather than where it is absent), consider [dstOut].
  ///
  /// This corresponds to the "Destination in Source" Porter-Duff operator.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/blend_mode_dstIn.png)
  dstIn,

  /// Show the source image, but only where the two images do not overlap. The
  /// destination image is not rendered, it is treated merely as a mask. The color
  /// channels of the destination are ignored, only the opacity has an effect.
  ///
  /// To show the destination image instead, consider [dstOut].
  ///
  /// To reverse the semantic of the mask (only showing the source where the
  /// destination is present, rather than where it is absent), consider [srcIn].
  ///
  /// This corresponds to the "Source out Destination" Porter-Duff operator.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/blend_mode_srcOut.png)
  srcOut,

  /// Show the destination image, but only where the two images do not overlap. The
  /// source image is not rendered, it is treated merely as a mask. The color
  /// channels of the source are ignored, only the opacity has an effect.
  ///
  /// To show the source image instead, consider [srcOut].
  ///
  /// To reverse the semantic of the mask (only showing the destination where the
  /// source is present, rather than where it is absent), consider [dstIn].
  ///
  /// This corresponds to the "Destination out Source" Porter-Duff operator.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/blend_mode_dstOut.png)
  dstOut,

  /// Composite the source image over the destination image, but only where it
  /// overlaps the destination.
  ///
  /// This corresponds to the "Source atop Destination" Porter-Duff operator.
  ///
  /// This is essentially the [srcOver] operator, but with the output's opacity
  /// channel being set to that of the destination image instead of being a
  /// combination of both image's opacity channels.
  ///
  /// For a variant with the destination on top instead of the source, see
  /// [dstATop].
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/blend_mode_srcATop.png)
  srcATop,

  /// Composite the destination image over the source image, but only where it
  /// overlaps the source.
  ///
  /// This corresponds to the "Destination atop Source" Porter-Duff operator.
  ///
  /// This is essentially the [dstOver] operator, but with the output's opacity
  /// channel being set to that of the source image instead of being a
  /// combination of both image's opacity channels.
  ///
  /// For a variant with the source on top instead of the destination, see
  /// [srcATop].
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/blend_mode_dstATop.png)
  dstATop,

  /// Apply a bitwise `xor` operator to the source and destination images. This
  /// leaves transparency where they would overlap.
  ///
  /// This corresponds to the "Source xor Destination" Porter-Duff operator.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/blend_mode_xor.png)
  xor,

  /// Sum the components of the source and destination images.
  ///
  /// Transparency in a pixel of one of the images reduces the contribution of
  /// that image to the corresponding output pixel, as if the color of that
  /// pixel in that image was darker.
  ///
  /// This corresponds to the "Source plus Destination" Porter-Duff operator.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/blend_mode_plus.png)
  plus,

  /// Multiply the color components of the source and destination images.
  ///
  /// This can only result in the same or darker colors (multiplying by white,
  /// 1.0, results in no change; multiplying by black, 0.0, results in black).
  ///
  /// When compositing two opaque images, this has similar effect to overlapping
  /// two transparencies on a projector.
  ///
  /// For a variant that also multiplies the alpha channel, consider [multiply].
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/blend_mode_modulate.png)
  ///
  /// See also:
  ///
  ///  * [screen], which does a similar computation but inverted.
  ///  * [overlay], which combines [modulate] and [screen] to favor the
  ///    destination image.
  ///  * [hardLight], which combines [modulate] and [screen] to favor the
  ///    source image.
  modulate,

  // Following blend modes are defined in the CSS Compositing standard.

  /// Multiply the inverse of the components of the source and destination
  /// images, and inverse the result.
  ///
  /// Inverting the components means that a fully saturated channel (opaque
  /// white) is treated as the value 0.0, and values normally treated as 0.0
  /// (black, transparent) are treated as 1.0.
  ///
  /// This is essentially the same as [modulate] blend mode, but with the values
  /// of the colors inverted before the multiplication and the result being
  /// inverted back before rendering.
  ///
  /// This can only result in the same or lighter colors (multiplying by black,
  /// 1.0, results in no change; multiplying by white, 0.0, results in white).
  /// Similarly, in the alpha channel, it can only result in more opaque colors.
  ///
  /// This has similar effect to two projectors displaying their images on the
  /// same screen simultaneously.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/blend_mode_screen.png)
  ///
  /// See also:
  ///
  ///  * [modulate], which does a similar computation but without inverting the
  ///    values.
  ///  * [overlay], which combines [modulate] and [screen] to favor the
  ///    destination image.
  ///  * [hardLight], which combines [modulate] and [screen] to favor the
  ///    source image.
  screen,  // The last coeff mode.

  /// Multiply the components of the source and destination images after
  /// adjusting them to favor the destination.
  ///
  /// Specifically, if the destination value is smaller, this multiplies it with
  /// the source value, whereas is the source value is smaller, it multiplies
  /// the inverse of the source value with the inverse of the destination value,
  /// then inverts the result.
  ///
  /// Inverting the components means that a fully saturated channel (opaque
  /// white) is treated as the value 0.0, and values normally treated as 0.0
  /// (black, transparent) are treated as 1.0.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/blend_mode_overlay.png)
  ///
  /// See also:
  ///
  ///  * [modulate], which always multiplies the values.
  ///  * [screen], which always multiplies the inverses of the values.
  ///  * [hardLight], which is similar to [overlay] but favors the source image
  ///    instead of the destination image.
  overlay,

  /// Composite the source and destination image by choosing the lowest value
  /// from each color channel.
  ///
  /// The opacity of the output image is computed in the same way as for
  /// [srcOver].
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/blend_mode_darken.png)
  darken,

  /// Composite the source and destination image by choosing the highest value
  /// from each color channel.
  ///
  /// The opacity of the output image is computed in the same way as for
  /// [srcOver].
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/blend_mode_lighten.png)
  lighten,

  /// Divide the destination by the inverse of the source.
  ///
  /// Inverting the components means that a fully saturated channel (opaque
  /// white) is treated as the value 0.0, and values normally treated as 0.0
  /// (black, transparent) are treated as 1.0.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/blend_mode_colorDodge.png)
  colorDodge,

  /// Divide the inverse of the destination by the the source, and inverse the result.
  ///
  /// Inverting the components means that a fully saturated channel (opaque
  /// white) is treated as the value 0.0, and values normally treated as 0.0
  /// (black, transparent) are treated as 1.0.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/blend_mode_colorBurn.png)
  colorBurn,

  /// Multiply the components of the source and destination images after
  /// adjusting them to favor the source.
  ///
  /// Specifically, if the source value is smaller, this multiplies it with the
  /// destination value, whereas is the destination value is smaller, it
  /// multiplies the inverse of the destination value with the inverse of the
  /// source value, then inverts the result.
  ///
  /// Inverting the components means that a fully saturated channel (opaque
  /// white) is treated as the value 0.0, and values normally treated as 0.0
  /// (black, transparent) are treated as 1.0.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/blend_mode_hardLight.png)
  ///
  /// See also:
  ///
  ///  * [modulate], which always multiplies the values.
  ///  * [screen], which always multiplies the inverses of the values.
  ///  * [overlay], which is similar to [hardLight] but favors the destination
  ///    image instead of the source image.
  hardLight,

  /// Use [colorDodge] for source values below 0.5 and [colorBurn] for source
  /// values above 0.5.
  ///
  /// This results in a similar but softer effect than [overlay].
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/blend_mode_softLight.png)
  ///
  /// See also:
  ///
  ///  * [color], which is a more subtle tinting effect.
  softLight,

  /// Subtract the smaller value from the bigger value for each channel.
  ///
  /// Compositing black has no effect; compositing white inverts the colors of
  /// the other image.
  ///
  /// The opacity of the output image is computed in the same way as for
  /// [srcOver].
  ///
  /// The effect is similar to [exclusion] but harsher.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/blend_mode_difference.png)
  difference,

  /// Subtract double the product of the two images from the sum of the two
  /// images.
  ///
  /// Compositing black has no effect; compositing white inverts the colors of
  /// the other image.
  ///
  /// The opacity of the output image is computed in the same way as for
  /// [srcOver].
  ///
  /// The effect is similar to [difference] but softer.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/blend_mode_exclusion.png)
  exclusion,

  /// Multiply the components of the source and destination images, including
  /// the alpha channel.
  ///
  /// This can only result in the same or darker colors (multiplying by white,
  /// 1.0, results in no change; multiplying by black, 0.0, results in black).
  ///
  /// Since the alpha channel is also multiplied, a fully-transparent pixel
  /// (opacity 0.0) in one image results in a fully transparent pixel in the
  /// output. This is similar to [dstIn], but with the colors combined.
  ///
  /// For a variant that multiplies the colors but does not multiply the alpha
  /// channel, consider [modulate].
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/blend_mode_multiply.png)
  multiply,  // The last separable mode.

  /// Take the hue of the source image, and the saturation and luminosity of the
  /// destination image.
  ///
  /// The effect is to tint the destination image with the source image.
  ///
  /// The opacity of the output image is computed in the same way as for
  /// [srcOver]. Regions that are entirely transparent in the source image take
  /// their hue from the destination.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/blend_mode_hue.png)
  ///
  /// See also:
  ///
  ///  * [color], which is a similar but stronger effect as it also applies the
  ///    saturation of the source image.
  ///  * [HSVColor], which allows colors to be expressed using Hue rather than
  ///    the red/green/blue channels of [Color].
  hue,

  /// Take the saturation of the source image, and the hue and luminosity of the
  /// destination image.
  ///
  /// The opacity of the output image is computed in the same way as for
  /// [srcOver]. Regions that are entirely transparent in the source image take
  /// their saturation from the destination.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/blend_mode_hue.png)
  ///
  /// See also:
  ///
  ///  * [color], which also applies the hue of the source image.
  ///  * [luminosity], which applies the luminosity of the source image to the
  ///    destination.
  saturation,

  /// Take the hue and saturation of the source image, and the luminosity of the
  /// destination image.
  ///
  /// The effect is to tint the destination image with the source image.
  ///
  /// The opacity of the output image is computed in the same way as for
  /// [srcOver]. Regions that are entirely transparent in the source image take
  /// their hue and saturation from the destination.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/blend_mode_color.png)
  ///
  /// See also:
  ///
  ///  * [hue], which is a similar but weaker effect.
  ///  * [softLight], which is a similar tinting effect but also tints white.
  ///  * [saturation], which only applies the saturation of the source image.
  color,

  /// Take the luminosity of the source image, and the hue and saturation of the
  /// destination image.
  ///
  /// The opacity of the output image is computed in the same way as for
  /// [srcOver]. Regions that are entirely transparent in the source image take
  /// their luminosity from the destination.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/blend_mode_luminosity.png)
  ///
  /// See also:
  ///
  ///  * [saturation], which applies the saturation of the source image to the
  ///    destination.
  ///  * [ImageFilter.blur], which can be used with [BackdropFilter] for a
  ///    related effect.
  luminosity,
}
  """,
  """
enum FilterQuality {
  // This list comes from Skia's SkFilterQuality.h and the values (order) should
  // be kept in sync.

  /// Fastest possible filtering, albeit also the lowest quality.
  ///
  /// Typically this implies nearest-neighbour filtering.
  none,

  /// Better quality than [none], faster than [medium].
  ///
  /// Typically this implies bilinear interpolation.
  low,

  /// Better quality than [low], faster than [high].
  ///
  /// Typically this implies a combination of bilinear interpolation and
  /// pyramidal parametric prefiltering (mipmaps).
  medium,

  /// Best possible quality filtering, albeit also the slowest.
  ///
  /// Typically this implies bicubic interpolation or better.
  high,
}
  """,
  """
enum BlurStyle {
  // These mirror SkBlurStyle and must be kept in sync.

  /// Fuzzy inside and outside. This is useful for painting shadows that are
  /// offset from the shape that ostensibly is casting the shadow.
  normal,

  /// Solid inside, fuzzy outside. This corresponds to drawing the shape, and
  /// additionally drawing the blur. This can make objects appear brighter,
  /// maybe even as if they were fluorescent.
  solid,

  /// Nothing inside, fuzzy outside. This is useful for painting shadows for
  /// partially transparent shapes, when they are painted separately but without
  /// an offset, so that the shadow doesn't paint below the shape.
  outer,

  /// Fuzzy inside, nothing outside. This can make shapes appear to be lit from
  /// within.
  inner,
}
  """,
  """
const Alignment(
  this.x,
  this.y
  )
  """,
  """
enum StrokeCap {
  /// Begin and end contours with a flat edge and no extension.
  ///
  /// ![A butt cap ends line segments with a square end that stops at the end of
  /// the line segment.](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/butt_cap.png)
  ///
  /// Compare to the [square] cap, which has the same shape, but extends past
  /// the end of the line by half a stroke width.
  butt,

  /// Begin and end contours with a semi-circle extension.
  ///
  /// ![A round cap adds a rounded end to the line segment that protrudes
  /// by one half of the thickness of the line (which is the radius of the cap)
  /// past the end of the segment.](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/round_cap.png)
  ///
  /// The cap is colored in the diagram above to highlight it: in normal use it
  /// is the same color as the line.
  round,

  /// Begin and end contours with a half square extension. This is
  /// similar to extending each contour by half the stroke width (as
  /// given by [Paint.strokeWidth]).
  ///
  /// ![A square cap has a square end that effectively extends the line length
  /// by half of the stroke width.](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/square_cap.png)
  ///
  /// The cap is colored in the diagram above to highlight it: in normal use it
  /// is the same color as the line.
  ///
  /// Compare to the [butt] cap, which has the same shape, but doesn't extend
  /// past the end of the line.
  square,
}
  """,
  """
  enum StrokeJoin {
  /// Joins between line segments form sharp corners.
  ///
  /// {@animation 300 300 https://flutter.github.io/assets-for-api-docs/assets/dart-ui/miter_4_join.mp4}
  ///
  /// The center of the line segment is colored in the diagram above to
  /// highlight the join, but in normal usage the join is the same color as the
  /// line.
  ///
  /// See also:
  ///
  ///   * [Paint.strokeJoin], used to set the line segment join style to this
  ///     value.
  ///   * [Paint.strokeMiterLimit], used to define when a miter is drawn instead
  ///     of a bevel when the join is set to this value.
  miter,

  /// Joins between line segments are semi-circular.
  ///
  /// {@animation 300 300 https://flutter.github.io/assets-for-api-docs/assets/dart-ui/round_join.mp4}
  ///
  /// The center of the line segment is colored in the diagram above to
  /// highlight the join, but in normal usage the join is the same color as the
  /// line.
  ///
  /// See also:
  ///
  ///   * [Paint.strokeJoin], used to set the line segment join style to this
  ///     value.
  round,

  /// Joins between line segments connect the corners of the butt ends of the
  /// line segments to give a beveled appearance.
  ///
  /// {@animation 300 300 https://flutter.github.io/assets-for-api-docs/assets/dart-ui/bevel_join.mp4}
  ///
  /// The center of the line segment is colored in the diagram above to
  /// highlight the join, but in normal usage the join is the same color as the
  /// line.
  ///
  /// See also:
  ///
  ///   * [Paint.strokeJoin], used to set the line segment join style to this
  ///     value.
  bevel,
}

  """,
  """
enum PaintingStyle {
  // This list comes from Skia's SkPaint.h and the values (order) should be kept
  // in sync.

  /// Apply the [Paint] to the inside of the shape. For example, when
  /// applied to the [Canvas.drawCircle] call, this results in a disc
  /// of the given size being painted.
  fill,

  /// Apply the [Paint] to the edge of the shape. For example, when
  /// applied to the [Canvas.drawCircle] call, this results is a hoop
  /// of the given size being painted. The line drawn on the edge will
  /// be the width given by the [Paint.strokeWidth] property.
  stroke,
}
  """,
  """
  const ColorFilter.mode(
    Color color,
    BlendMode blendMode
    )
  """,
  """
  const MaskFilter.blur(
    this.style,
    this.sigma,
  )
  """,
  """
  enum TileMode {
  /// Edge is clamped to the final color.
  ///
  /// The gradient will paint the all the regions outside the inner area with
  /// the color of the point closest to that region.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/tile_mode_clamp_radial.png)
  clamp,

  /// Edge is repeated from first color to last.
  ///
  /// This is as if the stop points from 0.0 to 1.0 were then repeated from 1.0
  /// to 2.0, 2.0 to 3.0, and so forth (and for linear gradients, similarly from
  /// -1.0 to 0.0, -2.0 to -1.0, etc).
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/tile_mode_repeated_linear.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/tile_mode_repeated_radial.png)
  repeated,

  /// Edge is mirrored from last color to first.
  ///
  /// This is as if the stop points from 0.0 to 1.0 were then repeated backwards
  /// from 2.0 to 1.0, then forwards from 2.0 to 3.0, then backwards again from
  /// 4.0 to 3.0, and so forth (and for linear gradients, similarly from in the
  /// negative direction).
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/tile_mode_mirror_linear.png)
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/dart-ui/tile_mode_mirror_radial.png)
  mirror,
}
  """,
  """
  const LinearGradient({
    this.begin = Alignment.centerLeft,
    this.end = Alignment.centerRight,
    @required List<Color> colors,
    List<double> stops,
    this.tileMode = TileMode.clamp,
  }) 
  """,
  """
    const RadialGradient({
    this.center = Alignment.center,
    this.radius = 0.5,
    @required List<Color> colors,
    List<double> stops,
    this.tileMode = TileMode.clamp,
    this.focal,
    this.focalRadius = 0.0
  })
  """,
  """
  const SweepGradient({
    this.center = Alignment.center,
    this.startAngle = 0.0,
    this.endAngle = math.pi * 2,
    @required List<Color> colors,
    List<double> stops,
    this.tileMode = TileMode.clamp,
  }) 
  """,
  """
 ImageShader(
   Image image,
    TileMode tmx, 
    TileMode tmy,
     Float64List matrix4
     )
  """,
  """
  const BoxDecoration({
    this.color,
    this.image,
    this.border,
    this.borderRadius,
    this.boxShadow,
    this.gradient,
    this.backgroundBlendMode,
    this.shape = BoxShape.rectangle,
  }) 
  """,
  """
  const Locale(
    this.languageCode, [
    this.countryCode,
  ]) 
  """,
  """
  enum MainAxisAlignment {
  /// Place the children as close to the start of the main axis as possible.
  ///
  /// If this value is used in a horizontal direction, a [TextDirection] must be
  /// available to determine if the start is the left or the right.
  ///
  /// If this value is used in a vertical direction, a [VerticalDirection] must be
  /// available to determine if the start is the top or the bottom.
  start,

  /// Place the children as close to the end of the main axis as possible.
  ///
  /// If this value is used in a horizontal direction, a [TextDirection] must be
  /// available to determine if the end is the left or the right.
  ///
  /// If this value is used in a vertical direction, a [VerticalDirection] must be
  /// available to determine if the end is the top or the bottom.
  end,

  /// Place the children as close to the middle of the main axis as possible.
  center,

  /// Place the free space evenly between the children.
  spaceBetween,

  /// Place the free space evenly between the children as well as half of that
  /// space before and after the first and last child.
  spaceAround,

  /// Place the free space evenly between the children as well as before and
  /// after the first and last child.
  spaceEvenly,
}
  """,
  """
enum MainAxisSize {
  /// Minimize the amount of free space along the main axis, subject to the
  /// incoming layout constraints.
  ///
  /// If the incoming layout constraints have a large enough
  /// [BoxConstraints.minWidth] or [BoxConstraints.minHeight], there might still
  /// be a non-zero amount of free space.
  ///
  /// If the incoming layout constraints are unbounded, and any children have a
  /// non-zero [FlexParentData.flex] and a [FlexFit.tight] fit (as applied by
  /// [Expanded]), the [RenderFlex] will assert, because there would be infinite
  /// remaining free space and boxes cannot be given infinite size.
  min,

  /// Maximize the amount of free space along the main axis, subject to the
  /// incoming layout constraints.
  ///
  /// If the incoming layout constraints have a small enough
  /// [BoxConstraints.maxWidth] or [BoxConstraints.maxHeight], there might still
  /// be no free space.
  ///
  /// If the incoming layout constraints are unbounded, the [RenderFlex] will
  /// assert, because there would be infinite remaining free space and boxes
  /// cannot be given infinite size.
  max,
}
  """,
  """
enum CrossAxisAlignment {
  /// Place the children with their start edge aligned with the start side of
  /// the cross axis.
  ///
  /// For example, in a column (a flex with a vertical axis) whose
  /// [TextDirection] is [TextDirection.ltr], this aligns the left edge of the
  /// children along the left edge of the column.
  ///
  /// If this value is used in a horizontal direction, a [TextDirection] must be
  /// available to determine if the start is the left or the right.
  ///
  /// If this value is used in a vertical direction, a [VerticalDirection] must be
  /// available to determine if the start is the top or the bottom.
  start,

  /// Place the children as close to the end of the cross axis as possible.
  ///
  /// For example, in a column (a flex with a vertical axis) whose
  /// [TextDirection] is [TextDirection.ltr], this aligns the right edge of the
  /// children along the right edge of the column.
  ///
  /// If this value is used in a horizontal direction, a [TextDirection] must be
  /// available to determine if the end is the left or the right.
  ///
  /// If this value is used in a vertical direction, a [VerticalDirection] must be
  /// available to determine if the end is the top or the bottom.
  end,

  /// Place the children so that their centers align with the middle of the
  /// cross axis.
  ///
  /// This is the default cross-axis alignment.
  center,

  /// Require the children to fill the cross axis.
  ///
  /// This causes the constraints passed to the children to be tight in the
  /// cross axis.
  stretch,

  /// Place the children along the cross axis such that their baselines match.
  ///
  /// If the main axis is vertical, then this value is treated like [start]
  /// (since baselines are always horizontal).
  baseline,
}
  """,
  """
enum VerticalDirection {
  /// Boxes should start at the bottom and be stacked vertically towards the top.
  ///
  /// The "start" is at the bottom, the "end" is at the top.
  up,

  /// Boxes should start at the top and be stacked vertically towards the bottom.
  ///
  /// The "start" is at the top, the "end" is at the bottom.
  down,
}

  """,
  """
  const BoxConstraints({
    this.minWidth = 0.0,
    this.maxWidth = double.infinity,
    this.minHeight = 0.0,
    this.maxHeight = double.infinity
  })
  """,
  """
 const Size(
   double width,
    double height
    ) 
  """,
  """
   const Offset(
     double dx,
      double dy
      ) 
   """,
  """
  const TableRow({
     this.key,
      this.decoration, 
      this.children 
      })
   """,
  """
enum BoxFit {
  /// Fill the target box by distorting the source's aspect ratio.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/painting/box_fit_fill.png)
  fill,

  /// As large as possible while still containing the source entirely within the
  /// target box.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/painting/box_fit_contain.png)
  contain,

  /// As small as possible while still covering the entire target box.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/painting/box_fit_cover.png)
  cover,

  /// Make sure the full width of the source is shown, regardless of
  /// whether this means the source overflows the target box vertically.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/painting/box_fit_fitWidth.png)
  fitWidth,

  /// Make sure the full height of the source is shown, regardless of
  /// whether this means the source overflows the target box horizontally.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/painting/box_fit_fitHeight.png)
  fitHeight,

  /// Align the source within the target box (by default, centering) and discard
  /// any portions of the source that lie outside the box.
  ///
  /// The source image is not resized.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/painting/box_fit_none.png)
  none,

  /// Align the source within the target box (by default, centering) and, if
  /// necessary, scale the source down to ensure that the source fits within the
  /// box.
  ///
  /// This is the same as `contain` if that would shrink the image, otherwise it
  /// is the same as `none`.
  ///
  /// ![](https://flutter.github.io/assets-for-api-docs/assets/painting/box_fit_scaleDown.png)
  scaleDown,
}
   """,
  """
enum Overflow {
  /// Overflowing children will be visible.
  visible,

  /// Overflowing children will be clipped to the bounds of their parent.
  clip,
}
   """,
  """
enum StackFit {
  /// The constraints passed to the stack from its parent are loosened.
  ///
  /// For example, if the stack has constraints that force it to 350x600, then
  /// this would allow the non-positioned children of the stack to have any
  /// width from zero to 350 and any height from zero to 600.
  ///
  /// See also:
  ///
  ///  * [Center], which loosens the constraints passed to its child and then
  ///    centers the child in itself.
  ///  * [BoxConstraints.loosen], which implements the loosening of box
  ///    constraints.
  loose,

  /// The constraints passed to the stack from its parent are tightened to the
  /// biggest size allowed.
  ///
  /// For example, if the stack has loose constraints with a width in the range
  /// 10 to 100 and a height in the range 0 to 600, then the non-positioned
  /// children of the stack would all be sized as 100 pixels wide and 600 high.
  expand,

  /// The constraints passed to the stack from its parent are passed unmodified
  /// to the non-positioned children.
  ///
  /// For example, if a [Stack] is an [Expanded] child of a [Row], the
  /// horizontal constraints will be tight and the vertical constraints will be
  /// loose.
  passthrough,
}

   """,
  """
enum Axis {
  /// Left and right.
  ///
  /// See also:
  ///
  ///  * [TextDirection], which disambiguates between left-to-right horizontal
  ///    content and right-to-left horizontal content.
  horizontal,

  /// Up and down.
  vertical,
}

   """,
  """
enum TableCellVerticalAlignment {
  /// Cells with this alignment are placed with their top at the top of the row.
  top,

  /// Cells with this alignment are vertically centered in the row.
  middle,

  /// Cells with this alignment are placed with their bottom at the bottom of the row.
  bottom,

  /// Cells with this alignment are aligned such that they all share the same
  /// baseline. Cells with no baseline are top-aligned instead. The baseline
  /// used is specified by [RenderTable.textBaseline]. It is not valid to use
  /// the baseline value if [RenderTable.textBaseline] is not specified.
  ///
  /// This vertical alignment is relatively expensive because it causes the table
  /// to compute the baseline for each cell in the row.
  baseline,

  /// Cells with this alignment are sized to be as tall as the row, then made to fit the row.
  /// If all the cells have this alignment, then the row will have zero height.
  fill
}
   """,
  """
     const TableBorder({
    this.top = BorderSide.none,
    this.right = BorderSide.none,
    this.bottom = BorderSide.none,
    this.left = BorderSide.none,
    this.horizontalInside = BorderSide.none,
    this.verticalInside = BorderSide.none,
  });
  
   """,
  """
  const BorderSide({
    this.color = const Color(0xFF000000),
    this.width = 1.0,
    this.style = BorderStyle.solid,
  }) 
   """,
  """
enum BorderStyle {
  /// Skip the border.
  none,

  /// Draw the border as a solid line.
  solid,

  // if you add more, think about how they will lerp
}
   """,
  """
  const FlexColumnWidth(
    this.value = 1.0
    ) 
   """,
   
    """
  const FixedColumnWidth(
    this.value
    )
  """,

  """
   enum WrapAlignment {
  /// Place the objects as close to the start of the axis as possible.
  ///
  /// If this value is used in a horizontal direction, a [TextDirection] must be
  /// available to determine if the start is the left or the right.
  ///
  /// If this value is used in a vertical direction, a [VerticalDirection] must be
  /// available to determine if the start is the top or the bottom.
  start,

  /// Place the objects as close to the end of the axis as possible.
  ///
  /// If this value is used in a horizontal direction, a [TextDirection] must be
  /// available to determine if the end is the left or the right.
  ///
  /// If this value is used in a vertical direction, a [VerticalDirection] must be
  /// available to determine if the end is the top or the bottom.
  end,

  /// Place the objects as close to the middle of the axis as possible.
  center,

  /// Place the free space evenly between the objects.
  spaceBetween,

  /// Place the free space evenly between the objects as well as half of that
  /// space before and after the first and last objects.
  spaceAround,

  /// Place the free space evenly between the objects as well as before and
  /// after the first and last objects.
  spaceEvenly,
}
   """,
  """
enum WrapCrossAlignment {
  /// Place the children as close to the start of the run in the cross axis as
  /// possible.
  ///
  /// If this value is used in a horizontal direction, a [TextDirection] must be
  /// available to determine if the start is the left or the right.
  ///
  /// If this value is used in a vertical direction, a [VerticalDirection] must be
  /// available to determine if the start is the top or the bottom.
  start,

  /// Place the children as close to the end of the run in the cross axis as
  /// possible.
  ///
  /// If this value is used in a horizontal direction, a [TextDirection] must be
  /// available to determine if the end is the left or the right.
  ///
  /// If this value is used in a vertical direction, a [VerticalDirection] must be
  /// available to determine if the end is the top or the bottom.
  end,

  /// Place the children as close to the middle of the run in the cross axis as
  /// possible.
  center,

  // TODO(ianh): baseline.
}
   """,
  """
Matrix4(
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
          double arg15
          ) 
   """,
  """
  factory Matrix4.columns(
          Vector4 arg0, 
          Vector4 arg1, 
          Vector4 arg2,
           Vector4 arg3
           ) 
   """,
  """
factory Matrix4.outer(
  Vector4 u, 
  Vector4 v
  )
   """,
  """
     factory Matrix4.rotationX(
       double radians
       ) 
   """,
  """
  factory Matrix4.rotationY(
    double radians
    ) 
   """,
  """
  factory Matrix4.rotationZ(
    double radians
    ) 
   """,
  """
  factory Matrix4.translation(
    Vector3 translation
    )
   """,
  """
  factory Matrix4.translationValues(
    double x,
     double y, 
     double z
     )
   """,
  """
 factory Matrix4.diagonal3(
   Vector3 scale
   )
   """,
  """
  factory Matrix4.diagonal3Values(
    double x, 
    double y,
     double z
     )
   """,
  """
  factory Matrix4.skewX(
    double alpha
    )
   """,
  """
  factory Matrix4.skewY(
    double beta
    ) 
   """,
  """
  factory Matrix4.skew(
    double alpha, 
    double beta
    ) 
   """,
  """
  factory Matrix4.compose(
          Vector3 translation,
           Quaternion rotation, 
           Vector3 scale) 
   """,
  """
factory Vector4(
  double x,
 double y,
  double z, 
  double w
  )
   """,
  """
  factory Vector4.array(
    List<double> array, 
    [int offset = 0]
    )
   """,
  """
 factory Vector4.identity(
 )
   """,
  """
  factory Vector4.random(
    [math.Random rng]
    )
   """,
  """
factory Vector3(
  double x,
   double y, 
   double z
   ) 
   """,
  """
  Vector3.zero(

  )
   """,
  """
  factory Vector3.all(
    double value
    )
   """,
  """
  factory Vector3.random(
    [math.Random rng]
    )
   """,
  """
  ScrollController({
    double initialScrollOffset = 0.0,
    this.keepScrollOffset = true,
    this.debugLabel,
  })
   """,
  """
  const ScrollPhysics({ 
    this.parent 
    })
   """,
  """
  const ClampingScrollPhysics({ 
    ScrollPhysics parent 
    })
   """,
  """
  const AlwaysScrollableScrollPhysics({ 
    ScrollPhysics parent 
    })
   """,
  """
  const NeverScrollableScrollPhysics({
     ScrollPhysics parent
      }) 
   """,
  """
  const SliverChildListDelegate(
    this.children, {
    this.addAutomaticKeepAlives = true,
    this.addRepaintBoundaries = true,
    this.addSemanticIndexes = true,
    this.semanticIndexCallback = _kDefaultSemanticIndexCallback,
    this.semanticIndexOffset = 0,
  }) 
   """,
  """
     const SliverChildBuilderDelegate(
    this.builder, {
    this.childCount,
    this.addAutomaticKeepAlives = true,
    this.addRepaintBoundaries = true,
    this.addSemanticIndexes = true,
    this.semanticIndexCallback = _kDefaultSemanticIndexCallback,
    this.semanticIndexOffset = 0,
  }) 
   """,
  """
enum Clip {
  /// No clip at all.
  ///
  /// This is the default option for most widgets: if the content does not
  /// overflow the widget boundary, don't pay any performance cost for clipping.
  ///
  /// If the content does overflow, please explicitly specify the following
  /// [Clip] options:
  ///  * [hardEdge], which is the fastest clipping, but with lower fidelity.
  ///  * [antiAlias], which is a little slower than [hardEdge], but with smoothed edges.
  ///  * [antiAliasWithSaveLayer], which is much slower than [antiAlias], and should
  ///    rarely be used.
  none,

  /// Clip, but do not apply anti-aliasing.
  ///
  /// This mode enables clipping, but curves and non-axis-aligned straight lines will be
  /// jagged as no effort is made to anti-alias.
  ///
  /// Faster than other clipping modes, but slower than [none].
  ///
  /// This is a reasonable choice when clipping is needed, if the container is an axis-
  /// aligned rectangle or an axis-aligned rounded rectangle with very small corner radii.
  ///
  /// See also:
  ///
  ///  * [antiAlias], which is more reasonable when clipping is needed and the shape is not
  ///    an axis-aligned rectangle.
  hardEdge,

  /// Clip with anti-aliasing.
  ///
  /// This mode has anti-aliased clipping edges to achieve a smoother look.
  ///
  /// It' s much faster than [antiAliasWithSaveLayer], but slower than [hardEdge].
  ///
  /// This will be the common case when dealing with circles and arcs.
  ///
  /// Different from [hardEdge] and [antiAliasWithSaveLayer], this clipping may have
  /// bleeding edge artifacts.
  /// (See https://fiddle.skia.org/c/21cb4c2b2515996b537f36e7819288ae for an example.)
  ///
  /// See also:
  ///
  ///  * [hardEdge], which is a little faster, but with lower fidelity.
  ///  * [antiAliasWithSaveLayer], which is much slower, but can avoid the
  ///    bleeding edges if there's no other way.
  ///  * [Paint.isAntiAlias], which is the anti-aliasing switch for general draw operations.
  antiAlias,

  /// Clip with anti-aliasing and saveLayer immediately following the clip.
  ///
  /// This mode not only clips with anti-aliasing, but also allocates an offscreen
  /// buffer. All subsequent paints are carried out on that buffer before finally
  /// being clipped and composited back.
  ///
  /// This is very slow. It has no bleeding edge artifacts (that [antiAlias] has)
  /// but it changes the semantics as an offscreen buffer is now introduced.
  /// (See https://github.com/flutter/flutter/issues/18057#issuecomment-394197336
  /// for a difference between paint without saveLayer and paint with saveLayer.)
  ///
  /// This will be only rarely needed. One case where you might need this is if
  /// you have an image overlaid on a very different background color. In these
  /// cases, consider whether you can avoid overlaying multiple colors in one
  /// spot (e.g. by having the background color only present where the image is
  /// absent). If you can, [antiAlias] would be fine and much faster.
  ///
  /// See also:
  ///
  ///  * [antiAlias], which is much faster, and has similar clipping results.
  antiAliasWithSaveLayer,
}

   """,
  """
Rect(

);
   """,
  """
  Rect.fromLTRB(
    double left, 
    double top,
     double right,
      double bottom
      ) {
   """,
  """
  Rect.fromLTWH(
    double left,
     double top,
      double width, 
      double height
      )
   """,
  """
  Rect.fromCircle({ 
    Offset center, 
    double radius 
    }) {
   """,
  """
  Rect.fromPoints(
    Offset a, 
    Offset b
    ) {
   """,
  """
PlatformAssetBundle(

)
   """,
  """
  NetworkAssetBundle(
    Uri baseUrl
    )
   """,
  """
  factory File(
    String path
    ) {
   """,
  """
  factory File.fromUri(
    Uri uri
    ) 
   """,
  """
  factory File.fromRawPath(
    Uint8List 
    rawPath
    )
   """,
  """
  external factory Uint8List(
    int length
    );
   """,
  """
  external factory Uint8List.fromList(
    List<int> elements
    );
   """,
  """
  factory Uint8List.view(
    ByteBuffer buffer,
      [int offsetInBytes = 0, int length]
      ) {
   """,
  """
 const Radius(

 ) 
   """,
  """
  const Radius.circular(
    double radius
    ) 
   """,
  """
  const Radius.elliptical(
    this.x, 
    this.y
    )
   """,
  """
  const BorderRadius(

  )
   """,
  """
  const BorderRadius.all(
    Radius radius
    )
   """,
  """
BorderRadius.circular(
  double radius
  )
   """,
  """
  const BorderRadius.vertical({
    Radius top = Radius.zero,
    Radius bottom = Radius.zero,
  }) 
   """,
  """
  const BorderRadius.horizontal({
    Radius left = Radius.zero,
    Radius right = Radius.zero,
  }) 
   """,
  """
  const BorderRadius.only({
    this.topLeft = Radius.zero,
    this.topRight = Radius.zero,
    this.bottomLeft = Radius.zero,
    this.bottomRight = Radius.zero,
  });
   """,
  """
  const BottomNavigationBarItem({
    @required this.icon,
    this.title,
    Widget activeIcon,
    this.backgroundColor,
  })
   """,
  """
   enum BottomNavigationBarType {
  /// The [BottomNavigationBar]'s [BottomNavigationBarItem]s have fixed width, always
  /// display their text labels, and do not shift when tapped.
  fixed,

  /// The location and size of the [BottomNavigationBar] [BottomNavigationBarItem]s
  /// animate and labels fade in when they are tapped. Only the selected item
  /// displays its text label.
  shifting,
}
   """,
  """
  const IconData(
    this.codePoint, {
    this.fontFamily,
    this.fontPackage,
    this.matchTextDirection = false,
  });
   """,
  """
enum TabBarIndicatorSize {
  /// The tab indicator's bounds are as wide as the space occupied by the tab
  /// in the tab bar: from the right edge of the previous tab to the left edge
  /// of the next tab.
  tab,

  /// The tab's bounds are only as wide as the (centered) tab widget itself.
  ///
  /// This value is used to align the tab's label, typically a [Tab]
  /// widget's text or icon, with the selected tab indicator.
  label,
}
   """,
  """
  const MediaQuery({
    Key key,
    @required this.data,
    @required Widget child,
  })
   """,
  """
  const MediaQueryData({
    this.size = Size.zero,
    this.devicePixelRatio = 1.0,
    this.textScaleFactor = 1.0,
    this.padding = EdgeInsets.zero,
    this.viewInsets = EdgeInsets.zero,
    this.alwaysUse24HourFormat = false,
    this.accessibleNavigation = false,
    this.invertColors = false,
    this.disableAnimations = false,
    this.boldText = false,
  })
   """,
   """
  const Theme({
    Key key,
    @required this.data,
    this.isMaterialAppTheme = false,
    @required this.child,
  }) 
    """,
  """
  factory ThemeData({
    Brightness brightness,
    MaterialColor primarySwatch,
    Color primaryColor,
    Brightness primaryColorBrightness,
    Color primaryColorLight,
    Color primaryColorDark,
    Color accentColor,
    Brightness accentColorBrightness,
    Color canvasColor,
    Color scaffoldBackgroundColor,
    Color bottomAppBarColor,
    Color cardColor,
    Color dividerColor,
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor,
    InteractiveInkFeatureFactory splashFactory,
    Color selectedRowColor,
    Color unselectedWidgetColor,
    Color disabledColor,
    Color buttonColor,
    ButtonThemeData buttonTheme,
    ToggleButtonsThemeData toggleButtonsTheme,
    Color secondaryHeaderColor,
    Color textSelectionColor,
    Color cursorColor,
    Color textSelectionHandleColor,
    Color backgroundColor,
    Color dialogBackgroundColor,
    Color indicatorColor,
    Color hintColor,
    Color errorColor,
    Color toggleableActiveColor,
    String fontFamily,
    TextTheme textTheme,
    TextTheme primaryTextTheme,
    TextTheme accentTextTheme,
    InputDecorationTheme inputDecorationTheme,
    IconThemeData iconTheme,
    IconThemeData primaryIconTheme,
    IconThemeData accentIconTheme,
    SliderThemeData sliderTheme,
    TabBarTheme tabBarTheme,
    TooltipThemeData tooltipTheme,
    CardTheme cardTheme,
    ChipThemeData chipTheme,
    TargetPlatform platform,
    MaterialTapTargetSize materialTapTargetSize,
    bool applyElevationOverlayColor,
    PageTransitionsTheme pageTransitionsTheme,
    AppBarTheme appBarTheme,
    BottomAppBarTheme bottomAppBarTheme,
    ColorScheme colorScheme,
    DialogTheme dialogTheme,
    FloatingActionButtonThemeData floatingActionButtonTheme,
    Typography typography,
    CupertinoThemeData cupertinoOverrideTheme,
    SnackBarThemeData snackBarTheme,
    BottomSheetThemeData bottomSheetTheme,
    PopupMenuThemeData popupMenuTheme,
    MaterialBannerThemeData bannerTheme,
    DividerThemeData dividerTheme,
    ButtonBarThemeData buttonBarTheme,
  })
   """,
  """
 static EdgeInsets(
   this.left, 
   this.top, 
   this.right, 
   this.bottom
   );
      
   """,
  """
 static EdgeInsets.fromLTRB(
   this.left, 
   this.top, 
   this.right, 
   this.bottom
   );
      
   """,
  """
 EdgeInsets.all(
   double value
   )
      
   """,
  """
    const EdgeInsets.only({
      this.left = 0.0,
      this.top = 0.0,
      this.right = 0.0,
      this.bottom = 0.0
    });
   """,
  """
  const EdgeInsets.symmetric({ 
    double vertical = 0.0,
    double horizontal = 0.0 
})
   """,
  """
const EdgeInsetsDirectional(
  this.start, 
  this.top,
  this.end,
   this.bottom
   );
   """,
  """
  const EdgeInsetsDirectional.only({
    this.start = 0.0,
    this.top = 0.0,
    this.end = 0.0,
    this.bottom = 0.0
  });
   """
   ,

   """
   const AnnotatedRegion({
    Key key,
    @required Widget child,
    @required this.value,
    this.sized = true,
  })
  """
  ,

  """
  const SystemUiOverlayStyle({
    this.systemNavigationBarColor,
    this.systemNavigationBarDividerColor,
    this.systemNavigationBarIconBrightness,
    this.statusBarColor,
    this.statusBarBrightness,
    this.statusBarIconBrightness,
  })
  """
  ,

  """
  const MaterialColor(
    int primary,
    Map<int, Color> swatch,
  )
  """
  ,

  """
  const TextTheme({
    this.display4,
    this.display3,
    this.display2,
    this.display1,
    this.headline,
    this.title,
    this.subhead,
    this.body2,
    this.body1,
    this.caption,
    this.button,
    this.subtitle,
    this.overline,
  })
  """
  ,

  """
  const InputDecorationTheme({
    this.labelStyle,
    this.helperStyle,
    this.hintStyle,
    this.errorStyle,
    this.errorMaxLines,
    this.hasFloatingPlaceholder = true,
    this.isDense = false,
    this.contentPadding,
    this.isCollapsed = false,
    this.prefixStyle,
    this.suffixStyle,
    this.counterStyle,
    this.filled = false,
    this.fillColor,
    this.errorBorder,
    this.focusedBorder,
    this.focusedErrorBorder,
    this.disabledBorder,
    this.enabledBorder,
    this.border,
  })
  """
  ,

"""
  factory ThemeData({
    Brightness brightness,
    MaterialColor primarySwatch,
    Color primaryColor,
    Brightness primaryColorBrightness,
    Color primaryColorLight,
    Color primaryColorDark,
    Color accentColor,
    Brightness accentColorBrightness,
    Color canvasColor,
    Color scaffoldBackgroundColor,
    Color bottomAppBarColor,
    Color cardColor,
    Color dividerColor,
    Color highlightColor,
    Color splashColor,
    InteractiveInkFeatureFactory splashFactory,
    Color selectedRowColor,
    Color unselectedWidgetColor,
    Color disabledColor,
    Color buttonColor,
    ButtonThemeData buttonTheme,
    Color secondaryHeaderColor,
    Color textSelectionColor,
    Color cursorColor,
    Color textSelectionHandleColor,
    Color backgroundColor,
    Color dialogBackgroundColor,
    Color indicatorColor,
    Color hintColor,
    Color errorColor,
    Color toggleableActiveColor,
    String fontFamily,
    TextTheme textTheme,
    TextTheme primaryTextTheme,
    TextTheme accentTextTheme,
    InputDecorationTheme inputDecorationTheme,
    IconThemeData iconTheme,
    IconThemeData primaryIconTheme,
    IconThemeData accentIconTheme,
    SliderThemeData sliderTheme,
    TabBarTheme tabBarTheme,
    ChipThemeData chipTheme,
    TargetPlatform platform,
    MaterialTapTargetSize materialTapTargetSize,
    PageTransitionsTheme pageTransitionsTheme,
    ColorScheme colorScheme,
    DialogTheme dialogTheme,
    Typography typography,
  })
   """,

  """
  const MaterialColor(
    int primary, 
    Map<int, Color> swatch
  )
  """
  ,
  
  """
  const IconTheme({
    Key key,
    @required this.data,
    @required Widget child,
  })
  """
  ,

  """
  const IconThemeData({
    this.color, 
    double opacity, 
    this.size
    })
  """
  ,

  """
  const DropdownMenuItem({
    Key key,
    this.value,
    @required this.child,
  })
  """
  ,

  """
  const BoxShadow({
    Color color = const Color(0xFF000000),
    Offset offset = Offset.zero,
    double blurRadius = 0.0,
    this.spreadRadius = 0.0
  })
  """
  ,
  """
  Quaternion(
    double x, 
    double y, 
    double z, 
    double w
    )
  """
  ,
    """
  factory Uint8List.view(
    ByteBuffer buffer,[
      int offsetInBytes = 0,
       int length
       ]) {
   """,

   """
const Slider({
    Key key,
    @required this.value,
    @required this.onChanged,
    this.onChangeStart,
    this.onChangeEnd,
    this.min = 0.0,
    this.max = 1.0,
    this.divisions,
    this.label,
    this.activeColor,
    this.inactiveColor,
    this.semanticFormatterCallback,
  }
   """,

   """
   const CircleAvatar({
    Key key,
    this.child,
    this.backgroundColor,
    this.backgroundImage,
    this.foregroundColor,
    this.radius,
    this.minRadius,
    this.maxRadius,
  })
   """,

   """
   const BorderDirectional({
    this.top = BorderSide.none,
    this.start = BorderSide.none,
    this.end = BorderSide.none,
    this.bottom = BorderSide.none,
  })
   """,

   """
   enum ButtonTextTheme {
  /// Button text is black or white depending on [ThemeData.brightness].
  normal,

  /// Button text is [ThemeData.accentColor].
  accent,

  /// Button text is based on [ThemeData.primaryColor].
  primary,
}
   """,

   """
   const Chip({
    Key key,
    this.avatar,
    @required this.label,
    this.labelStyle,
    this.labelPadding,
    this.deleteIcon,
    this.onDeleted,
    this.deleteIconColor,
    this.deleteButtonTooltipMessage,
    this.shape,
    this.clipBehavior = Clip.none,
    this.backgroundColor,
    this.padding,
    this.materialTapTargetSize,
    this.elevation,
    this.shadowColor,
  }) 
  """,

  """
  const InputBorder({
    this.borderSide = BorderSide.none,
  })
  """,

  """
   const GlobalKey({
    this.debugLabel,
  })
  """,
  
  """
  const Positioned({
    Key key,
    this.left,
    this.top,
    this.right,
    this.bottom,
    this.width,
    this.height,
    @required Widget child,
  })
  """,

  """
  enum Brightness {
  /// The color is dark and will require a light text color to achieve readable
  /// contrast.
  ///
  /// For example, the color might be dark grey, requiring white text.
  dark,

  /// The color is light and will require a dark text color to achieve readable
  /// contrast.
  ///
  /// For example, the color might be bright white, requiring black text.
  light,

  }
  """,

  """
  enum TargetPlatform {
  /// Android: <https://www.android.com/>
  android,

  /// Fuchsia: <https://fuchsia.googlesource.com/>
  fuchsia,

  /// iOS: <http://www.apple.com/ios/>
  iOS,
  }
  """,

  """
  enum BoxShape {
  /// An axis-aligned, 2D rectangle. May have rounded corners (described by a
  /// [BorderRadius]). The edges of the rectangle will match the edges of the box
  /// into which the [Border] or [BoxDecoration] is painted.
  ///
  /// See also:
  ///
  ///  * [RoundedRectangleBorder], the equivalent [ShapeBorder].
  rectangle,

  /// A circle centered in the middle of the box into which the [Border] or
  /// [BoxDecoration] is painted. The diameter of the circle is the shortest
  /// dimension of the box, either the width or the height, such that the circle
  /// touches the edges of the box.
  ///
  /// See also:
  ///
  ///  * [CircleBorder], the equivalent [ShapeBorder].
  circle,

  // Don't add more, instead create a new ShapeBorder.
  }
  """,

"""
const Opacity({
    Key key,
    @required this.opacity,
    this.alwaysIncludeSemantics = false,
    Widget child,
  })
  """,

  """
  const TableColumnWidth(
  )
  """,

  """
  const MaterialAccentColor(
    int primary, 
    Map<int, Color> swatch
    )
  """,

  """
  const ColorScheme({
    @required this.primary,
    @required this.primaryVariant,
    @required this.secondary,
    @required this.secondaryVariant,
    @required this.surface,
    @required this.background,
    @required this.error,
    @required this.onPrimary,
    @required this.onSecondary,
    @required this.onSurface,
    @required this.onBackground,
    @required this.onError,
    @required this.brightness,
  })
  """,

"""
const ButtonThemeData({
    this.textTheme = ButtonTextTheme.normal,
    this.minWidth = 88.0,
    this.height = 36.0,
    EdgeInsetsGeometry padding,
    ShapeBorder shape,
    this.layoutBehavior = ButtonBarLayoutBehavior.padded,
    this.alignedDropdown = false,
    Color buttonColor,
    Color disabledColor,
    Color focusColor,
    Color hoverColor,
    Color highlightColor,
    Color splashColor,
    this.colorScheme,
    MaterialTapTargetSize materialTapTargetSize,
  })
  """,

  """
  enum ButtonBarLayoutBehavior {
  /// Button bars will be constrained to a minimum height of 52.
  ///
  /// This setting is require to create button bars which conform to the
  /// material specification.
  constrained,

  /// Button bars will calculate their padding from the button theme padding.
  padded,
}
""",

"""
const NotificationListener({
    Key key,
    @required this.child,
    this.onNotification,
  }) : super(key: key);
""",

"""
const PreferredSize({
    Key key,
    @required this.child,
    @required this.preferredSize,
  })
  """,

  """
const Notification(
  
)
""",

"""
const ClipRRect({
    Key key,
    this.borderRadius = BorderRadius.zero,
    this.clipper,
    this.clipBehavior = Clip.antiAlias,
    Widget child,
  })
  """,

  """
    const SpringDescription({
    this.mass,
    this.stiffness,
    this.damping,
  });
  """,

  """
  UniqueKey(

  );
  """,
  
];

void main(List<String> arguments) {
  //打印输出所有
  // list.map(translate).toList().join('\n\n\n');

  // //打印输出最后一个
  translate(list.last);
}

 translate(String src) {
  print(translateDart(src));
  print(translateJS(src, superClass: "DartClass"));
}
