//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

import {FlutterWidget} from './js_flutter_basic_types';

class Image extends FlutterWidget {
  public key: any;
  public image: any;
  public semanticLabel: any;
  public excludeFromSemantics: any;
  public width: any;
  public height: any;
  public color: any;
  public colorBlendMode: any;
  public fit: any;
  public alignment: any;
  public repeat: any;
  public centerSlice: any;
  public matchTextDirection: any;
  public gaplessPlayback: any;
  public filterQuality: any;
  
  public scale: any;
  public headers: any;
  
  static new: (args: any) => Image;
  static network: (src: any, { key, scale, semanticLabel, excludeFromSemantics, width, height, color, colorBlendMode, fit, alignment, repeat, centerSlice, matchTextDirection, gaplessPlayback, filterQuality, headers }?: { key: any; scale: any; semanticLabel: any; excludeFromSemantics: any; width: any; height: any; color: any; colorBlendMode: any; fit: any; alignment: any; repeat: any; centerSlice: any; matchTextDirection: any; gaplessPlayback: any; filterQuality: any; headers: any; }) => Image;

  constructor({
    key,
    image,
    semanticLabel,
    excludeFromSemantics,
    width,
    height,
    color,
    colorBlendMode,
    fit,
    alignment,
    repeat,
    centerSlice,
    matchTextDirection,
    gaplessPlayback,
    filterQuality
  } : {
    key?: any, 
    image?: any, 
    semanticLabel?: any, 
    excludeFromSemantics?: any, 
    width?: any, 
    height?: any, 
    color?: any, 
    colorBlendMode?: any, 
    fit?: any, 
    alignment?: any, 
    repeat?: any, 
    centerSlice?: any, 
    matchTextDirection?: any, 
    gaplessPlayback?: any, 
    filterQuality?: any,
  } = {}) {
    super();

    this.key = key;
    this.image = image;
    this.semanticLabel = semanticLabel;
    this.excludeFromSemantics = excludeFromSemantics;
    this.width = width;
    this.height = height;
    this.color = color;
    this.colorBlendMode = colorBlendMode;
    this.fit = fit;
    this.alignment = alignment;
    this.repeat = repeat;
    this.centerSlice = centerSlice;
    this.matchTextDirection = matchTextDirection;
    this.gaplessPlayback = gaplessPlayback;
    this.filterQuality = filterQuality;
  }
}


Image.new = function(args) {
  return new Image(args);
};

Image.network = function(
  src,
  {
    key,
    scale,
    semanticLabel,
    excludeFromSemantics,
    width,
    height,
    color,
    colorBlendMode,
    fit,
    alignment,
    repeat,
    centerSlice,
    matchTextDirection,
    gaplessPlayback,
    filterQuality,
    headers
  } : {
    key?: any, 
    scale?: any, 
    semanticLabel?: any, 
    excludeFromSemantics?: any, 
    width?: any, 
    height?: any, 
    color?: any, 
    colorBlendMode?: any, 
    fit?: any, 
    alignment?: any, 
    repeat?: any, 
    centerSlice?: any, 
    matchTextDirection?: any, 
    gaplessPlayback?: any, 
    filterQuality?: any,
    headers?: any,
  } = {}
) {
  let jsObj = new Image();
  jsObj.constructorName = "network";

  jsObj.src = src;
  jsObj.key = key;
  jsObj.scale = scale;
  jsObj.semanticLabel = semanticLabel;
  jsObj.excludeFromSemantics = excludeFromSemantics;
  jsObj.width = width;
  jsObj.height = height;
  jsObj.color = color;
  jsObj.colorBlendMode = colorBlendMode;
  jsObj.fit = fit;
  jsObj.alignment = alignment;
  jsObj.repeat = repeat;
  jsObj.centerSlice = centerSlice;
  jsObj.matchTextDirection = matchTextDirection;
  jsObj.gaplessPlayback = gaplessPlayback;
  jsObj.filterQuality = filterQuality;
  jsObj.headers = headers;
  return jsObj;
};

export {
  Image,
};
