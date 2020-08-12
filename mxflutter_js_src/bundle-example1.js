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
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMS8uL3NyYy9pbmRleC50cyIsIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMS8uL3NyYy9tb2RlbC50cyIsIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMS9leHRlcm5hbCBcImNvbnNvbGVcIiIsIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMS93ZWJwYWNrL2Jvb3RzdHJhcCIsIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMS93ZWJwYWNrL3J1bnRpbWUvY29tcGF0IGdldCBkZWZhdWx0IGV4cG9ydCIsIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMS93ZWJwYWNrL3J1bnRpbWUvZGVmaW5lIHByb3BlcnR5IGdldHRlcnMiLCJ3ZWJwYWNrOi8vQHRlc3QvZXhhbXBsZTEvd2VicGFjay9ydW50aW1lL2Vuc3VyZSBjaHVuayIsIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMS93ZWJwYWNrL3J1bnRpbWUvZ2V0IGphdmFzY3JpcHQgY2h1bmsgZmlsZW5hbWUiLCJ3ZWJwYWNrOi8vQHRlc3QvZXhhbXBsZTEvd2VicGFjay9ydW50aW1lL2hhc093blByb3BlcnR5IHNob3J0aGFuZCIsIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMS93ZWJwYWNrL3J1bnRpbWUvbWFrZSBuYW1lc3BhY2Ugb2JqZWN0Iiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUxL3dlYnBhY2svcnVudGltZS9zdGFydHVwIGNodW5rIGRlcGVuZGVuY2llcyIsIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMS93ZWJwYWNrL3J1bnRpbWUvcmVxdWlyZSBjaHVuayBsb2FkaW5nIiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUxL3dlYnBhY2svc3RhcnR1cCJdLCJuYW1lcyI6W10sIm1hcHBpbmdzIjoiOzs7Ozs7Ozs7Ozs7Ozs7Ozs7QUFBQSxvQkFBb0I7QUFDMEU7QUF5QjFEO0FBRUc7QUFTdkMsTUFBTSxZQUFhLFNBQVEsbUVBQW1CO0lBRTVDLFlBQVksS0FBd0I7UUFDbEMs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Q0E7V0FDQTtXQUNBO1dBQ0E7V0FDQSxlQUFlLHFCQUFxQjtXQUNwQztXQUNBOztXQUVBO1dBQ0E7O1dBRUE7V0FDQTtXQUNBLFlBQVk7V0FDWjtXQUNBLEdBQUc7V0FDSDtXQUNBOztXQUVBOztXQUVBOztXQUVBLGtCOzs7O1VDakNBO1VBQ0EiLCJmaWxlIjoiYnVuZGxlLWV4YW1wbGUxLmpzIiwic291cmNlc0NvbnRlbnQiOlsiLyogZXNsaW50LWRpc2FibGUgKi9cbmltcG9ydCB7IE1YSlNTdGF0ZWxlc3NXaWRnZXQsIE1YSlNTdGF0ZWZ1bFdpZGdldCwgTVhKU1dpZGdldFN0YXRlIH0gZnJvbSAnQHRlbmNlbnQvbXhmbHV0dGVyJztcbmltcG9ydCB7XG4gIENvbnRhaW5lcixcbiAgRXhwYW5kZWQsXG4gIENvbG9yLFxuICBUZXh0LFxuICBBeGlzLFxuICBMaXN0VmlldyxcbiAgSWNvbnMsXG4gIEljb24sXG4gIEljb25CdXR0b24sXG4gIEVkZ2VJbnNldHMsXG4gIFRleHRTdHlsZSxcbiAgVGV4dEZpZWxkLFxuICBUZXh0RWRpdGluZ0NvbnRyb2xsZXIsXG4gIFJvdyxcbiAgQ29sdW1uLFxuICBNYWluQXhpc0FsaWdubWVudCxcbiAgVGV4dERlY29yYXRpb24sXG4gIFRleHREZWNvcmF0aW9uU3R5bGUsXG4gIEJvcmRlclJhZGl1cyxcbiAgQWxpZ25tZW50LFxuICBCb3hEZWNvcmF0aW9uLFxuICBTY2FmZm9sZCxcbiAgQXBwQmFyLFxufSBmcm9tICdAdGVuY2VudC9teGZsdXR0ZXItd2lkZ2V0cyc7XG5cbmltcG9ydCB7IERhdGFMaXN0SXRlbSB9IGZyb20gJy4vbW9kZWwnO1xuXG5pbnRlcmZhY2UgVG9kb0xpc3RJdGVtUHJvcHMge1xuICBvbkNoYW5nZWQ6ICh2YWx1ZTogYm9vbGVhbikgPT4gdm9pZDtcbiAgb25EZWxldGU6ICgpID0+IHZvaWQ7XG4gIGNvbXBsZXRlZDogYm9vbGVhbjtcbiAgdGV4dDogc3RyaW5nO1xufVxuXG5jbGFzcyBUb2RvTGlzdEl0ZW0gZXh0ZW5kcyBNWEpTU3RhdGVsZXNzV2lkZ2V0IHtcbiAgcHJpdmF0ZSBwcm9wczogVG9kb0xpc3RJdGVtUHJvcHM7XG4gIGNvbnN0cnVjdG9yKHByb3BzOiBUb2RvTGlzdEl0ZW1Qcm9wcykge1xuICAgIHN1cGVyKCk7XG4gICAgdGhpcy5wcm9wcyA9IHByb3BzO1xuICB9XG5cbiAgaGFuZGxlVG9nZ2xlKCkge1xuICAgIHRoaXMucHJvcHMub25DaGFuZ2VkKCF0aGlzLnByb3BzLmNvbXBsZXRlZCk7XG4gIH1cblxuICBidWlsZChjb250ZXh0OiBhbnkpIHtcbiAgICByZXR1cm4gbmV3IFJvdyh7XG4gICAgICBtYWluQXhpc0FsaWdubWVudDogTWFpbkF4aXNBbGlnbm1lbnQuc3BhY2VCZXR3ZWVuLFxuICAgICAgY2hpbGRyZW46IFtcbiAgICAgICAgbmV3IEV4cGFuZGVkKHtcbiAgICAgICAgICBmbGV4OiAxLFxuICAgICAgICAgIGNoaWxkOiBuZXcgQ29udGFpbmVyKHtcbiAgICAgICAgICAgIGNoaWxkOiBuZXcgVGV4dCh0aGlzLnByb3BzLnRleHQsIHtcbiAgICAgICAgICAgICAgc3R5bGU6IHRoaXMucHJvcHMuY29tcGxldGVkXG4gICAgICAgICAgICAgICAgPyBuZXcgVGV4dFN0eWxlKHtcbiAgICAgICAgICAgICAgICAgICAgZGVjb3JhdGlvbjogVGV4dERlY29yYXRpb24ubGluZVRocm91Z2gsXG4gICAgICAgICAgICAgICAgICAgIGRlY29yYXRpb25TdHlsZTogVGV4dERlY29yYXRpb25TdHlsZS5zb2xpZCxcbiAgICAgICAgICAgICAgICAgIH0pXG4gICAgICAgICAgICAgICAgOiBudWxsLFxuICAgICAgICAgICAgfSksXG4gICAgICAgICAgfSksXG4gICAgICAgIH0pLFxuICAgICAgICBuZXcgSWNvbkJ1dHRvbih7XG4gICAgICAgICAgb25QcmVzc2VkOiB0aGlzLnByb3BzLm9uRGVsZXRlLFxuICAgICAgICAgIGljb246IG5ldyBJY29uKEljb25zLmRlbGV0ZSksXG4gICAgICAgIH0pLFxuICAgICAgXSxcbiAgICB9KTtcbiAgfVxufVxuXG5jbGFzcyBUb2RvTGlzdFN0YXRlIGV4dGVuZHMgTVhKU1dpZGdldFN0YXRlIHtcbiAgcHJpdmF0ZSBpbnB1dFRleHQ6IHN0cmluZztcbiAgcHJpdmF0ZSBsaXN0OiBEYXRhTGlzdEl0ZW1bXTtcblxuICBjb25zdHJ1Y3RvcihpbnM6IGFueSkge1xuICAgIHN1cGVyKCk7XG4gICAgdGhpcy5pbnB1dFRleHQgPSAnJztcbiAgICB0aGlzLmxpc3QgPSBbbmV3IERhdGFMaXN0SXRlbSgnYWFhJywgdHJ1ZSldO1xuICB9XG5cbiAgaGFuZGxlQ2hhbmdlSXRlbShpdGVtLCB2YWx1ZSkge1xuICAgIHRoaXMuc2V0U3RhdGUoKCkgPT4ge1xuICAgICAgaXRlbS5jb21wbGV0ZWQgPSB2YWx1ZTtcbiAgICB9KTtcbiAgfVxuXG4gIGhhbmRsZURlbGV0ZUl0ZW0oaXRlbSkge1xuICAgIHRoaXMuc2V0U3RhdGUoKCkgPT4ge1xuICAgICAgdGhpcy5saXN0ID0gdGhpcy5saXN0LmZpbHRlcigoZSkgPT4gZS5pZCAhPT0gaXRlbS5pZCk7XG5cbiAgICAgIC8vIGxpc3QucmVtb3ZlV2hlcmUoKGVsZW1lbnQpID0+IGVsZW1lbnQuaWQgPT0gaXRlbS5pZCk7XG4gICAgfSk7XG4gIH1cblxuICBoYW5kbGVJbnB1dFRleHQoKSB7XG4gICAgaWYgKHRoaXMuaW5wdXRUZXh0LnRyaW0oKS5sZW5ndGggPiAwKSB7XG4gICAgICB0aGlzLnNldFN0YXRlKCgpID0+IHtcbiAgICAgICAgdGhpcy5saXN0LnB1c2gobmV3IERhdGFMaXN0SXRlbSh0aGlzLmlucHV0VGV4dCwgZmFsc2UpKTtcbiAgICAgICAgdGhpcy5pbnB1dFRleHQgPSAnJztcbiAgICAgIH0pO1xuICAgIH1cbiAgfVxuXG4gIGJ1aWxkVG9kb0xpc3QoY29udGV4dDogYW55KSB7XG4gICAgcmV0dXJuIHRoaXMubGlzdC5tYXAoKGUpID0+IHtcbiAgICAgIHJldHVybiBuZXcgVG9kb0xpc3RJdGVtKHtcbiAgICAgICAgY29tcGxldGVkOiBlLmNvbXBsZXRlZCxcbiAgICAgICAgdGV4dDogZS50ZXh0LFxuICAgICAgICBvbkNoYW5nZWQ6ICh2YWx1ZSkgPT4ge1xuICAgICAgICAgIHRoaXMuaGFuZGxlQ2hhbmdlSXRlbShlLCB2YWx1ZSk7XG4gICAgICAgIH0sXG4gICAgICAgIG9uRGVsZXRlOiAoKSA9PiB7XG4gICAgICAgICAgdGhpcy5oYW5kbGVEZWxldGVJdGVtKGUpO1xuICAgICAgICB9LFxuICAgICAgfSk7XG4gICAgfSk7XG4gIH1cblxuICBidWlsZElucHV0Qm94KGNvbnRleHQ6IGFueSkge1xuICAgIHJldHVybiBuZXcgUm93KHtcbiAgICAgIGNoaWxkcmVuOiBbXG4gICAgICAgIG5ldyBFeHBhbmRlZCh7XG4gICAgICAgICAgZmxleDogMSxcbiAgICAgICAgICBjaGlsZDogbmV3IFRleHRGaWVsZCh7XG4gICAgICAgICAgICBjb250cm9sbGVyOiBuZXcgVGV4dEVkaXRpbmdDb250cm9sbGVyKHsgdGV4dDogdGhpcy5pbnB1dFRleHQgfSksXG4gICAgICAgICAgICBvblN1Ym1pdHRlZDogKHZhbHVlKSA9PiB7XG4gICAgICAgICAgICAgIGNvbnNvbGUubG9nKCdvblN1Ym1pdHRlZCcsIHZhbHVlKTtcbiAgICAgICAgICAgICAgdGhpcy5pbnB1dFRleHQgPSB2YWx1ZTtcbiAgICAgICAgICAgICAgdGhpcy5oYW5kbGVJbnB1dFRleHQoKTtcbiAgICAgICAgICAgIH0sXG4gICAgICAgICAgICBvbkNoYW5nZWQ6ICh2YWx1ZSkgPT4ge1xuICAgICAgICAgICAgICB0aGlzLmlucHV0VGV4dCA9IHZhbHVlO1xuICAgICAgICAgICAgICBjb25zb2xlLmxvZygnY2hhbmdlMjIyJywgdmFsdWUpO1xuICAgICAgICAgICAgfSxcbiAgICAgICAgICB9KSxcbiAgICAgICAgfSksXG5cbiAgICAgICAgbmV3IENvbnRhaW5lcih7XG4gICAgICAgICAgZGVjb3JhdGlvbjogbmV3IEJveERlY29yYXRpb24oe1xuICAgICAgICAgICAgYm9yZGVyUmFkaXVzOiBCb3JkZXJSYWRpdXMuY2lyY3VsYXIoNDIuMCksXG4gICAgICAgICAgICBjb2xvcjogbmV3IENvbG9yKDB4ZmY5ZTllOWUpLFxuICAgICAgICAgIH0pLFxuICAgICAgICAgIGNoaWxkOiBuZXcgSWNvbkJ1dHRvbih7XG4gICAgICAgICAgICBvblByZXNzZWQ6ICgpID0+IHtcbiAgICAgICAgICAgICAgdGhpcy5oYW5kbGVJbnB1dFRleHQoKTtcbiAgICAgICAgICAgIH0sXG4gICAgICAgICAgICBpY29uOiBuZXcgSWNvbihJY29ucy5hZGQpLFxuICAgICAgICAgICAgYWxpZ25tZW50OiBBbGlnbm1lbnQuY2VudGVyLFxuICAgICAgICAgIH0pLFxuICAgICAgICB9KSxcbiAgICAgIF0sXG4gICAgfSk7XG4gIH1cblxuICBidWlsZChjb250ZXh0OiBhbnkpIHtcbiAgICByZXR1cm4gbmV3IFNjYWZmb2xkKHtcbiAgICAgIGFwcEJhcjogbmV3IEFwcEJhcih7XG4gICAgICAgIHRpdGxlOiBuZXcgVGV4dCgnVG9kb0xpc3QnKSxcbiAgICAgIH0pLFxuICAgICAgYm9keTogbmV3IENvbHVtbih7XG4gICAgICAgIGNoaWxkcmVuOiBbXG4gICAgICAgICAgbmV3IEV4cGFuZGVkKHtcbiAgICAgICAgICAgIGZsZXg6IDEsXG4gICAgICAgICAgICBjaGlsZDogbmV3IExpc3RWaWV3KHtcbiAgICAgICAgICAgICAgc2Nyb2xsRGlyZWN0aW9uOiBBeGlzLnZlcnRpY2FsLFxuICAgICAgICAgICAgICBzaHJpbmtXcmFwOiB0cnVlLFxuICAgICAgICAgICAgICBwYWRkaW5nOiBFZGdlSW5zZXRzLmFsbCgxMCksXG4gICAgICAgICAgICAgIGNoaWxkcmVuOiB0aGlzLmJ1aWxkVG9kb0xpc3QoY29udGV4dCksXG4gICAgICAgICAgICB9KSxcbiAgICAgICAgICB9KSxcbiAgICAgICAgICBuZXcgQ29udGFpbmVyKHtcbiAgICAgICAgICAgIHBhZGRpbmc6IEVkZ2VJbnNldHMuZnJvbUxUUkIoMjAsIDAsIDIwLCAyMCksXG4gICAgICAgICAgICBoZWlnaHQ6IDgwLFxuICAgICAgICAgICAgY2hpbGQ6IHRoaXMuYnVpbGRJbnB1dEJveChjb250ZXh0KSxcbiAgICAgICAgICB9KSxcbiAgICAgICAgXSxcbiAgICAgIH0pLFxuICAgIH0pO1xuICB9XG59XG5cbmNsYXNzIEhvbWVQYWdlIGV4dGVuZHMgTVhKU1N0YXRlZnVsV2lkZ2V0IHtcbiAgY29uc3RydWN0b3IoKSB7XG4gICAgc3VwZXIoKTtcbiAgfVxuXG4gIGNyZWF0ZVN0YXRlKCkge1xuICAgIHJldHVybiBuZXcgVG9kb0xpc3RTdGF0ZSh0aGlzKTtcbiAgfVxufVxuXG5jb25zdCBNWEZsdXR0ZXIgPSBnbG9iYWxUaGlzLk1YRmx1dHRlcjtcblxuTVhGbHV0dGVyLnJlZ2lzdCh7XG4gIG5hbWU6ICdleGFtcGxlMScsXG4gIFJvb3RXaWRnZXQ6IEhvbWVQYWdlLFxufSk7XG4iLCIvKiBlc2xpbnQtZGlzYWJsZSAqL1xubGV0IF9zZWVkOiBudW1iZXIgPSAwXG5cblxuZXhwb3J0IGNsYXNzIERhdGFMaXN0SXRlbSB7XG4gIGlkOiBudW1iZXJcbiAgY29tcGxldGVkOiBib29sZWFuXG4gIHRleHQ6IHN0cmluZ1xuXG4gIGNvbnN0cnVjdG9yKHRleHQ6IHN0cmluZywgY29tcGxldGVkOiBib29sZWFuKSB7XG4gICAgdGhpcy5pZCA9IF9zZWVkKys7XG4gICAgdGhpcy5jb21wbGV0ZWQgPSBjb21wbGV0ZWQ7XG4gICAgdGhpcy50ZXh0ID0gdGV4dDtcbiAgfVxufVxuIiwibW9kdWxlLmV4cG9ydHMgPSByZXF1aXJlKFwiY29uc29sZVwiKTsiLCIvLyBUaGUgbW9kdWxlIGNhY2hlXG52YXIgX193ZWJwYWNrX21vZHVsZV9jYWNoZV9fID0ge307XG5cbi8vIFRoZSByZXF1aXJlIGZ1bmN0aW9uXG5mdW5jdGlvbiBfX3dlYnBhY2tfcmVxdWlyZV9fKG1vZHVsZUlkKSB7XG5cdC8vIENoZWNrIGlmIG1vZHVsZSBpcyBpbiBjYWNoZVxuXHRpZihfX3dlYnBhY2tfbW9kdWxlX2NhY2hlX19bbW9kdWxlSWRdKSB7XG5cdFx0cmV0dXJuIF9fd2VicGFja19tb2R1bGVfY2FjaGVfX1ttb2R1bGVJZF0uZXhwb3J0cztcblx0fVxuXHQvLyBDcmVhdGUgYSBuZXcgbW9kdWxlIChhbmQgcHV0IGl0IGludG8gdGhlIGNhY2hlKVxuXHR2YXIgbW9kdWxlID0gX193ZWJwYWNrX21vZHVsZV9jYWNoZV9fW21vZHVsZUlkXSA9IHtcblx0XHQvLyBubyBtb2R1bGUuaWQgbmVlZGVkXG5cdFx0Ly8gbm8gbW9kdWxlLmxvYWRlZCBuZWVkZWRcblx0XHRleHBvcnRzOiB7fVxuXHR9O1xuXG5cdC8vIEV4ZWN1dGUgdGhlIG1vZHVsZSBmdW5jdGlvblxuXHRfX3dlYnBhY2tfbW9kdWxlc19fW21vZHVsZUlkXS5jYWxsKG1vZHVsZS5leHBvcnRzLCBtb2R1bGUsIG1vZHVsZS5leHBvcnRzLCBfX3dlYnBhY2tfcmVxdWlyZV9fKTtcblxuXHQvLyBSZXR1cm4gdGhlIGV4cG9ydHMgb2YgdGhlIG1vZHVsZVxuXHRyZXR1cm4gbW9kdWxlLmV4cG9ydHM7XG59XG5cbi8vIGV4cG9zZSB0aGUgbW9kdWxlcyBvYmplY3QgKF9fd2VicGFja19tb2R1bGVzX18pXG5fX3dlYnBhY2tfcmVxdWlyZV9fLm0gPSBfX3dlYnBhY2tfbW9kdWxlc19fO1xuXG4vLyB0aGUgc3RhcnR1cCBmdW5jdGlvblxuX193ZWJwYWNrX3JlcXVpcmVfXy54ID0gKCkgPT4ge1xuXHQvLyBMb2FkIGVudHJ5IG1vZHVsZVxuXHRfX3dlYnBhY2tfcmVxdWlyZV9fKFwiLi9zcmMvaW5kZXgudHNcIik7XG5cdC8vIFRoaXMgZW50cnkgbW9kdWxlIHVzZWQgJ2V4cG9ydHMnIHNvIGl0IGNhbid0IGJlIGlubGluZWRcbn07XG5cbiIsIi8vIGdldERlZmF1bHRFeHBvcnQgZnVuY3Rpb24gZm9yIGNvbXBhdGliaWxpdHkgd2l0aCBub24taGFybW9ueSBtb2R1bGVzXG5fX3dlYnBhY2tfcmVxdWlyZV9fLm4gPSAobW9kdWxlKSA9PiB7XG5cdHZhciBnZXR0ZXIgPSBtb2R1bGUgJiYgbW9kdWxlLl9fZXNNb2R1bGUgP1xuXHRcdCgpID0+IG1vZHVsZVsnZGVmYXVsdCddIDpcblx0XHQoKSA9PiBtb2R1bGU7XG5cdF9fd2VicGFja19yZXF1aXJlX18uZChnZXR0ZXIsIHsgYTogZ2V0dGVyIH0pO1xuXHRyZXR1cm4gZ2V0dGVyO1xufTsiLCIvLyBkZWZpbmUgZ2V0dGVyIGZ1bmN0aW9ucyBmb3IgaGFybW9ueSBleHBvcnRzXG5fX3dlYnBhY2tfcmVxdWlyZV9fLmQgPSAoZXhwb3J0cywgZGVmaW5pdGlvbikgPT4ge1xuXHRmb3IodmFyIGtleSBpbiBkZWZpbml0aW9uKSB7XG5cdFx0aWYoX193ZWJwYWNrX3JlcXVpcmVfXy5vKGRlZmluaXRpb24sIGtleSkgJiYgIV9fd2VicGFja19yZXF1aXJlX18ubyhleHBvcnRzLCBrZXkpKSB7XG5cdFx0XHRPYmplY3QuZGVmaW5lUHJvcGVydHkoZXhwb3J0cywga2V5LCB7IGVudW1lcmFibGU6IHRydWUsIGdldDogZGVmaW5pdGlvbltrZXldIH0pO1xuXHRcdH1cblx0fVxufTsiLCJfX3dlYnBhY2tfcmVxdWlyZV9fLmYgPSB7fTtcbi8vIFRoaXMgZmlsZSBjb250YWlucyBvbmx5IHRoZSBlbnRyeSBjaHVuay5cbi8vIFRoZSBjaHVuayBsb2FkaW5nIGZ1bmN0aW9uIGZvciBhZGRpdGlvbmFsIGNodW5rc1xuX193ZWJwYWNrX3JlcXVpcmVfXy5lID0gKGNodW5rSWQpID0+IHtcblx0cmV0dXJuIFByb21pc2UuYWxsKE9iamVjdC5rZXlzKF9fd2VicGFja19yZXF1aXJlX18uZikucmVkdWNlKChwcm9taXNlcywga2V5KSA9PiB7XG5cdFx0X193ZWJwYWNrX3JlcXVpcmVfXy5mW2tleV0oY2h1bmtJZCwgcHJvbWlzZXMpO1xuXHRcdHJldHVybiBwcm9taXNlcztcblx0fSwgW10pKTtcbn07IiwiLy8gVGhpcyBmdW5jdGlvbiBhbGxvdyB0byByZWZlcmVuY2UgYXN5bmMgY2h1bmtzIGFuZCBzaWJsaW5nIGNodW5rcyBmb3IgdGhlIGVudHJ5cG9pbnRcbl9fd2VicGFja19yZXF1aXJlX18udSA9IChjaHVua0lkKSA9PiB7XG5cdC8vIHJldHVybiB1cmwgZm9yIGZpbGVuYW1lcyBiYXNlZCBvbiB0ZW1wbGF0ZVxuXHRyZXR1cm4gXCJcIiArIGNodW5rSWQgKyBcIi5qc1wiO1xufTsiLCJfX3dlYnBhY2tfcmVxdWlyZV9fLm8gPSAob2JqLCBwcm9wKSA9PiBPYmplY3QucHJvdG90eXBlLmhhc093blByb3BlcnR5LmNhbGwob2JqLCBwcm9wKSIsIi8vIGRlZmluZSBfX2VzTW9kdWxlIG9uIGV4cG9ydHNcbl9fd2VicGFja19yZXF1aXJlX18uciA9IChleHBvcnRzKSA9PiB7XG5cdGlmKHR5cGVvZiBTeW1ib2wgIT09ICd1bmRlZmluZWQnICYmIFN5bWJvbC50b1N0cmluZ1RhZykge1xuXHRcdE9iamVjdC5kZWZpbmVQcm9wZXJ0eShleHBvcnRzLCBTeW1ib2wudG9TdHJpbmdUYWcsIHsgdmFsdWU6ICdNb2R1bGUnIH0pO1xuXHR9XG5cdE9iamVjdC5kZWZpbmVQcm9wZXJ0eShleHBvcnRzLCAnX19lc01vZHVsZScsIHsgdmFsdWU6IHRydWUgfSk7XG59OyIsInZhciBuZXh0ID0gX193ZWJwYWNrX3JlcXVpcmVfXy54O1xuX193ZWJwYWNrX3JlcXVpcmVfXy54ID0gKCkgPT4ge1xuXHRfX3dlYnBhY2tfcmVxdWlyZV9fLmUoXCJjb21tb25cIik7XG5cdHJldHVybiBuZXh0KCk7XG59OyIsIi8vIG9iamVjdCB0byBzdG9yZSBsb2FkZWQgY2h1bmtzXG4vLyBcIjFcIiBtZWFucyBcImxvYWRlZFwiLCBvdGhlcndpc2Ugbm90IGxvYWRlZCB5ZXRcbnZhciBpbnN0YWxsZWRDaHVua3MgPSB7XG5cdFwiYnVuZGxlLWV4YW1wbGUxXCI6IDFcbn07XG5cbnZhciBpbnN0YWxsQ2h1bmsgPSAoY2h1bmspID0+IHtcblx0dmFyIG1vcmVNb2R1bGVzID0gY2h1bmsubW9kdWxlcywgY2h1bmtJZHMgPSBjaHVuay5pZHMsIHJ1bnRpbWUgPSBjaHVuay5ydW50aW1lO1xuXHRmb3IodmFyIG1vZHVsZUlkIGluIG1vcmVNb2R1bGVzKSB7XG5cdFx0aWYoX193ZWJwYWNrX3JlcXVpcmVfXy5vKG1vcmVNb2R1bGVzLCBtb2R1bGVJZCkpIHtcblx0XHRcdF9fd2VicGFja19yZXF1aXJlX18ubVttb2R1bGVJZF0gPSBtb3JlTW9kdWxlc1ttb2R1bGVJZF07XG5cdFx0fVxuXHR9XG5cdGlmKHJ1bnRpbWUpIHJ1bnRpbWUoX193ZWJwYWNrX3JlcXVpcmVfXyk7XG5cdGZvcih2YXIgaSA9IDA7IGkgPCBjaHVua0lkcy5sZW5ndGg7IGkrKylcblx0XHRpbnN0YWxsZWRDaHVua3NbY2h1bmtJZHNbaV1dID0gMTtcbn07XG5cbi8vIHJlcXVpcmUoKSBjaHVuayBsb2FkaW5nIGZvciBqYXZhc2NyaXB0XG5fX3dlYnBhY2tfcmVxdWlyZV9fLmYucmVxdWlyZSA9IGZ1bmN0aW9uKGNodW5rSWQsIHByb21pc2VzKSB7XG5cblx0Ly8gXCIxXCIgaXMgdGhlIHNpZ25hbCBmb3IgXCJhbHJlYWR5IGxvYWRlZFwiXG5cdGlmKCFpbnN0YWxsZWRDaHVua3NbY2h1bmtJZF0pIHtcblx0XHRpZih0cnVlKSB7IC8vIGFsbCBjaHVua3MgaGF2ZSBKU1xuXHRcdFx0aW5zdGFsbENodW5rKHJlcXVpcmUoXCIuL1wiICsgX193ZWJwYWNrX3JlcXVpcmVfXy51KGNodW5rSWQpKSk7XG5cdFx0fSBlbHNlIGluc3RhbGxlZENodW5rc1tjaHVua0lkXSA9IDE7XG5cdH1cbn07XG5cbi8vIG5vIGV4dGVybmFsIGluc3RhbGwgY2h1bmtcblxuLy8gbm8gSE1SXG5cbi8vIG5vIEhNUiBtYW5pZmVzdCIsIi8vIHJ1biBzdGFydHVwXG5yZXR1cm4gX193ZWJwYWNrX3JlcXVpcmVfXy54KCk7XG4iXSwic291cmNlUm9vdCI6IiJ9