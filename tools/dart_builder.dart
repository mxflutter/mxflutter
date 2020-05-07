/// 功能：输入类的构造函数字符串，自动生成MXProxy模板
/// 要求：TODO 成员变量必须从第二行开始，否则会出现生成错误的问题
/// 用法：用需生成的类构造函数替换list里面的"构造函数字符串""
/// 例如：
/// var list = <String>[
///   """
///   const MaterialApp({
///     Key key,
///     this.navigatorKey,
///     this.home,
///     this.routes = const <String, WidgetBuilder>{},
///     this.initialRoute,
///     this.onGenerateRoute,
///     this.onUnknownRoute,
///     this.navigatorObservers = const <NavigatorObserver>[],
///     this.builder,
///     this.title = '',
///     this.onGenerateTitle,
///     this.color,
///     this.theme,
///     this.locale,
///     this.localizationsDelegates,
///     this.localeListResolutionCallback,
///     this.localeResolutionCallback,
///     this.supportedLocales = const <Locale>[Locale('en', 'US')],
///     this.debugShowMaterialGrid = false,
///     this.showPerformanceOverlay = false,
///     this.checkerboardRasterCacheImages = false,
///     this.checkerboardOffscreenLayers = false,
///     this.showSemanticsDebugger = false,
///     this.debugShowCheckedModeBanner = true,
///   })
///
///   """,
///
////  ];
///

// void main(List<String> arguments) {

//     //list.map(translate).toList().join('\n\n\n');
//     translate(list.last);

// }

 translate(String src) {
  print(Parse2Dart.translateDart(src));
  print(translateJS(src));
}

String translateDart(String src) {
  return Parse2Dart.translateDart(src);
}

String translateDartFlutter(String src, {String superClass = "FlutterWidget"}) {
  return Parse2DartFlutter.translateDart(src, superClass: superClass);
}

String translateJS(String src, {String superClass = "FlutterWidget"}) {
  return Parse2JS.translateJS(src, superClass: superClass);
}

class Parse2Dart {
  static String translateDart(String src) {
    // 去头尾空格，换行
    src = src.trim();

    if (src.startsWith("enum")) {
      return enumTranslateDart(src);
    }

    var lines = src.split("\n");

    //获取第一行的类名。注意：此处成员变量不能在第一行
    var first = lines.removeAt(0);
    var reg = RegExp("([^\\(^\\s)]+)\\(");
    var match = reg.firstMatch(first);
    var name =
        match.group(1).trim(); // TODO 这里可能会出错，如果不匹配说明出问题了，不需要特意try catch.

    var result = 'class MXProxy$name extends MXJsonObjProxy {\n'
        '\tstatic Map<String, CreateJsonObjProxyFun> registerProxy() {\n'
        '\t\t///**@@@  2 替换类名字符串\n'
        '\t\tfinal String regClassName = "$name";\n'
        '\t\t///**@@@  3 替换类构造函数\n'
        '\t\treturn {regClassName: () => MXProxy$name()..init(className: regClassName)};\n'
        '\t}\n\n'
        '\t@override\n'
        '\t$name constructor(MXJsonBuildOwner bo, Map<String, dynamic> jsonMap, {BuildContext context}) {\n'
        '\t\tvar widget = $name(';

    // 去掉最后一行
    lines.removeLast();
    var props = '';
    var length = lines.length;
    for (int i = 0; i < length; i++) {
      var line = lines[i];

      var lineResult = parseSingleLine(line);

      if (lineResult.isEmpty) {
        continue;
      }
      if (i < length - 1) {
        props += '\t\t\t' + lineResult + '\n';
      } else {
        props += '\t\t\t' + lineResult;
      }
    }
    // 构造函数结束部分
    result = '$result\n$props\n\t\t);\n\t\treturn widget;\n\t}\n';

    // 添加类结束括号
    result = '$result}\n';

    return result;
  }

