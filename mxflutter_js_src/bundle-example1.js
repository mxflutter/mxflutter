/******/ (() => { // webpackBootstrap
/******/ 	"use strict";
/******/ 	var __webpack_modules__ = ({

/***/ "./src/index.ts":
/*!**********************!*\
  !*** ./src/index.ts ***!
  \**********************/
/*! namespace exports */
/*! exports [not provided] [no usage info] */
/*! runtime requirements: __webpack_require__, __webpack_require__.n, __webpack_require__.r, __webpack_exports__, __webpack_require__.* */
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony import */ var _tencent_mxflutter__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @tencent/mxflutter */ "@tencent/mxflutter");
/* harmony import */ var _tencent_mxflutter__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_tencent_mxflutter__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @tencent/mxflutter-widgets */ "@tencent/mxflutter-widgets");
/* harmony import */ var _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__);


class MyApp extends _tencent_mxflutter__WEBPACK_IMPORTED_MODULE_0__.MXJSStatelessWidget {
    constructor() {
        super('MyApp');
    }
    build() {
        return new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.MaterialApp({
            title: 'Flutter Demo',
            home: new MyHomePage('Flutter Demo Home Page'),
        });
    }
}
class MyHomePage extends _tencent_mxflutter__WEBPACK_IMPORTED_MODULE_0__.MXJSStatefulWidget {
    constructor(title) {
        super('MyHomePage');
        this.title = title;
    }
    createState() {
        return new _MyHomePageState();
    }
}
class _MyHomePageState extends _tencent_mxflutter__WEBPACK_IMPORTED_MODULE_0__.MXJSWidgetState {
    constructor() {
        super();
        this.counter = 0;
    }
    build(context) {
        return new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Scaffold({
            appBar: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.AppBar({
                title: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text(this.widget.title),
            }),
            body: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Center({
                child: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Column({
                    mainAxisAlignment: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.MainAxisAlignment.center,
                    children: [
                        new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text('You have pushed the button this many times:'),
                        new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text(`${this.counter}`, {
                            style: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Theme.of(context).textTheme.headline4,
                        }),
                    ],
                }),
            }),
            floatingActionButton: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.FloatingActionButton({
                onPressed: () => {
                    this.incrementCounter();
                },
                tooltip: 'Increment',
                child: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Icon(_tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Icons.add),
            }),
        });
    }
    incrementCounter() {
        this.setState(() => {
            this.counter += 1;
        });
    }
}
_tencent_mxflutter__WEBPACK_IMPORTED_MODULE_0___default().regist({
    name: 'example1',
    RootWidget: MyApp,
});


/***/ }),

/***/ "@tencent/mxflutter":
/*!****************************************************!*\
  !*** external "globalThis.MXFlutterSDK.MXFlutter" ***!
  \****************************************************/
/*! unknown exports (runtime-defined) */
/*! runtime requirements: module */
/***/ ((module) => {

module.exports = globalThis.MXFlutterSDK.MXFlutter;

/***/ }),

/***/ "@tencent/mxflutter-widgets":
/*!***********************************************************!*\
  !*** external "globalThis.MXFlutterSDK.MXFlutterWidgets" ***!
  \***********************************************************/
