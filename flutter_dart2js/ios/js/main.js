require.config({
    baseUrl:"",
    paths: {
        "dart_sdk": "dart_sdk",
        "packages/flutter_dart2js/main": "main.ddc",
        "packages/collection/collection": "collection.ddc",
        "packages/collection/src/algorithms": "algorithms.ddc",
        "packages/collection/src/canonicalized_map": "canonicalized_map.ddc",
        "packages/collection/src/comparators": "comparators.ddc",
        "packages/collection/src/iterable_zip": "iterable_zip.ddc",
        "packages/collection/src/priority_queue": "priority_queue.ddc",
        "packages/collection/src/utils": "utils.ddc",
        "packages/flutter/animation": "animation.ddc",
        "packages/flutter/cupertino": "cupertino.ddc",
        "packages/flutter/foundation": "foundation.ddc",
        "packages/flutter/gestures": "gestures.ddc",
        "packages/flutter/material": "material.ddc",
        "packages/flutter/painting": "painting.ddc",
        "packages/flutter/physics": "physics.ddc",
        "packages/flutter/rendering": "rendering.ddc",
        "packages/flutter/semantics": "semantics.ddc",
        "packages/flutter/src/animation/animation": "animation.ddc",
        "packages/flutter/src/cupertino/action_sheet": "action_sheet.ddc",
        "packages/flutter/src/foundation/_bitfield_web": "_bitfield_web.ddc",
        "packages/flutter/src/gestures/arena": "arena.ddc",
        "packages/flutter/src/painting/_network_image_web": "_network_image_web.ddc",
        "packages/flutter/src/physics/clamped_simulation": "clamped_simulation.ddc",
        "packages/flutter/src/rendering/animated_size": "animated_size.ddc",
        "packages/flutter/src/semantics/binding": "binding.ddc",
        "packages/flutter/src/widgets/actions": "actions.ddc",
        "packages/flutter/widgets": "widgets.ddc",
        "packages/flutter_dart2js/main": "main.ddc",
        "packages/flutter_dart2js/main_web_entrypoint": "main_web_entrypoint.ddc",
        "packages/meta/meta": "meta.ddc",
        "packages/typed_data/typed_buffers": "typed_buffers.ddc",
        "packages/vector_math/hash": "hash.ddc",
        "packages/vector_math/vector_math_64": "vector_math_64.ddc"
    },
               
});

mxlog("main.js start");
require(['dart_sdk','packages/flutter_dart2js/main'], function(dart_sdk, packages__flutter_dart2js__main) {
  'use strict';
  const ui = dart_sdk.ui;
  const dart = dart_sdk.dart;
  const async = dart_sdk.async;
  const main = packages__flutter_dart2js__main.main;
    const main_web_entrypoint = Object.create(dart.library);
    main_web_entrypoint.main = function main$() {
    return async.async(dart.void,function* main$() {
        if (true) {
            ui.webOnlyInitializePlatform();
            mxlog("11111");
        }
        mxlog("22222");
        main.main();
        mxlog("33333");
    });
  };
  main_web_entrypoint.main();
  mxlog("main.js end");
});
