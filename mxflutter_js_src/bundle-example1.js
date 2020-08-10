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
/* harmony import */ var _tencent_mxflutter__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @tencent/mxflutter */ "./node_modules/@tencent/mxflutter/lib/index.js");
/* harmony import */ var _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @tencent/mxflutter-widgets */ "./node_modules/@tencent/mxflutter-widgets/index.js");
/* harmony import */ var _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__);
/* harmony import */ var _model__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./model */ "./src/model.ts");
/* eslint-disable */



class TodoListItem extends _tencent_mxflutter__WEBPACK_IMPORTED_MODULE_0__.MXJSStatelessWidget {
    constructor(props) {
        super();
        this.props = props;
    }
    handleToggle() {
        this.props.onChanged(!this.props.completed);
    }
    build(context) {
        return new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Row({
            mainAxisAlignment: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.MainAxisAlignment.spaceBetween,
            children: [
                new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Expanded({
                    flex: 1,
                    child: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Container({
                        child: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text(this.props.text, {
                            style: this.props.completed
                                ? new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.TextStyle({
                                    decoration: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.TextDecoration.lineThrough,
                                    decorationStyle: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.TextDecorationStyle.solid,
                                })
                                : null,
                        }),
                    }),
                }),
                new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.IconButton({
                    onPressed: this.props.onDelete,
                    icon: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Icon(_tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Icons.delete),
                }),
            ],
        });
    }
}
class TodoListState extends _tencent_mxflutter__WEBPACK_IMPORTED_MODULE_0__.MXJSWidgetState {
    constructor(ins) {
        super();
        this.inputText = '';
        this.list = [new _model__WEBPACK_IMPORTED_MODULE_2__.DataListItem('aaa', true)];
    }
    handleChangeItem(item, value) {
        this.setState(() => {
            item.completed = value;
        });
    }
    handleDeleteItem(item) {
        this.setState(() => {
            this.list = this.list.filter((e) => e.id !== item.id);
            // list.removeWhere((element) => element.id == item.id);
        });
    }
    handleInputText() {
        if (this.inputText.trim().length > 0) {
            this.setState(() => {
                this.list.push(new _model__WEBPACK_IMPORTED_MODULE_2__.DataListItem(this.inputText, false));
                this.inputText = '';
            });
        }
    }
    buildTodoList(context) {
        return this.list.map((e) => {
            return new TodoListItem({
                completed: e.completed,
                text: e.text,
                onChanged: (value) => {
                    this.handleChangeItem(e, value);
                },
                onDelete: () => {
                    this.handleDeleteItem(e);
                },
            });
        });
    }
    buildInputBox(context) {
        return new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Row({
            children: [
                new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Expanded({
                    flex: 1,
                    child: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.TextField({
                        controller: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.TextEditingController({ text: this.inputText }),
                        onSubmitted: (value) => {
                            console.log('onSubmitted', value);
                            this.inputText = value;
                            this.handleInputText();
                        },
                        onChanged: (value) => {
                            this.inputText = value;
                            console.log('change222', value);
                        },
                    }),
                }),
                new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Container({
                    decoration: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.BoxDecoration({
                        borderRadius: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.BorderRadius.circular(42.0),
                        color: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Color(0xff9e9e9e),
                    }),
                    child: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.IconButton({
                        onPressed: () => {
                            this.handleInputText();
                        },
                        icon: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Icon(_tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Icons.add),
                        alignment: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Alignment.center,
                    }),
                }),
            ],
        });
    }
    build(context) {
        return new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Scaffold({
            appBar: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.AppBar({
                title: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text('TodoList'),
            }),
            body: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Column({
                children: [
                    new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Expanded({
                        flex: 1,
                        child: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.ListView({
                            scrollDirection: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Axis.vertical,
                            shrinkWrap: true,
                            padding: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.EdgeInsets.all(10),
                            children: this.buildTodoList(context),
                        }),
                    }),
                    new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Container({
                        padding: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.EdgeInsets.fromLTRB(20, 0, 20, 20),
                        height: 80,
                        child: this.buildInputBox(context),
                    }),
                ],
            }),
        });
    }
}
class HomePage extends _tencent_mxflutter__WEBPACK_IMPORTED_MODULE_0__.MXJSStatefulWidget {
    constructor() {
        super();
    }
    createState() {
        return new TodoListState(this);
    }
}
const MXFlutter = globalThis.MXFlutter;
MXFlutter.regist({
    name: 'example1',
    RootWidget: HomePage,
});


/***/ }),

