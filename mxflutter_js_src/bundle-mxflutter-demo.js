/******/ (() => { // webpackBootstrap
/******/ 	"use strict";
/******/ 	var __webpack_modules__ = ({

/***/ "./src/home_page.ts":
/*!**************************!*\
  !*** ./src/home_page.ts ***!
  \**************************/
/*! namespace exports */
/*! export MXJSWidgetHomePage [provided] [no usage info] [missing usage info prevents renaming] */
/*! other exports [not provided] [no usage info] */
/*! runtime requirements: __webpack_require__, __webpack_require__.n, __webpack_require__.r, __webpack_exports__, __webpack_require__.d, __webpack_require__.* */
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "MXJSWidgetHomePage": () => /* binding */ MXJSWidgetHomePage
/* harmony export */ });
/* harmony import */ var _tencent_mxflutter__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @tencent/mxflutter */ "./node_modules/@tencent/mxflutter/lib/index.js");
/* harmony import */ var _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @tencent/mxflutter-widgets */ "./node_modules/@tencent/mxflutter-widgets/index.js");
/* harmony import */ var _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__);
//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.
/* eslint-disable */


// 业务代码
class MXJSWidgetHomePage extends _tencent_mxflutter__WEBPACK_IMPORTED_MODULE_0__.MXJSStatefulWidget {
    constructor() {
        super('MXJSWidgetHomePage');
        this.data = 'biz data';
        this.count = 0;
    }
    createState() {
        return new MXJSWidgetHomePageState(this);
    }
}
class MXJSWidgetHomePageState extends _tencent_mxflutter__WEBPACK_IMPORTED_MODULE_0__.MXJSWidgetState {
    build(context) {
        const demoList = new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.ListView({
            children: [
                this.sectionTitle(context, 'App Demo'),
                new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.ListTile({
                    leading: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Icon(new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.IconData(0xe39d, { fontFamily: 'MaterialIcons' }), { color: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Theme.of(context).primaryColor }),
                    trailing: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Icon(new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text('Examples'),
                    subtitle: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text('Common Examples'),
                    onTap() {
                        // 点击时懒加载页面
                        const { ExamplesPage } = __webpack_require__(Object(function webpackMissingModule() { var e = new Error("Cannot find module './app_demo/examples/index.js'"); e.code = 'MODULE_NOT_FOUND'; throw e; }()));
                        _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Navigator.push(context, new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.MaterialPageRoute({
                            builder(context) {
                                return new ExamplesPage;
                            },
                        }));
                    },
                }),
                new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.ListTile({
                    leading: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Icon(new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.IconData(0xe39d, { fontFamily: 'MaterialIcons' }), { color: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Theme.of(context).primaryColor }),
                    trailing: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Icon(new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text('Widget Examples'),
                    subtitle: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text('All Widget Examples'),
                    onTap() {
                        // 点击时懒加载页面
                        const { WidgetExamplesPage } = __webpack_require__(Object(function webpackMissingModule() { var e = new Error("Cannot find module './app_demo/widget_examples/index.js'"); e.code = 'MODULE_NOT_FOUND'; throw e; }()));
                        _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Navigator.push(context, new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.MaterialPageRoute({
                            builder(context) {
                                return new WidgetExamplesPage;
                            },
                        }));
                    },
                }),
                new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.ListTile({
                    leading: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Icon(new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.IconData(0xe06d, { fontFamily: 'MaterialIcons' }), { color: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Theme.of(context).primaryColor }),
                    trailing: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Icon(new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text('Material'),
                    subtitle: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text('Material UI Demo'),
                    onTap() {
                        const { JSMaterialPage } = __webpack_require__(Object(function webpackMissingModule() { var e = new Error("Cannot find module './app_demo/material.js'"); e.code = 'MODULE_NOT_FOUND'; throw e; }()));
                        _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Navigator.push(context, new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.MaterialPageRoute({
                            builder(context) {
                                return new JSMaterialPage;
                            },
                        }));
                    },
                }),
                new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.ListTile({
                    leading: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Icon(new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.IconData(0xe39d, { fontFamily: 'MaterialIcons' }), { color: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Theme.of(context).primaryColor }),
                    trailing: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Icon(new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text('ZhiHu'),
                    subtitle: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text('ZhiHu high copy'),
                    onTap() {
                        const { JSZhiHuPage } = __webpack_require__(Object(function webpackMissingModule() { var e = new Error("Cannot find module './app_demo/zhihu/zhihu.js'"); e.code = 'MODULE_NOT_FOUND'; throw e; }()));
                        _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Navigator.push(context, new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.MaterialPageRoute({
                            builder(context) {
                                return new JSZhiHuPage;
                            },
                        }));
                    },
                }),
                new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.ListTile({
                    leading: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Icon(new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.IconData(0xe39d, { fontFamily: 'MaterialIcons' }), { color: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Theme.of(context).primaryColor }),
                    trailing: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Icon(new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text('网易新闻 ListViewDemo'),
                    subtitle: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text('ListView ,Message Channel, Pull to refresh'),
                    onTap() {
                        const list_view = __webpack_require__(Object(function webpackMissingModule() { var e = new Error("Cannot find module './app_demo/listview_example.js'"); e.code = 'MODULE_NOT_FOUND'; throw e; }()));
                        _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Navigator.push(context, new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.MaterialPageRoute({
                            builder(context) {
                                return new list_view.ListViewDemo;
                            },
                        }));
                    },
                }),
                new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.ListTile({
                    leading: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Icon(new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.IconData(0xe39d, { fontFamily: 'MaterialIcons' }), { color: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Theme.of(context).primaryColor }),
                    trailing: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Icon(new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text('PlatformAPIExamples'),
                    subtitle: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text('Network/Dio/MessageChannel'),
                    onTap() {
                        const { PlatformExamplesPage } = __webpack_require__(Object(function webpackMissingModule() { var e = new Error("Cannot find module './app_demo/platform/index.js'"); e.code = 'MODULE_NOT_FOUND'; throw e; }()));
                        _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Navigator.push(context, new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.MaterialPageRoute({
                            builder(context) {
                                return new PlatformExamplesPage;
                            },
                        }));
                    },
                }),
                new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.ListTile({
                    leading: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Icon(new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.IconData(0xe06d, { fontFamily: 'MaterialIcons' }), { color: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Theme.of(context).primaryColor }),
                    trailing: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Icon(new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text('Pesto'),
                    subtitle: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text('Simple recipe browser'),
                    onTap() {
                        const pesto = __webpack_require__(Object(function webpackMissingModule() { var e = new Error("Cannot find module './app_demo/pesto.js'"); e.code = 'MODULE_NOT_FOUND'; throw e; }()));
                        _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Navigator.push(context, new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.MaterialPageRoute({
                            builder(context) {
                                return new pesto.JSPestoPage;
                            },
                        }));
                    },
                }),
                new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.ListTile({
                    leading: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Icon(new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.IconData(0xe0d0, { fontFamily: 'MaterialIcons' }), { color: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Theme.of(context).primaryColor }),
                    trailing: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Icon(new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text('Contact profile'),
                    subtitle: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text('Address book entry with a flexible appbar'),
                    onTap() {
                        const { JSContactPage } = __webpack_require__(Object(function webpackMissingModule() { var e = new Error("Cannot find module './app_demo/contact.js'"); e.code = 'MODULE_NOT_FOUND'; throw e; }()));
                        _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Navigator.push(context, new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.MaterialPageRoute({
                            builder(context) {
                                return new JSContactPage;
                            },
                        }));
                    },
                }),
                new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.ListTile({
                    leading: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Icon(new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.IconData(0xe06d, { fontFamily: 'MaterialIcons' }), { color: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Theme.of(context).primaryColor }),
                    trailing: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Icon(new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text('Animation'),
                    subtitle: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text('Section organizer'),
                    onTap() {
                        const { JSAnimationPage } = __webpack_require__(Object(function webpackMissingModule() { var e = new Error("Cannot find module './app_demo/animation.js'"); e.code = 'MODULE_NOT_FOUND'; throw e; }()));
                        _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Navigator.push(context, new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.MaterialPageRoute({
                            builder(context) {
                                return new JSAnimationPage;
                            },
                        }));
                    },
                }),
                this.sectionTitle(context, '性能测试'),
                new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.ListTile({
                    leading: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Icon(new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.IconData(0xe06d, { fontFamily: 'MaterialIcons' })),
                    trailing: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Icon(new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text('Profile'),
                    subtitle: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text('性能测试 performance profiling'),
                    onTap() {
                        const { ProfileExamplesPage } = __webpack_require__(Object(function webpackMissingModule() { var e = new Error("Cannot find module './profile/index.js'"); e.code = 'MODULE_NOT_FOUND'; throw e; }()));
                        _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Navigator.push(context, new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.MaterialPageRoute({
                            builder(context) {
                                return new ProfileExamplesPage;
                            },
                        }));
                    },
                }),
                // this.sectionTitle(context, "mxjsbuilder build app"),
                // new ListTile({
                //     leading: new Icon(new IconData(0xe39d, { fontFamily: 'MaterialIcons' })),
                //     trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                //     title: new Text('FlutterDemo'),
                //     subtitle: new Text('简单样例'),
                //     onTap: function () {
                //         let flutter_demo_ddc = require("./mxjsbuilder_demo/flutter_demo.dart.lib.js");
                //         Navigator.push(context, new MaterialPageRoute({
                //             builder: function (context) {
                //                 return new flutter_demo_ddc.main.MyHomePage.new({ title: "Flutter Demo Home Page" });
                //             }
                //         }))
                //     }
                // }),
                // new ListTile({
                //     leading: new Icon(new IconData(0xe39d, { fontFamily: 'MaterialIcons' })),
                //     trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                //     title: new Text('ContactDemo'),
                //     subtitle: new Text('联系人'),
                //     onTap: function () {
                //         let contact_demo_ddc = require("./mxjsbuilder_demo/contacts_demo.dart.lib.js");
                //         Navigator.push(context, new MaterialPageRoute({
                //             builder: function (context) {
                //                 return new contact_demo_ddc.contacts_demo.ContactsDemo.new;
                //             }
                //         }))
                //     }
                // }),
                // new ListTile({
                //     leading: new Icon(new IconData(0xe39d, { fontFamily: 'MaterialIcons' })),
                //     trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                //     title: new Text('PestoDemo'),
                //     subtitle: new Text('菜谱'),
                //     onTap: function () {
                //         let pesto_demo_ddc = require("./mxjsbuilder_demo/pesto_demo.dart.lib.js");
                //         Navigator.push(context, new MaterialPageRoute({
                //             builder: function (context) {
                //                 return new pesto_demo_ddc.pesto_demo.PestoDemo.new;
                //             }
                //         }))
                //     }
                // }),
                // new ListTile({
                //     leading: new Icon(new IconData(0xe39d, { fontFamily: 'MaterialIcons' })),
                //     trailing: new Icon(new IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                //     title: new Text('ZhiHu'),
                //     subtitle: new Text('知乎-高仿版'),
                //     onTap: function () {
                //         const packages__zhihu__index = require('./mxjsbuilder_demo/packages/zhihu/index/index.dart.lib.js');
                //         const index_page = packages__zhihu__index.index__index;
                //         Navigator.push(context, new MaterialPageRoute({
                //             builder: function (context) {
                //                 return new index_page.Index.new;
                //             }
                //         }))
                //     }
                // }),
                this.sectionTitle(context, 'Dart JS Api'),
                new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.ListTile({
                    leading: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Icon(new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.IconData(0xe39d, { fontFamily: 'MaterialIcons' })),
                    trailing: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Icon(new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.IconData(0xe5df, { fontFamily: 'MaterialIcons', matchTextDirection: true })),
                    title: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text('Dart JS Api'),
                    subtitle: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text('JS Call Dart Function'),
                    onTap() {
                        const { PageExampleJSApi } = __webpack_require__(Object(function webpackMissingModule() { var e = new Error("Cannot find module 'custom_js_api.js'"); e.code = 'MODULE_NOT_FOUND'; throw e; }()));
                        _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Navigator.push(context, new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.MaterialPageRoute({
                            builder(context) {
                                return new PageExampleJSApi;
                            },
                        }));
                    },
                }),
            ],
        });
        const w = new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Scaffold({
            appBar: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.AppBar({
                title: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text('MXFlutter Examples'),
            }),
            body: demoList,
        });
        return w;
    }
    sectionTitle(context, title) {
        return new HomeSectionTitle(title);
    }
}
class HomeSectionTitle extends _tencent_mxflutter__WEBPACK_IMPORTED_MODULE_0__.MXJSStatelessWidget {
    constructor(title, { key } = {}) {
        super('HomeSectionTitle', { key });
        this.title = title;
    }
    build(context) {
        return new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Container({
            padding: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.EdgeInsets.all(10.0),
            color: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Theme.of(context).primaryColor,
            child: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Row({
                children: [
                    new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Icon(new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.IconData(0xe80e, { fontFamily: 'MaterialIcons' }), { size: 20, color: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Color(0xFFFFFFFF) }),
                    new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Padding({ padding: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 0.0) }),
                    new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text(this.title, {
                        textAlign: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.TextAlign.start,
                        style: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.TextStyle({
                            fontSize: 16,
                            fontWeight: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Theme.of(context).textTheme.title.fontWeight,
                            color: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Colors.white,
                        }),
                    }),
                ],
            }),
        });
    }
}



/***/ }),

/***/ "./src/index.ts":
/*!**********************!*\
  !*** ./src/index.ts ***!
  \**********************/
/*! namespace exports */
/*! exports [not provided] [no usage info] */
/*! runtime requirements: __webpack_require__, __webpack_require__.r, __webpack_exports__, __webpack_require__.* */
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _home_page__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! ./home_page */ "./src/home_page.ts");

const { MXFlutter } = globalThis;
MXFlutter.regist({
    name: 'mxflutter-demo',
    RootWidget: _home_page__WEBPACK_IMPORTED_MODULE_0__.MXJSWidgetHomePage,
});


/***/ }),

/***/ "console":
/*!**************************!*\
  !*** external "console" ***!
  \**************************/
/*! unknown exports (runtime-defined) */
/*! runtime requirements: module */
/***/ ((module) => {

module.exports = require("console");

/***/ })

/******/ 	});
/************************************************************************/
/******/ 	// The module cache
/******/ 	var __webpack_module_cache__ = {};
/******/ 	
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/ 		// Check if module is in cache
/******/ 		if(__webpack_module_cache__[moduleId]) {
/******/ 			return __webpack_module_cache__[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = __webpack_module_cache__[moduleId] = {
/******/ 			// no module.id needed
/******/ 			// no module.loaded needed
/******/ 			exports: {}
/******/ 		};
/******/ 	
/******/ 		// Execute the module function
/******/ 		__webpack_modules__[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/ 	
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = __webpack_modules__;
/******/ 	
/******/ 	// the startup function
/******/ 	__webpack_require__.x = () => {
/******/ 		// Load entry module
/******/ 		__webpack_require__("./src/index.ts");
/******/ 		// This entry module used 'exports' so it can't be inlined
/******/ 	};
/******/ 	
/************************************************************************/
/******/ 	/* webpack/runtime/compat get default export */
/******/ 	(() => {
/******/ 		// getDefaultExport function for compatibility with non-harmony modules
/******/ 		__webpack_require__.n = (module) => {
/******/ 			var getter = module && module.__esModule ?
/******/ 				() => module['default'] :
/******/ 				() => module;
/******/ 			__webpack_require__.d(getter, { a: getter });
/******/ 			return getter;
/******/ 		};
/******/ 	})();
/******/ 	
/******/ 	/* webpack/runtime/define property getters */
/******/ 	(() => {
/******/ 		// define getter functions for harmony exports
/******/ 		__webpack_require__.d = (exports, definition) => {
/******/ 			for(var key in definition) {
/******/ 				if(__webpack_require__.o(definition, key) && !__webpack_require__.o(exports, key)) {
/******/ 					Object.defineProperty(exports, key, { enumerable: true, get: definition[key] });
/******/ 				}
/******/ 			}
/******/ 		};
/******/ 	})();
/******/ 	
/******/ 	/* webpack/runtime/ensure chunk */
/******/ 	(() => {
/******/ 		__webpack_require__.f = {};
/******/ 		// This file contains only the entry chunk.
/******/ 		// The chunk loading function for additional chunks
/******/ 		__webpack_require__.e = (chunkId) => {
/******/ 			return Promise.all(Object.keys(__webpack_require__.f).reduce((promises, key) => {
/******/ 				__webpack_require__.f[key](chunkId, promises);
/******/ 				return promises;
/******/ 			}, []));
/******/ 		};
/******/ 	})();
/******/ 	
/******/ 	/* webpack/runtime/get javascript chunk filename */
/******/ 	(() => {
/******/ 		// This function allow to reference async chunks and sibling chunks for the entrypoint
/******/ 		__webpack_require__.u = (chunkId) => {
/******/ 			// return url for filenames based on template
/******/ 			return "" + chunkId + ".js";
/******/ 		};
/******/ 	})();
/******/ 	
/******/ 	/* webpack/runtime/hasOwnProperty shorthand */
/******/ 	(() => {
/******/ 		__webpack_require__.o = (obj, prop) => Object.prototype.hasOwnProperty.call(obj, prop)
/******/ 	})();
/******/ 	
/******/ 	/* webpack/runtime/make namespace object */
/******/ 	(() => {
/******/ 		// define __esModule on exports
/******/ 		__webpack_require__.r = (exports) => {
/******/ 			if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 				Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 			}
/******/ 			Object.defineProperty(exports, '__esModule', { value: true });
/******/ 		};
/******/ 	})();
/******/ 	
/******/ 	/* webpack/runtime/startup chunk dependencies */
/******/ 	(() => {
/******/ 		var next = __webpack_require__.x;
/******/ 		__webpack_require__.x = () => {
/******/ 			__webpack_require__.e("mxflutter-sdk");
/******/ 			return next();
/******/ 		};
/******/ 	})();
/******/ 	
/******/ 	/* webpack/runtime/require chunk loading */
/******/ 	(() => {
/******/ 		// object to store loaded chunks
/******/ 		// "1" means "loaded", otherwise not loaded yet
/******/ 		var installedChunks = {
/******/ 			"bundle-mxflutter-demo": 1
/******/ 		};
/******/ 		
/******/ 		var installChunk = (chunk) => {
/******/ 			var moreModules = chunk.modules, chunkIds = chunk.ids, runtime = chunk.runtime;
/******/ 			for(var moduleId in moreModules) {
/******/ 				if(__webpack_require__.o(moreModules, moduleId)) {
/******/ 					__webpack_require__.m[moduleId] = moreModules[moduleId];
/******/ 				}
/******/ 			}
/******/ 			if(runtime) runtime(__webpack_require__);
/******/ 			for(var i = 0; i < chunkIds.length; i++)
/******/ 				installedChunks[chunkIds[i]] = 1;
/******/ 		};
/******/ 		
/******/ 		// require() chunk loading for javascript
/******/ 		__webpack_require__.f.require = function(chunkId, promises) {
/******/ 		
/******/ 			// "1" is the signal for "already loaded"
/******/ 			if(!installedChunks[chunkId]) {
/******/ 				if(true) { // all chunks have JS
/******/ 					installChunk(require("./" + __webpack_require__.u(chunkId)));
/******/ 				} else installedChunks[chunkId] = 1;
/******/ 			}
/******/ 		};
/******/ 		
/******/ 		// no external install chunk
/******/ 		
/******/ 		// no HMR
/******/ 		
/******/ 		// no HMR manifest
/******/ 	})();
/******/ 	
/************************************************************************/
/******/ 	// run startup
/******/ 	return __webpack_require__.x();
/******/ })()
;
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIndlYnBhY2s6Ly9AdGVzdC9teGZsdXR0ZXItZGVtby8uL3NyYy9ob21lX3BhZ2UudHMiLCJ3ZWJwYWNrOi8vQHRlc3QvbXhmbHV0dGVyLWRlbW8vLi9zcmMvaW5kZXgudHMiLCJ3ZWJwYWNrOi8vQHRlc3QvbXhmbHV0dGVyLWRlbW8vZXh0ZXJuYWwgXCJjb25zb2xlXCIiLCJ3ZWJwYWNrOi8vQHRlc3QvbXhmbHV0dGVyLWRlbW8vd2VicGFjay9ib290c3RyYXAiLCJ3ZWJwYWNrOi8vQHRlc3QvbXhmbHV0dGVyLWRlbW8vd2VicGFjay9ydW50aW1lL2NvbXBhdCBnZXQgZGVmYXVsdCBleHBvcnQiLCJ3ZWJwYWNrOi8vQHRlc3QvbXhmbHV0dGVyLWRlbW8vd2VicGFjay9ydW50aW1lL2RlZmluZSBwcm9wZXJ0eSBnZXR0ZXJzIiwid2VicGFjazovL0B0ZXN0L214Zmx1dHRlci1kZW1vL3dlYnBhY2svcnVudGltZS9lbnN1cmUgY2h1bmsiLCJ3ZWJwYWNrOi8vQHRlc3QvbXhmbHV0dGVyLWRlbW8vd2VicGFjay9ydW50aW1lL2dldCBqYXZhc2NyaXB0IGNodW5rIGZpbGVuYW1lIiwid2VicGFjazovL0B0ZXN0L214Zmx1dHRlci1kZW1vL3dlYnBhY2svcnVudGltZS9oYXNPd25Qcm9wZXJ0eSBzaG9ydGhhbmQiLCJ3ZWJwYWNrOi8vQHRlc3QvbXhmbHV0dGVyLWRlbW8vd2VicGFjay9ydW50aW1lL21ha2UgbmFtZXNwYWNlIG9iamVjdCIsIndlYnBhY2s6Ly9AdGVzdC9teGZsdXR0ZXItZGVtby93ZWJwYWNrL3J1bnRpbWUvc3RhcnR1cCBjaHVuayBkZXBlbmRlbmNpZXMiLCJ3ZWJwYWNrOi8vQHRlc3QvbXhmbHV0dGVyLWRlbW8vd2VicGFjay9ydW50aW1lL3JlcXVpcmUgY2h1bmsgbG9hZGluZyIsIndlYnBhY2s6Ly9AdGVzdC9teGZsdXR0ZXItZGVtby93ZWJwYWNrL3N0YXJ0dXAiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7Ozs7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Ozs7Ozs7Ozs7OztBQ3JWZ0Q7QUFFakQsTUFBTSxFQUFFLFNBQVMsRUFBRSxHQUFHLFVBQVUsQ0FBQztBQUVqQyxTQUFTLENBQUMsTUFBTSxDQUFDO0lBQ2YsSUFBSSxFQUFFLGdCQUFnQjtJQUN0QixVQUFVLEVBQUUsMERBQWtCO0NBQy9CLENBQUMsQ0FBQzs7Ozs7Ozs7Ozs7OztBQ1BILG9DOzs7Ozs7VUNBQTtVQUNBOztVQUVBO1VBQ0E7VUFDQTtVQUNBO1VBQ0E7VUFDQTtVQUNBO1VBQ0E7VUFDQTtVQUNBO1VBQ0E7VUFDQTs7VUFFQTtVQUNBOztVQUVBO1VBQ0E7VUFDQTs7VUFFQTtVQUNBOztVQUVBO1VBQ0E7VUFDQTtVQUNBO1VBQ0E7VUFDQTs7Ozs7V0MvQkE7V0FDQTtXQUNBO1dBQ0E7V0FDQTtXQUNBLGdDQUFnQyxZQUFZO1dBQzVDO1dBQ0EsRTs7Ozs7V0NQQTtXQUNBO1dBQ0E7V0FDQTtXQUNBLHdDQUF3Qyx5Q0FBeUM7V0FDakY7V0FDQTtXQUNBLEU7Ozs7O1dDUEE7V0FDQTtXQUNBO1dBQ0E7V0FDQTtXQUNBO1dBQ0E7V0FDQSxFQUFFO1dBQ0YsRTs7Ozs7V0NSQTtXQUNBO1dBQ0E7V0FDQTtXQUNBLEU7Ozs7O1dDSkEsc0Y7Ozs7O1dDQUE7V0FDQTtXQUNBO1dBQ0Esc0RBQXNELGtCQUFrQjtXQUN4RTtXQUNBLCtDQUErQyxjQUFjO1dBQzdELEU7Ozs7O1dDTkE7V0FDQTtXQUNBO1dBQ0E7V0FDQSxFOzs7OztXQ0pBO1dBQ0E7V0FDQTtXQUNBO1dBQ0E7O1dBRUE7V0FDQTtXQUNBO1dBQ0E7V0FDQTtXQUNBO1dBQ0E7V0FDQTtXQUNBLGVBQWUscUJBQXFCO1dBQ3BDO1dBQ0E7O1dBRUE7V0FDQTs7V0FFQTtXQUNBO1dBQ0EsWUFBWTtXQUNaO1dBQ0EsR0FBRztXQUNIO1dBQ0E7O1dBRUE7O1dBRUE7O1dBRUEsa0I7Ozs7VUNqQ0E7VUFDQSIsImZpbGUiOiJidW5kbGUtbXhmbHV0dGVyLWRlbW8uanMiLCJzb3VyY2VzQ29udGVudCI6WyIvLyAgTVhGbHV0dGVyRnJhbWV3b3JrXG4vLyAgQ29weXJpZ2h0IDIwMTkgVGhlIE1YRmx1dHRlciBBdXRob3JzLiBBbGwgcmlnaHRzIHJlc2VydmVkLlxuLy9cbi8vICBVc2Ugb2YgdGhpcyBzb3VyY2UgY29kZSBpcyBnb3Zlcm5lZCBieSBhIE1JVC1zdHlsZSBsaWNlbnNlIHRoYXQgY2FuIGJlXG4vLyAgZm91bmQgaW4gdGhlIExJQ0VOU0UgZmlsZS5cblxuLyogZXNsaW50LWRpc2FibGUgKi9cbmltcG9ydCB7IHJ1bkFwcCwgTVhKU0Jhc2VXaWRnZXQsIE1YSlNGbHV0dGVyQXBwLCBNWEpTU3RhdGVsZXNzV2lkZ2V0LCBNWEpTU3RhdGVmdWxXaWRnZXQsIE1YSlNXaWRnZXRTdGF0ZSwgTVhKU0xvZyB9IGZyb20gJ0B0ZW5jZW50L214Zmx1dHRlcic7XG5pbXBvcnQge1xuICBTY2FmZm9sZCxcbiAgQ29udGFpbmVyLFxuICBDb2xvcixcbiAgQ29sb3JzLFxuICBBcHBCYXIsXG4gIFRleHQsXG4gIExpc3RWaWV3LFxuICBMaXN0VGlsZSxcbiAgSWNvbixcbiAgSWNvbkRhdGEsXG4gIEVkZ2VJbnNldHMsXG4gIFRleHRBbGlnbixcbiAgVGV4dFN0eWxlLFxuICBSb3csXG4gIFBhZGRpbmcsXG4gIFRoZW1lLFxuICBOYXZpZ2F0b3IsXG4gIE1hdGVyaWFsUGFnZVJvdXRlLFxuICBTY3JvbGxiYXIsXG59IGZyb20gJ0B0ZW5jZW50L214Zmx1dHRlci13aWRnZXRzJztcblxuLy8g5Lia5Yqh5Luj56CBXG5jbGFzcyBNWEpTV2lkZ2V0SG9tZVBhZ2UgZXh0ZW5kcyBNWEpTU3RhdGVmdWxXaWRnZXQge1xuICBjb25zdHJ1Y3RvcigpIHtcbiAgICBzdXBlcignTVhKU1dpZGdldEhvbWVQYWdlJyk7XG5cbiAgICB0aGlzLmRhdGEgPSAnYml6IGRhdGEnO1xuICAgIHRoaXMuY291bnQgPSAwO1xuICB9XG5cbiAgY3JlYXRlU3RhdGUoKSB7XG4gICAgcmV0dXJuIG5ldyBNWEpTV2lkZ2V0SG9tZVBhZ2VTdGF0ZSh0aGlzKTtcbiAgfVxufVxuXG5jbGFzcyBNWEpTV2lkZ2V0SG9tZVBhZ2VTdGF0ZSBleHRlbmRzIE1YSlNXaWRnZXRTdGF0ZSB7XG4gIGJ1aWxkKGNvbnRleHQpIHtcbiAgICBjb25zdCBkZW1vTGlzdCA9IG5ldyBMaXN0Vmlldyh7XG5cbiAgICAgIGNoaWxkcmVuOiBbXG5cbiAgICAgICAgdGhpcy5zZWN0aW9uVGl0bGUoY29udGV4dCwgJ0FwcCBEZW1vJyksXG4gICAgICAgIG5ldyBMaXN0VGlsZSh7XG4gICAgICAgICAgbGVhZGluZzogbmV3IEljb24obmV3IEljb25EYXRhKDB4ZTM5ZCwgeyBmb250RmFtaWx5OiAnTWF0ZXJpYWxJY29ucycgfSksIHsgY29sb3I6IFRoZW1lLm9mKGNvbnRleHQpLnByaW1hcnlDb2xvciB9KSxcbiAgICAgICAgICB0cmFpbGluZzogbmV3IEljb24obmV3IEljb25EYXRhKDB4ZTVkZiwgeyBmb250RmFtaWx5OiAnTWF0ZXJpYWxJY29ucycsIG1hdGNoVGV4dERpcmVjdGlvbjogdHJ1ZSB9KSksXG4gICAgICAgICAgdGl0bGU6IG5ldyBUZXh0KCdFeGFtcGxlcycpLFxuICAgICAgICAgIHN1YnRpdGxlOiBuZXcgVGV4dCgnQ29tbW9uIEV4YW1wbGVzJyksXG4gICAgICAgICAgb25UYXAoKSB7XG4gICAgICAgICAgICAvLyDngrnlh7vml7bmh5LliqDovb3pobXpnaJcbiAgICAgICAgICAgIGNvbnN0IHsgRXhhbXBsZXNQYWdlIH0gPSByZXF1aXJlKCcuL2FwcF9kZW1vL2V4YW1wbGVzL2luZGV4LmpzJyk7XG5cbiAgICAgICAgICAgIE5hdmlnYXRvci5wdXNoKGNvbnRleHQsIG5ldyBNYXRlcmlhbFBhZ2VSb3V0ZSh7XG4gICAgICAgICAgICAgIGJ1aWxkZXIoY29udGV4dCkge1xuICAgICAgICAgICAgICAgIHJldHVybiBuZXcgRXhhbXBsZXNQYWdlO1xuICAgICAgICAgICAgICB9LFxuICAgICAgICAgICAgfSkpO1xuICAgICAgICAgIH0sXG4gICAgICAgIH0pLFxuICAgICAgICBuZXcgTGlzdFRpbGUoe1xuICAgICAgICAgIGxlYWRpbmc6IG5ldyBJY29uKG5ldyBJY29uRGF0YSgweGUzOWQsIHsgZm9udEZhbWlseTogJ01hdGVyaWFsSWNvbnMnIH0pLCB7IGNvbG9yOiBUaGVtZS5vZihjb250ZXh0KS5wcmltYXJ5Q29sb3IgfSksXG4gICAgICAgICAgdHJhaWxpbmc6IG5ldyBJY29uKG5ldyBJY29uRGF0YSgweGU1ZGYsIHsgZm9udEZhbWlseTogJ01hdGVyaWFsSWNvbnMnLCBtYXRjaFRleHREaXJlY3Rpb246IHRydWUgfSkpLFxuICAgICAgICAgIHRpdGxlOiBuZXcgVGV4dCgnV2lkZ2V0IEV4YW1wbGVzJyksXG4gICAgICAgICAgc3VidGl0bGU6IG5ldyBUZXh0KCdBbGwgV2lkZ2V0IEV4YW1wbGVzJyksXG4gICAgICAgICAgb25UYXAoKSB7XG4gICAgICAgICAgICAvLyDngrnlh7vml7bmh5LliqDovb3pobXpnaJcbiAgICAgICAgICAgIGNvbnN0IHsgV2lkZ2V0RXhhbXBsZXNQYWdlIH0gPSByZXF1aXJlKCcuL2FwcF9kZW1vL3dpZGdldF9leGFtcGxlcy9pbmRleC5qcycpO1xuXG4gICAgICAgICAgICBOYXZpZ2F0b3IucHVzaChjb250ZXh0LCBuZXcgTWF0ZXJpYWxQYWdlUm91dGUoe1xuICAgICAgICAgICAgICBidWlsZGVyKGNvbnRleHQpIHtcbiAgICAgICAgICAgICAgICByZXR1cm4gbmV3IFdpZGdldEV4YW1wbGVzUGFnZTtcbiAgICAgICAgICAgICAgfSxcbiAgICAgICAgICAgIH0pKTtcbiAgICAgICAgICB9LFxuICAgICAgICB9KSxcbiAgICAgICAgbmV3IExpc3RUaWxlKHtcbiAgICAgICAgICBsZWFkaW5nOiBuZXcgSWNvbihuZXcgSWNvbkRhdGEoMHhlMDZkLCB7IGZvbnRGYW1pbHk6ICdNYXRlcmlhbEljb25zJyB9KSwgeyBjb2xvcjogVGhlbWUub2YoY29udGV4dCkucHJpbWFyeUNvbG9yIH0pLFxuICAgICAgICAgIHRyYWlsaW5nOiBuZXcgSWNvbihuZXcgSWNvbkRhdGEoMHhlNWRmLCB7IGZvbnRGYW1pbHk6ICdNYXRlcmlhbEljb25zJywgbWF0Y2hUZXh0RGlyZWN0aW9uOiB0cnVlIH0pKSxcbiAgICAgICAgICB0aXRsZTogbmV3IFRleHQoJ01hdGVyaWFsJyksXG4gICAgICAgICAgc3VidGl0bGU6IG5ldyBUZXh0KCdNYXRlcmlhbCBVSSBEZW1vJyksXG4gICAgICAgICAgb25UYXAoKSB7XG4gICAgICAgICAgICBjb25zdCB7IEpTTWF0ZXJpYWxQYWdlIH0gPSByZXF1aXJlKCcuL2FwcF9kZW1vL21hdGVyaWFsLmpzJyk7XG4gICAgICAgICAgICBOYXZpZ2F0b3IucHVzaChjb250ZXh0LCBuZXcgTWF0ZXJpYWxQYWdlUm91dGUoe1xuICAgICAgICAgICAgICBidWlsZGVyKGNvbnRleHQpIHtcbiAgICAgICAgICAgICAgICByZXR1cm4gbmV3IEpTTWF0ZXJpYWxQYWdlO1xuICAgICAgICAgICAgICB9LFxuICAgICAgICAgICAgfSkpO1xuICAgICAgICAgIH0sXG4gICAgICAgIH0pLFxuICAgICAgICBuZXcgTGlzdFRpbGUoe1xuICAgICAgICAgIGxlYWRpbmc6IG5ldyBJY29uKG5ldyBJY29uRGF0YSgweGUzOWQsIHsgZm9udEZhbWlseTogJ01hdGVyaWFsSWNvbnMnIH0pLCB7IGNvbG9yOiBUaGVtZS5vZihjb250ZXh0KS5wcmltYXJ5Q29sb3IgfSksXG4gICAgICAgICAgdHJhaWxpbmc6IG5ldyBJY29uKG5ldyBJY29uRGF0YSgweGU1ZGYsIHsgZm9udEZhbWlseTogJ01hdGVyaWFsSWNvbnMnLCBtYXRjaFRleHREaXJlY3Rpb246IHRydWUgfSkpLFxuICAgICAgICAgIHRpdGxlOiBuZXcgVGV4dCgnWmhpSHUnKSxcbiAgICAgICAgICBzdWJ0aXRsZTogbmV3IFRleHQoJ1poaUh1IGhpZ2ggY29weScpLFxuICAgICAgICAgIG9uVGFwKCkge1xuICAgICAgICAgICAgY29uc3QgeyBKU1poaUh1UGFnZSB9ID0gcmVxdWlyZSgnLi9hcHBfZGVtby96aGlodS96aGlodS5qcycpO1xuXG4gICAgICAgICAgICBOYXZpZ2F0b3IucHVzaChjb250ZXh0LCBuZXcgTWF0ZXJpYWxQYWdlUm91dGUoe1xuICAgICAgICAgICAgICBidWlsZGVyKGNvbnRleHQpIHtcbiAgICAgICAgICAgICAgICByZXR1cm4gbmV3IEpTWmhpSHVQYWdlO1xuICAgICAgICAgICAgICB9LFxuICAgICAgICAgICAgfSkpO1xuICAgICAgICAgIH0sXG4gICAgICAgIH0pLFxuXG4gICAgICAgIG5ldyBMaXN0VGlsZSh7XG4gICAgICAgICAgbGVhZGluZzogbmV3IEljb24obmV3IEljb25EYXRhKDB4ZTM5ZCwgeyBmb250RmFtaWx5OiAnTWF0ZXJpYWxJY29ucycgfSksIHsgY29sb3I6IFRoZW1lLm9mKGNvbnRleHQpLnByaW1hcnlDb2xvciB9KSxcbiAgICAgICAgICB0cmFpbGluZzogbmV3IEljb24obmV3IEljb25EYXRhKDB4ZTVkZiwgeyBmb250RmFtaWx5OiAnTWF0ZXJpYWxJY29ucycsIG1hdGNoVGV4dERpcmVjdGlvbjogdHJ1ZSB9KSksXG4gICAgICAgICAgdGl0bGU6IG5ldyBUZXh0KCfnvZHmmJPmlrDpl7sgTGlzdFZpZXdEZW1vJyksXG4gICAgICAgICAgc3VidGl0bGU6IG5ldyBUZXh0KCdMaXN0VmlldyAsTWVzc2FnZSBDaGFubmVsLCBQdWxsIHRvIHJlZnJlc2gnKSxcblxuICAgICAgICAgIG9uVGFwKCkge1xuICAgICAgICAgICAgY29uc3QgbGlzdF92aWV3ID0gcmVxdWlyZSgnLi9hcHBfZGVtby9saXN0dmlld19leGFtcGxlLmpzJyk7XG5cbiAgICAgICAgICAgIE5hdmlnYXRvci5wdXNoKGNvbnRleHQsIG5ldyBNYXRlcmlhbFBhZ2VSb3V0ZSh7XG4gICAgICAgICAgICAgIGJ1aWxkZXIoY29udGV4dCkge1xuICAgICAgICAgICAgICAgIHJldHVybiBuZXcgbGlzdF92aWV3Lkxpc3RWaWV3RGVtbztcbiAgICAgICAgICAgICAgfSxcbiAgICAgICAgICAgIH0pKTtcbiAgICAgICAgICB9LFxuICAgICAgICB9KSxcblxuICAgICAgICBuZXcgTGlzdFRpbGUoe1xuICAgICAgICAgIGxlYWRpbmc6IG5ldyBJY29uKG5ldyBJY29uRGF0YSgweGUzOWQsIHsgZm9udEZhbWlseTogJ01hdGVyaWFsSWNvbnMnIH0pLCB7IGNvbG9yOiBUaGVtZS5vZihjb250ZXh0KS5wcmltYXJ5Q29sb3IgfSksXG4gICAgICAgICAgdHJhaWxpbmc6IG5ldyBJY29uKG5ldyBJY29uRGF0YSgweGU1ZGYsIHsgZm9udEZhbWlseTogJ01hdGVyaWFsSWNvbnMnLCBtYXRjaFRleHREaXJlY3Rpb246IHRydWUgfSkpLFxuICAgICAgICAgIHRpdGxlOiBuZXcgVGV4dCgnUGxhdGZvcm1BUElFeGFtcGxlcycpLFxuICAgICAgICAgIHN1YnRpdGxlOiBuZXcgVGV4dCgnTmV0d29yay9EaW8vTWVzc2FnZUNoYW5uZWwnKSxcblxuICAgICAgICAgIG9uVGFwKCkge1xuICAgICAgICAgICAgY29uc3QgeyBQbGF0Zm9ybUV4YW1wbGVzUGFnZSB9ID0gcmVxdWlyZSgnLi9hcHBfZGVtby9wbGF0Zm9ybS9pbmRleC5qcycpO1xuXG4gICAgICAgICAgICBOYXZpZ2F0b3IucHVzaChjb250ZXh0LCBuZXcgTWF0ZXJpYWxQYWdlUm91dGUoe1xuICAgICAgICAgICAgICBidWlsZGVyKGNvbnRleHQpIHtcbiAgICAgICAgICAgICAgICByZXR1cm4gbmV3IFBsYXRmb3JtRXhhbXBsZXNQYWdlO1xuICAgICAgICAgICAgICB9LFxuICAgICAgICAgICAgfSkpO1xuICAgICAgICAgIH0sXG4gICAgICAgIH0pLFxuXG4gICAgICAgIG5ldyBMaXN0VGlsZSh7XG4gICAgICAgICAgbGVhZGluZzogbmV3IEljb24obmV3IEljb25EYXRhKDB4ZTA2ZCwgeyBmb250RmFtaWx5OiAnTWF0ZXJpYWxJY29ucycgfSksIHsgY29sb3I6IFRoZW1lLm9mKGNvbnRleHQpLnByaW1hcnlDb2xvciB9KSxcbiAgICAgICAgICB0cmFpbGluZzogbmV3IEljb24obmV3IEljb25EYXRhKDB4ZTVkZiwgeyBmb250RmFtaWx5OiAnTWF0ZXJpYWxJY29ucycsIG1hdGNoVGV4dERpcmVjdGlvbjogdHJ1ZSB9KSksXG4gICAgICAgICAgdGl0bGU6IG5ldyBUZXh0KCdQZXN0bycpLFxuICAgICAgICAgIHN1YnRpdGxlOiBuZXcgVGV4dCgnU2ltcGxlIHJlY2lwZSBicm93c2VyJyksXG5cbiAgICAgICAgICBvblRhcCgpIHtcbiAgICAgICAgICAgIGNvbnN0IHBlc3RvID0gcmVxdWlyZSgnLi9hcHBfZGVtby9wZXN0by5qcycpO1xuXG4gICAgICAgICAgICBOYXZpZ2F0b3IucHVzaChjb250ZXh0LCBuZXcgTWF0ZXJpYWxQYWdlUm91dGUoe1xuICAgICAgICAgICAgICBidWlsZGVyKGNvbnRleHQpIHtcbiAgICAgICAgICAgICAgICByZXR1cm4gbmV3IHBlc3RvLkpTUGVzdG9QYWdlO1xuICAgICAgICAgICAgICB9LFxuICAgICAgICAgICAgfSkpO1xuICAgICAgICAgIH0sXG4gICAgICAgIH0pLFxuICAgICAgICBuZXcgTGlzdFRpbGUoe1xuICAgICAgICAgIGxlYWRpbmc6IG5ldyBJY29uKG5ldyBJY29uRGF0YSgweGUwZDAsIHsgZm9udEZhbWlseTogJ01hdGVyaWFsSWNvbnMnIH0pLCB7IGNvbG9yOiBUaGVtZS5vZihjb250ZXh0KS5wcmltYXJ5Q29sb3IgfSksXG4gICAgICAgICAgdHJhaWxpbmc6IG5ldyBJY29uKG5ldyBJY29uRGF0YSgweGU1ZGYsIHsgZm9udEZhbWlseTogJ01hdGVyaWFsSWNvbnMnLCBtYXRjaFRleHREaXJlY3Rpb246IHRydWUgfSkpLFxuICAgICAgICAgIHRpdGxlOiBuZXcgVGV4dCgnQ29udGFjdCBwcm9maWxlJyksXG4gICAgICAgICAgc3VidGl0bGU6IG5ldyBUZXh0KCdBZGRyZXNzIGJvb2sgZW50cnkgd2l0aCBhIGZsZXhpYmxlIGFwcGJhcicpLFxuXG4gICAgICAgICAgb25UYXAoKSB7XG4gICAgICAgICAgICBjb25zdCB7IEpTQ29udGFjdFBhZ2UgfSA9IHJlcXVpcmUoJy4vYXBwX2RlbW8vY29udGFjdC5qcycpO1xuICAgICAgICAgICAgTmF2aWdhdG9yLnB1c2goY29udGV4dCwgbmV3IE1hdGVyaWFsUGFnZVJvdXRlKHtcbiAgICAgICAgICAgICAgYnVpbGRlcihjb250ZXh0KSB7XG4gICAgICAgICAgICAgICAgcmV0dXJuIG5ldyBKU0NvbnRhY3RQYWdlO1xuICAgICAgICAgICAgICB9LFxuICAgICAgICAgICAgfSkpO1xuICAgICAgICAgIH0sXG4gICAgICAgIH0pLFxuICAgICAgICBuZXcgTGlzdFRpbGUoe1xuICAgICAgICAgIGxlYWRpbmc6IG5ldyBJY29uKG5ldyBJY29uRGF0YSgweGUwNmQsIHsgZm9udEZhbWlseTogJ01hdGVyaWFsSWNvbnMnIH0pLCB7IGNvbG9yOiBUaGVtZS5vZihjb250ZXh0KS5wcmltYXJ5Q29sb3IgfSksXG4gICAgICAgICAgdHJhaWxpbmc6IG5ldyBJY29uKG5ldyBJY29uRGF0YSgweGU1ZGYsIHsgZm9udEZhbWlseTogJ01hdGVyaWFsSWNvbnMnLCBtYXRjaFRleHREaXJlY3Rpb246IHRydWUgfSkpLFxuICAgICAgICAgIHRpdGxlOiBuZXcgVGV4dCgnQW5pbWF0aW9uJyksXG4gICAgICAgICAgc3VidGl0bGU6IG5ldyBUZXh0KCdTZWN0aW9uIG9yZ2FuaXplcicpLFxuICAgICAgICAgIG9uVGFwKCkge1xuICAgICAgICAgICAgY29uc3QgeyBKU0FuaW1hdGlvblBhZ2UgfSA9IHJlcXVpcmUoJy4vYXBwX2RlbW8vYW5pbWF0aW9uLmpzJyk7XG4gICAgICAgICAgICBOYXZpZ2F0b3IucHVzaChjb250ZXh0LCBuZXcgTWF0ZXJpYWxQYWdlUm91dGUoe1xuICAgICAgICAgICAgICBidWlsZGVyKGNvbnRleHQpIHtcbiAgICAgICAgICAgICAgICByZXR1cm4gbmV3IEpTQW5pbWF0aW9uUGFnZTtcbiAgICAgICAgICAgICAgfSxcbiAgICAgICAgICAgIH0pKTtcbiAgICAgICAgICB9LFxuICAgICAgICB9KSxcbiAgICAgICAgdGhpcy5zZWN0aW9uVGl0bGUoY29udGV4dCwgJ+aAp+iDvea1i+ivlScpLFxuICAgICAgICBuZXcgTGlzdFRpbGUoe1xuICAgICAgICAgIGxlYWRpbmc6IG5ldyBJY29uKG5ldyBJY29uRGF0YSgweGUwNmQsIHsgZm9udEZhbWlseTogJ01hdGVyaWFsSWNvbnMnIH0pKSxcbiAgICAgICAgICB0cmFpbGluZzogbmV3IEljb24obmV3IEljb25EYXRhKDB4ZTVkZiwgeyBmb250RmFtaWx5OiAnTWF0ZXJpYWxJY29ucycsIG1hdGNoVGV4dERpcmVjdGlvbjogdHJ1ZSB9KSksXG4gICAgICAgICAgdGl0bGU6IG5ldyBUZXh0KCdQcm9maWxlJyksXG4gICAgICAgICAgc3VidGl0bGU6IG5ldyBUZXh0KCfmgKfog73mtYvor5UgcGVyZm9ybWFuY2UgcHJvZmlsaW5nJyksXG4gICAgICAgICAgb25UYXAoKSB7XG4gICAgICAgICAgICBjb25zdCB7IFByb2ZpbGVFeGFtcGxlc1BhZ2UgfSA9IHJlcXVpcmUoJy4vcHJvZmlsZS9pbmRleC5qcycpO1xuXG4gICAgICAgICAgICBOYXZpZ2F0b3IucHVzaChjb250ZXh0LCBuZXcgTWF0ZXJpYWxQYWdlUm91dGUoe1xuICAgICAgICAgICAgICBidWlsZGVyKGNvbnRleHQpIHtcbiAgICAgICAgICAgICAgICByZXR1cm4gbmV3IFByb2ZpbGVFeGFtcGxlc1BhZ2U7XG4gICAgICAgICAgICAgIH0sXG4gICAgICAgICAgICB9KSk7XG4gICAgICAgICAgfSxcbiAgICAgICAgfSksXG5cbiAgICAgICAgLy8gdGhpcy5zZWN0aW9uVGl0bGUoY29udGV4dCwgXCJteGpzYnVpbGRlciBidWlsZCBhcHBcIiksXG4gICAgICAgIC8vIG5ldyBMaXN0VGlsZSh7XG4gICAgICAgIC8vICAgICBsZWFkaW5nOiBuZXcgSWNvbihuZXcgSWNvbkRhdGEoMHhlMzlkLCB7IGZvbnRGYW1pbHk6ICdNYXRlcmlhbEljb25zJyB9KSksXG4gICAgICAgIC8vICAgICB0cmFpbGluZzogbmV3IEljb24obmV3IEljb25EYXRhKDB4ZTVkZiwgeyBmb250RmFtaWx5OiAnTWF0ZXJpYWxJY29ucycsIG1hdGNoVGV4dERpcmVjdGlvbjogdHJ1ZSB9KSksXG4gICAgICAgIC8vICAgICB0aXRsZTogbmV3IFRleHQoJ0ZsdXR0ZXJEZW1vJyksXG4gICAgICAgIC8vICAgICBzdWJ0aXRsZTogbmV3IFRleHQoJ+eugOWNleagt+S+iycpLFxuICAgICAgICAvLyAgICAgb25UYXA6IGZ1bmN0aW9uICgpIHtcblxuICAgICAgICAvLyAgICAgICAgIGxldCBmbHV0dGVyX2RlbW9fZGRjID0gcmVxdWlyZShcIi4vbXhqc2J1aWxkZXJfZGVtby9mbHV0dGVyX2RlbW8uZGFydC5saWIuanNcIik7XG5cbiAgICAgICAgLy8gICAgICAgICBOYXZpZ2F0b3IucHVzaChjb250ZXh0LCBuZXcgTWF0ZXJpYWxQYWdlUm91dGUoe1xuICAgICAgICAvLyAgICAgICAgICAgICBidWlsZGVyOiBmdW5jdGlvbiAoY29udGV4dCkge1xuICAgICAgICAvLyAgICAgICAgICAgICAgICAgcmV0dXJuIG5ldyBmbHV0dGVyX2RlbW9fZGRjLm1haW4uTXlIb21lUGFnZS5uZXcoeyB0aXRsZTogXCJGbHV0dGVyIERlbW8gSG9tZSBQYWdlXCIgfSk7XG4gICAgICAgIC8vICAgICAgICAgICAgIH1cbiAgICAgICAgLy8gICAgICAgICB9KSlcbiAgICAgICAgLy8gICAgIH1cbiAgICAgICAgLy8gfSksXG4gICAgICAgIC8vIG5ldyBMaXN0VGlsZSh7XG4gICAgICAgIC8vICAgICBsZWFkaW5nOiBuZXcgSWNvbihuZXcgSWNvbkRhdGEoMHhlMzlkLCB7IGZvbnRGYW1pbHk6ICdNYXRlcmlhbEljb25zJyB9KSksXG4gICAgICAgIC8vICAgICB0cmFpbGluZzogbmV3IEljb24obmV3IEljb25EYXRhKDB4ZTVkZiwgeyBmb250RmFtaWx5OiAnTWF0ZXJpYWxJY29ucycsIG1hdGNoVGV4dERpcmVjdGlvbjogdHJ1ZSB9KSksXG4gICAgICAgIC8vICAgICB0aXRsZTogbmV3IFRleHQoJ0NvbnRhY3REZW1vJyksXG4gICAgICAgIC8vICAgICBzdWJ0aXRsZTogbmV3IFRleHQoJ+iBlOezu+S6uicpLFxuXG4gICAgICAgIC8vICAgICBvblRhcDogZnVuY3Rpb24gKCkge1xuXG4gICAgICAgIC8vICAgICAgICAgbGV0IGNvbnRhY3RfZGVtb19kZGMgPSByZXF1aXJlKFwiLi9teGpzYnVpbGRlcl9kZW1vL2NvbnRhY3RzX2RlbW8uZGFydC5saWIuanNcIik7XG5cbiAgICAgICAgLy8gICAgICAgICBOYXZpZ2F0b3IucHVzaChjb250ZXh0LCBuZXcgTWF0ZXJpYWxQYWdlUm91dGUoe1xuICAgICAgICAvLyAgICAgICAgICAgICBidWlsZGVyOiBmdW5jdGlvbiAoY29udGV4dCkge1xuICAgICAgICAvLyAgICAgICAgICAgICAgICAgcmV0dXJuIG5ldyBjb250YWN0X2RlbW9fZGRjLmNvbnRhY3RzX2RlbW8uQ29udGFjdHNEZW1vLm5ldztcbiAgICAgICAgLy8gICAgICAgICAgICAgfVxuICAgICAgICAvLyAgICAgICAgIH0pKVxuICAgICAgICAvLyAgICAgfVxuICAgICAgICAvLyB9KSxcbiAgICAgICAgLy8gbmV3IExpc3RUaWxlKHtcbiAgICAgICAgLy8gICAgIGxlYWRpbmc6IG5ldyBJY29uKG5ldyBJY29uRGF0YSgweGUzOWQsIHsgZm9udEZhbWlseTogJ01hdGVyaWFsSWNvbnMnIH0pKSxcbiAgICAgICAgLy8gICAgIHRyYWlsaW5nOiBuZXcgSWNvbihuZXcgSWNvbkRhdGEoMHhlNWRmLCB7IGZvbnRGYW1pbHk6ICdNYXRlcmlhbEljb25zJywgbWF0Y2hUZXh0RGlyZWN0aW9uOiB0cnVlIH0pKSxcbiAgICAgICAgLy8gICAgIHRpdGxlOiBuZXcgVGV4dCgnUGVzdG9EZW1vJyksXG4gICAgICAgIC8vICAgICBzdWJ0aXRsZTogbmV3IFRleHQoJ+iPnOiwsScpLFxuICAgICAgICAvLyAgICAgb25UYXA6IGZ1bmN0aW9uICgpIHtcblxuICAgICAgICAvLyAgICAgICAgIGxldCBwZXN0b19kZW1vX2RkYyA9IHJlcXVpcmUoXCIuL214anNidWlsZGVyX2RlbW8vcGVzdG9fZGVtby5kYXJ0LmxpYi5qc1wiKTtcblxuICAgICAgICAvLyAgICAgICAgIE5hdmlnYXRvci5wdXNoKGNvbnRleHQsIG5ldyBNYXRlcmlhbFBhZ2VSb3V0ZSh7XG4gICAgICAgIC8vICAgICAgICAgICAgIGJ1aWxkZXI6IGZ1bmN0aW9uIChjb250ZXh0KSB7XG4gICAgICAgIC8vICAgICAgICAgICAgICAgICByZXR1cm4gbmV3IHBlc3RvX2RlbW9fZGRjLnBlc3RvX2RlbW8uUGVzdG9EZW1vLm5ldztcbiAgICAgICAgLy8gICAgICAgICAgICAgfVxuICAgICAgICAvLyAgICAgICAgIH0pKVxuICAgICAgICAvLyAgICAgfVxuICAgICAgICAvLyB9KSxcbiAgICAgICAgLy8gbmV3IExpc3RUaWxlKHtcbiAgICAgICAgLy8gICAgIGxlYWRpbmc6IG5ldyBJY29uKG5ldyBJY29uRGF0YSgweGUzOWQsIHsgZm9udEZhbWlseTogJ01hdGVyaWFsSWNvbnMnIH0pKSxcbiAgICAgICAgLy8gICAgIHRyYWlsaW5nOiBuZXcgSWNvbihuZXcgSWNvbkRhdGEoMHhlNWRmLCB7IGZvbnRGYW1pbHk6ICdNYXRlcmlhbEljb25zJywgbWF0Y2hUZXh0RGlyZWN0aW9uOiB0cnVlIH0pKSxcbiAgICAgICAgLy8gICAgIHRpdGxlOiBuZXcgVGV4dCgnWmhpSHUnKSxcbiAgICAgICAgLy8gICAgIHN1YnRpdGxlOiBuZXcgVGV4dCgn55+l5LmOLemrmOS7v+eJiCcpLFxuXG4gICAgICAgIC8vICAgICBvblRhcDogZnVuY3Rpb24gKCkge1xuXG4gICAgICAgIC8vICAgICAgICAgY29uc3QgcGFja2FnZXNfX3poaWh1X19pbmRleCA9IHJlcXVpcmUoJy4vbXhqc2J1aWxkZXJfZGVtby9wYWNrYWdlcy96aGlodS9pbmRleC9pbmRleC5kYXJ0LmxpYi5qcycpO1xuICAgICAgICAvLyAgICAgICAgIGNvbnN0IGluZGV4X3BhZ2UgPSBwYWNrYWdlc19femhpaHVfX2luZGV4LmluZGV4X19pbmRleDtcblxuICAgICAgICAvLyAgICAgICAgIE5hdmlnYXRvci5wdXNoKGNvbnRleHQsIG5ldyBNYXRlcmlhbFBhZ2VSb3V0ZSh7XG4gICAgICAgIC8vICAgICAgICAgICAgIGJ1aWxkZXI6IGZ1bmN0aW9uIChjb250ZXh0KSB7XG4gICAgICAgIC8vICAgICAgICAgICAgICAgICByZXR1cm4gbmV3IGluZGV4X3BhZ2UuSW5kZXgubmV3O1xuICAgICAgICAvLyAgICAgICAgICAgICB9XG4gICAgICAgIC8vICAgICAgICAgfSkpXG4gICAgICAgIC8vICAgICB9XG4gICAgICAgIC8vIH0pLFxuICAgICAgICB0aGlzLnNlY3Rpb25UaXRsZShjb250ZXh0LCAnRGFydCBKUyBBcGknKSxcbiAgICAgICAgbmV3IExpc3RUaWxlKHtcbiAgICAgICAgICBsZWFkaW5nOiBuZXcgSWNvbihuZXcgSWNvbkRhdGEoMHhlMzlkLCB7IGZvbnRGYW1pbHk6ICdNYXRlcmlhbEljb25zJyB9KSksXG4gICAgICAgICAgdHJhaWxpbmc6IG5ldyBJY29uKG5ldyBJY29uRGF0YSgweGU1ZGYsIHsgZm9udEZhbWlseTogJ01hdGVyaWFsSWNvbnMnLCBtYXRjaFRleHREaXJlY3Rpb246IHRydWUgfSkpLFxuICAgICAgICAgIHRpdGxlOiBuZXcgVGV4dCgnRGFydCBKUyBBcGknKSxcbiAgICAgICAgICBzdWJ0aXRsZTogbmV3IFRleHQoJ0pTIENhbGwgRGFydCBGdW5jdGlvbicpLFxuICAgICAgICAgIG9uVGFwKCkge1xuICAgICAgICAgICAgY29uc3QgeyBQYWdlRXhhbXBsZUpTQXBpIH0gPSByZXF1aXJlKCdjdXN0b21fanNfYXBpLmpzJyk7XG4gICAgICAgICAgICBOYXZpZ2F0b3IucHVzaChjb250ZXh0LCBuZXcgTWF0ZXJpYWxQYWdlUm91dGUoe1xuICAgICAgICAgICAgICBidWlsZGVyKGNvbnRleHQpIHtcbiAgICAgICAgICAgICAgICByZXR1cm4gbmV3IFBhZ2VFeGFtcGxlSlNBcGk7XG4gICAgICAgICAgICAgIH0sXG4gICAgICAgICAgICB9KSk7XG4gICAgICAgICAgfSxcbiAgICAgICAgfSksXG4gICAgICBdLFxuICAgIH0pO1xuXG4gICAgY29uc3QgdyA9IG5ldyBTY2FmZm9sZCh7XG4gICAgICBhcHBCYXI6IG5ldyBBcHBCYXIoe1xuICAgICAgICB0aXRsZTogbmV3IFRleHQoJ01YRmx1dHRlciBFeGFtcGxlcycpLFxuICAgICAgfSksXG4gICAgICBib2R5OiBkZW1vTGlzdCxcbiAgICB9KTtcblxuXG4gICAgcmV0dXJuIHc7XG4gIH1cblxuICBzZWN0aW9uVGl0bGUoY29udGV4dCwgdGl0bGUpIHtcbiAgICByZXR1cm4gbmV3IEhvbWVTZWN0aW9uVGl0bGUodGl0bGUpO1xuICB9XG59XG5cbmNsYXNzIEhvbWVTZWN0aW9uVGl0bGUgZXh0ZW5kcyBNWEpTU3RhdGVsZXNzV2lkZ2V0IHtcbiAgY29uc3RydWN0b3IodGl0bGUsIHsga2V5IH0gPSB7fSkge1xuICAgIHN1cGVyKCdIb21lU2VjdGlvblRpdGxlJywgeyBrZXkgfSk7XG4gICAgdGhpcy50aXRsZSA9IHRpdGxlO1xuICB9XG5cbiAgYnVpbGQoY29udGV4dCkge1xuICAgIHJldHVybiBuZXcgQ29udGFpbmVyKHtcbiAgICAgIHBhZGRpbmc6IEVkZ2VJbnNldHMuYWxsKDEwLjApLFxuICAgICAgY29sb3I6IFRoZW1lLm9mKGNvbnRleHQpLnByaW1hcnlDb2xvcixcbiAgICAgIGNoaWxkOiBuZXcgUm93KHtcbiAgICAgICAgY2hpbGRyZW46IFtcbiAgICAgICAgICBuZXcgSWNvbihuZXcgSWNvbkRhdGEoMHhlODBlLCB7IGZvbnRGYW1pbHk6ICdNYXRlcmlhbEljb25zJyB9KSwgeyBzaXplOiAyMCwgY29sb3I6IG5ldyBDb2xvcigweEZGRkZGRkZGKSB9KSxcbiAgICAgICAgICBuZXcgUGFkZGluZyh7IHBhZGRpbmc6IEVkZ2VJbnNldHMuZnJvbUxUUkIoMTAuMCwgMC4wLCAwLjAsIDAuMCkgfSksXG4gICAgICAgICAgbmV3IFRleHQodGhpcy50aXRsZSwge1xuICAgICAgICAgICAgdGV4dEFsaWduOiBUZXh0QWxpZ24uc3RhcnQsXG4gICAgICAgICAgICBzdHlsZTogbmV3IFRleHRTdHlsZSh7XG4gICAgICAgICAgICAgIGZvbnRTaXplOiAxNixcbiAgICAgICAgICAgICAgZm9udFdlaWdodDogVGhlbWUub2YoY29udGV4dCkudGV4dFRoZW1lLnRpdGxlLmZvbnRXZWlnaHQsXG4gICAgICAgICAgICAgIGNvbG9yOiBDb2xvcnMud2hpdGUsXG4gICAgICAgICAgICB9KSxcbiAgICAgICAgICB9KSxcbiAgICAgICAgXSxcbiAgICAgIH0pLFxuICAgIH0pO1xuICB9XG59XG5cbmV4cG9ydCB7XG4gICAgTVhKU1dpZGdldEhvbWVQYWdlXG59XG5cbiIsImltcG9ydCB7IE1YSlNXaWRnZXRIb21lUGFnZSB9IGZyb20gJy4vaG9tZV9wYWdlJztcblxuY29uc3QgeyBNWEZsdXR0ZXIgfSA9IGdsb2JhbFRoaXM7XG5cbk1YRmx1dHRlci5yZWdpc3Qoe1xuICBuYW1lOiAnbXhmbHV0dGVyLWRlbW8nLFxuICBSb290V2lkZ2V0OiBNWEpTV2lkZ2V0SG9tZVBhZ2UsXG59KTtcbiIsIm1vZHVsZS5leHBvcnRzID0gcmVxdWlyZShcImNvbnNvbGVcIik7IiwiLy8gVGhlIG1vZHVsZSBjYWNoZVxudmFyIF9fd2VicGFja19tb2R1bGVfY2FjaGVfXyA9IHt9O1xuXG4vLyBUaGUgcmVxdWlyZSBmdW5jdGlvblxuZnVuY3Rpb24gX193ZWJwYWNrX3JlcXVpcmVfXyhtb2R1bGVJZCkge1xuXHQvLyBDaGVjayBpZiBtb2R1bGUgaXMgaW4gY2FjaGVcblx0aWYoX193ZWJwYWNrX21vZHVsZV9jYWNoZV9fW21vZHVsZUlkXSkge1xuXHRcdHJldHVybiBfX3dlYnBhY2tfbW9kdWxlX2NhY2hlX19bbW9kdWxlSWRdLmV4cG9ydHM7XG5cdH1cblx0Ly8gQ3JlYXRlIGEgbmV3IG1vZHVsZSAoYW5kIHB1dCBpdCBpbnRvIHRoZSBjYWNoZSlcblx0dmFyIG1vZHVsZSA9IF9fd2VicGFja19tb2R1bGVfY2FjaGVfX1ttb2R1bGVJZF0gPSB7XG5cdFx0Ly8gbm8gbW9kdWxlLmlkIG5lZWRlZFxuXHRcdC8vIG5vIG1vZHVsZS5sb2FkZWQgbmVlZGVkXG5cdFx0ZXhwb3J0czoge31cblx0fTtcblxuXHQvLyBFeGVjdXRlIHRoZSBtb2R1bGUgZnVuY3Rpb25cblx0X193ZWJwYWNrX21vZHVsZXNfX1ttb2R1bGVJZF0uY2FsbChtb2R1bGUuZXhwb3J0cywgbW9kdWxlLCBtb2R1bGUuZXhwb3J0cywgX193ZWJwYWNrX3JlcXVpcmVfXyk7XG5cblx0Ly8gUmV0dXJuIHRoZSBleHBvcnRzIG9mIHRoZSBtb2R1bGVcblx0cmV0dXJuIG1vZHVsZS5leHBvcnRzO1xufVxuXG4vLyBleHBvc2UgdGhlIG1vZHVsZXMgb2JqZWN0IChfX3dlYnBhY2tfbW9kdWxlc19fKVxuX193ZWJwYWNrX3JlcXVpcmVfXy5tID0gX193ZWJwYWNrX21vZHVsZXNfXztcblxuLy8gdGhlIHN0YXJ0dXAgZnVuY3Rpb25cbl9fd2VicGFja19yZXF1aXJlX18ueCA9ICgpID0+IHtcblx0Ly8gTG9hZCBlbnRyeSBtb2R1bGVcblx0X193ZWJwYWNrX3JlcXVpcmVfXyhcIi4vc3JjL2luZGV4LnRzXCIpO1xuXHQvLyBUaGlzIGVudHJ5IG1vZHVsZSB1c2VkICdleHBvcnRzJyBzbyBpdCBjYW4ndCBiZSBpbmxpbmVkXG59O1xuXG4iLCIvLyBnZXREZWZhdWx0RXhwb3J0IGZ1bmN0aW9uIGZvciBjb21wYXRpYmlsaXR5IHdpdGggbm9uLWhhcm1vbnkgbW9kdWxlc1xuX193ZWJwYWNrX3JlcXVpcmVfXy5uID0gKG1vZHVsZSkgPT4ge1xuXHR2YXIgZ2V0dGVyID0gbW9kdWxlICYmIG1vZHVsZS5fX2VzTW9kdWxlID9cblx0XHQoKSA9PiBtb2R1bGVbJ2RlZmF1bHQnXSA6XG5cdFx0KCkgPT4gbW9kdWxlO1xuXHRfX3dlYnBhY2tfcmVxdWlyZV9fLmQoZ2V0dGVyLCB7IGE6IGdldHRlciB9KTtcblx0cmV0dXJuIGdldHRlcjtcbn07IiwiLy8gZGVmaW5lIGdldHRlciBmdW5jdGlvbnMgZm9yIGhhcm1vbnkgZXhwb3J0c1xuX193ZWJwYWNrX3JlcXVpcmVfXy5kID0gKGV4cG9ydHMsIGRlZmluaXRpb24pID0+IHtcblx0Zm9yKHZhciBrZXkgaW4gZGVmaW5pdGlvbikge1xuXHRcdGlmKF9fd2VicGFja19yZXF1aXJlX18ubyhkZWZpbml0aW9uLCBrZXkpICYmICFfX3dlYnBhY2tfcmVxdWlyZV9fLm8oZXhwb3J0cywga2V5KSkge1xuXHRcdFx0T2JqZWN0LmRlZmluZVByb3BlcnR5KGV4cG9ydHMsIGtleSwgeyBlbnVtZXJhYmxlOiB0cnVlLCBnZXQ6IGRlZmluaXRpb25ba2V5XSB9KTtcblx0XHR9XG5cdH1cbn07IiwiX193ZWJwYWNrX3JlcXVpcmVfXy5mID0ge307XG4vLyBUaGlzIGZpbGUgY29udGFpbnMgb25seSB0aGUgZW50cnkgY2h1bmsuXG4vLyBUaGUgY2h1bmsgbG9hZGluZyBmdW5jdGlvbiBmb3IgYWRkaXRpb25hbCBjaHVua3Ncbl9fd2VicGFja19yZXF1aXJlX18uZSA9IChjaHVua0lkKSA9PiB7XG5cdHJldHVybiBQcm9taXNlLmFsbChPYmplY3Qua2V5cyhfX3dlYnBhY2tfcmVxdWlyZV9fLmYpLnJlZHVjZSgocHJvbWlzZXMsIGtleSkgPT4ge1xuXHRcdF9fd2VicGFja19yZXF1aXJlX18uZltrZXldKGNodW5rSWQsIHByb21pc2VzKTtcblx0XHRyZXR1cm4gcHJvbWlzZXM7XG5cdH0sIFtdKSk7XG59OyIsIi8vIFRoaXMgZnVuY3Rpb24gYWxsb3cgdG8gcmVmZXJlbmNlIGFzeW5jIGNodW5rcyBhbmQgc2libGluZyBjaHVua3MgZm9yIHRoZSBlbnRyeXBvaW50XG5fX3dlYnBhY2tfcmVxdWlyZV9fLnUgPSAoY2h1bmtJZCkgPT4ge1xuXHQvLyByZXR1cm4gdXJsIGZvciBmaWxlbmFtZXMgYmFzZWQgb24gdGVtcGxhdGVcblx0cmV0dXJuIFwiXCIgKyBjaHVua0lkICsgXCIuanNcIjtcbn07IiwiX193ZWJwYWNrX3JlcXVpcmVfXy5vID0gKG9iaiwgcHJvcCkgPT4gT2JqZWN0LnByb3RvdHlwZS5oYXNPd25Qcm9wZXJ0eS5jYWxsKG9iaiwgcHJvcCkiLCIvLyBkZWZpbmUgX19lc01vZHVsZSBvbiBleHBvcnRzXG5fX3dlYnBhY2tfcmVxdWlyZV9fLnIgPSAoZXhwb3J0cykgPT4ge1xuXHRpZih0eXBlb2YgU3ltYm9sICE9PSAndW5kZWZpbmVkJyAmJiBTeW1ib2wudG9TdHJpbmdUYWcpIHtcblx0XHRPYmplY3QuZGVmaW5lUHJvcGVydHkoZXhwb3J0cywgU3ltYm9sLnRvU3RyaW5nVGFnLCB7IHZhbHVlOiAnTW9kdWxlJyB9KTtcblx0fVxuXHRPYmplY3QuZGVmaW5lUHJvcGVydHkoZXhwb3J0cywgJ19fZXNNb2R1bGUnLCB7IHZhbHVlOiB0cnVlIH0pO1xufTsiLCJ2YXIgbmV4dCA9IF9fd2VicGFja19yZXF1aXJlX18ueDtcbl9fd2VicGFja19yZXF1aXJlX18ueCA9ICgpID0+IHtcblx0X193ZWJwYWNrX3JlcXVpcmVfXy5lKFwibXhmbHV0dGVyLXNka1wiKTtcblx0cmV0dXJuIG5leHQoKTtcbn07IiwiLy8gb2JqZWN0IHRvIHN0b3JlIGxvYWRlZCBjaHVua3Ncbi8vIFwiMVwiIG1lYW5zIFwibG9hZGVkXCIsIG90aGVyd2lzZSBub3QgbG9hZGVkIHlldFxudmFyIGluc3RhbGxlZENodW5rcyA9IHtcblx0XCJidW5kbGUtbXhmbHV0dGVyLWRlbW9cIjogMVxufTtcblxudmFyIGluc3RhbGxDaHVuayA9IChjaHVuaykgPT4ge1xuXHR2YXIgbW9yZU1vZHVsZXMgPSBjaHVuay5tb2R1bGVzLCBjaHVua0lkcyA9IGNodW5rLmlkcywgcnVudGltZSA9IGNodW5rLnJ1bnRpbWU7XG5cdGZvcih2YXIgbW9kdWxlSWQgaW4gbW9yZU1vZHVsZXMpIHtcblx0XHRpZihfX3dlYnBhY2tfcmVxdWlyZV9fLm8obW9yZU1vZHVsZXMsIG1vZHVsZUlkKSkge1xuXHRcdFx0X193ZWJwYWNrX3JlcXVpcmVfXy5tW21vZHVsZUlkXSA9IG1vcmVNb2R1bGVzW21vZHVsZUlkXTtcblx0XHR9XG5cdH1cblx0aWYocnVudGltZSkgcnVudGltZShfX3dlYnBhY2tfcmVxdWlyZV9fKTtcblx0Zm9yKHZhciBpID0gMDsgaSA8IGNodW5rSWRzLmxlbmd0aDsgaSsrKVxuXHRcdGluc3RhbGxlZENodW5rc1tjaHVua0lkc1tpXV0gPSAxO1xufTtcblxuLy8gcmVxdWlyZSgpIGNodW5rIGxvYWRpbmcgZm9yIGphdmFzY3JpcHRcbl9fd2VicGFja19yZXF1aXJlX18uZi5yZXF1aXJlID0gZnVuY3Rpb24oY2h1bmtJZCwgcHJvbWlzZXMpIHtcblxuXHQvLyBcIjFcIiBpcyB0aGUgc2lnbmFsIGZvciBcImFscmVhZHkgbG9hZGVkXCJcblx0aWYoIWluc3RhbGxlZENodW5rc1tjaHVua0lkXSkge1xuXHRcdGlmKHRydWUpIHsgLy8gYWxsIGNodW5rcyBoYXZlIEpTXG5cdFx0XHRpbnN0YWxsQ2h1bmsocmVxdWlyZShcIi4vXCIgKyBfX3dlYnBhY2tfcmVxdWlyZV9fLnUoY2h1bmtJZCkpKTtcblx0XHR9IGVsc2UgaW5zdGFsbGVkQ2h1bmtzW2NodW5rSWRdID0gMTtcblx0fVxufTtcblxuLy8gbm8gZXh0ZXJuYWwgaW5zdGFsbCBjaHVua1xuXG4vLyBubyBITVJcblxuLy8gbm8gSE1SIG1hbmlmZXN0IiwiLy8gcnVuIHN0YXJ0dXBcbnJldHVybiBfX3dlYnBhY2tfcmVxdWlyZV9fLngoKTtcbiJdLCJzb3VyY2VSb290IjoiIn0=