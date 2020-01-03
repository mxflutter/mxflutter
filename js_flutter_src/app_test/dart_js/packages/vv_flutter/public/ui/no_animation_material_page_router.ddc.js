'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__material = require('packages/flutter/material');
const page = packages__flutter__material.src__material__page;
const no_animation_material_page_router = Object.create(dart.library);
const CT = Object.create(null);
const _is_NoAnimationMaterialPageRoute_default = Symbol('_is_NoAnimationMaterialPageRoute_default');
no_animation_material_page_router.NoAnimationMaterialPageRoute$ = dart.generic(T => {
  class NoAnimationMaterialPageRoute extends page.MaterialPageRoute$(T) {
    buildTransitions(context, animation, secondaryAnimation, child) {
      return child;
    }
  }
  (NoAnimationMaterialPageRoute.new = function(opts) {
    let builder = opts && 'builder' in opts ? opts.builder : null;
    let settings = opts && 'settings' in opts ? opts.settings : null;
    let maintainState = opts && 'maintainState' in opts ? opts.maintainState : true;
    let fullscreenDialog = opts && 'fullscreenDialog' in opts ? opts.fullscreenDialog : false;
    NoAnimationMaterialPageRoute.__proto__.new.call(this, {builder: builder, maintainState: maintainState, settings: settings, fullscreenDialog: fullscreenDialog});
  }).prototype = NoAnimationMaterialPageRoute.prototype;
  NoAnimationMaterialPageRoute.prototype[_is_NoAnimationMaterialPageRoute_default] = true;
  return NoAnimationMaterialPageRoute;
});
no_animation_material_page_router.NoAnimationMaterialPageRoute = no_animation_material_page_router.NoAnimationMaterialPageRoute$();
// Exports:
exports.public__ui__no_animation_material_page_router = no_animation_material_page_router;

//# sourceMappingURL=no_animation_material_page_router.ddc.js.map