/*! unknown exports (runtime-defined) */
/*! runtime requirements: module */
/***/ ((module) => {

module.exports = globalThis.MXFlutterSDK.MXFlutterWidgets;

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
/******/ 		__webpack_modules__[moduleId](module, module.exports, __webpack_require__);
/******/ 	
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
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
/************************************************************************/
/******/ 	// startup
/******/ 	// Load entry module
/******/ 	__webpack_require__("./src/index.ts");
/******/ 	// This entry module used 'exports' so it can't be inlined
/******/ })()
;
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMS8uL3NyYy9pbmRleC50cyIsIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMS9leHRlcm5hbCBcImdsb2JhbFRoaXMuTVhGbHV0dGVyU0RLLk1YRmx1dHRlclwiIiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUxL2V4dGVybmFsIFwiZ2xvYmFsVGhpcy5NWEZsdXR0ZXJTREsuTVhGbHV0dGVyV2lkZ2V0c1wiIiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUxL3dlYnBhY2svYm9vdHN0cmFwIiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUxL3dlYnBhY2svcnVudGltZS9jb21wYXQgZ2V0IGRlZmF1bHQgZXhwb3J0Iiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUxL3dlYnBhY2svcnVudGltZS9kZWZpbmUgcHJvcGVydHkgZ2V0dGVycyIsIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMS93ZWJwYWNrL3J1bnRpbWUvaGFzT3duUHJvcGVydHkgc2hvcnRoYW5kIiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUxL3dlYnBhY2svcnVudGltZS9tYWtlIG5hbWVzcGFjZSBvYmplY3QiLCJ3ZWJwYWNrOi8vQHRlc3QvZXhhbXBsZTEvd2VicGFjay9zdGFydHVwIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7OztBQUs0QjtBQWFRO0FBRXBDLE1BQU0sS0FBTSxTQUFRLG1FQUFtQjtJQUNyQztRQUNFLEtBQUssQ0FBQyxPQUFPLENBQUMsQ0FBQztJQUNqQixDQUFDO0lBRU0sS0FBSztRQUNWLE9BQU8sSUFBSSxtRUFBVyxDQUFDO1lBQ3JCLEtBQUssRUFBRSxjQUFjO1lBQ3JCLElBQUksRUFBRSxJQUFJLFVBQVUsQ0FBQyx3QkFBd0IsQ0FBQztTQUMvQyxDQUFDLENBQUM7SUFDTCxDQUFDO0NBQ0Y7QUFFRCxNQUFNLFVBQVcsU0FBUSxrRUFBa0I7SUFFekMsWUFBbUIsS0FBYTtRQUM5QixLQUFLLENBQUMsWUFBWSxDQUFDLENBQUM7UUFDcEIsSUFBSSxDQUFDLEtBQUssR0FBRyxLQUFLLENBQUM7SUFDckIsQ0FBQztJQUVNLFdBQVc7UUFDaEIsT0FBTyxJQUFJLGdCQUFnQixFQUFFLENBQUM7SUFDaEMsQ0FBQztDQUNGO0FBRUQsTUFBTSxnQkFBaUIsU0FBUSwrREFBZTtJQUk1QztRQUNFLEtBQUssRUFBRSxDQUFDO1FBQ1IsSUFBSSxDQUFDLE9BQU8sR0FBRyxDQUFDLENBQUM7SUFDbkIsQ0FBQztJQUVNLEtBQUssQ0FBQyxPQUF5QjtRQUNwQyxPQUFPLElBQUksZ0VBQVEsQ0FBQztZQUNsQixNQUFNLEVBQUUsSUFBSSw4REFBTSxDQUFDO2dCQUNqQixLQUFLLEVBQUUsSUFBSSw0REFBSSxDQUFDLElBQUksQ0FBQyxNQUFNLENBQUMsS0FBSyxDQUFDO2FBQ25DLENBQUM7WUFDRixJQUFJLEVBQUUsSUFBSSw4REFBTSxDQUFDO2dCQUNmLEtBQUssRUFBRSxJQUFJLDhEQUFNLENBQUM7b0JBQ2hCLGlCQUFpQixFQUFFLGdGQUF3QjtvQkFDM0MsUUFBUSxFQUFFO3dCQUNSLElBQUksNERBQUksQ0FBQyw2Q0FBNkMsQ0FBQzt3QkFDdkQsSUFBSSw0REFBSSxDQUFDLEdBQUcsSUFBSSxDQUFDLE9BQU8sRUFBRSxFQUFFOzRCQUMxQixLQUFLLEVBQUUsZ0VBQVEsQ0FBQyxPQUFPLENBQUMsQ0FBQyxTQUFTLENBQUMsU0FBUzt5QkFDN0MsQ0FBQztxQkFDSDtpQkFDRixDQUFDO2FBQ0gsQ0FBQztZQUNGLG9CQUFvQixFQUFFLElBQUksNEVBQW9CLENBQUM7Z0JBQzdDLFNBQVMsRUFBRSxHQUFHLEVBQUU7b0JBQ2QsSUFBSSxDQUFDLGdCQUFnQixFQUFFLENBQUM7Z0JBQzFCLENBQUM7Z0JBQ0QsT0FBTyxFQUFFLFdBQVc7Z0JBQ3BCLEtBQUssRUFBRSxJQUFJLDREQUFJLENBQUMsaUVBQVMsQ0FBQzthQUMzQixDQUFDO1NBQ0gsQ0FBQyxDQUFDO0lBQ0wsQ0FBQztJQUVNLGdCQUFnQjtRQUNyQixJQUFJLENBQUMsUUFBUSxDQUFDLEdBQUcsRUFBRTtZQUNqQixJQUFJLENBQUMsT0FBTyxJQUFJLENBQUMsQ0FBQztRQUNwQixDQUFDLENBQUMsQ0FBQztJQUNMLENBQUM7Q0FDRjtBQUVELGdFQUFnQixDQUFDO0lBQ2YsSUFBSSxFQUFFLFVBQVU7SUFDaEIsVUFBVSxFQUFFLEtBQUs7Q0FDbEIsQ0FBQyxDQUFDOzs7Ozs7Ozs7Ozs7O0FDMUZILG1EOzs7Ozs7Ozs7Ozs7QUNBQSwwRDs7Ozs7O1VDQUE7VUFDQTs7VUFFQTtVQUNBO1VBQ0E7VUFDQTtVQUNBO1VBQ0E7VUFDQTtVQUNBO1VBQ0E7VUFDQTtVQUNBO1VBQ0E7O1VBRUE7VUFDQTs7VUFFQTtVQUNBO1VBQ0E7Ozs7O1dDckJBO1dBQ0E7V0FDQTtXQUNBO1dBQ0E7V0FDQSxnQ0FBZ0MsWUFBWTtXQUM1QztXQUNBLEU7Ozs7O1dDUEE7V0FDQTtXQUNBO1dBQ0E7V0FDQSx3Q0FBd0MseUNBQXlDO1dBQ2pGO1dBQ0E7V0FDQSxFOzs7OztXQ1BBLHNGOzs7OztXQ0FBO1dBQ0E7V0FDQTtXQUNBLHNEQUFzRCxrQkFBa0I7V0FDeEU7V0FDQSwrQ0FBK0MsY0FBYztXQUM3RCxFOzs7O1VDTkE7VUFDQTtVQUNBO1VBQ0EiLCJmaWxlIjoiYnVuZGxlLWV4YW1wbGUxLmpzIiwic291cmNlc0NvbnRlbnQiOlsiaW1wb3J0IG14Zmx1dHRlciwge1xuICBNWEpTU3RhdGVsZXNzV2lkZ2V0LFxuICBNWEpTU3RhdGVmdWxXaWRnZXQsXG4gIE1YSlNXaWRnZXRTdGF0ZSxcbiAgTVhKU0J1aWxkQ29udGV4dCxcbn0gZnJvbSAnQHRlbmNlbnQvbXhmbHV0dGVyJztcbmltcG9ydCB7XG4gIE1hdGVyaWFsQXBwLFxuICBDb2x1bW4sXG4gIFRleHQsXG4gIFRoZW1lLFxuICBTY2FmZm9sZCxcbiAgQXBwQmFyLFxuICBDZW50ZXIsXG4gIE1haW5BeGlzQWxpZ25tZW50LFxuICBGbG9hdGluZ0FjdGlvbkJ1dHRvbixcbiAgSWNvbixcbiAgSWNvbnMsXG59IGZyb20gJ0B0ZW5jZW50L214Zmx1dHRlci13aWRnZXRzJztcblxuY2xhc3MgTXlBcHAgZXh0ZW5kcyBNWEpTU3RhdGVsZXNzV2lkZ2V0IHtcbiAgcHVibGljIGNvbnN0cnVjdG9yKCkge1xuICAgIHN1cGVyKCdNeUFwcCcpO1xuICB9XG5cbiAgcHVibGljIGJ1aWxkKCkge1xuICAgIHJldHVybiBuZXcgTWF0ZXJpYWxBcHAoe1xuICAgICAgdGl0bGU6ICdGbHV0dGVyIERlbW8nLFxuICAgICAgaG9tZTogbmV3IE15SG9tZVBhZ2UoJ0ZsdXR0ZXIgRGVtbyBIb21lIFBhZ2UnKSxcbiAgICB9KTtcbiAgfVxufVxuXG5jbGFzcyBNeUhvbWVQYWdlIGV4dGVuZHMgTVhKU1N0YXRlZnVsV2lkZ2V0IHtcbiAgcHVibGljIHRpdGxlOiBzdHJpbmc7XG4gIHB1YmxpYyBjb25zdHJ1Y3Rvcih0aXRsZTogc3RyaW5nKSB7XG4gICAgc3VwZXIoJ015SG9tZVBhZ2UnKTtcbiAgICB0aGlzLnRpdGxlID0gdGl0bGU7XG4gIH1cblxuICBwdWJsaWMgY3JlYXRlU3RhdGUoKSB7XG4gICAgcmV0dXJuIG5ldyBfTXlIb21lUGFnZVN0YXRlKCk7XG4gIH1cbn1cblxuY2xhc3MgX015SG9tZVBhZ2VTdGF0ZSBleHRlbmRzIE1YSlNXaWRnZXRTdGF0ZSB7XG4gIHB1YmxpYyBjb3VudGVyOiBudW1iZXI7XG4gIHB1YmxpYyB3aWRnZXQ6IE15SG9tZVBhZ2U7XG5cbiAgcHVibGljIGNvbnN0cnVjdG9yKCkge1xuICAgIHN1cGVyKCk7XG4gICAgdGhpcy5jb3VudGVyID0gMDtcbiAgfVxuXG4gIHB1YmxpYyBidWlsZChjb250ZXh0OiBNWEpTQnVpbGRDb250ZXh0KSB7XG4gICAgcmV0dXJuIG5ldyBTY2FmZm9sZCh7XG4gICAgICBhcHBCYXI6IG5ldyBBcHBCYXIoe1xuICAgICAgICB0aXRsZTogbmV3IFRleHQodGhpcy53aWRnZXQudGl0bGUpLFxuICAgICAgfSksXG4gICAgICBib2R5OiBuZXcgQ2VudGVyKHtcbiAgICAgICAgY2hpbGQ6IG5ldyBDb2x1bW4oe1xuICAgICAgICAgIG1haW5BeGlzQWxpZ25tZW50OiBNYWluQXhpc0FsaWdubWVudC5jZW50ZXIsXG4gICAgICAgICAgY2hpbGRyZW46IFtcbiAgICAgICAgICAgIG5ldyBUZXh0KCdZb3UgaGF2ZSBwdXNoZWQgdGhlIGJ1dHRvbiB0aGlzIG1hbnkgdGltZXM6JyksXG4gICAgICAgICAgICBuZXcgVGV4dChgJHt0aGlzLmNvdW50ZXJ9YCwge1xuICAgICAgICAgICAgICBzdHlsZTogVGhlbWUub2YoY29udGV4dCkudGV4dFRoZW1lLmhlYWRsaW5lNCxcbiAgICAgICAgICAgIH0pLFxuICAgICAgICAgIF0sXG4gICAgICAgIH0pLFxuICAgICAgfSksXG4gICAgICBmbG9hdGluZ0FjdGlvbkJ1dHRvbjogbmV3IEZsb2F0aW5nQWN0aW9uQnV0dG9uKHtcbiAgICAgICAgb25QcmVzc2VkOiAoKSA9PiB7XG4gICAgICAgICAgdGhpcy5pbmNyZW1lbnRDb3VudGVyKCk7XG4gICAgICAgIH0sXG4gICAgICAgIHRvb2x0aXA6ICdJbmNyZW1lbnQnLFxuICAgICAgICBjaGlsZDogbmV3IEljb24oSWNvbnMuYWRkKSxcbiAgICAgIH0pLFxuICAgIH0pO1xuICB9XG5cbiAgcHVibGljIGluY3JlbWVudENvdW50ZXIoKSB7XG4gICAgdGhpcy5zZXRTdGF0ZSgoKSA9PiB7XG4gICAgICB0aGlzLmNvdW50ZXIgKz0gMTtcbiAgICB9KTtcbiAgfVxufVxuXG5teGZsdXR0ZXIucmVnaXN0KHtcbiAgbmFtZTogJ2V4YW1wbGUxJyxcbiAgUm9vdFdpZGdldDogTXlBcHAsXG59KTtcbiIsIm1vZHVsZS5leHBvcnRzID0gZ2xvYmFsVGhpcy5NWEZsdXR0ZXJTREsuTVhGbHV0dGVyOyIsIm1vZHVsZS5leHBvcnRzID0gZ2xvYmFsVGhpcy5NWEZsdXR0ZXJTREsuTVhGbHV0dGVyV2lkZ2V0czsiLCIvLyBUaGUgbW9kdWxlIGNhY2hlXG52YXIgX193ZWJwYWNrX21vZHVsZV9jYWNoZV9fID0ge307XG5cbi8vIFRoZSByZXF1aXJlIGZ1bmN0aW9uXG5mdW5jdGlvbiBfX3dlYnBhY2tfcmVxdWlyZV9fKG1vZHVsZUlkKSB7XG5cdC8vIENoZWNrIGlmIG1vZHVsZSBpcyBpbiBjYWNoZVxuXHRpZihfX3dlYnBhY2tfbW9kdWxlX2NhY2hlX19bbW9kdWxlSWRdKSB7XG5cdFx0cmV0dXJuIF9fd2VicGFja19tb2R1bGVfY2FjaGVfX1ttb2R1bGVJZF0uZXhwb3J0cztcblx0fVxuXHQvLyBDcmVhdGUgYSBuZXcgbW9kdWxlIChhbmQgcHV0IGl0IGludG8gdGhlIGNhY2hlKVxuXHR2YXIgbW9kdWxlID0gX193ZWJwYWNrX21vZHVsZV9jYWNoZV9fW21vZHVsZUlkXSA9IHtcblx0XHQvLyBubyBtb2R1bGUuaWQgbmVlZGVkXG5cdFx0Ly8gbm8gbW9kdWxlLmxvYWRlZCBuZWVkZWRcblx0XHRleHBvcnRzOiB7fVxuXHR9O1xuXG5cdC8vIEV4ZWN1dGUgdGhlIG1vZHVsZSBmdW5jdGlvblxuXHRfX3dlYnBhY2tfbW9kdWxlc19fW21vZHVsZUlkXShtb2R1bGUsIG1vZHVsZS5leHBvcnRzLCBfX3dlYnBhY2tfcmVxdWlyZV9fKTtcblxuXHQvLyBSZXR1cm4gdGhlIGV4cG9ydHMgb2YgdGhlIG1vZHVsZVxuXHRyZXR1cm4gbW9kdWxlLmV4cG9ydHM7XG59XG5cbiIsIi8vIGdldERlZmF1bHRFeHBvcnQgZnVuY3Rpb24gZm9yIGNvbXBhdGliaWxpdHkgd2l0aCBub24taGFybW9ueSBtb2R1bGVzXG5fX3dlYnBhY2tfcmVxdWlyZV9fLm4gPSAobW9kdWxlKSA9PiB7XG5cdHZhciBnZXR0ZXIgPSBtb2R1bGUgJiYgbW9kdWxlLl9fZXNNb2R1bGUgP1xuXHRcdCgpID0+IG1vZHVsZVsnZGVmYXVsdCddIDpcblx0XHQoKSA9PiBtb2R1bGU7XG5cdF9fd2VicGFja19yZXF1aXJlX18uZChnZXR0ZXIsIHsgYTogZ2V0dGVyIH0pO1xuXHRyZXR1cm4gZ2V0dGVyO1xufTsiLCIvLyBkZWZpbmUgZ2V0dGVyIGZ1bmN0aW9ucyBmb3IgaGFybW9ueSBleHBvcnRzXG5fX3dlYnBhY2tfcmVxdWlyZV9fLmQgPSAoZXhwb3J0cywgZGVmaW5pdGlvbikgPT4ge1xuXHRmb3IodmFyIGtleSBpbiBkZWZpbml0aW9uKSB7XG5cdFx0aWYoX193ZWJwYWNrX3JlcXVpcmVfXy5vKGRlZmluaXRpb24sIGtleSkgJiYgIV9fd2VicGFja19yZXF1aXJlX18ubyhleHBvcnRzLCBrZXkpKSB7XG5cdFx0XHRPYmplY3QuZGVmaW5lUHJvcGVydHkoZXhwb3J0cywga2V5LCB7IGVudW1lcmFibGU6IHRydWUsIGdldDogZGVmaW5pdGlvbltrZXldIH0pO1xuXHRcdH1cblx0fVxufTsiLCJfX3dlYnBhY2tfcmVxdWlyZV9fLm8gPSAob2JqLCBwcm9wKSA9PiBPYmplY3QucHJvdG90eXBlLmhhc093blByb3BlcnR5LmNhbGwob2JqLCBwcm9wKSIsIi8vIGRlZmluZSBfX2VzTW9kdWxlIG9uIGV4cG9ydHNcbl9fd2VicGFja19yZXF1aXJlX18uciA9IChleHBvcnRzKSA9PiB7XG5cdGlmKHR5cGVvZiBTeW1ib2wgIT09ICd1bmRlZmluZWQnICYmIFN5bWJvbC50b1N0cmluZ1RhZykge1xuXHRcdE9iamVjdC5kZWZpbmVQcm9wZXJ0eShleHBvcnRzLCBTeW1ib2wudG9TdHJpbmdUYWcsIHsgdmFsdWU6ICdNb2R1bGUnIH0pO1xuXHR9XG5cdE9iamVjdC5kZWZpbmVQcm9wZXJ0eShleHBvcnRzLCAnX19lc01vZHVsZScsIHsgdmFsdWU6IHRydWUgfSk7XG59OyIsIi8vIHN0YXJ0dXBcbi8vIExvYWQgZW50cnkgbW9kdWxlXG5fX3dlYnBhY2tfcmVxdWlyZV9fKFwiLi9zcmMvaW5kZXgudHNcIik7XG4vLyBUaGlzIGVudHJ5IG1vZHVsZSB1c2VkICdleHBvcnRzJyBzbyBpdCBjYW4ndCBiZSBpbmxpbmVkXG4iXSwic291cmNlUm9vdCI6IiJ9