  static String parseSingleLine(String line) {
    var result = '';
    line = line.trim();

    /// 获取最后一个逗号前的字符串
    if (line.lastIndexOf(',') >= 0) {
      line = line.substring(0, line.lastIndexOf(','));
    }

    if (line.lastIndexOf(')') >= 0) {
      line = line.substring(0, line.lastIndexOf(')'));
    }

    if (line.lastIndexOf(')}') >= 0) {
      line = line.substring(0, line.lastIndexOf(')}'));
    }

    if (line.isEmpty) {
      return "";
    }

    // 去除用[]包裹的字符串
    if (line.length > 1 && line[0] == '[' && line[line.length - 1] == ']') {
      line = line.replaceFirst('[', '').trim();
      line = line.replaceRange(line.length - 1, line.length, '').trim();
    }

    var kv = line.split('=');

    var property = kv[0].trim();

    // 去除存在的前缀，如@required, int，根据空格来取最后一个
    var propertyKV = property.split(' ');
    property = propertyKV.last;

    // 删除this.
    property = property.replaceAll('this.', '').trim();

    // 是否有默认值
    if (kv.length > 1) {
      var value = kv[1].trim();
      result =
          '$property: mxj2d(bo, jsonMap["$property"], defaultValue:$value),';
    } else {
      result = '$property: mxj2d(bo, jsonMap["$property"]),';
    }

    return result;
  }

  static String enumTranslateDart(String src) {
    // 去头尾空格，换行
    src = src.trim();

    var lines = src.split("\n");

    String prefix = "enum";
    //获取第一行的类名。注意：此处成员变量不能在第一行
    var first = lines.removeAt(0);

    var name = first.substring(prefix.length);
    if (name.endsWith("{")) {
      name = name.substring(0, name.length - 2);
    }

    name = name.trim();

    var result = 'class MX$name  {\n'
        '\tstatic Map str2VMap =  {';

    // 去掉最后一行
    lines.removeLast();
    var props = '';
    var length = lines.length;
    for (int i = 0; i < length; i++) {
      var line = lines[i];
      line = line.trim();

      if (line.isEmpty || line.startsWith("//")) {
        continue;
      }

      props += '\n\t\t' + enumParseSingleLine(name, line);
    }

    result = result +
        props +
        '\n\t}; \n'
        '\n\tstatic $name parse(Map valueMap,{$name defaultValue }) {\n'
        '\t\tif(valueMap == null) return defaultValue;\n'
        '\t\tvar valueStr = valueMap["_name"].trim();\n'
        '\t\tvar v = str2VMap[valueStr];\n'
        '\t\treturn v??defaultValue;\n'
        '\t}\n';

    // 添加类结束括号
    result = '$result}\n';

    return result;
  }

  static String enumParseSingleLine(String name, String line) {
    var result = '';
    line = line.trim();

    /// 获取最后一个逗号前的字符串
    if (line.lastIndexOf(',') >= 0) {
      line = line.substring(0, line.lastIndexOf(','));
    }

    // 去除用[]包裹的字符串
    if (line.length > 1 && line[0] == '[' && line[line.length - 1] == ']') {
      line = line.replaceFirst('[', '').trim();
      line = line.replaceRange(line.length - 1, line.length, '').trim();
    }

    var kv = line.split('=');

    var property = kv[0].trim();

    // 去除存在的前缀，如@required, int，根据空格来取最后一个
    var propertyKV = property.split(' ');
    property = propertyKV.last;

    // 删除this.
    property = property.replaceAll('this.', '').trim();

    result = '"$name.$property": $name.$property,';

    return result;
  }
}

