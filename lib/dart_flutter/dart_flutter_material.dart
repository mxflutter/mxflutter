import 'dart_flutter_basic_types.dart';

class Scaffold extends FlutterWidget {
  Scaffold({
    this.key,
    this.appBar,
    this.body,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.floatingActionButtonAnimator,
    this.persistentFooterButtons,
    this.drawer,
    this.endDrawer,
    this.bottomNavigationBar,
    this.bottomSheet,
    this.backgroundColor,
    this.resizeToAvoidBottomPadding,
    this.primary,
  });
  final dynamic key;
  final dynamic appBar;
  final dynamic body;
  final dynamic floatingActionButton;
  final dynamic floatingActionButtonLocation;
  final dynamic floatingActionButtonAnimator;
  final dynamic persistentFooterButtons;
  final dynamic drawer;
  final dynamic endDrawer;
  final dynamic bottomNavigationBar;
  final dynamic bottomSheet;
  final dynamic backgroundColor;
  final dynamic resizeToAvoidBottomPadding;
  final dynamic primary;
  
  Map<String, dynamic> toMap() {
    final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
    jsonMap['className'] = 'Scaffold';
    if (this.key != null) {
      jsonMap['key'] = this.key;
    }
    if (this.appBar != null) {
      jsonMap['appBar'] = this.appBar;
    }
    if (this.body != null) {
      jsonMap['body'] = this.body;
    }
    if (this.floatingActionButton != null) {
      jsonMap['floatingActionButton'] = this.floatingActionButton;
    }
    if (this.floatingActionButtonLocation != null) {
      jsonMap['floatingActionButtonLocation'] = this.floatingActionButtonLocation;
    }
    if (this.floatingActionButtonAnimator != null) {
      jsonMap['floatingActionButtonAnimator'] = this.floatingActionButtonAnimator;
    }
    if (this.persistentFooterButtons != null) {
      jsonMap['persistentFooterButtons'] = this.persistentFooterButtons;
    }
    if (this.drawer != null) {
      jsonMap['drawer'] = this.drawer;
    }
    if (this.endDrawer != null) {
      jsonMap['endDrawer'] = this.endDrawer;
    }
    if (this.bottomNavigationBar != null) {
      jsonMap['bottomNavigationBar'] = this.bottomNavigationBar;
    }
    if (this.bottomSheet != null) {
      jsonMap['bottomSheet'] = this.bottomSheet;
    }
    if (this.backgroundColor != null) {
      jsonMap['backgroundColor'] = this.backgroundColor;
    }
    if (this.resizeToAvoidBottomPadding != null) {
      jsonMap['resizeToAvoidBottomPadding'] = this.resizeToAvoidBottomPadding;
    }
    if (this.primary != null) {
      jsonMap['primary'] = this.primary;
    }
    return jsonMap;
  }

  toJson() {
    return toMap();
  }
}

class AppBar extends FlutterWidget {
  AppBar({
    this.key,
    this.leading,
    this.automaticallyImplyLeading,
    this.title,
    this.actions,
    this.flexibleSpace,
    this.bottom,
    this.elevation,
    this.backgroundColor,
    this.brightness,
    this.iconTheme,
    this.textTheme,
    this.primary,
    this.centerTitle,
    this.titleSpacing,
    this.toolbarOpacity,
    this.bottomOpacity,
  });
  final dynamic key;
  final dynamic leading;
  final dynamic automaticallyImplyLeading;
  final dynamic title;
  final dynamic actions;
  final dynamic flexibleSpace;
  final dynamic bottom;
  final dynamic elevation;
  final dynamic backgroundColor;
  final dynamic brightness;
  final dynamic iconTheme;
  final dynamic textTheme;
  final dynamic primary;
  final dynamic centerTitle;
  final dynamic titleSpacing;
  final dynamic toolbarOpacity;
  final dynamic bottomOpacity;

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
    jsonMap['className'] = 'AppBar';
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
    if (this.toolbarOpacity != null) {
      jsonMap['toolbarOpacity'] = this.toolbarOpacity;
    }
    if (this.bottomOpacity != null) {
      jsonMap['bottomOpacity'] = this.bottomOpacity;
    }
    return jsonMap;
  }

  toJson() {
    return toMap();
  }
}

