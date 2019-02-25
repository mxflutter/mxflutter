import 'dart_flutter_basic_types.dart';

class Text extends FlutterWidget {
  Text(this.data, {
    this.key,
    this.style,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
  });

  Text.rich(this.textSpan, {
    this.key,
    this.style,
    this.textAlign,
    this.textDirection,
    this.locale,
    this.softWrap,
    this.overflow,
    this.textScaleFactor,
    this.maxLines,
    this.semanticsLabel,
  });

  dynamic data;
  dynamic textSpan;
  final dynamic key;
  final dynamic style;
  final dynamic textAlign;
  final dynamic textDirection;
  final dynamic locale;
  final dynamic softWrap;
  final dynamic overflow;
  final dynamic textScaleFactor;
  final dynamic maxLines;
  final dynamic semanticsLabel;

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
    jsonMap['className'] = 'Text';
    if (this.data != null) {
      jsonMap['data'] = this.data;
    }
    if (this.textSpan != null) {
      jsonMap['textSpan'] = this.textSpan;
    }
    if (this.key != null) {
      jsonMap['key'] = this.key;
    }
    if (this.style != null) {
      jsonMap['style'] = this.style;
    }
    if (this.textAlign != null) {
      jsonMap['textAlign'] = this.textAlign;
    }
    if (this.textDirection != null) {
      jsonMap['textDirection'] = this.textDirection;
    }
    if (this.locale != null) {
      jsonMap['locale'] = this.locale;
    }
    if (this.softWrap != null) {
      jsonMap['softWrap'] = this.softWrap;
    }
    if (this.overflow != null) {
      jsonMap['overflow'] = this.overflow;
    }
    if (this.textScaleFactor != null) {
      jsonMap['textScaleFactor'] = this.textScaleFactor;
    }
    if (this.maxLines != null) {
      jsonMap['maxLines'] = this.maxLines;
    }
    if (this.semanticsLabel != null) {
      jsonMap['semanticsLabel'] = this.semanticsLabel;
    }
    return jsonMap;
  }

  toJson() {
    return toMap();
  }

}

enum TextDecoration {
    none,
    underline,
    overline,
    lineThrough,
}

enum TextAlign {
    left,
    right,
    center,
    justify,
    start,
    end,
}