class Parse2JS {
  static String translateJS(String src, {String superClass = "FlutterWidget"}) {
    // 去头尾空格，换行
    src = src.trim();

    if (src.startsWith("enum")) {
      return enumTranslateJS(src);
    }

    var lines = src.split("\n");

    bool bHasMapArgs = false;

    //获取第一行的类名。注意：此处成员变量不能在第一行
    var first = lines.removeAt(0);
    first = first.trim();
    if (first.endsWith("{")) {
      bHasMapArgs = true;
    }

    var reg = RegExp("([^\\(^\\s)]+)\\(");
    var match = reg.firstMatch(first);
    var name =
        match.group(1).trim(); // TODO 这里可能会出错，如果不匹配说明出问题了，不需要特���try catch.

    String staticClassConstructor;
    int staticClassIndex = name.indexOf(".");
    if (staticClassIndex > 0) {
      String orgiName = name;
      name = orgiName.substring(0, staticClassIndex);
      staticClassConstructor = orgiName.substring(staticClassIndex + 1);
    }

    var result = "";

    if (staticClassIndex < 0) {
      result = 'class $name extends $superClass {\n'
          '\t\tconstructor (';
    } else {
      // result = 'class $name extends $superClass {\n'
      //     '\t\tstatic $staticClassConstructor (\n';

      result = '\t\tstatic $staticClassConstructor (';
    }

    // 去掉最后一行
    lines.removeLast();
    var props = bHasMapArgs ? '{\n' : "\n";
    var length = lines.length;

    for (int i = 0; i < length; i++) {
      var line = lines[i];
      line = line.trim();

      bool bHasMapArgsStart = line.startsWith("{");
      bool bHasMapArgsNext = line.endsWith("{");

      /// 获取最后一个逗号前的字符串
      if (line.lastIndexOf(',') >= 0) {
        line = line.substring(0, line.lastIndexOf(','));
      }

      line = line.trim();

      if (bHasMapArgsStart) {
        bHasMapArgs = true;
        props += '{';
      }

      var lineResult = parseSingleLineJS(line);

      if (lineResult.isEmpty) {
        continue;
      }
      if (i < length - 1) {
        props += '\t\t\t' + lineResult + '\n';
      } else {
        props += '\t\t\t' + lineResult;
      }

      if (bHasMapArgsNext) {
        bHasMapArgs = true;
        props += '{';
      }
    }

    String thisStr = "this";
    if (staticClassIndex < 0) {
      if (bHasMapArgs) {
        // 构造函数结束部分
        result = result +
            '$props\n'
            '\t\t} = {}) {\n\t\t\tsuper();\n';
      } else {
        result = result +
            '$props\n'
            '\t\t) {\n\t\t\tsuper();\n';
      }
    } else {
      if (bHasMapArgs) {
        // 构造函数结束部分
        // 构造函数结束部分
        result = result +
            '$props\n'
            '\t\t} = {}) {\n\t\t\tlet jsObj = new $name();\n'
            '\t\t\tjsObj.constructorName = "$staticClassConstructor";\n';
      } else {
        // 构造函数结束部分
        result = result +
            '$props\n'
            '\t\t) {\n\t\t\tlet jsObj = new $name();\n'
            '\t\t\tjsObj.constructorName = "$staticClassConstructor";\n';
      }

      thisStr = "jsObj";
    }

    var assignment = '\n';
    for (int i = 0; i < length; i++) {
      var line = lines[i];
      if (i < length - 1) {
        assignment +=
            '\t\t\t' + parseSingleLineJSAssignment(line, thisStr) + '\n';
      } else {
        assignment += '\t\t\t' + parseSingleLineJSAssignment(line, thisStr);
      }
    }

    // 添加类结束括号

    if (staticClassIndex < 0) {
      result = result + '$assignment\n\t\t}\n}\n';
    } else {
      result = result +
          '$assignment\n\t\t'
          '\treturn $thisStr;\n}';
    }

    return result;
  }

  static String parseSingleLineJS(String line) {
    var result = '';
    line = line.trim();

    /// 获取最后一个逗号前的字符串
    if (line.lastIndexOf(',') >= 0) {
      line = line.substring(0, line.lastIndexOf(','));
    }

    if (line.lastIndexOf(')') >= 0) {
      line = line.substring(0, line.lastIndexOf(')'));
    }

    if (line.lastIndexOf(')}') >= 0) {
      line = line.substring(0, line.lastIndexOf(')}'));
    }

    if (line.isEmpty) {
      return "";
    }

    // 去除用[]包裹的字符串
    if (line.length > 1 && line[0] == '[' && line[line.length - 1] == ']') {
      line = line.replaceFirst('[', '').trim();
      line = line.replaceRange(line.length - 1, line.length, '').trim();
    }

    var kv = line.split('=');

    var property = kv[0].trim();

    // 去除存在的前缀，如@required, int，根据空格来取最后一个
    var propertyKV = property.split(' ');
    property = propertyKV.last;

    // 删除this.
    property = property.replaceAll('this.', '').trim();

    result = '$property,';

    return result;
  }

  static String parseSingleLineJSAssignment(String line, thisStr) {
    var result = '';
    line = line.trim();

    /// 获取最后一个逗号前的字符串
    if (line.lastIndexOf(',') >= 0) {
      line = line.substring(0, line.lastIndexOf(','));
    }

    if (line.lastIndexOf(')') >= 0) {
      line = line.substring(0, line.lastIndexOf(')'));
    }

    if (line.lastIndexOf(')}') >= 0) {
      line = line.substring(0, line.lastIndexOf(')}'));
    }

    if (line.isEmpty) {
      return "";
    }

    // 去除用[]包裹的字符串
    if (line.length > 1 && line[0] == '[' && line[line.length - 1] == ']') {
      line = line.replaceFirst('[', '').trim();
      line = line.replaceRange(line.length - 1, line.length, '').trim();
    }

    var kv = line.split('=');

    var property = kv[0].trim();

    // 去除存在的前缀，如@required, int，根据空格来取最后一个
    var propertyKV = property.split(' ');
    property = propertyKV.last;

    // 删除this.
    property = property.replaceAll('this.', '').trim();

    result = '$thisStr.$property = $property;';

    return result;
  }

