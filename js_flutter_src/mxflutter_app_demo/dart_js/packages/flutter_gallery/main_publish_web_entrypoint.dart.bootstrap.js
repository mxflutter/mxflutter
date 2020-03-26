/* ENTRYPOINT_EXTENTION_MARKER */
(function() {
var _currentDirectory = (function () {
  var _url;
  var lines = new Error().stack.split('\n');
  function lookupUrl() {
    if (lines.length > 2) {
      var match = lines[1].match(/^\s+at (.+):\d+:\d+$/);
      // Chrome.
      if (match) return match[1];
      // Chrome nested eval case.
      match = lines[1].match(/^\s+at eval [(](.+):\d+:\d+[)]$/);
      if (match) return match[1];
      // Edge.
      match = lines[1].match(/^\s+at.+\((.+):\d+:\d+\)$/);
      if (match) return match[1];
      // Firefox.
      match = lines[0].match(/[<][@](.+):\d+:\d+$/)
      if (match) return match[1];
    }
    // Safari.
    return lines[0].match(/(.+):\d+:\d+$/)[1];
  }
  _url = lookupUrl();
  var lastSlash = _url.lastIndexOf('/');
  if (lastSlash == -1) return _url;
  var currentDirectory = _url.substring(0, lastSlash + 1);
  return currentDirectory;
})();

var baseUrl = (function () {
  // Attempt to detect --precompiled mode for tests, and set the base url
  // appropriately, otherwise set it to '/'.
  var pathParts = location.pathname.split("/");
  if (pathParts[0] == "") {
    pathParts.shift();
  }
  if (pathParts.length > 1 && pathParts[1] == "test") {
    return "/" + pathParts.slice(0, 2).join("/") + "/";
  }
  // Attempt to detect base url using <base href> html tag
  // base href should start and end with "/"
  if (typeof document !== 'undefined') {
    var el = document.getElementsByTagName('base');
    if (el && el[0] && el[0].getAttribute("href") && el[0].getAttribute
    ("href").startsWith("/") && el[0].getAttribute("href").endsWith("/")){
      return el[0].getAttribute("href");
    }
  }
  // return default value
  return "/";
}());

let modulePaths = {
 "dart_sdk": "packages/build_web_compilers/src/dev_compiler/dart_sdk",
 "packages/charcode/ascii": "packages/charcode/ascii.ddc",
 "packages/charcode/charcode": "packages/charcode/charcode.ddc",
 "packages/charcode/html_entity": "packages/charcode/html_entity.ddc",
 "packages/collection/collection": "packages/collection/collection.ddc",
 "packages/collection/src/algorithms": "packages/collection/src/algorithms.ddc",
 "packages/collection/src/canonicalized_map": "packages/collection/src/canonicalized_map.ddc",
 "packages/collection/src/comparators": "packages/collection/src/comparators.ddc",
 "packages/collection/src/iterable_zip": "packages/collection/src/iterable_zip.ddc",
 "packages/collection/src/priority_queue": "packages/collection/src/priority_queue.ddc",
 "packages/collection/src/utils": "packages/collection/src/utils.ddc",
 "packages/connectivity/connectivity": "packages/connectivity/connectivity.ddc",
 "packages/device_info/device_info": "packages/device_info/device_info.ddc",
 "packages/flutter/animation": "packages/flutter/animation.ddc",
 "packages/flutter/cupertino": "packages/flutter/cupertino.ddc",
 "packages/flutter/foundation": "packages/flutter/foundation.ddc",
 "packages/flutter/gestures": "packages/flutter/gestures.ddc",
 "packages/flutter/material": "packages/flutter/material.ddc",
 "packages/flutter/painting": "packages/flutter/painting.ddc",
 "packages/flutter/physics": "packages/flutter/physics.ddc",
 "packages/flutter/rendering": "packages/flutter/rendering.ddc",
 "packages/flutter/semantics": "packages/flutter/semantics.ddc",
 "packages/flutter/src/animation/animation": "packages/flutter/src/animation/animation.ddc",
 "packages/flutter/src/cupertino/action_sheet": "packages/flutter/src/cupertino/action_sheet.ddc",
 "packages/flutter/src/foundation/_bitfield_web": "packages/flutter/src/foundation/_bitfield_web.ddc",
 "packages/flutter/src/gestures/arena": "packages/flutter/src/gestures/arena.ddc",
 "packages/flutter/src/painting/_network_image_web": "packages/flutter/src/painting/_network_image_web.ddc",
 "packages/flutter/src/physics/clamped_simulation": "packages/flutter/src/physics/clamped_simulation.ddc",
 "packages/flutter/src/rendering/animated_size": "packages/flutter/src/rendering/animated_size.ddc",
 "packages/flutter/src/semantics/binding": "packages/flutter/src/semantics/binding.ddc",
 "packages/flutter/src/widgets/actions": "packages/flutter/src/widgets/actions.ddc",
 "packages/flutter/widgets": "packages/flutter/widgets.ddc",
 "packages/flutter_gallery/demo/all": "packages/flutter_gallery/demo/all.ddc",
 "packages/flutter_gallery/demo/animation/home": "packages/flutter_gallery/demo/animation/home.ddc",
 "packages/flutter_gallery/demo/animation/sections": "packages/flutter_gallery/demo/animation/sections.ddc",
 "packages/flutter_gallery/demo/animation/widgets": "packages/flutter_gallery/demo/animation/widgets.ddc",
 "packages/flutter_gallery/demo/animation_demo": "packages/flutter_gallery/demo/animation_demo.ddc",
 "packages/flutter_gallery/demo/calculator/home": "packages/flutter_gallery/demo/calculator/home.ddc",
 "packages/flutter_gallery/demo/calculator/logic": "packages/flutter_gallery/demo/calculator/logic.ddc",
 "packages/flutter_gallery/demo/calculator_demo": "packages/flutter_gallery/demo/calculator_demo.ddc",
 "packages/flutter_gallery/demo/colors_demo": "packages/flutter_gallery/demo/colors_demo.ddc",
 "packages/flutter_gallery/demo/contacts_demo": "packages/flutter_gallery/demo/contacts_demo.ddc",
 "packages/flutter_gallery/demo/cupertino/cupertino_text_field_demo": "packages/flutter_gallery/demo/cupertino/cupertino_text_field_demo.ddc",
 "packages/flutter_gallery/demo/fortnightly/fortnightly": "packages/flutter_gallery/demo/fortnightly/fortnightly.ddc",
 "packages/flutter_gallery/demo/material/backdrop_demo": "packages/flutter_gallery/demo/material/backdrop_demo.ddc",
 "packages/flutter_gallery/demo/material/full_screen_dialog_demo": "packages/flutter_gallery/demo/material/full_screen_dialog_demo.ddc",
 "packages/flutter_gallery/demo/pesto_demo": "packages/flutter_gallery/demo/pesto_demo.ddc",
 "packages/flutter_gallery/demo/shrine/app": "packages/flutter_gallery/demo/shrine/app.ddc",
 "packages/flutter_gallery/demo/shrine/backdrop": "packages/flutter_gallery/demo/shrine/backdrop.ddc",
 "packages/flutter_gallery/demo/shrine/category_menu_page": "packages/flutter_gallery/demo/shrine/category_menu_page.ddc",
 "packages/flutter_gallery/demo/shrine/colors": "packages/flutter_gallery/demo/shrine/colors.ddc",
 "packages/flutter_gallery/demo/shrine/expanding_bottom_sheet": "packages/flutter_gallery/demo/shrine/expanding_bottom_sheet.ddc",
 "packages/flutter_gallery/demo/shrine/home": "packages/flutter_gallery/demo/shrine/home.ddc",
 "packages/flutter_gallery/demo/shrine/login": "packages/flutter_gallery/demo/shrine/login.ddc",
 "packages/flutter_gallery/demo/shrine/model/app_state_model": "packages/flutter_gallery/demo/shrine/model/app_state_model.ddc",
 "packages/flutter_gallery/demo/shrine/model/product": "packages/flutter_gallery/demo/shrine/model/product.ddc",
 "packages/flutter_gallery/demo/shrine/model/products_repository": "packages/flutter_gallery/demo/shrine/model/products_repository.ddc",
 "packages/flutter_gallery/demo/shrine/supplemental/asymmetric_view": "packages/flutter_gallery/demo/shrine/supplemental/asymmetric_view.ddc",
 "packages/flutter_gallery/demo/shrine/supplemental/cut_corners_border": "packages/flutter_gallery/demo/shrine/supplemental/cut_corners_border.ddc",
 "packages/flutter_gallery/demo/shrine/supplemental/product_card": "packages/flutter_gallery/demo/shrine/supplemental/product_card.ddc",
 "packages/flutter_gallery/demo/shrine/supplemental/product_columns": "packages/flutter_gallery/demo/shrine/supplemental/product_columns.ddc",
 "packages/flutter_gallery/demo/shrine_demo": "packages/flutter_gallery/demo/shrine_demo.ddc",
 "packages/flutter_gallery/demo/transformations/transformations_demo": "packages/flutter_gallery/demo/transformations/transformations_demo.ddc",
 "packages/flutter_gallery/demo/transformations/transformations_demo_board": "packages/flutter_gallery/demo/transformations/transformations_demo_board.ddc",
 "packages/flutter_gallery/demo/transformations/transformations_demo_color_picker": "packages/flutter_gallery/demo/transformations/transformations_demo_color_picker.ddc",
 "packages/flutter_gallery/demo/transformations/transformations_demo_edit_board_point": "packages/flutter_gallery/demo/transformations/transformations_demo_edit_board_point.ddc",
 "packages/flutter_gallery/demo/transformations/transformations_demo_gesture_transformable": "packages/flutter_gallery/demo/transformations/transformations_demo_gesture_transformable.ddc",
 "packages/flutter_gallery/demo/transformations/transformations_demo_inertial_motion": "packages/flutter_gallery/demo/transformations/transformations_demo_inertial_motion.ddc",
 "packages/flutter_gallery/demo/typography_demo": "packages/flutter_gallery/demo/typography_demo.ddc",
 "packages/flutter_gallery/demo/video_demo": "packages/flutter_gallery/demo/video_demo.ddc",
 "packages/flutter_gallery/gallery/about": "packages/flutter_gallery/gallery/about.ddc",
 "packages/flutter_gallery/gallery/app": "packages/flutter_gallery/gallery/app.ddc",
 "packages/flutter_gallery/gallery/backdrop": "packages/flutter_gallery/gallery/backdrop.ddc",
 "packages/flutter_gallery/gallery/example_code_parser": "packages/flutter_gallery/gallery/example_code_parser.ddc",
 "packages/flutter_gallery/gallery/home": "packages/flutter_gallery/gallery/home.ddc",
 "packages/flutter_gallery/gallery/icons": "packages/flutter_gallery/gallery/icons.ddc",
 "packages/flutter_gallery/gallery/options": "packages/flutter_gallery/gallery/options.ddc",
 "packages/flutter_gallery/gallery/scales": "packages/flutter_gallery/gallery/scales.ddc",
 "packages/flutter_gallery/gallery/syntax_highlighter": "packages/flutter_gallery/gallery/syntax_highlighter.ddc",
 "packages/flutter_gallery/gallery/themes": "packages/flutter_gallery/gallery/themes.ddc",
 "packages/flutter_gallery/gallery/updater": "packages/flutter_gallery/gallery/updater.ddc",
 "packages/flutter_gallery/main": "packages/flutter_gallery/main.ddc",
 "packages/flutter_gallery/main_publish": "packages/flutter_gallery/main_publish.ddc",
 "packages/flutter_gallery/main_publish_web_entrypoint": "packages/flutter_gallery/main_publish_web_entrypoint.ddc",
 "packages/intl/date_symbols": "packages/intl/date_symbols.ddc",
 "packages/intl/intl": "packages/intl/intl.ddc",
 "packages/intl/number_symbols": "packages/intl/number_symbols.ddc",
 "packages/intl/number_symbols_data": "packages/intl/number_symbols_data.ddc",
 "packages/intl/src/plural_rules": "packages/intl/src/plural_rules.ddc",
 "packages/meta/meta": "packages/meta/meta.ddc",
 "packages/path/path": "packages/path/path.ddc",
 "packages/scoped_model/scoped_model": "packages/scoped_model/scoped_model.ddc",
 "packages/source_span/source_span": "packages/source_span/source_span.ddc",
 "packages/string_scanner/src/eager_span_scanner": "packages/string_scanner/src/eager_span_scanner.ddc",
 "packages/term_glyph/src/generated/ascii_glyph_set": "packages/term_glyph/src/generated/ascii_glyph_set.ddc",
 "packages/typed_data/typed_buffers": "packages/typed_data/typed_buffers.ddc",
 "packages/url_launcher/url_launcher": "packages/url_launcher/url_launcher.ddc",
 "packages/url_launcher_platform_interface/method_channel_url_launcher": "packages/url_launcher_platform_interface/method_channel_url_launcher.ddc",
 "packages/vector_math/hash": "packages/vector_math/hash.ddc",
 "packages/vector_math/vector_math": "packages/vector_math/vector_math.ddc",
 "packages/vector_math/vector_math_64": "packages/vector_math/vector_math_64.ddc",
 "packages/video_player/video_player": "packages/video_player/video_player.ddc"
};
if(!window.$dartLoader) {
   window.$dartLoader = {
     appDigests: _currentDirectory + 'main_publish_web_entrypoint.digests',
     moduleIdToUrl: new Map(),
     urlToModuleId: new Map(),
     rootDirectories: new Array(),
     // Used in package:build_runner/src/server/build_updates_client/hot_reload_client.dart
     moduleParentsGraph: new Map(),
     moduleLoadingErrorCallbacks: new Map(),
     forceLoadModule: function (moduleName, callback, onError) {
       // dartdevc only strips the final extension when adding modules to source
       // maps, so we need to do the same.
       if (moduleName.endsWith('.ddc')) {
         moduleName = moduleName.substring(0, moduleName.length - 4);
       }
       if (typeof onError != 'undefined') {
         var errorCallbacks = $dartLoader.moduleLoadingErrorCallbacks;
         if (!errorCallbacks.has(moduleName)) {
           errorCallbacks.set(moduleName, new Set());
         }
         errorCallbacks.get(moduleName).add(onError);
       }
       requirejs.undef(moduleName);
       requirejs([moduleName], function() {
         if (typeof onError != 'undefined') {
           errorCallbacks.get(moduleName).delete(onError);
         }
         if (typeof callback != 'undefined') {
           callback();
         }
       });
     },
     getModuleLibraries: null, // set up by _initializeTools
   };
}
let customModulePaths = {};
window.$dartLoader.rootDirectories.push(window.location.origin + baseUrl);
for (let moduleName of Object.getOwnPropertyNames(modulePaths)) {
  let modulePath = modulePaths[moduleName];
  if (modulePath != moduleName) {
    customModulePaths[moduleName] = modulePath;
  }
  var src = window.location.origin + '/' + modulePath + '.js';
  if (window.$dartLoader.moduleIdToUrl.has(moduleName)) {
    continue;
  }
  $dartLoader.moduleIdToUrl.set(moduleName, src);
  $dartLoader.urlToModuleId.set(src, moduleName);
}
// Whenever we fail to load a JS module, try to request the corresponding
// `.errors` file, and log it to the console.
(function() {
  var oldOnError = requirejs.onError;
  requirejs.onError = function(e) {
    if (e.requireModules) {
      if (e.message) {
        // If error occurred on loading dependencies, we need to invalidate ancessor too.
        var ancesor = e.message.match(/needed by: (.*)/);
        if (ancesor) {
          e.requireModules.push(ancesor[1]);
        }
      }
      for (const module of e.requireModules) {
        var errorCallbacks = $dartLoader.moduleLoadingErrorCallbacks.get(module);
        if (errorCallbacks) {
          for (const callback of errorCallbacks) callback(e);
          errorCallbacks.clear();
        }
      }
    }
    if (e.originalError && e.originalError.srcElement) {
      var xhr = new XMLHttpRequest();
      xhr.onreadystatechange = function() {
        if (this.readyState == 4) {
          var message;
          if (this.status == 200) {
            message = this.responseText;
          } else {
            message = "Unknown error loading " + e.originalError.srcElement.src;
          }
          console.error(message);
          var errorEvent = new CustomEvent(
            'dartLoadException', { detail: message });
          window.dispatchEvent(errorEvent);
        }
      };
      xhr.open("GET", e.originalError.srcElement.src + ".errors", true);
      xhr.send();
    }
    // Also handle errors the normal way.
    if (oldOnError) oldOnError(e);
  };
}());

var baseUrl = (function () {
  // Attempt to detect --precompiled mode for tests, and set the base url
  // appropriately, otherwise set it to '/'.
  var pathParts = location.pathname.split("/");
  if (pathParts[0] == "") {
    pathParts.shift();
  }
  if (pathParts.length > 1 && pathParts[1] == "test") {
    return "/" + pathParts.slice(0, 2).join("/") + "/";
  }
  // Attempt to detect base url using <base href> html tag
  // base href should start and end with "/"
  if (typeof document !== 'undefined') {
    var el = document.getElementsByTagName('base');
    if (el && el[0] && el[0].getAttribute("href") && el[0].getAttribute
    ("href").startsWith("/") && el[0].getAttribute("href").endsWith("/")){
      return el[0].getAttribute("href");
    }
  }
  // return default value
  return "/";
}());
;

require.config({
    baseUrl: baseUrl,
    waitSeconds: 0,
    paths: customModulePaths
});

const modulesGraph = new Map();
function getRegisteredModuleName(moduleMap) {
  if ($dartLoader.moduleIdToUrl.has(moduleMap.name + '.ddc')) {
    return moduleMap.name + '.ddc';
  }
  return moduleMap.name;
}
requirejs.onResourceLoad = function (context, map, depArray) {
  const name = getRegisteredModuleName(map);
  const depNameArray = depArray.map(getRegisteredModuleName);
  if (modulesGraph.has(name)) {
    // TODO Move this logic to better place
    var previousDeps = modulesGraph.get(name);
    var changed = previousDeps.length != depNameArray.length;
    changed = changed || depNameArray.some(function(depName) {
      return !previousDeps.includes(depName);
    });
    if (changed) {
      console.warn("Dependencies graph change for module '" + name + "' detected. " +
        "Dependencies was [" + previousDeps + "], now [" +  depNameArray.map((depName) => depName) +"]. " +
        "Page can't be hot-reloaded, firing full page reload.");
      window.location.reload();
    }
  } else {
    modulesGraph.set(name, []);
    for (const depName of depNameArray) {
      if (!$dartLoader.moduleParentsGraph.has(depName)) {
        $dartLoader.moduleParentsGraph.set(depName, []);
      }
      $dartLoader.moduleParentsGraph.get(depName).push(name);
      modulesGraph.get(name).push(depName);
    }
  }
};
define("main_publish_web_entrypoint.dart.bootstrap", ["packages/flutter_gallery/main_publish_web_entrypoint", "dart_sdk"], function(app, dart_sdk) {
  dart_sdk.dart.setStartAsyncSynchronously(true);
  dart_sdk._isolate_helper.startRootIsolate(() => {}, []);
  var baseUrl = (function () {
  // Attempt to detect --precompiled mode for tests, and set the base url
  // appropriately, otherwise set it to '/'.
  var pathParts = location.pathname.split("/");
  if (pathParts[0] == "") {
    pathParts.shift();
  }
  if (pathParts.length > 1 && pathParts[1] == "test") {
    return "/" + pathParts.slice(0, 2).join("/") + "/";
  }
  // Attempt to detect base url using <base href> html tag
  // base href should start and end with "/"
  if (typeof document !== 'undefined') {
    var el = document.getElementsByTagName('base');
    if (el && el[0] && el[0].getAttribute("href") && el[0].getAttribute
    ("href").startsWith("/") && el[0].getAttribute("href").endsWith("/")){
      return el[0].getAttribute("href");
    }
  }
  // return default value
  return "/";
}());

  dart_sdk._debugger.registerDevtoolsFormatter();
  $dartLoader.getModuleLibraries = dart_sdk.dart.getModuleLibraries;
  if (window.$dartStackTraceUtility && !window.$dartStackTraceUtility.ready) {
    window.$dartStackTraceUtility.ready = true;
    let dart = dart_sdk.dart;
    window.$dartStackTraceUtility.setSourceMapProvider(
      function(url) {
        url = url.replace(baseUrl, '/');
        var module = window.$dartLoader.urlToModuleId.get(url);
        if (!module) return null;
        return dart.getSourceMap(module);
      });
  }
  if (typeof document != 'undefined') {
    window.postMessage({ type: "DDC_STATE_CHANGE", state: "start" }, "*");
  }

  /* MAIN_EXTENSION_MARKER */
  (app.lib__main_publish_web_entrypoint || app.main_publish_web_entrypoint).main();
  var bootstrap = {
      hot$onChildUpdate: function(childName, child) {
        // Special handling for the multi-root scheme uris. We need to strip
        // out the scheme and the top level directory, to match the source path
        // that chrome sees.
        if (childName.startsWith('org-dartlang-app:///')) {
          childName = childName.substring('org-dartlang-app:///'.length);
          var firstSlash = childName.indexOf('/');
          if (firstSlash == -1) return false;
          childName = childName.substring(firstSlash + 1);
        }
        if (childName === "package:flutter_gallery/main_publish_web_entrypoint.dart") {
          // Clear static caches.
          dart_sdk.dart.hotRestart();
          child.main();
          return true;
        }
      }
    }
  dart_sdk.dart.trackLibraries("main_publish_web_entrypoint.dart.bootstrap", {
    "main_publish_web_entrypoint.dart.bootstrap": bootstrap
  }, '');
  return {
    bootstrap: bootstrap
  };
});
})();
