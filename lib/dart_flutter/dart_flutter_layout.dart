import 'dart_flutter_basic_types.dart';

class Padding extends FlutterWidget {
	Padding({
		this.key,
		this.padding,
		this.child,
	});
	final dynamic key;
	final dynamic padding;
	final dynamic child;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'Padding';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.padding != null) {
			jsonMap['padding'] = this.padding;
		}
		if (this.child != null) {
			jsonMap['child'] = this.child;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class Align extends FlutterWidget {
	Align({
		this.key,
		this.alignment,
		this.widthFactor,
		this.heightFactor,
		this.child,
	});
	final dynamic key;
	final dynamic alignment;
	final dynamic widthFactor;
	final dynamic heightFactor;
	final dynamic child;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'Align';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.alignment != null) {
			jsonMap['alignment'] = this.alignment;
		}
		if (this.widthFactor != null) {
			jsonMap['widthFactor'] = this.widthFactor;
		}
		if (this.heightFactor != null) {
			jsonMap['heightFactor'] = this.heightFactor;
		}
		if (this.child != null) {
			jsonMap['child'] = this.child;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class FittedBox extends FlutterWidget {
	FittedBox({
		this.key,
		this.fit,
		this.alignment,
		this.child,
	});
	final dynamic key;
	final dynamic fit;
	final dynamic alignment;
	final dynamic child;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'FittedBox';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.fit != null) {
			jsonMap['fit'] = this.fit;
		}
		if (this.alignment != null) {
			jsonMap['alignment'] = this.alignment;
		}
		if (this.child != null) {
			jsonMap['child'] = this.child;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class AspectRatio extends FlutterWidget {
	AspectRatio({
		this.key,
		this.aspectRatio,
		this.child,
	});
	final dynamic key;
	final dynamic aspectRatio;
	final dynamic child;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'AspectRatio';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.aspectRatio != null) {
			jsonMap['aspectRatio'] = this.aspectRatio;
		}
		if (this.child != null) {
			jsonMap['child'] = this.child;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class ConstrainedBox extends FlutterWidget {
	ConstrainedBox({
		this.key,
		this.constraints,
		this.child,
	});
	final dynamic key;
	final dynamic constraints;
	final dynamic child;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'ConstrainedBox';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.constraints != null) {
			jsonMap['constraints'] = this.constraints;
		}
		if (this.child != null) {
			jsonMap['child'] = this.child;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class Baseline extends FlutterWidget {
	Baseline({
		this.key,
		this.baseline,
		this.baselineType,
		this.child,
	});
	final dynamic key;
	final dynamic baseline;
	final dynamic baselineType;
	final dynamic child;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'Baseline';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.baseline != null) {
			jsonMap['baseline'] = this.baseline;
		}
		if (this.baselineType != null) {
			jsonMap['baselineType'] = this.baselineType;
		}
		if (this.child != null) {
			jsonMap['child'] = this.child;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class FractionallySizedBox extends FlutterWidget {
	FractionallySizedBox({
		this.key,
		this.alignment,
		this.widthFactor,
		this.heightFactor,
		this.child,
	});
	final dynamic key;
	final dynamic alignment;
	final dynamic widthFactor;
	final dynamic heightFactor;
	final dynamic child;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'FractionallySizedBox';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.alignment != null) {
			jsonMap['alignment'] = this.alignment;
		}
		if (this.widthFactor != null) {
			jsonMap['widthFactor'] = this.widthFactor;
		}
		if (this.heightFactor != null) {
			jsonMap['heightFactor'] = this.heightFactor;
		}
		if (this.child != null) {
			jsonMap['child'] = this.child;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class IntrinsicHeight extends FlutterWidget {
	IntrinsicHeight({
		this.key,
		this.child,
	});
	final dynamic key;
	final dynamic child;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'IntrinsicHeight';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.child != null) {
			jsonMap['child'] = this.child;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class IntrinsicWidth extends FlutterWidget {
	IntrinsicWidth({
		this.key,
		this.stepWidth,
		this.stepHeight,
		this.child,
	});
	final dynamic key;
	final dynamic stepWidth;
	final dynamic stepHeight;
	final dynamic child;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'IntrinsicWidth';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.stepWidth != null) {
			jsonMap['stepWidth'] = this.stepWidth;
		}
		if (this.stepHeight != null) {
			jsonMap['stepHeight'] = this.stepHeight;
		}
		if (this.child != null) {
			jsonMap['child'] = this.child;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class LimitedBox extends FlutterWidget {
	LimitedBox({
		this.key,
		this.maxWidth,
		this.maxHeight,
		this.child,
	});
	final dynamic key;
	final dynamic maxWidth;
	final dynamic maxHeight;
	final dynamic child;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'LimitedBox';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.maxWidth != null) {
			jsonMap['maxWidth'] = this.maxWidth;
		}
		if (this.maxHeight != null) {
			jsonMap['maxHeight'] = this.maxHeight;
		}
		if (this.child != null) {
			jsonMap['child'] = this.child;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class Offstage extends FlutterWidget {
	Offstage({
		this.key,
		this.offstage,
		this.child,
	});
	final dynamic key;
	final dynamic offstage;
	final dynamic child;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'Offstage';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.offstage != null) {
			jsonMap['offstage'] = this.offstage;
		}
		if (this.child != null) {
			jsonMap['child'] = this.child;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class OverflowBox extends FlutterWidget {
	OverflowBox({
		this.key,
		this.alignment,
		this.minWidth,
		this.maxWidth,
		this.minHeight,
		this.maxHeight,
		this.child,
	});
	final dynamic key;
	final dynamic alignment;
	final dynamic minWidth;
	final dynamic maxWidth;
	final dynamic minHeight;
	final dynamic maxHeight;
	final dynamic child;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'OverflowBox';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.alignment != null) {
			jsonMap['alignment'] = this.alignment;
		}
		if (this.minWidth != null) {
			jsonMap['minWidth'] = this.minWidth;
		}
		if (this.maxWidth != null) {
			jsonMap['maxWidth'] = this.maxWidth;
		}
		if (this.minHeight != null) {
			jsonMap['minHeight'] = this.minHeight;
		}
		if (this.maxHeight != null) {
			jsonMap['maxHeight'] = this.maxHeight;
		}
		if (this.child != null) {
			jsonMap['child'] = this.child;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class SizedBox extends FlutterWidget {
	SizedBox({
		this.key,
		this.width,
		this.height,
		this.child,
	});
	final dynamic key;
	final dynamic width;
	final dynamic height;
	final dynamic child;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'SizedBox';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.width != null) {
			jsonMap['width'] = this.width;
		}
		if (this.height != null) {
			jsonMap['height'] = this.height;
		}
		if (this.child != null) {
			jsonMap['child'] = this.child;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class SizedOverflowBox extends FlutterWidget {
	SizedOverflowBox({
		this.key,
		this.size,
		this.alignment,
		this.child,
	});
	final dynamic key;
	final dynamic size;
	final dynamic alignment;
	final dynamic child;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'SizedOverflowBox';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.size != null) {
			jsonMap['size'] = this.size;
		}
		if (this.alignment != null) {
			jsonMap['alignment'] = this.alignment;
		}
		if (this.child != null) {
			jsonMap['child'] = this.child;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class Transform extends FlutterWidget {
	Transform({
		this.key,
		this.transform,
		this.origin,
		this.alignment,
		this.transformHitTests,
		this.child,
	});
	final dynamic key;
	final dynamic transform;
	final dynamic origin;
	final dynamic alignment;
	final dynamic transformHitTests;
	final dynamic child;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'Transform';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.transform != null) {
			jsonMap['transform'] = this.transform;
		}
		if (this.origin != null) {
			jsonMap['origin'] = this.origin;
		}
		if (this.alignment != null) {
			jsonMap['alignment'] = this.alignment;
		}
		if (this.transformHitTests != null) {
			jsonMap['transformHitTests'] = this.transformHitTests;
		}
		if (this.child != null) {
			jsonMap['child'] = this.child;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class CustomSingleChildLayout extends FlutterWidget {
	CustomSingleChildLayout({
		this.key,
		this.delegate,
		this.child,
	});
	final dynamic key;
	final dynamic delegate;
	final dynamic child;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'CustomSingleChildLayout';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.delegate != null) {
			jsonMap['delegate'] = this.delegate;
		}
		if (this.child != null) {
			jsonMap['child'] = this.child;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class Row extends FlutterWidget {
	Row({
		this.key,
		this.mainAxisAlignment,
		this.mainAxisSize,
		this.crossAxisAlignment,
		this.textDirection,
		this.verticalDirection,
		this.textBaseline,
		this.children,
	});
	final dynamic key;
	final dynamic mainAxisAlignment;
	final dynamic mainAxisSize;
	final dynamic crossAxisAlignment;
	final dynamic textDirection;
	final dynamic verticalDirection;
	final dynamic textBaseline;
	final dynamic children;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'Row';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.mainAxisAlignment != null) {
			jsonMap['mainAxisAlignment'] = this.mainAxisAlignment;
		}
		if (this.mainAxisSize != null) {
			jsonMap['mainAxisSize'] = this.mainAxisSize;
		}
		if (this.crossAxisAlignment != null) {
			jsonMap['crossAxisAlignment'] = this.crossAxisAlignment;
		}
		if (this.textDirection != null) {
			jsonMap['textDirection'] = this.textDirection;
		}
		if (this.verticalDirection != null) {
			jsonMap['verticalDirection'] = this.verticalDirection;
		}
		if (this.textBaseline != null) {
			jsonMap['textBaseline'] = this.textBaseline;
		}
		if (this.children != null) {
			jsonMap['children'] = this.children;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class Column extends FlutterWidget {
	Column({
		this.key,
		this.mainAxisAlignment,
		this.mainAxisSize,
		this.crossAxisAlignment,
		this.textDirection,
		this.verticalDirection,
		this.textBaseline,
		this.children,
	});
	final dynamic key;
	final dynamic mainAxisAlignment;
	final dynamic mainAxisSize;
	final dynamic crossAxisAlignment;
	final dynamic textDirection;
	final dynamic verticalDirection;
	final dynamic textBaseline;
	final dynamic children;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'Column';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.mainAxisAlignment != null) {
			jsonMap['mainAxisAlignment'] = this.mainAxisAlignment;
		}
		if (this.mainAxisSize != null) {
			jsonMap['mainAxisSize'] = this.mainAxisSize;
		}
		if (this.crossAxisAlignment != null) {
			jsonMap['crossAxisAlignment'] = this.crossAxisAlignment;
		}
		if (this.textDirection != null) {
			jsonMap['textDirection'] = this.textDirection;
		}
		if (this.verticalDirection != null) {
			jsonMap['verticalDirection'] = this.verticalDirection;
		}
		if (this.textBaseline != null) {
			jsonMap['textBaseline'] = this.textBaseline;
		}
		if (this.children != null) {
			jsonMap['children'] = this.children;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class Stack extends FlutterWidget {
	Stack({
		this.key,
		this.alignment,
		this.textDirection,
		this.fit,
		this.overflow,
		this.children,
	});
	final dynamic key;
	final dynamic alignment;
	final dynamic textDirection;
	final dynamic fit;
	final dynamic overflow;
	final dynamic children;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'Stack';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.alignment != null) {
			jsonMap['alignment'] = this.alignment;
		}
		if (this.textDirection != null) {
			jsonMap['textDirection'] = this.textDirection;
		}
		if (this.fit != null) {
			jsonMap['fit'] = this.fit;
		}
		if (this.overflow != null) {
			jsonMap['overflow'] = this.overflow;
		}
		if (this.children != null) {
			jsonMap['children'] = this.children;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class IndexedStack extends FlutterWidget {
	IndexedStack({
		this.key,
		this.alignment,
		this.textDirection,
		this.sizing,
		this.index,
		this.children,
	});
	final dynamic key;
	final dynamic alignment;
	final dynamic textDirection;
	final dynamic sizing;
	final dynamic index;
	final dynamic children;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'IndexedStack';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.alignment != null) {
			jsonMap['alignment'] = this.alignment;
		}
		if (this.textDirection != null) {
			jsonMap['textDirection'] = this.textDirection;
		}
		if (this.sizing != null) {
			jsonMap['sizing'] = this.sizing;
		}
		if (this.index != null) {
			jsonMap['index'] = this.index;
		}
		if (this.children != null) {
			jsonMap['children'] = this.children;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class Flow extends FlutterWidget {
	Flow({
		this.key,
		this.delegate,
		this.children,
	});
	final dynamic key;
	final dynamic delegate;
	final dynamic children;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'Flow';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.delegate != null) {
			jsonMap['delegate'] = this.delegate;
		}
		if (this.children != null) {
			jsonMap['children'] = this.children;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class Table extends FlutterWidget {
	Table({
		this.key,
		this.children,
		this.columnWidths,
		this.defaultColumnWidth,
		this.textDirection,
		this.border,
		this.defaultVerticalAlignment,
		this.textBaseline,
	});
	final dynamic key;
	final dynamic children;
	final dynamic columnWidths;
	final dynamic defaultColumnWidth;
	final dynamic textDirection;
	final dynamic border;
	final dynamic defaultVerticalAlignment;
	final dynamic textBaseline;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'Table';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.children != null) {
			jsonMap['children'] = this.children;
		}
		if (this.columnWidths != null) {
			jsonMap['columnWidths'] = this.columnWidths;
		}
		if (this.defaultColumnWidth != null) {
			jsonMap['defaultColumnWidth'] = this.defaultColumnWidth;
		}
		if (this.textDirection != null) {
			jsonMap['textDirection'] = this.textDirection;
		}
		if (this.border != null) {
			jsonMap['border'] = this.border;
		}
		if (this.defaultVerticalAlignment != null) {
			jsonMap['defaultVerticalAlignment'] = this.defaultVerticalAlignment;
		}
		if (this.textBaseline != null) {
			jsonMap['textBaseline'] = this.textBaseline;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class Wrap extends FlutterWidget {
	Wrap({
		this.key,
		this.direction,
		this.alignment,
		this.spacing,
		this.runAlignment,
		this.runSpacing,
		this.crossAxisAlignment,
		this.textDirection,
		this.verticalDirection,
		this.children,
	});
	final dynamic key;
	final dynamic direction;
	final dynamic alignment;
	final dynamic spacing;
	final dynamic runAlignment;
	final dynamic runSpacing;
	final dynamic crossAxisAlignment;
	final dynamic textDirection;
	final dynamic verticalDirection;
	final dynamic children;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'Wrap';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.direction != null) {
			jsonMap['direction'] = this.direction;
		}
		if (this.alignment != null) {
			jsonMap['alignment'] = this.alignment;
		}
		if (this.spacing != null) {
			jsonMap['spacing'] = this.spacing;
		}
		if (this.runAlignment != null) {
			jsonMap['runAlignment'] = this.runAlignment;
		}
		if (this.runSpacing != null) {
			jsonMap['runSpacing'] = this.runSpacing;
		}
		if (this.crossAxisAlignment != null) {
			jsonMap['crossAxisAlignment'] = this.crossAxisAlignment;
		}
		if (this.textDirection != null) {
			jsonMap['textDirection'] = this.textDirection;
		}
		if (this.verticalDirection != null) {
			jsonMap['verticalDirection'] = this.verticalDirection;
		}
		if (this.children != null) {
			jsonMap['children'] = this.children;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class ListBody extends FlutterWidget {
	ListBody({
		this.key,
		this.mainAxis,
		this.reverse,
		this.children,
	});
	final dynamic key;
	final dynamic mainAxis;
	final dynamic reverse;
	final dynamic children;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'ListBody';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.mainAxis != null) {
			jsonMap['mainAxis'] = this.mainAxis;
		}
		if (this.reverse != null) {
			jsonMap['reverse'] = this.reverse;
		}
		if (this.children != null) {
			jsonMap['children'] = this.children;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class CustomMultiChildLayout extends FlutterWidget {
	CustomMultiChildLayout({
		this.key,
		this.delegate,
		this.children,
	});
	final dynamic key;
	final dynamic delegate;
	final dynamic children;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'CustomMultiChildLayout';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.delegate != null) {
			jsonMap['delegate'] = this.delegate;
		}
		if (this.children != null) {
			jsonMap['children'] = this.children;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class ListView extends FlutterWidget {
	ListView({
		this.key,
		this.scrollDirection,
		this.reverse,
		this.controller,
		this.primary,
		this.physics,
		this.shrinkWrap,
		this.padding,
		this.itemExtent,
		this.addAutomaticKeepAlives,
		this.addRepaintBoundaries,
		this.addSemanticIndexes,
		this.cacheExtent,
		this.children,
		this.semanticChildCount,
	});
	final dynamic key;
	final dynamic scrollDirection;
	final dynamic reverse;
	final dynamic controller;
	final dynamic primary;
	final dynamic physics;
	final dynamic shrinkWrap;
	final dynamic padding;
	final dynamic itemExtent;
	final dynamic addAutomaticKeepAlives;
	final dynamic addRepaintBoundaries;
	final dynamic addSemanticIndexes;
	final dynamic cacheExtent;
	final dynamic children;
	final dynamic semanticChildCount;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'ListView';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.scrollDirection != null) {
			jsonMap['scrollDirection'] = this.scrollDirection;
		}
		if (this.reverse != null) {
			jsonMap['reverse'] = this.reverse;
		}
		if (this.controller != null) {
			jsonMap['controller'] = this.controller;
		}
		if (this.primary != null) {
			jsonMap['primary'] = this.primary;
		}
		if (this.physics != null) {
			jsonMap['physics'] = this.physics;
		}
		if (this.shrinkWrap != null) {
			jsonMap['shrinkWrap'] = this.shrinkWrap;
		}
		if (this.padding != null) {
			jsonMap['padding'] = this.padding;
		}
		if (this.itemExtent != null) {
			jsonMap['itemExtent'] = this.itemExtent;
		}
		if (this.addAutomaticKeepAlives != null) {
			jsonMap['addAutomaticKeepAlives'] = this.addAutomaticKeepAlives;
		}
		if (this.addRepaintBoundaries != null) {
			jsonMap['addRepaintBoundaries'] = this.addRepaintBoundaries;
		}
		if (this.addSemanticIndexes != null) {
			jsonMap['addSemanticIndexes'] = this.addSemanticIndexes;
		}
		if (this.cacheExtent != null) {
			jsonMap['cacheExtent'] = this.cacheExtent;
		}
		if (this.children != null) {
			jsonMap['children'] = this.children;
		}
		if (this.semanticChildCount != null) {
			jsonMap['semanticChildCount'] = this.semanticChildCount;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class LayoutBuilder extends FlutterWidget {
	LayoutBuilder({
		this.key,
		this.builder,
	});
	final dynamic key;
	final dynamic builder;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'LayoutBuilder';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.builder != null) {
			jsonMap['builder'] = this.builder;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class ListTile extends FlutterWidget {
	ListTile({
		this.key,
		this.leading,
		this.title,
		this.subtitle,
		this.trailing,
		this.isThreeLine,
		this.dense,
		this.contentPadding,
		this.enabled,
		this.onTap,
		this.onLongPress,
		this.selected,
	});
	final dynamic key;
	final dynamic leading;
	final dynamic title;
	final dynamic subtitle;
	final dynamic trailing;
	final dynamic isThreeLine;
	final dynamic dense;
	final dynamic contentPadding;
	final dynamic enabled;
	final dynamic onTap;
	final dynamic onLongPress;
	final dynamic selected;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'ListTile';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.leading != null) {
			jsonMap['leading'] = this.leading;
		}
		if (this.title != null) {
			jsonMap['title'] = this.title;
		}
		if (this.subtitle != null) {
			jsonMap['subtitle'] = this.subtitle;
		}
		if (this.trailing != null) {
			jsonMap['trailing'] = this.trailing;
		}
		if (this.isThreeLine != null) {
			jsonMap['isThreeLine'] = this.isThreeLine;
		}
		if (this.dense != null) {
			jsonMap['dense'] = this.dense;
		}
		if (this.contentPadding != null) {
			jsonMap['contentPadding'] = this.contentPadding;
		}
		if (this.enabled != null) {
			jsonMap['enabled'] = this.enabled;
		}
		if (this.onTap != null) {
			jsonMap['onTap'] = this.onTap;
		}
		if (this.onLongPress != null) {
			jsonMap['onLongPress'] = this.onLongPress;
		}
		if (this.selected != null) {
			jsonMap['selected'] = this.selected;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class CustomScrollView extends FlutterWidget {
	CustomScrollView({
		this.key,
		this.scrollDirection,
		this.reverse,
		this.controller,
		this.primary,
		this.physics,
		this.shrinkWrap,
		this.cacheExtent,
		this.slivers,
		this.semanticChildCount,
	});
	final dynamic key;
	final dynamic scrollDirection;
	final dynamic reverse;
	final dynamic controller;
	final dynamic primary;
	final dynamic physics;
	final dynamic shrinkWrap;
	final dynamic cacheExtent;
	final dynamic slivers;
	final dynamic semanticChildCount;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'CustomScrollView';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.scrollDirection != null) {
			jsonMap['scrollDirection'] = this.scrollDirection;
		}
		if (this.reverse != null) {
			jsonMap['reverse'] = this.reverse;
		}
		if (this.controller != null) {
			jsonMap['controller'] = this.controller;
		}
		if (this.primary != null) {
			jsonMap['primary'] = this.primary;
		}
		if (this.physics != null) {
			jsonMap['physics'] = this.physics;
		}
		if (this.shrinkWrap != null) {
			jsonMap['shrinkWrap'] = this.shrinkWrap;
		}
		if (this.cacheExtent != null) {
			jsonMap['cacheExtent'] = this.cacheExtent;
		}
		if (this.slivers != null) {
			jsonMap['slivers'] = this.slivers;
		}
		if (this.semanticChildCount != null) {
			jsonMap['semanticChildCount'] = this.semanticChildCount;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class SliverAppBar extends FlutterWidget {
	SliverAppBar({
		this.key,
		this.leading,
		this.automaticallyImplyLeading,
		this.title,
		this.actions,
		this.flexibleSpace,
		this.bottom,
		this.elevation,
		this.forceElevated,
		this.backgroundColor,
		this.brightness,
		this.iconTheme,
		this.textTheme,
		this.primary,
		this.centerTitle,
		this.titleSpacing,
		this.expandedHeight,
		this.floating,
		this.pinned,
		this.snap,
	});
	final dynamic key;
	final dynamic leading;
	final dynamic automaticallyImplyLeading;
	final dynamic title;
	final dynamic actions;
	final dynamic flexibleSpace;
	final dynamic bottom;
	final dynamic elevation;
	final dynamic forceElevated;
	final dynamic backgroundColor;
	final dynamic brightness;
	final dynamic iconTheme;
	final dynamic textTheme;
	final dynamic primary;
	final dynamic centerTitle;
	final dynamic titleSpacing;
	final dynamic expandedHeight;
	final dynamic floating;
	final dynamic pinned;
	final dynamic snap;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'SliverAppBar';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.leading != null) {
			jsonMap['leading'] = this.leading;
		}
		if (this.automaticallyImplyLeading != null) {
			jsonMap['automaticallyImplyLeading'] = this.automaticallyImplyLeading;
		}
		if (this.title != null) {
			jsonMap['title'] = this.title;
		}
		if (this.actions != null) {
			jsonMap['actions'] = this.actions;
		}
		if (this.flexibleSpace != null) {
			jsonMap['flexibleSpace'] = this.flexibleSpace;
		}
		if (this.bottom != null) {
			jsonMap['bottom'] = this.bottom;
		}
		if (this.elevation != null) {
			jsonMap['elevation'] = this.elevation;
		}
		if (this.forceElevated != null) {
			jsonMap['forceElevated'] = this.forceElevated;
		}
		if (this.backgroundColor != null) {
			jsonMap['backgroundColor'] = this.backgroundColor;
		}
		if (this.brightness != null) {
			jsonMap['brightness'] = this.brightness;
		}
		if (this.iconTheme != null) {
			jsonMap['iconTheme'] = this.iconTheme;
		}
		if (this.textTheme != null) {
			jsonMap['textTheme'] = this.textTheme;
		}
		if (this.primary != null) {
			jsonMap['primary'] = this.primary;
		}
		if (this.centerTitle != null) {
			jsonMap['centerTitle'] = this.centerTitle;
		}
		if (this.titleSpacing != null) {
			jsonMap['titleSpacing'] = this.titleSpacing;
		}
		if (this.expandedHeight != null) {
			jsonMap['expandedHeight'] = this.expandedHeight;
		}
		if (this.floating != null) {
			jsonMap['floating'] = this.floating;
		}
		if (this.pinned != null) {
			jsonMap['pinned'] = this.pinned;
		}
		if (this.snap != null) {
			jsonMap['snap'] = this.snap;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}
class SliverPadding extends FlutterWidget {
	SliverPadding({
		this.key,
		this.padding,
		this.sliver,
	});
	final dynamic key;
	final dynamic padding;
	final dynamic sliver;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'SliverPadding';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.padding != null) {
			jsonMap['padding'] = this.padding;
		}
		if (this.sliver != null) {
			jsonMap['sliver'] = this.sliver;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class SliverGrid extends FlutterWidget {
	SliverGrid({
		this.key,
		this.delegate,
		this.gridDelegate,
	});
	final dynamic key;
	final dynamic delegate;
	final dynamic gridDelegate;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'SliverGrid';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.delegate != null) {
			jsonMap['delegate'] = this.delegate;
		}
		if (this.gridDelegate != null) {
			jsonMap['gridDelegate'] = this.gridDelegate;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class SliverGridDelegateWithMaxCrossAxisExtent extends FlutterWidget {
	SliverGridDelegateWithMaxCrossAxisExtent({
		this.maxCrossAxisExtent,
		this.mainAxisSpacing,
		this.crossAxisSpacing,
		this.childAspectRatio,
	});
	final dynamic maxCrossAxisExtent;
	final dynamic mainAxisSpacing;
	final dynamic crossAxisSpacing;
	final dynamic childAspectRatio;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'SliverGridDelegateWithMaxCrossAxisExtent';
		if (this.maxCrossAxisExtent != null) {
			jsonMap['maxCrossAxisExtent'] = this.maxCrossAxisExtent;
		}
		if (this.mainAxisSpacing != null) {
			jsonMap['mainAxisSpacing'] = this.mainAxisSpacing;
		}
		if (this.crossAxisSpacing != null) {
			jsonMap['crossAxisSpacing'] = this.crossAxisSpacing;
		}
		if (this.childAspectRatio != null) {
			jsonMap['childAspectRatio'] = this.childAspectRatio;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class SliverChildBuilderDelegate extends FlutterWidget {
	SliverChildBuilderDelegate(
		this.builder, {
		this.childCount,
		this.addAutomaticKeepAlives,
		this.addRepaintBoundaries,
		this.addSemanticIndexes,
		this.semanticIndexCallback,
		this.semanticIndexOffset,
	});
	final dynamic builder;
	final dynamic childCount;
  List children = [];
	final dynamic addAutomaticKeepAlives;
	final dynamic addRepaintBoundaries;
	final dynamic addSemanticIndexes;
	final dynamic semanticIndexCallback;
	final dynamic semanticIndexOffset;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'SliverChildBuilderDelegate';
		// if (this.builder != null) {
		// 	jsonMap['builder'] = this.builder;
		// }
    preBuild();
    if (this.children != null) {
			jsonMap['children'] = this.children;
		}
		if (this.childCount != null) {
			jsonMap['childCount'] = this.childCount;
		}
		if (this.addAutomaticKeepAlives != null) {
			jsonMap['addAutomaticKeepAlives'] = this.addAutomaticKeepAlives;
		}
		if (this.addRepaintBoundaries != null) {
			jsonMap['addRepaintBoundaries'] = this.addRepaintBoundaries;
		}
		if (this.addSemanticIndexes != null) {
			jsonMap['addSemanticIndexes'] = this.addSemanticIndexes;
		}
		if (this.semanticIndexCallback != null) {
			jsonMap['semanticIndexCallback'] = this.semanticIndexCallback;
		}
		if (this.semanticIndexOffset != null) {
			jsonMap['semanticIndexOffset'] = this.semanticIndexOffset;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}

  preBuild() {
    if (this.builder != null) {
      for (int i = 0; i < this.childCount; ++i) {
        var w = this.builder(i);
        this.children.add(w);
      }
    }
  }
}

class GestureDetector extends FlutterWidget {
	GestureDetector({
		this.key,
		this.child,
		this.onTapDown,
		this.onTapUp,
		this.onTap,
		this.onTapCancel,
		this.onDoubleTap,
		this.onLongPress,
		this.onLongPressUp,
		this.onVerticalDragDown,
		this.onVerticalDragStart,
		this.onVerticalDragUpdate,
		this.onVerticalDragEnd,
		this.onVerticalDragCancel,
		this.onHorizontalDragDown,
		this.onHorizontalDragStart,
		this.onHorizontalDragUpdate,
		this.onHorizontalDragEnd,
		this.onHorizontalDragCancel,
		this.onPanDown,
		this.onPanStart,
		this.onPanUpdate,
		this.onPanEnd,
		this.onPanCancel,
		this.onScaleStart,
		this.onScaleUpdate,
		this.onScaleEnd,
		this.behavior,
		this.excludeFromSemantics,
	});
	final dynamic key;
	final dynamic child;
	final dynamic onTapDown;
	final dynamic onTapUp;
	final dynamic onTap;
	final dynamic onTapCancel;
	final dynamic onDoubleTap;
	final dynamic onLongPress;
	final dynamic onLongPressUp;
	final dynamic onVerticalDragDown;
	final dynamic onVerticalDragStart;
	final dynamic onVerticalDragUpdate;
	final dynamic onVerticalDragEnd;
	final dynamic onVerticalDragCancel;
	final dynamic onHorizontalDragDown;
	final dynamic onHorizontalDragStart;
	final dynamic onHorizontalDragUpdate;
	final dynamic onHorizontalDragEnd;
	final dynamic onHorizontalDragCancel;
	final dynamic onPanDown;
	final dynamic onPanStart;
	final dynamic onPanUpdate;
	final dynamic onPanEnd;
	final dynamic onPanCancel;
	final dynamic onScaleStart;
	final dynamic onScaleUpdate;
	final dynamic onScaleEnd;
	final dynamic behavior;
	final dynamic excludeFromSemantics;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'GestureDetector';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.child != null) {
			jsonMap['child'] = this.child;
		}
		if (this.onTapDown != null) {
			jsonMap['onTapDown'] = this.onTapDown;
		}
		if (this.onTapUp != null) {
			jsonMap['onTapUp'] = this.onTapUp;
		}
		if (this.onTap != null) {
			jsonMap['onTap'] = this.onTap;
		}
		if (this.onTapCancel != null) {
			jsonMap['onTapCancel'] = this.onTapCancel;
		}
		if (this.onDoubleTap != null) {
			jsonMap['onDoubleTap'] = this.onDoubleTap;
		}
		if (this.onLongPress != null) {
			jsonMap['onLongPress'] = this.onLongPress;
		}
		if (this.onLongPressUp != null) {
			jsonMap['onLongPressUp'] = this.onLongPressUp;
		}
		if (this.onVerticalDragDown != null) {
			jsonMap['onVerticalDragDown'] = this.onVerticalDragDown;
		}
		if (this.onVerticalDragStart != null) {
			jsonMap['onVerticalDragStart'] = this.onVerticalDragStart;
		}
		if (this.onVerticalDragUpdate != null) {
			jsonMap['onVerticalDragUpdate'] = this.onVerticalDragUpdate;
		}
		if (this.onVerticalDragEnd != null) {
			jsonMap['onVerticalDragEnd'] = this.onVerticalDragEnd;
		}
		if (this.onVerticalDragCancel != null) {
			jsonMap['onVerticalDragCancel'] = this.onVerticalDragCancel;
		}
		if (this.onHorizontalDragDown != null) {
			jsonMap['onHorizontalDragDown'] = this.onHorizontalDragDown;
		}
		if (this.onHorizontalDragStart != null) {
			jsonMap['onHorizontalDragStart'] = this.onHorizontalDragStart;
		}
		if (this.onHorizontalDragUpdate != null) {
			jsonMap['onHorizontalDragUpdate'] = this.onHorizontalDragUpdate;
		}
		if (this.onHorizontalDragEnd != null) {
			jsonMap['onHorizontalDragEnd'] = this.onHorizontalDragEnd;
		}
		if (this.onHorizontalDragCancel != null) {
			jsonMap['onHorizontalDragCancel'] = this.onHorizontalDragCancel;
		}
		if (this.onPanDown != null) {
			jsonMap['onPanDown'] = this.onPanDown;
		}
		if (this.onPanStart != null) {
			jsonMap['onPanStart'] = this.onPanStart;
		}
		if (this.onPanUpdate != null) {
			jsonMap['onPanUpdate'] = this.onPanUpdate;
		}
		if (this.onPanEnd != null) {
			jsonMap['onPanEnd'] = this.onPanEnd;
		}
		if (this.onPanCancel != null) {
			jsonMap['onPanCancel'] = this.onPanCancel;
		}
		if (this.onScaleStart != null) {
			jsonMap['onScaleStart'] = this.onScaleStart;
		}
		if (this.onScaleUpdate != null) {
			jsonMap['onScaleUpdate'] = this.onScaleUpdate;
		}
		if (this.onScaleEnd != null) {
			jsonMap['onScaleEnd'] = this.onScaleEnd;
		}
		if (this.behavior != null) {
			jsonMap['behavior'] = this.behavior;
		}
		if (this.excludeFromSemantics != null) {
			jsonMap['excludeFromSemantics'] = this.excludeFromSemantics;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class Expanded extends FlutterWidget {
	Expanded({
		this.key,
		this.flex,
		this.child,
	});
	final dynamic key;
	final dynamic flex;
	final dynamic child;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'Expanded';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.flex != null) {
			jsonMap['flex'] = this.flex;
		}
		if (this.child != null) {
			jsonMap['child'] = this.child;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class DecoratedBox extends FlutterWidget {
	DecoratedBox({
		this.key,
		this.decoration,
		this.position,
		this.child,
	});
	final dynamic key;
	final dynamic decoration;
	final dynamic position;
	final dynamic child;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'DecoratedBox';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.decoration != null) {
			jsonMap['decoration'] = this.decoration;
		}
		if (this.position != null) {
			jsonMap['position'] = this.position;
		}
		if (this.child != null) {
			jsonMap['child'] = this.child;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class SliverList extends FlutterWidget {
	SliverList({
		this.key,
		this.delegate,
	});
	final dynamic key;
	final dynamic delegate;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'SliverList';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.delegate != null) {
			jsonMap['delegate'] = this.delegate;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class Container extends FlutterWidget {
	Container({
		this.key,
		this.alignment,
		this.padding,
		this.color,
		this.decoration,
		this.foregroundDecoration,
		this.width,
		this.height,
		this.constraints,
		this.margin,
		this.transform,
		this.child,
	});
	final dynamic key;
	final dynamic alignment;
	final dynamic padding;
	final dynamic color;
	final dynamic decoration;
	final dynamic foregroundDecoration;
	final dynamic width;
	final dynamic height;
	final dynamic constraints;
	final dynamic margin;
	final dynamic transform;
	final dynamic child;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'Container';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.alignment != null) {
			jsonMap['alignment'] = this.alignment;
		}
		if (this.padding != null) {
			jsonMap['padding'] = this.padding;
		}
		if (this.color != null) {
			jsonMap['color'] = this.color;
		}
		if (this.decoration != null) {
			jsonMap['decoration'] = this.decoration;
		}
		if (this.foregroundDecoration != null) {
			jsonMap['foregroundDecoration'] = this.foregroundDecoration;
		}
		if (this.width != null) {
			jsonMap['width'] = this.width;
		}
		if (this.height != null) {
			jsonMap['height'] = this.height;
		}
		if (this.constraints != null) {
			jsonMap['constraints'] = this.constraints;
		}
		if (this.margin != null) {
			jsonMap['margin'] = this.margin;
		}
		if (this.transform != null) {
			jsonMap['transform'] = this.transform;
		}
		if (this.child != null) {
			jsonMap['child'] = this.child;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}