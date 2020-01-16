import 'dart_builder.dart';

var list = <String>[
  """
  Tween({
    this.begin,
    this.end,
  })
  """
  ,

  """
  AnimationController({
    double value,
    this.duration,
    this.debugLabel,
    this.lowerBound = 0.0,
    this.upperBound = 1.0,
    this.animationBehavior = AnimationBehavior.normal,
    @required TickerProvider vsync,
  })
  """
  ,
  """
  const AnimatedBuilder({
    Key key,
    @required Listenable animation,
    @required this.builder,
    this.child,
  })
  """
  ,
  """
  const Duration(
      {int days = 0,
      int hours = 0,
      int minutes = 0,
      int seconds = 0,
      int milliseconds = 0,
      int microseconds = 0})
  """
  ,

  """
  CurveTween({
     @required this.curve
     })
  """
  ,

  """
  const Interval(
    this.begin,
    this.end,
    { this.curve = Curves.linear
    })
   """
  ,

  """
  const FadeTransition({
    Key key,
    @required this.opacity,
    this.alwaysIncludeSemantics = false,
    Widget child,
  })
  """
  ,

  """
  const SlideTransition({
    Key key,
    @required Animation<Offset> position,
    this.transformHitTests = true,
    this.textDirection,
    this.child,
  })
  """
  ,

  """
  const AnimatedOpacity({
    Key key,
    this.child,
    @required this.opacity,
    Curve curve = Curves.linear,
    @required Duration duration,
    VoidCallback onEnd,
    this.alwaysIncludeSemantics = false,
  })
  """
];

void main(List<String> arguments) {

  //打印输出所有
  // list.map(translate).toList().join('\n\n\n');

  //打印输出最后一个
  translate(list.last);

}

String translate(String src) {
  print(translateDart(src));
  print(translateJS(src));
}
