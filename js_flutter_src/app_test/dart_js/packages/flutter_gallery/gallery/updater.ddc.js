'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const async = dart_sdk.async;
const _interceptors = dart_sdk._interceptors;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const text = packages__flutter__src__widgets__actions.src__widgets__text;
const widget_inspector = packages__flutter__src__widgets__actions.src__widgets__widget_inspector;
const navigator = packages__flutter__src__widgets__actions.src__widgets__navigator;
const packages__flutter__material = require('packages/flutter/material');
const dialog = packages__flutter__material.src__material__dialog;
const theme$ = packages__flutter__material.src__material__theme;
const flat_button = packages__flutter__material.src__material__flat_button;
const packages__url_launcher__url_launcher = require('packages/url_launcher/url_launcher');
const url_launcher = packages__url_launcher__url_launcher.url_launcher;
const updater = Object.create(dart.library);
let VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
let JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C0() {
    return C0 = dart.const({
      __proto__: core.Duration.prototype,
      [Duration__duration]: 86400000000.0
    });
  },
  get C1() {
    return C1 = dart.const({
      __proto__: text.Text.prototype,
      [Widget_key]: null,
      [Text_textWidthBasis]: null,
      [Text_semanticsLabel]: null,
      [Text_maxLines]: null,
      [Text_textScaleFactor]: null,
      [Text_overflow]: null,
      [Text_softWrap]: null,
      [Text_locale]: null,
      [Text_textDirection]: null,
      [Text_textAlign]: null,
      [Text_strutStyle]: null,
      [Text_style]: null,
      [Text_textSpan]: null,
      [Text_data]: "Update Flutter Gallery?"
    });
  },
  get C6() {
    return C6 = dart.const({
      __proto__: text.Text.prototype,
      [Widget_key]: null,
      [Text_textWidthBasis]: null,
      [Text_semanticsLabel]: null,
      [Text_maxLines]: null,
      [Text_textScaleFactor]: null,
      [Text_overflow]: null,
      [Text_softWrap]: null,
      [Text_locale]: null,
      [Text_textDirection]: null,
      [Text_textAlign]: null,
      [Text_strutStyle]: null,
      [Text_style]: null,
      [Text_textSpan]: null,
      [Text_data]: "NO THANKS"
    });
  },
  get C11() {
    return C11 = dart.const({
      __proto__: text.Text.prototype,
      [Widget_key]: null,
      [Text_textWidthBasis]: null,
      [Text_semanticsLabel]: null,
      [Text_maxLines]: null,
      [Text_textScaleFactor]: null,
      [Text_overflow]: null,
      [Text_softWrap]: null,
      [Text_locale]: null,
      [Text_textDirection]: null,
      [Text_textAlign]: null,
      [Text_strutStyle]: null,
      [Text_style]: null,
      [Text_textSpan]: null,
      [Text_data]: "UPDATE"
    });
  }
});
const updateUrlFetcher$ = dart.privateName(updater, "Updater.updateUrlFetcher");
const child$ = dart.privateName(updater, "Updater.child");
updater.Updater = class Updater extends framework.StatefulWidget {
  get updateUrlFetcher() {
    return this[updateUrlFetcher$];
  }
  set updateUrlFetcher(value) {
    super.updateUrlFetcher = value;
  }
  get child() {
    return this[child$];
  }
  set child(value) {
    super.child = value;
  }
  createState() {
    return new updater.UpdaterState.new();
  }
};
(updater.Updater.new = function(opts) {
  let updateUrlFetcher = opts && 'updateUrlFetcher' in opts ? opts.updateUrlFetcher : null;
  let child = opts && 'child' in opts ? opts.child : null;
  let key = opts && 'key' in opts ? opts.key : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[updateUrlFetcher$] = updateUrlFetcher;
  this[child$] = child;
  if (!(updateUrlFetcher != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/gallery/updater.dart", 15, 14, "updateUrlFetcher != null");
  updater.Updater.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = updater.Updater.prototype;
dart.addTypeTests(updater.Updater);
dart.setMethodSignature(updater.Updater, () => ({
  __proto__: dart.getMethods(updater.Updater.__proto__),
  createState: dart.fnType(framework.State$(framework.StatefulWidget), [])
}));
dart.setLibraryUri(updater.Updater, "package:flutter_gallery/gallery/updater.dart");
dart.setFieldSignature(updater.Updater, () => ({
  __proto__: dart.getFields(updater.Updater.__proto__),
  updateUrlFetcher: dart.finalFieldType(dart.fnType(async.Future$(core.String), [])),
  child: dart.finalFieldType(framework.Widget)
}));
const _checkForUpdates = dart.privateName(updater, "_checkForUpdates");
const Duration__duration = dart.privateName(core, "Duration._duration");
let C0;
const _buildDialog = dart.privateName(updater, "_buildDialog");
const Widget_key = dart.privateName(framework, "Widget.key");
const Text_textWidthBasis = dart.privateName(text, "Text.textWidthBasis");
const Text_semanticsLabel = dart.privateName(text, "Text.semanticsLabel");
const Text_maxLines = dart.privateName(text, "Text.maxLines");
const Text_textScaleFactor = dart.privateName(text, "Text.textScaleFactor");
const Text_overflow = dart.privateName(text, "Text.overflow");
const Text_softWrap = dart.privateName(text, "Text.softWrap");
const Text_locale = dart.privateName(text, "Text.locale");
const Text_textDirection = dart.privateName(text, "Text.textDirection");
const Text_textAlign = dart.privateName(text, "Text.textAlign");
const Text_strutStyle = dart.privateName(text, "Text.strutStyle");
const Text_style = dart.privateName(text, "Text.style");
const Text_textSpan = dart.privateName(text, "Text.textSpan");
const Text_data = dart.privateName(text, "Text.data");
let C1;
const _Location_parameterLocations = dart.privateName(widget_inspector, "_Location.parameterLocations");
const _Location_name = dart.privateName(widget_inspector, "_Location.name");
const _Location_column = dart.privateName(widget_inspector, "_Location.column");
const _Location_line = dart.privateName(widget_inspector, "_Location.line");
const _Location_file = dart.privateName(widget_inspector, "_Location.file");
let C6;
let C11;
updater.UpdaterState = class UpdaterState extends framework.State$(updater.Updater) {
  initState() {
    super.initState();
    this[_checkForUpdates]();
  }
  [_checkForUpdates]() {
    return async.async(dart.void, (function* _checkForUpdates() {
      if (updater.UpdaterState._lastUpdateCheck != null && dart.test(new core.DateTime.now().difference(updater.UpdaterState._lastUpdateCheck)['<'](C0 || CT.C0))) {
        return;
      }
      updater.UpdaterState._lastUpdateCheck = new core.DateTime.now();
      let updateUrl = (yield this.widget.updateUrlFetcher());
      if (updateUrl != null) {
        let wantsUpdate = (yield dialog.showDialog(core.bool, {context: this.context, builder: dart.bind(this, _buildDialog)}));
        if (wantsUpdate != null && dart.test(wantsUpdate)) url_launcher.launch(updateUrl);
      }
    }).bind(this));
  }
  [_buildDialog](context) {
    let theme = theme$.Theme.of(context);
    let dialogTextStyle = theme.textTheme.subhead.copyWith({color: theme.textTheme.caption.color});
    return new dialog.AlertDialog.new({title: C1 || CT.C1, content: new text.Text.new("A newer version is available.", {style: dialogTextStyle, $creationLocationd_0dea112b090073317d4: C2 || CT.C2}), actions: JSArrayOfWidget().of([new flat_button.FlatButton.new({child: C6 || CT.C6, onPressed: dart.fn(() => {
            navigator.Navigator.pop(core.bool, context, false);
          }, VoidToNull()), $creationLocationd_0dea112b090073317d4: C7 || CT.C7}), new flat_button.FlatButton.new({child: C11 || CT.C11, onPressed: dart.fn(() => {
            navigator.Navigator.pop(core.bool, context, true);
          }, VoidToNull()), $creationLocationd_0dea112b090073317d4: C12 || CT.C12})]), $creationLocationd_0dea112b090073317d4: C16 || CT.C16});
  }
  build(context) {
    return this.widget.child;
  }
};
(updater.UpdaterState.new = function() {
  updater.UpdaterState.__proto__.new.call(this);
  ;
}).prototype = updater.UpdaterState.prototype;
dart.addTypeTests(updater.UpdaterState);
dart.setMethodSignature(updater.UpdaterState, () => ({
  __proto__: dart.getMethods(updater.UpdaterState.__proto__),
  [_checkForUpdates]: dart.fnType(async.Future$(dart.void), []),
  [_buildDialog]: dart.fnType(framework.Widget, [framework.BuildContext]),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(updater.UpdaterState, "package:flutter_gallery/gallery/updater.dart");
dart.defineLazy(updater.UpdaterState, {
  /*updater.UpdaterState._lastUpdateCheck*/get _lastUpdateCheck() {
    return null;
  },
  set _lastUpdateCheck(_) {}
});
dart.trackLibraries("packages/flutter_gallery/gallery/updater", {
  "package:flutter_gallery/gallery/updater.dart": updater
}, {
}, '{"version":3,"sourceRoot":"","sources":["updater.dart"],"names":[],"mappings":";;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;EAiByB;;;;;;EACV;;;;;;;AAGU;EAAc;;;MARN;MAAuB;MAAW;;EAAlC;EAAuB;QAC3C,AAAiB,gBAAD,IAAI;AAC3B,iDAAW,GAAG;;AAAC;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;AAYA,IAAX;AACY,IAAlB;EACF;;AAG6B;AAE3B,UAAI,yCAAoB,kBACX,AAAM,AAA6B,mCAAlB;AAC5B;;AAE+B,MAAjC,wCAA4B;AAEf,uBAAY,MAAM,AAAO;AACtC,UAAI,SAAS,IAAI;AACJ,2BAAc,MAAM,uCAA0B,iCAAkB;AAC3E,YAAI,WAAW,IAAI,kBAAQ,WAAW,GACpC,AAAiB,oBAAV,SAAS;;IAEtB;;iBAEiC;AACf,gBAAc,gBAAG,OAAO;AACxB,0BACZ,AAAM,AAAU,AAAQ,KAAnB,oCAAmC,AAAM,AAAU,AAAQ,KAAnB;AACjD,UAAO,0DAEI,kBAAK,yCAAwC,eAAe,kEACpD,sBACf,+DAEa;AACoB,YAAnB,mCAAI,OAAO,EAAE;mFAG3B,iEAEa;AACmB,YAAlB,mCAAI,OAAO,EAAE;;EAKjC;QAG0B;AAAY,UAAA,AAAO;EAAK;;;;;AACpD;;;;;;;;;;IA3CkB,qCAAgB","file":"updater.ddc.js"}');
// Exports:
exports.gallery__updater = updater;

//# sourceMappingURL=updater.ddc.js.map