  static String enumTranslateJS(String src) {
    // 去头尾空格，换行
    src = src.trim();

    var lines = src.split("\n");

    String prefix = "enum";
    //获取第一行的类名。注意：此处成员变量不能在第一行
    var first = lines.removeAt(0);

    var name = first.substring(prefix.length);
    if (name.endsWith("{")) {
      name = name.substring(0, name.length - 2);
    }

    name = name.trim();

    var result = '$name = {';

    // 去掉最后一行
    lines.removeLast();
    var props = '';
    var length = lines.length;
    var index = 0;
    for (int i = 0; i < length; i++) {
      var line = lines[i];
      line = line.trim();

      if (line.isEmpty || line.startsWith("//")) {
        continue;
      }

      props += '\n\t' + enumParseSingleLine2JS(name, line, index++);
    }
    // 构造函数结束部分
    result = result + props; // + '\t}\n';

    // 添加类结束括号
    result = '$result\n};\n';

    return result;
  }

  static String enumParseSingleLine2JS(String name, String line, int index) {
    var result = '';
    line = line.trim();

    /// 获取最后一个逗号前的字符串
    if (line.lastIndexOf(',') >= 0) {
      line = line.substring(0, line.lastIndexOf(','));
    }

    // 去除用[]包裹的字符串
    if (line.length > 1 && line[0] == '[' && line[line.length - 1] == ']') {
      line = line.replaceFirst('[', '').trim();
      line = line.replaceRange(line.length - 1, line.length, '').trim();
    }

    var kv = line.split('=');

    var property = kv[0].trim();

    // 去除存在的前缀，如@required, int，根据空格来取最后一个
    var propertyKV = property.split(' ');
    property = propertyKV.last;

    // 删除this.
    property = property.replaceAll('this.', '').trim();

    // result = '$property: "$name.$property",';
    result = '$property:{ _name: "$name.$property", index: $index },';

    return result;
  }
}

