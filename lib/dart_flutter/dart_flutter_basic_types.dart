
//flutter 中 非widget继承 DartClass
class DartClass {
  Map<String, dynamic> toMap() {
    return Map();
  }
}

//flutter Widget继承FlutterWidget
class FlutterWidget extends DartClass {
  preBuild() {

  }
}

class IconData extends DartClass {
	IconData(
		this.codePoint,{
		this.fontFamily,
		this.fontPackage,
		this.matchTextDirection
	});
	final dynamic codePoint;
	final dynamic fontFamily;
	final dynamic fontPackage;
	final dynamic matchTextDirection;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
    jsonMap['className'] = 'IconData';
		if (this.codePoint != null) {
			jsonMap['codePoint'] = this.codePoint;
		}
		if (this.fontFamily != null) {
			jsonMap['fontFamily'] = this.fontFamily;
		}
		if (this.fontPackage != null) {
			jsonMap['fontPackage'] = this.fontPackage;
		}
		if (this.matchTextDirection != null) {
			jsonMap['matchTextDirection'] = this.matchTextDirection;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class EdgeInsets extends DartClass {
	EdgeInsets({
		this.left,
		this.top,
		this.right,
		this.bottom,
	});

  EdgeInsets.fromLTRB(this.left, this.top, this.right, this.bottom) : this.constructorName = "fromLTRB";
  
  EdgeInsets.all(this.value)
      : left = value, top = value, right = value, bottom = value, this.constructorName = "all";
  
  EdgeInsets.only({
    this.left = 0.0,
    this.top = 0.0,
    this.right = 0.0,
    this.bottom = 0.0
  }) : this.constructorName = "only";
  
  EdgeInsets.symmetric({ double vertical = 0.0,
                             double horizontal = 0.0 })
    : left = horizontal, top = vertical, right = horizontal, bottom = vertical, this.constructorName = "symmetric";

  dynamic constructorName;
  dynamic value;
	dynamic left;
	dynamic top;
	dynamic right;
	dynamic bottom;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'EdgeInsets';
    jsonMap['constructorName'] = this.constructorName;
    if (this.value != null) {
			jsonMap['value'] = this.value;
		}
		if (this.left != null) {
			jsonMap['left'] = this.left;
		}
		if (this.top != null) {
			jsonMap['top'] = this.top;
		}
		if (this.right != null) {
			jsonMap['right'] = this.right;
		}
		if (this.bottom != null) {
			jsonMap['bottom'] = this.bottom;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}

  static fromJson(Map mapObj) {
    var obj = new EdgeInsets();
    mapObj.forEach((k, v) {
        switch (k) {
          case "value":
            obj.value = v;
            break;
          case "left":
            obj.left = v;
            break;
          case "top":
            obj.top = v;
            break;
          case "right":
            obj.right = v;
            break;
          case "bottom":
            obj.bottom = v;
            break;
   
          default:
              break;
      }
    });
    return obj;
  }
}

class Color extends DartClass {
  Color(int value) : value = value & 0xFFFFFFFF;

  Color.fromARGB(int a, int r, int g, int b) :
    value = (((a & 0xff) << 24) |
             ((r & 0xff) << 16) |
             ((g & 0xff) << 8)  |
             ((b & 0xff) << 0)) & 0xFFFFFFFF;

  Color.fromRGBO(int r, int g, int b, double opacity) :
    value = ((((opacity * 0xff ~/ 1) & 0xff) << 24) |
              ((r                    & 0xff) << 16) |
              ((g                    & 0xff) << 8)  |
              ((b                    & 0xff) << 0)) & 0xFFFFFFFF;

	final dynamic value;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'Color';
		if (this.value != null) {
			jsonMap['value'] = this.value;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class Size extends DartClass {
	Size({
    this.width,
    this.height,
	});
  dynamic width;
  dynamic height;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'Size';
		if (this.width != null) {
			jsonMap['width'] = this.width;
		}
    if (this.height != null) {
			jsonMap['height'] = this.height;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}

  static fromJson(Map mapObj) {
    var obj = new Size();
    mapObj.forEach((k, v) {
        switch (k) {
          case "width":
            obj.width = v;
            break;
          case "height":
            obj.height = v;
            break;
   
          default:
              break;
      }
    });
    return obj;
  }
}

enum MainAxisAlignment{
    start,
    end,
    center,
    spaceBetween,
    spaceAround,
    spaceEvenly,
}

enum MainAxisSize {
    min,
    max,
}

enum CrossAxisAlignment {
    start,
    end,
    center,
    stretch,
    baseline,
}

enum BoxFit {
    fill,
    contain,
    cover,
    fitWidth,
    fitHeight,
    none,
    scaleDown,
}