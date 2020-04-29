//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

let {FlutterWidget} = require("js_flutter_basic_types.js");


class CachedNetworkImage extends FlutterWidget {
    constructor ({
        key,
        imageUrl,
        imageBuilder,
        placeholder,
        errorWidget,
        fadeOutDuration,
        fadeOutCurve,
        fadeInDuration,
        fadeInCurve,
        width,
        height,
        fit,
        alignment,
        repeat,
        matchTextDirection,
        httpHeaders,
        cacheManager,
        useOldImageOnUrlChange,
        color,
        filterQuality,
        colorBlendMode,
        placeholderFadeInDuration,
    } = {}) {
        super();

        this.key = key;
        this.imageUrl = imageUrl;
        this.imageBuilder = imageBuilder;
        this.placeholder = placeholder;
        this.errorWidget = errorWidget;
        this.fadeOutDuration = fadeOutDuration;
        this.fadeOutCurve = fadeOutCurve;
        this.fadeInDuration = fadeInDuration;
        this.fadeInCurve = fadeInCurve;
        this.width = width;
        this.height = height;
        this.fit = fit;
        this.alignment = alignment;
        this.repeat = repeat;
        this.matchTextDirection = matchTextDirection;
        this.httpHeaders = httpHeaders;
        this.cacheManager = cacheManager;
        this.useOldImageOnUrlChange = useOldImageOnUrlChange;
        this.color = color;
        this.filterQuality = filterQuality;
        this.colorBlendMode = colorBlendMode;
        this.placeholderFadeInDuration = placeholderFadeInDuration;
    }

    preBuild(jsWidgetHelper, buildContext) {
        // 暂时只处理placeholder
        if (this.placeholder) {
          this.placeholderChild = this.placeholder(buildContext, this.imageUrl);
          delete this.placeholder;
        }

        super.preBuild(jsWidgetHelper, buildContext);
      }
}

CachedNetworkImage.new = function(arg) {
    return new CachedNetworkImage(arg);
};

src__cached_image_widget = Object.create(null);
src__cached_image_widget.CachedNetworkImage = CachedNetworkImage;
exports.src__cached_image_widget = src__cached_image_widget;

//for js dev
exports.CachedNetworkImage = CachedNetworkImage;