class Parse2DartFlutter {
  static String translateDart(String src, {String superClass = "FlutterWidget"}) {
    // 去头尾空格，换行
    src = src.trim();

    if (src.startsWith("enum")) {
      return enumTranslateDart(src);
    }

    var lines = src.split("\n");

    bool bHasMapArgs = false;

    //获取第一行的类名。注意：此处成员变量不能在第一行
    var first = lines.removeAt(0);
    first = first.trim();
    if (first.endsWith("{")) {
      bHasMapArgs = true;
    }

    var reg = RegExp("([^\\(^\\s)]+)\\(");
    var match = reg.firstMatch(first);
    var name =
        match.group(1).trim(); // TODO 这里可能会出错，如果不匹配说明出问题了，不需要特���try catch.


    int staticClassIndex = name.indexOf(".");
    if (staticClassIndex > 0) {
      String orgiName = name;
      name = orgiName.substring(0, staticClassIndex);
      //String staticClassConstructor = orgiName.substring(staticClassIndex + 1);
    }

    var result = "";

    if (staticClassIndex < 0) {
      result = 'class $name extends $superClass {\n'
          '\t$name({';
    }

    // 去掉最后一行
    lines.removeLast();
    var props = bHasMapArgs ? '{\n' : "\n";
    var length = lines.length;

    for (int i = 0; i < length; i++) {
      var line = lines[i];
      line = line.trim();

      bool bHasMapArgsStart = line.startsWith("{");
      bool bHasMapArgsNext = line.endsWith("{");

      /// 获取最后一个逗号前的字符串
      if (line.lastIndexOf(',') >= 0) {
        line = line.substring(0, line.lastIndexOf(','));
      }

      line = line.trim();

      if (bHasMapArgsStart) {
        bHasMapArgs = true;
        props += '{';
      }

      var lineResult = parseSingleLineDart(line);

      if (lineResult.isEmpty) {
        continue;
      }
      if (i < length - 1) {
        props += '\t\t' + lineResult + '\n';
      } else {
        props += '\t\t' + lineResult;
      }

      if (bHasMapArgsNext) {
        bHasMapArgs = true;
        props += '{';
      }
    }

    if(props.isEmpty) {
    }

    String thisStr = "this";

    //类定义
    var assignment = '\n';
    for (int i = 0; i < length; i++) {
      var line = lines[i];
      if (i < length - 1) {
        assignment +=
            '\t\t' + parseSingleLineDartAssignment(line, thisStr) + '\n';
      } else {
        assignment += '\t\t' + parseSingleLineDartAssignment(line, thisStr);
      }
    }

    // 添加类结束括号
    if (staticClassIndex < 0) {
      result = result + '$assignment\n\t});';
    }

    {
      //属性定义
      var assignment = '\n';
      for (int i = 0; i < length; i++) {
        var line = lines[i];
        if (i < length - 1) {
          assignment +=
              '\t' + parseSingleLineDartProperty(line, thisStr) + '\n';
        } else {
          assignment += '\t' + parseSingleLineDartProperty(line, thisStr);
        }
      }
      result = result + '$assignment\n';
    }

    {
      //toMap
      result = result + '\n\tMap<String, dynamic> toMap() {';
      result = result + '\n\t\tfinal Map<String, dynamic> jsonMap = new Map<String, dynamic>();';
      result = result + '\n\t\tjsonMap[\'className\'] = \'$name\';';

      var assignment = '\n';
      for (int i = 0; i < length; i++) {
        var line = lines[i];
        if (i < length - 1) {
          assignment +=
              '\t\t' + parseSingleLineDartMapKey(line, thisStr) + '\n';
        } else {
          assignment += '\t\t' + parseSingleLineDartMapKey(line, thisStr);
        }
      }
      result = result + '$assignment\n\t\treturn jsonMap;\n\t}';

      result = result + '\n\n\ttoJson() \{\n\t\treturn toMap();\n\t\}\n}';
    }

    return result;
  }

  static String parseSingleLineDart(String line) {
    var result = '';
    line = line.trim();

    /// 获取最后一个逗号前的字符串
    if (line.lastIndexOf(',') >= 0) {
      line = line.substring(0, line.lastIndexOf(','));
    }

    if (line.lastIndexOf(')') >= 0) {
      line = line.substring(0, line.lastIndexOf(')'));
    }

    if (line.lastIndexOf(')}') >= 0) {
      line = line.substring(0, line.lastIndexOf(')}'));
    }

    if (line.isEmpty) {
      return "";
    }

    // 去除用[]包裹的字符串
    if (line.length > 1 && line[0] == '[' && line[line.length - 1] == ']') {
      line = line.replaceFirst('[', '').trim();
      line = line.replaceRange(line.length - 1, line.length, '').trim();
    }

    var kv = line.split('=');

    var property = kv[0].trim();

    // 去除存在的前缀，如@required, int，根据空格来取最后一个
    var propertyKV = property.split(' ');
    property = propertyKV.last;

    // 删除this.
    property = property.replaceAll('this.', '').trim();

    result = '$property,';

    return result;
  }

  static String parseSingleLineDartAssignment(String line, thisStr) {
    var result = '';
    line = line.trim();

    /// 获取最后一个逗号前的字符串
    if (line.lastIndexOf(',') >= 0) {
      line = line.substring(0, line.lastIndexOf(','));
    }

    if (line.lastIndexOf(')') >= 0) {
      line = line.substring(0, line.lastIndexOf(')'));
    }

    if (line.lastIndexOf(')}') >= 0) {
      line = line.substring(0, line.lastIndexOf(')}'));
    }

    if (line.isEmpty) {
      return "";
    }

    // 去除用[]包裹的字符串
    if (line.length > 1 && line[0] == '[' && line[line.length - 1] == ']') {
      line = line.replaceFirst('[', '').trim();
      line = line.replaceRange(line.length - 1, line.length, '').trim();
    }

    var kv = line.split('=');

    var property = kv[0].trim();

    // 去除存在的前缀，如@required, int，根据空格来取最后一个
    var propertyKV = property.split(' ');
    property = propertyKV.last;

    // 删除this.
    property = property.replaceAll('this.', '').trim();

    result = '$thisStr.$property,';

    return result;
  }