/***/ "./src/model.ts":
/*!**********************!*\
  !*** ./src/model.ts ***!
  \**********************/
/*! namespace exports */
/*! export DataListItem [provided] [no usage info] [missing usage info prevents renaming] */
/*! other exports [not provided] [no usage info] */
/*! runtime requirements: __webpack_require__.r, __webpack_exports__, __webpack_require__.d, __webpack_require__.* */
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "DataListItem": () => /* binding */ DataListItem
/* harmony export */ });
/* eslint-disable */
let _seed = 0;
class DataListItem {
    constructor(text, completed) {
        this.id = _seed++;
        this.completed = completed;
        this.text = text;
    }
}


/***/ }),

/***/ "console":
/*!**************************!*\
  !*** external "console" ***!
  \**************************/
/*! unknown exports (runtime-defined) */
/*! runtime requirements: module */
/***/ ((module) => {

module.exports = require("console");

/***/ }),

/***/ "dart_sdk":
/*!***************************************************!*\
  !*** external "globalThis.require(\"dart_sdk\")" ***!
  \***************************************************/
/*! unknown exports (runtime-defined) */
/*! runtime requirements: module */
/***/ ((module) => {

module.exports = globalThis.require("dart_sdk");

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
/******/ 			__webpack_require__.e("common");
/******/ 			return next();
/******/ 		};
/******/ 	})();
/******/ 	
/******/ 	/* webpack/runtime/require chunk loading */
/******/ 	(() => {
/******/ 		// object to store loaded chunks
/******/ 		// "1" means "loaded", otherwise not loaded yet
/******/ 		var installedChunks = {
/******/ 			"bundle-example1": 1
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
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMS8uL3NyYy9pbmRleC50cyIsIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMS8uL3NyYy9tb2RlbC50cyIsIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMS9leHRlcm5hbCBcImNvbnNvbGVcIiIsIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMS9leHRlcm5hbCBcImdsb2JhbFRoaXMucmVxdWlyZShcXFwiZGFydF9zZGtcXFwiKVwiIiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUxL3dlYnBhY2svYm9vdHN0cmFwIiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUxL3dlYnBhY2svcnVudGltZS9jb21wYXQgZ2V0IGRlZmF1bHQgZXhwb3J0Iiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUxL3dlYnBhY2svcnVudGltZS9kZWZpbmUgcHJvcGVydHkgZ2V0dGVycyIsIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMS93ZWJwYWNrL3J1bnRpbWUvZW5zdXJlIGNodW5rIiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUxL3dlYnBhY2svcnVudGltZS9nZXQgamF2YXNjcmlwdCBjaHVuayBmaWxlbmFtZSIsIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMS93ZWJwYWNrL3J1bnRpbWUvaGFzT3duUHJvcGVydHkgc2hvcnRoYW5kIiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUxL3dlYnBhY2svcnVudGltZS9tYWtlIG5hbWVzcGFjZSBvYmplY3QiLCJ3ZWJwYWNrOi8vQHRlc3QvZXhhbXBsZTEvd2VicGFjay9ydW50aW1lL3N0YXJ0dXAgY2h1bmsgZGVwZW5kZW5jaWVzIiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUxL3dlYnBhY2svcnVudGltZS9yZXF1aXJlIGNodW5rIGxvYWRpbmciLCJ3ZWJwYWNrOi8vQHRlc3QvZXhhbXBsZTEvd2VicGFjay9zdGFydHVwIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7OztBQUFB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Y0FBYztXQUM3RCxFOzs7OztXQ05BO1dBQ0E7V0FDQTtXQUNBO1dBQ0EsRTs7Ozs7V0NKQTtXQUNBO1dBQ0E7V0FDQTtXQUNBOztXQUVBO1dBQ0E7V0FDQTtXQUNBO1dBQ0E7V0FDQTtXQUNBO1dBQ0E7V0FDQSxlQUFlLHFCQUFxQjtXQUNwQztXQUNBOztXQUVBO1dBQ0E7O1dBRUE7V0FDQTtXQUNBLFlBQVk7V0FDWjtXQUNBLEdBQUc7V0FDSDtXQUNBOztXQUVBOztXQUVBOztXQUVBLGtCOzs7O1VDakNBO1VBQ0EiLCJmaWxlIjoiYnVuZGxlLWV4YW1wbGUxLmpzIiwic291cmNlc0NvbnRlbnQiOlsiLyogZXNsaW50LWRpc2FibGUgKi9cbmltcG9ydCB7IE1YSlNTdGF0ZWxlc3NXaWRnZXQsIE1YSlNTdGF0ZWZ1bFdpZGdldCwgTVhKU1dpZGdldFN0YXRlIH0gZnJvbSAnQHRlbmNlbnQvbXhmbHV0dGVyJztcbmltcG9ydCB7XG4gIENvbnRhaW5lcixcbiAgRXhwYW5kZWQsXG4gIENvbG9yLFxuICBUZXh0LFxuICBBeGlzLFxuICBMaXN0VmlldyxcbiAgSWNvbnMsXG4gIEljb24sXG4gIEljb25CdXR0b24sXG4gIEVkZ2VJbnNldHMsXG4gIFRleHRTdHlsZSxcbiAgVGV4dEZpZWxkLFxuICBUZXh0RWRpdGluZ0NvbnRyb2xsZXIsXG4gIFJvdyxcbiAgQ29sdW1uLFxuICBNYWluQXhpc0FsaWdubWVudCxcbiAgVGV4dERlY29yYXRpb24sXG4gIFRleHREZWNvcmF0aW9uU3R5bGUsXG4gIEJvcmRlclJhZGl1cyxcbiAgQWxpZ25tZW50LFxuICBCb3hEZWNvcmF0aW9uLFxuICBTY2FmZm9sZCxcbiAgQXBwQmFyLFxufSBmcm9tICdAdGVuY2VudC9teGZsdXR0ZXItd2lkZ2V0cyc7XG5cbmltcG9ydCB7IERhdGFMaXN0SXRlbSB9IGZyb20gJy4vbW9kZWwnO1xuXG5pbnRlcmZhY2UgVG9kb0xpc3RJdGVtUHJvcHMge1xuICBvbkNoYW5nZWQ6ICh2YWx1ZTogYm9vbGVhbikgPT4gdm9pZDtcbiAgb25EZWxldGU6ICgpID0+IHZvaWQ7XG4gIGNvbXBsZXRlZDogYm9vbGVhbjtcbiAgdGV4dDogc3RyaW5nO1xufVxuXG5jbGFzcyBUb2RvTGlzdEl0ZW0gZXh0ZW5kcyBNWEpTU3RhdGVsZXNzV2lkZ2V0IHtcbiAgcHJpdmF0ZSBwcm9wczogVG9kb0xpc3RJdGVtUHJvcHM7XG4gIGNvbnN0cnVjdG9yKHByb3BzOiBUb2RvTGlzdEl0ZW1Qcm9wcykge1xuICAgIHN1cGVyKCk7XG4gICAgdGhpcy5wcm9wcyA9IHByb3BzO1xuICB9XG5cbiAgaGFuZGxlVG9nZ2xlKCkge1xuICAgIHRoaXMucHJvcHMub25DaGFuZ2VkKCF0aGlzLnByb3BzLmNvbXBsZXRlZCk7XG4gIH1cblxuICBidWlsZChjb250ZXh0OiBhbnkpIHtcbiAgICByZXR1cm4gbmV3IFJvdyh7XG4gICAgICBtYWluQXhpc0FsaWdubWVudDogTWFpbkF4aXNBbGlnbm1lbnQuc3BhY2VCZXR3ZWVuLFxuICAgICAgY2hpbGRyZW46IFtcbiAgICAgICAgbmV3IEV4cGFuZGVkKHtcbiAgICAgICAgICBmbGV4OiAxLFxuICAgICAgICAgIGNoaWxkOiBuZXcgQ29udGFpbmVyKHtcbiAgICAgICAgICAgIGNoaWxkOiBuZXcgVGV4dCh0aGlzLnByb3BzLnRleHQsIHtcbiAgICAgICAgICAgICAgc3R5bGU6IHRoaXMucHJvcHMuY29tcGxldGVkXG4gICAgICAgICAgICAgICAgPyBuZXcgVGV4dFN0eWxlKHtcbiAgICAgICAgICAgICAgICAgICAgZGVjb3JhdGlvbjogVGV4dERlY29yYXRpb24ubGluZVRocm91Z2gsXG4gICAgICAgICAgICAgICAgICAgIGRlY29yYXRpb25TdHlsZTogVGV4dERlY29yYXRpb25TdHlsZS5zb2xpZCxcbiAgICAgICAgICAgICAgICAgIH0pXG4gICAgICAgICAgICAgICAgOiBudWxsLFxuICAgICAgICAgICAgfSksXG4gICAgICAgICAgfSksXG4gICAgICAgIH0pLFxuICAgICAgICBuZXcgSWNvbkJ1dHRvbih7XG4gICAgICAgICAgb25QcmVzc2VkOiB0aGlzLnByb3BzLm9uRGVsZXRlLFxuICAgICAgICAgIGljb246IG5ldyBJY29uKEljb25zLmRlbGV0ZSksXG4gICAgICAgIH0pLFxuICAgICAgXSxcbiAgICB9KTtcbiAgfVxufVxuXG5jbGFzcyBUb2RvTGlzdFN0YXRlIGV4dGVuZHMgTVhKU1dpZGdldFN0YXRlIHtcbiAgcHJpdmF0ZSBpbnB1dFRleHQ6IHN0cmluZztcbiAgcHJpdmF0ZSBsaXN0OiBEYXRhTGlzdEl0ZW1bXTtcblxuICBjb25zdHJ1Y3RvcihpbnM6IGFueSkge1xuICAgIHN1cGVyKCk7XG4gICAgdGhpcy5pbnB1dFRleHQgPSAnJztcbiAgICB0aGlzLmxpc3QgPSBbbmV3IERhdGFMaXN0SXRlbSgnYWFhJywgdHJ1ZSldO1xuICB9XG5cbiAgaGFuZGxlQ2hhbmdlSXRlbShpdGVtLCB2YWx1ZSkge1xuICAgIHRoaXMuc2V0U3RhdGUoKCkgPT4ge1xuICAgICAgaXRlbS5jb21wbGV0ZWQgPSB2YWx1ZTtcbiAgICB9KTtcbiAgfVxuXG4gIGhhbmRsZURlbGV0ZUl0ZW0oaXRlbSkge1xuICAgIHRoaXMuc2V0U3RhdGUoKCkgPT4ge1xuICAgICAgdGhpcy5saXN0ID0gdGhpcy5saXN0LmZpbHRlcigoZSkgPT4gZS5pZCAhPT0gaXRlbS5pZCk7XG5cbiAgICAgIC8vIGxpc3QucmVtb3ZlV2hlcmUoKGVsZW1lbnQpID0+IGVsZW1lbnQuaWQgPT0gaXRlbS5pZCk7XG4gICAgfSk7XG4gIH1cblxuICBoYW5kbGVJbnB1dFRleHQoKSB7XG4gICAgaWYgKHRoaXMuaW5wdXRUZXh0LnRyaW0oKS5sZW5ndGggPiAwKSB7XG4gICAgICB0aGlzLnNldFN0YXRlKCgpID0+IHtcbiAgICAgICAgdGhpcy5saXN0LnB1c2gobmV3IERhdGFMaXN0SXRlbSh0aGlzLmlucHV0VGV4dCwgZmFsc2UpKTtcbiAgICAgICAgdGhpcy5pbnB1dFRleHQgPSAnJztcbiAgICAgIH0pO1xuICAgIH1cbiAgfVxuXG4gIGJ1aWxkVG9kb0xpc3QoY29udGV4dDogYW55KSB7XG4gICAgcmV0dXJuIHRoaXMubGlzdC5tYXAoKGUpID0+IHtcbiAgICAgIHJldHVybiBuZXcgVG9kb0xpc3RJdGVtKHtcbiAgICAgICAgY29tcGxldGVkOiBlLmNvbXBsZXRlZCxcbiAgICAgICAgdGV4dDogZS50ZXh0LFxuICAgICAgICBvbkNoYW5nZWQ6ICh2YWx1ZSkgPT4ge1xuICAgICAgICAgIHRoaXMuaGFuZGxlQ2hhbmdlSXRlbShlLCB2YWx1ZSk7XG4gICAgICAgIH0sXG4gICAgICAgIG9uRGVsZXRlOiAoKSA9PiB7XG4gICAgICAgICAgdGhpcy5oYW5kbGVEZWxldGVJdGVtKGUpO1xuICAgICAgICB9LFxuICAgICAgfSk7XG4gICAgfSk7XG4gIH1cblxuICBidWlsZElucHV0Qm94KGNvbnRleHQ6IGFueSkge1xuICAgIHJldHVybiBuZXcgUm93KHtcbiAgICAgIGNoaWxkcmVuOiBbXG4gICAgICAgIG5ldyBFeHBhbmRlZCh7XG4gICAgICAgICAgZmxleDogMSxcbiAgICAgICAgICBjaGlsZDogbmV3IFRleHRGaWVsZCh7XG4gICAgICAgICAgICBjb250cm9sbGVyOiBuZXcgVGV4dEVkaXRpbmdDb250cm9sbGVyKHsgdGV4dDogdGhpcy5pbnB1dFRleHQgfSksXG4gICAgICAgICAgICBvblN1Ym1pdHRlZDogKHZhbHVlKSA9PiB7XG4gICAgICAgICAgICAgIGNvbnNvbGUubG9nKCdvblN1Ym1pdHRlZCcsIHZhbHVlKTtcbiAgICAgICAgICAgICAgdGhpcy5pbnB1dFRleHQgPSB2YWx1ZTtcbiAgICAgICAgICAgICAgdGhpcy5oYW5kbGVJbnB1dFRleHQoKTtcbiAgICAgICAgICAgIH0sXG4gICAgICAgICAgICBvbkNoYW5nZWQ6ICh2YWx1ZSkgPT4ge1xuICAgICAgICAgICAgICB0aGlzLmlucHV0VGV4dCA9IHZhbHVlO1xuICAgICAgICAgICAgICBjb25zb2xlLmxvZygnY2hhbmdlMjIyJywgdmFsdWUpO1xuICAgICAgICAgICAgfSxcbiAgICAgICAgICB9KSxcbiAgICAgICAgfSksXG5cbiAgICAgICAgbmV3IENvbnRhaW5lcih7XG4gICAgICAgICAgZGVjb3JhdGlvbjogbmV3IEJveERlY29yYXRpb24oe1xuICAgICAgICAgICAgYm9yZGVyUmFkaXVzOiBCb3JkZXJSYWRpdXMuY2lyY3VsYXIoNDIuMCksXG4gICAgICAgICAgICBjb2xvcjogbmV3IENvbG9yKDB4ZmY5ZTllOWUpLFxuICAgICAgICAgIH0pLFxuICAgICAgICAgIGNoaWxkOiBuZXcgSWNvbkJ1dHRvbih7XG4gICAgICAgICAgICBvblByZXNzZWQ6ICgpID0+IHtcbiAgICAgICAgICAgICAgdGhpcy5oYW5kbGVJbnB1dFRleHQoKTtcbiAgICAgICAgICAgIH0sXG4gICAgICAgICAgICBpY29uOiBuZXcgSWNvbihJY29ucy5hZGQpLFxuICAgICAgICAgICAgYWxpZ25tZW50OiBBbGlnbm1lbnQuY2VudGVyLFxuICAgICAgICAgIH0pLFxuICAgICAgICB9KSxcbiAgICAgIF0sXG4gICAgfSk7XG4gIH1cblxuICBidWlsZChjb250ZXh0OiBhbnkpIHtcbiAgICByZXR1cm4gbmV3IFNjYWZmb2xkKHtcbiAgICAgIGFwcEJhcjogbmV3IEFwcEJhcih7XG4gICAgICAgIHRpdGxlOiBuZXcgVGV4dCgnVG9kb0xpc3QnKSxcbiAgICAgIH0pLFxuICAgICAgYm9keTogbmV3IENvbHVtbih7XG4gICAgICAgIGNoaWxkcmVuOiBbXG4gICAgICAgICAgbmV3IEV4cGFuZGVkKHtcbiAgICAgICAgICAgIGZsZXg6IDEsXG4gICAgICAgICAgICBjaGlsZDogbmV3IExpc3RWaWV3KHtcbiAgICAgICAgICAgICAgc2Nyb2xsRGlyZWN0aW9uOiBBeGlzLnZlcnRpY2FsLFxuICAgICAgICAgICAgICBzaHJpbmtXcmFwOiB0cnVlLFxuICAgICAgICAgICAgICBwYWRkaW5nOiBFZGdlSW5zZXRzLmFsbCgxMCksXG4gICAgICAgICAgICAgIGNoaWxkcmVuOiB0aGlzLmJ1aWxkVG9kb0xpc3QoY29udGV4dCksXG4gICAgICAgICAgICB9KSxcbiAgICAgICAgICB9KSxcbiAgICAgICAgICBuZXcgQ29udGFpbmVyKHtcbiAgICAgICAgICAgIHBhZGRpbmc6IEVkZ2VJbnNldHMuZnJvbUxUUkIoMjAsIDAsIDIwLCAyMCksXG4gICAgICAgICAgICBoZWlnaHQ6IDgwLFxuICAgICAgICAgICAgY2hpbGQ6IHRoaXMuYnVpbGRJbnB1dEJveChjb250ZXh0KSxcbiAgICAgICAgICB9KSxcbiAgICAgICAgXSxcbiAgICAgIH0pLFxuICAgIH0pO1xuICB9XG59XG5cbmNsYXNzIEhvbWVQYWdlIGV4dGVuZHMgTVhKU1N0YXRlZnVsV2lkZ2V0IHtcbiAgY29uc3RydWN0b3IoKSB7XG4gICAgc3VwZXIoKTtcbiAgfVxuXG4gIGNyZWF0ZVN0YXRlKCkge1xuICAgIHJldHVybiBuZXcgVG9kb0xpc3RTdGF0ZSh0aGlzKTtcbiAgfVxufVxuXG5jb25zdCBNWEZsdXR0ZXIgPSBnbG9iYWxUaGlzLk1YRmx1dHRlcjtcblxuTVhGbHV0dGVyLnJlZ2lzdCh7XG4gIG5hbWU6ICdleGFtcGxlMScsXG4gIFJvb3RXaWRnZXQ6IEhvbWVQYWdlLFxufSk7XG4iLCIvKiBlc2xpbnQtZGlzYWJsZSAqL1xubGV0IF9zZWVkOiBudW1iZXIgPSAwXG5cblxuZXhwb3J0IGNsYXNzIERhdGFMaXN0SXRlbSB7XG4gIGlkOiBudW1iZXJcbiAgY29tcGxldGVkOiBib29sZWFuXG4gIHRleHQ6IHN0cmluZ1xuXG4gIGNvbnN0cnVjdG9yKHRleHQ6IHN0cmluZywgY29tcGxldGVkOiBib29sZWFuKSB7XG4gICAgdGhpcy5pZCA9IF9zZWVkKys7XG4gICAgdGhpcy5jb21wbGV0ZWQgPSBjb21wbGV0ZWQ7XG4gICAgdGhpcy50ZXh0ID0gdGV4dDtcbiAgfVxufVxuIiwibW9kdWxlLmV4cG9ydHMgPSByZXF1aXJlKFwiY29uc29sZVwiKTsiLCJtb2R1bGUuZXhwb3J0cyA9IGdsb2JhbFRoaXMucmVxdWlyZShcImRhcnRfc2RrXCIpOyIsIi8vIFRoZSBtb2R1bGUgY2FjaGVcbnZhciBfX3dlYnBhY2tfbW9kdWxlX2NhY2hlX18gPSB7fTtcblxuLy8gVGhlIHJlcXVpcmUgZnVuY3Rpb25cbmZ1bmN0aW9uIF9fd2VicGFja19yZXF1aXJlX18obW9kdWxlSWQpIHtcblx0Ly8gQ2hlY2sgaWYgbW9kdWxlIGlzIGluIGNhY2hlXG5cdGlmKF9fd2VicGFja19tb2R1bGVfY2FjaGVfX1ttb2R1bGVJZF0pIHtcblx0XHRyZXR1cm4gX193ZWJwYWNrX21vZHVsZV9jYWNoZV9fW21vZHVsZUlkXS5leHBvcnRzO1xuXHR9XG5cdC8vIENyZWF0ZSBhIG5ldyBtb2R1bGUgKGFuZCBwdXQgaXQgaW50byB0aGUgY2FjaGUpXG5cdHZhciBtb2R1bGUgPSBfX3dlYnBhY2tfbW9kdWxlX2NhY2hlX19bbW9kdWxlSWRdID0ge1xuXHRcdC8vIG5vIG1vZHVsZS5pZCBuZWVkZWRcblx0XHQvLyBubyBtb2R1bGUubG9hZGVkIG5lZWRlZFxuXHRcdGV4cG9ydHM6IHt9XG5cdH07XG5cblx0Ly8gRXhlY3V0ZSB0aGUgbW9kdWxlIGZ1bmN0aW9uXG5cdF9fd2VicGFja19tb2R1bGVzX19bbW9kdWxlSWRdLmNhbGwobW9kdWxlLmV4cG9ydHMsIG1vZHVsZSwgbW9kdWxlLmV4cG9ydHMsIF9fd2VicGFja19yZXF1aXJlX18pO1xuXG5cdC8vIFJldHVybiB0aGUgZXhwb3J0cyBvZiB0aGUgbW9kdWxlXG5cdHJldHVybiBtb2R1bGUuZXhwb3J0cztcbn1cblxuLy8gZXhwb3NlIHRoZSBtb2R1bGVzIG9iamVjdCAoX193ZWJwYWNrX21vZHVsZXNfXylcbl9fd2VicGFja19yZXF1aXJlX18ubSA9IF9fd2VicGFja19tb2R1bGVzX187XG5cbi8vIHRoZSBzdGFydHVwIGZ1bmN0aW9uXG5fX3dlYnBhY2tfcmVxdWlyZV9fLnggPSAoKSA9PiB7XG5cdC8vIExvYWQgZW50cnkgbW9kdWxlXG5cdF9fd2VicGFja19yZXF1aXJlX18oXCIuL3NyYy9pbmRleC50c1wiKTtcblx0Ly8gVGhpcyBlbnRyeSBtb2R1bGUgdXNlZCAnZXhwb3J0cycgc28gaXQgY2FuJ3QgYmUgaW5saW5lZFxufTtcblxuIiwiLy8gZ2V0RGVmYXVsdEV4cG9ydCBmdW5jdGlvbiBmb3IgY29tcGF0aWJpbGl0eSB3aXRoIG5vbi1oYXJtb255IG1vZHVsZXNcbl9fd2VicGFja19yZXF1aXJlX18ubiA9IChtb2R1bGUpID0+IHtcblx0dmFyIGdldHRlciA9IG1vZHVsZSAmJiBtb2R1bGUuX19lc01vZHVsZSA/XG5cdFx0KCkgPT4gbW9kdWxlWydkZWZhdWx0J10gOlxuXHRcdCgpID0+IG1vZHVsZTtcblx0X193ZWJwYWNrX3JlcXVpcmVfXy5kKGdldHRlciwgeyBhOiBnZXR0ZXIgfSk7XG5cdHJldHVybiBnZXR0ZXI7XG59OyIsIi8vIGRlZmluZSBnZXR0ZXIgZnVuY3Rpb25zIGZvciBoYXJtb255IGV4cG9ydHNcbl9fd2VicGFja19yZXF1aXJlX18uZCA9IChleHBvcnRzLCBkZWZpbml0aW9uKSA9PiB7XG5cdGZvcih2YXIga2V5IGluIGRlZmluaXRpb24pIHtcblx0XHRpZihfX3dlYnBhY2tfcmVxdWlyZV9fLm8oZGVmaW5pdGlvbiwga2V5KSAmJiAhX193ZWJwYWNrX3JlcXVpcmVfXy5vKGV4cG9ydHMsIGtleSkpIHtcblx0XHRcdE9iamVjdC5kZWZpbmVQcm9wZXJ0eShleHBvcnRzLCBrZXksIHsgZW51bWVyYWJsZTogdHJ1ZSwgZ2V0OiBkZWZpbml0aW9uW2tleV0gfSk7XG5cdFx0fVxuXHR9XG59OyIsIl9fd2VicGFja19yZXF1aXJlX18uZiA9IHt9O1xuLy8gVGhpcyBmaWxlIGNvbnRhaW5zIG9ubHkgdGhlIGVudHJ5IGNodW5rLlxuLy8gVGhlIGNodW5rIGxvYWRpbmcgZnVuY3Rpb24gZm9yIGFkZGl0aW9uYWwgY2h1bmtzXG5fX3dlYnBhY2tfcmVxdWlyZV9fLmUgPSAoY2h1bmtJZCkgPT4ge1xuXHRyZXR1cm4gUHJvbWlzZS5hbGwoT2JqZWN0LmtleXMoX193ZWJwYWNrX3JlcXVpcmVfXy5mKS5yZWR1Y2UoKHByb21pc2VzLCBrZXkpID0+IHtcblx0XHRfX3dlYnBhY2tfcmVxdWlyZV9fLmZba2V5XShjaHVua0lkLCBwcm9taXNlcyk7XG5cdFx0cmV0dXJuIHByb21pc2VzO1xuXHR9LCBbXSkpO1xufTsiLCIvLyBUaGlzIGZ1bmN0aW9uIGFsbG93IHRvIHJlZmVyZW5jZSBhc3luYyBjaHVua3MgYW5kIHNpYmxpbmcgY2h1bmtzIGZvciB0aGUgZW50cnlwb2ludFxuX193ZWJwYWNrX3JlcXVpcmVfXy51ID0gKGNodW5rSWQpID0+IHtcblx0Ly8gcmV0dXJuIHVybCBmb3IgZmlsZW5hbWVzIGJhc2VkIG9uIHRlbXBsYXRlXG5cdHJldHVybiBcIlwiICsgY2h1bmtJZCArIFwiLmpzXCI7XG59OyIsIl9fd2VicGFja19yZXF1aXJlX18ubyA9IChvYmosIHByb3ApID0+IE9iamVjdC5wcm90b3R5cGUuaGFzT3duUHJvcGVydHkuY2FsbChvYmosIHByb3ApIiwiLy8gZGVmaW5lIF9fZXNNb2R1bGUgb24gZXhwb3J0c1xuX193ZWJwYWNrX3JlcXVpcmVfXy5yID0gKGV4cG9ydHMpID0+IHtcblx0aWYodHlwZW9mIFN5bWJvbCAhPT0gJ3VuZGVmaW5lZCcgJiYgU3ltYm9sLnRvU3RyaW5nVGFnKSB7XG5cdFx0T2JqZWN0LmRlZmluZVByb3BlcnR5KGV4cG9ydHMsIFN5bWJvbC50b1N0cmluZ1RhZywgeyB2YWx1ZTogJ01vZHVsZScgfSk7XG5cdH1cblx0T2JqZWN0LmRlZmluZVByb3BlcnR5KGV4cG9ydHMsICdfX2VzTW9kdWxlJywgeyB2YWx1ZTogdHJ1ZSB9KTtcbn07IiwidmFyIG5leHQgPSBfX3dlYnBhY2tfcmVxdWlyZV9fLng7XG5fX3dlYnBhY2tfcmVxdWlyZV9fLnggPSAoKSA9PiB7XG5cdF9fd2VicGFja19yZXF1aXJlX18uZShcImNvbW1vblwiKTtcblx0cmV0dXJuIG5leHQoKTtcbn07IiwiLy8gb2JqZWN0IHRvIHN0b3JlIGxvYWRlZCBjaHVua3Ncbi8vIFwiMVwiIG1lYW5zIFwibG9hZGVkXCIsIG90aGVyd2lzZSBub3QgbG9hZGVkIHlldFxudmFyIGluc3RhbGxlZENodW5rcyA9IHtcblx0XCJidW5kbGUtZXhhbXBsZTFcIjogMVxufTtcblxudmFyIGluc3RhbGxDaHVuayA9IChjaHVuaykgPT4ge1xuXHR2YXIgbW9yZU1vZHVsZXMgPSBjaHVuay5tb2R1bGVzLCBjaHVua0lkcyA9IGNodW5rLmlkcywgcnVudGltZSA9IGNodW5rLnJ1bnRpbWU7XG5cdGZvcih2YXIgbW9kdWxlSWQgaW4gbW9yZU1vZHVsZXMpIHtcblx0XHRpZihfX3dlYnBhY2tfcmVxdWlyZV9fLm8obW9yZU1vZHVsZXMsIG1vZHVsZUlkKSkge1xuXHRcdFx0X193ZWJwYWNrX3JlcXVpcmVfXy5tW21vZHVsZUlkXSA9IG1vcmVNb2R1bGVzW21vZHVsZUlkXTtcblx0XHR9XG5cdH1cblx0aWYocnVudGltZSkgcnVudGltZShfX3dlYnBhY2tfcmVxdWlyZV9fKTtcblx0Zm9yKHZhciBpID0gMDsgaSA8IGNodW5rSWRzLmxlbmd0aDsgaSsrKVxuXHRcdGluc3RhbGxlZENodW5rc1tjaHVua0lkc1tpXV0gPSAxO1xufTtcblxuLy8gcmVxdWlyZSgpIGNodW5rIGxvYWRpbmcgZm9yIGphdmFzY3JpcHRcbl9fd2VicGFja19yZXF1aXJlX18uZi5yZXF1aXJlID0gZnVuY3Rpb24oY2h1bmtJZCwgcHJvbWlzZXMpIHtcblxuXHQvLyBcIjFcIiBpcyB0aGUgc2lnbmFsIGZvciBcImFscmVhZHkgbG9hZGVkXCJcblx0aWYoIWluc3RhbGxlZENodW5rc1tjaHVua0lkXSkge1xuXHRcdGlmKHRydWUpIHsgLy8gYWxsIGNodW5rcyBoYXZlIEpTXG5cdFx0XHRpbnN0YWxsQ2h1bmsocmVxdWlyZShcIi4vXCIgKyBfX3dlYnBhY2tfcmVxdWlyZV9fLnUoY2h1bmtJZCkpKTtcblx0XHR9IGVsc2UgaW5zdGFsbGVkQ2h1bmtzW2NodW5rSWRdID0gMTtcblx0fVxufTtcblxuLy8gbm8gZXh0ZXJuYWwgaW5zdGFsbCBjaHVua1xuXG4vLyBubyBITVJcblxuLy8gbm8gSE1SIG1hbmlmZXN0IiwiLy8gcnVuIHN0YXJ0dXBcbnJldHVybiBfX3dlYnBhY2tfcmVxdWlyZV9fLngoKTtcbiJdLCJzb3VyY2VSb290IjoiIn0=