class Icon extends FlutterWidget {
	Icon(this.icon, {
		this.key,
		this.size,
		this.color,
		this.semanticLabel,
		this.textDirection,
	});
  final dynamic icon;
	final dynamic key;
	final dynamic size;
	final dynamic color;
	final dynamic semanticLabel;
	final dynamic textDirection;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
    jsonMap['className'] = 'Icon';
    if (this.icon != null) {
			jsonMap['icon'] = this.icon;
		}
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.size != null) {
			jsonMap['size'] = this.size;
		}
		if (this.color != null) {
			jsonMap['color'] = this.color;
		}
		if (this.semanticLabel != null) {
			jsonMap['semanticLabel'] = this.semanticLabel;
		}
		if (this.textDirection != null) {
			jsonMap['textDirection'] = this.textDirection;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class FloatingActionButton extends FlutterWidget {
	FloatingActionButton({
		this.key,
		this.child,
		this.tooltip,
		this.foregroundColor,
		this.backgroundColor,
		this.heroTag,
		this.elevation,
		this.highlightElevation,
		this.onPressed,
		this.mini,
		this.shape,
		this.clipBehavior,
		this.materialTapTargetSize,
		this.isExtended,
	});
	final dynamic key;
	final dynamic child;
	final dynamic tooltip;
	final dynamic foregroundColor;
	final dynamic backgroundColor;
	final dynamic heroTag;
	final dynamic elevation;
	final dynamic highlightElevation;
	final dynamic onPressed;
	final dynamic mini;
	final dynamic shape;
	final dynamic clipBehavior;
	final dynamic materialTapTargetSize;
	final dynamic isExtended;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'FloatingActionButton';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.child != null) {
			jsonMap['child'] = this.child;
		}
		if (this.tooltip != null) {
			jsonMap['tooltip'] = this.tooltip;
		}
		if (this.foregroundColor != null) {
			jsonMap['foregroundColor'] = this.foregroundColor;
		}
		if (this.backgroundColor != null) {
			jsonMap['backgroundColor'] = this.backgroundColor;
		}
		if (this.heroTag != null) {
			jsonMap['heroTag'] = this.heroTag;
		}
		if (this.elevation != null) {
			jsonMap['elevation'] = this.elevation;
		}
		if (this.highlightElevation != null) {
			jsonMap['highlightElevation'] = this.highlightElevation;
		}
		if (this.onPressed != null) {
			jsonMap['onPressed'] = this.onPressed;
		}
		if (this.mini != null) {
			jsonMap['mini'] = this.mini;
		}
		if (this.shape != null) {
			jsonMap['shape'] = this.shape;
		}
		if (this.clipBehavior != null) {
			jsonMap['clipBehavior'] = this.clipBehavior;
		}
		if (this.materialTapTargetSize != null) {
			jsonMap['materialTapTargetSize'] = this.materialTapTargetSize;
		}
		if (this.isExtended != null) {
			jsonMap['isExtended'] = this.isExtended;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class Card extends FlutterWidget {
	Card({
		this.key,
		this.color,
		this.elevation,
		this.shape,
		this.margin,
		this.clipBehavior,
		this.child,
		this.semanticContainer,
	});
	final dynamic key;
	final dynamic color;
	final dynamic elevation;
	final dynamic shape;
	final dynamic margin;
	final dynamic clipBehavior;
	final dynamic child;
	final dynamic semanticContainer;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'Card';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.color != null) {
			jsonMap['color'] = this.color;
		}
		if (this.elevation != null) {
			jsonMap['elevation'] = this.elevation;
		}
		if (this.shape != null) {
			jsonMap['shape'] = this.shape;
		}
		if (this.margin != null) {
			jsonMap['margin'] = this.margin;
		}
		if (this.clipBehavior != null) {
			jsonMap['clipBehavior'] = this.clipBehavior;
		}
		if (this.child != null) {
			jsonMap['child'] = this.child;
		}
		if (this.semanticContainer != null) {
			jsonMap['semanticContainer'] = this.semanticContainer;
		}
		return jsonMap;
	}

	toJson() {
		return toMap();
	}
}

class Hero extends FlutterWidget {
	Hero({
		this.key,
		this.tag,
		this.createRectTween,
		this.flightShuttleBuilder,
		this.placeholderBuilder,
		this.transitionOnUserGestures,
		this.child,
	});
	final dynamic key;
	final dynamic tag;
	final dynamic createRectTween;
	final dynamic flightShuttleBuilder;
	final dynamic placeholderBuilder;
	final dynamic transitionOnUserGestures;
	final dynamic child;

	Map<String, dynamic> toMap() {
		final Map<String, dynamic> jsonMap = new Map<String, dynamic>();
		jsonMap['className'] = 'Hero';
		if (this.key != null) {
			jsonMap['key'] = this.key;
		}
		if (this.tag != null) {
			jsonMap['tag'] = this.tag;
		}
		if (this.createRectTween != null) {
			jsonMap['createRectTween'] = this.createRectTween;
		}
		if (this.flightShuttleBuilder != null) {
			jsonMap['flightShuttleBuilder'] = this.flightShuttleBuilder;
		}
		if (this.placeholderBuilder != null) {
			jsonMap['placeholderBuilder'] = this.placeholderBuilder;
		}
		if (this.transitionOnUserGestures != null) {
			jsonMap['transitionOnUserGestures'] = this.transitionOnUserGestures;
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