  static String parseSingleLineDartProperty(String line, thisStr) {
    var result = '';
    line = line.trim();

    /// 获取最后一个逗号前的字符串
    if (line.lastIndexOf(',') >= 0) {
      line = line.substring(0, line.lastIndexOf(','));
    }

    if (line.lastIndexOf(')') >= 0) {
      line = line.substring(0, line.lastIndexOf(')'));
    }

    if (line.lastIndexOf(')}') >= 0) {
      line = line.substring(0, line.lastIndexOf(')}'));
    }

    if (line.isEmpty) {
      return "";
    }

    // 去除用[]包裹的字符串
    if (line.length > 1 && line[0] == '[' && line[line.length - 1] == ']') {
      line = line.replaceFirst('[', '').trim();
      line = line.replaceRange(line.length - 1, line.length, '').trim();
    }

    var kv = line.split('=');

    var property = kv[0].trim();

    // 去除存在的前缀，如@required, int，根据空格来取最后一个
    var propertyKV = property.split(' ');
    property = propertyKV.last;

    // 删除this.
    property = property.replaceAll('this.', '').trim();

    result = 'final dynamic $property;';

    return result;
  }

    static String parseSingleLineDartMapKey(String line, thisStr) {
    var result = '';
    line = line.trim();

    /// 获取最后一个逗号前的字符串
    if (line.lastIndexOf(',') >= 0) {
      line = line.substring(0, line.lastIndexOf(','));
    }

    if (line.lastIndexOf(')') >= 0) {
      line = line.substring(0, line.lastIndexOf(')'));
    }

    if (line.lastIndexOf(')}') >= 0) {
      line = line.substring(0, line.lastIndexOf(')}'));
    }

    if (line.isEmpty) {
      return "";
    }

    // 去除用[]包裹的字符串
    if (line.length > 1 && line[0] == '[' && line[line.length - 1] == ']') {
      line = line.replaceFirst('[', '').trim();
      line = line.replaceRange(line.length - 1, line.length, '').trim();
    }

    var kv = line.split('=');

    var property = kv[0].trim();

    // 去除存在的前缀，如@required, int，根据空格来取最后一个
    var propertyKV = property.split(' ');
    property = propertyKV.last;

    // 删除this.
    property = property.replaceAll('this.', '').trim();

    result = 'if (this.$property != null) {\n';
    result = result + '\t\t\tjsonMap[\'$property\'] = this.$property;\n';
    result = result + '\t\t}';
    return result;
  }

  static String enumTranslateDart(String src) {
    // 去头尾空格，换行
    src = src.trim();

    var lines = src.split("\n");

    String prefix = "enum";
    //获取第一行的类名。注意：此处成员变量不能在第一行
    var first = lines.removeAt(0);

    var name = first.substring(prefix.length);
    if (name.endsWith("{")) {
      name = name.substring(0, name.length - 2);
    }

    name = name.trim();

    var result = '$name = {\n';

    // 去掉最后一行
    lines.removeLast();
    var props = '';
    var length = lines.length;
    for (int i = 0; i < length; i++) {
      var line = lines[i];
      line = line.trim();

      if (line.isEmpty || line.startsWith("//")) {
        continue;
      }

      if (i < length - 1) {
        props += '\t\t\t' + enumParseSingleLine2Dart(name, line) + '\n';
      } else {
        props += '\t\t\t' + enumParseSingleLine2Dart(name, line);
      }
    }
    // 构造函数结束部分
    result = result + props; // + '\t}\n';

    // 添加类结束括号
    result = '$result\n};\n';

    return result;
  }

  static String enumParseSingleLine2Dart(String name, String line) {
    var result = '';
    line = line.trim();

    /// 获取最后一个逗号前的字符串
    if (line.lastIndexOf(',') >= 0) {
      line = line.substring(0, line.lastIndexOf(','));
    }

    // 去除用[]包裹的字符串
    if (line.length > 1 && line[0] == '[' && line[line.length - 1] == ']') {
      line = line.replaceFirst('[', '').trim();
      line = line.replaceRange(line.length - 1, line.length, '').trim();
    }

    var kv = line.split('=');

    var property = kv[0].trim();

    // 去除存在的前缀，如@required, int，根据空格来取最后一个
    var propertyKV = property.split(' ');
    property = propertyKV.last;

    // 删除this.
    property = property.replaceAll('this.', '').trim();

    result = '$property: "$name.$property",';

    return result;
  }
}
