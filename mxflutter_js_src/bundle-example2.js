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
/* harmony import */ var _item__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./item */ "./src/item.ts");
/* eslint-disable */



class TodoListPage extends _tencent_mxflutter__WEBPACK_IMPORTED_MODULE_0__.MXJSStatefulWidget {
    constructor() {
        super("TodoListPage");
        this.data = "test";
    }
    createState() {
        return new TodoListPageState();
    }
}
class TodoListPageState extends _tencent_mxflutter__WEBPACK_IMPORTED_MODULE_0__.MXJSWidgetState {
    constructor() {
        super();
        this.textCtr = new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.TextEditingController({
            text: ''
        });
        this.addTextValue = '';
        this.newIdx = 0;
        this.dataList = [];
    }
    build(context) {
        const wList = this.buildList(context);
        return new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Container({
            padding: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.EdgeInsets.all(10.0),
            child: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Column({
                children: [
                    new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Padding({
                        padding: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.EdgeInsets.only({ top: 5 })
                    }),
                    new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Row({
                        children: [
                            new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Padding({
                                padding: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.EdgeInsets.only({ left: 20 })
                            }),
                            new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Expanded({
                                child: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.TextField({
                                    width: 200,
                                    controller: this.textCtr,
                                    decoration: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.InputDecoration({
                                        hintText: "请填写 TODO 事项"
                                    }),
                                    onChanged: (value) => {
                                        this.addTextValue = value;
                                    }
                                })
                            }),
                            new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Padding({
                                padding: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.EdgeInsets.only({ left: 20 })
                            }),
                            new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.FlatButton({
                                color: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Theme.of(context).primaryColor,
                                textColor: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Colors.white,
                                child: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text("添加"),
                                onPressed: () => {
                                    this.setState(() => {
                                        this.addNewItem(this.addTextValue);
                                    });
                                    console.log('add:' + this.addTextValue);
                                }
                            })
                        ]
                    }),
                    new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Expanded({
                        child: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.ListView({
                            children: wList
                        })
                    })
                ]
            })
        });
    }
    buildList(context) {
        let wList = [];
        let wDoingList = this.buildDataList(true);
        let wDoneList = this.buildDataList(false);
        wList.push(new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Padding({ padding: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.EdgeInsets.only({ top: 20 }) }));
        wList.push(new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Row({
            children: [
                new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Padding({
                    padding: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.EdgeInsets.only({ left: 20 })
                }),
                new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text("正在进行", {
                    textAlign: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.TextAlign.left,
                    style: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.TextStyle({
                        fontSize: 20,
                        fontWeight: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.FontWeight.bold,
                        color: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Theme.of(context).primaryColorDark
                    })
                }),
                new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Expanded({
                    child: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text(wDoingList.length.toString(), {
                        textAlign: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.TextAlign.right,
                        style: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.TextStyle({
                            fontSize: 20,
                            fontWeight: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.FontWeight.bold,
                            color: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Colors.red
                        })
                    })
                }),
                new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Padding({
                    padding: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.EdgeInsets.only({ right: 20 })
                }),
            ]
        }));
        wList = wList.concat(wDoingList);
        wList.push(new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Padding({ padding: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.EdgeInsets.only({ top: 20 }) }));
        wList.push(new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Row({
            children: [
                new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Padding({
                    padding: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.EdgeInsets.only({ left: 20 })
                }),
                new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text("已完成", {
                    textAlign: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.TextAlign.left,
                    style: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.TextStyle({
                        fontSize: 20,
                        fontWeight: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.FontWeight.bold,
                        color: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Theme.of(context).primaryColorDark
                    })
                }),
                new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Expanded({
                    child: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text(wDoneList.length.toString(), {
                        textAlign: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.TextAlign.right,
                        style: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.TextStyle({
                            fontSize: 20,
                            fontWeight: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.FontWeight.bold,
                            color: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Colors.grey
                        })
                    })
                }),
                new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Padding({
                    padding: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.EdgeInsets.only({ right: 20 })
                }),
            ]
        }));
        wList = wList.concat(wDoneList);
        return wList;
    }
    buildDataList(isDoing) {
        const dataList = isDoing ? this.dataList.filter((v) => {
            return !v.isDone;
        }) : this.dataList.filter((v) => {
            return v.isDone;
        });
        return dataList.map((item, index) => {
            return new _item__WEBPACK_IMPORTED_MODULE_2__.TodoItem({
                item: item,
                callback: (val) => {
                    console.log('cb1', this.dataList, item, val);
                    this.setState(() => {
                        item.isDone = val;
                    });
                },
                deleteCallback: (wItem) => {
                    console.log('cb2', this.dataList, item, wItem);
                    this.setState(() => {
                        this.dataList.splice(this.dataList.findIndex(item => item.index === wItem.index), 1);
                    });
                },
                editCallback: (newName) => {
                    console.log('cb3', this.dataList, item, newName);
                    this.setState(() => {
                        item.name = newName;
                    });
                },
            });
        });
    }
    addNewItem(value) {
        this.newIdx += 1;
        this.dataList.push({
            index: this.index,
            name: value,
            isDone: false,
        });
    }
}
const MXFlutter = globalThis.MXFlutter;
MXFlutter.regist({
    name: 'example2',
    RootWidget: TodoListPage,
});


/***/ }),

/***/ "./src/item.ts":
/*!*********************!*\
  !*** ./src/item.ts ***!
  \*********************/
/*! namespace exports */
/*! export TodoItem [provided] [no usage info] [missing usage info prevents renaming] */
/*! other exports [not provided] [no usage info] */
/*! runtime requirements: __webpack_require__, __webpack_require__.n, __webpack_require__.r, __webpack_exports__, __webpack_require__.d, __webpack_require__.* */
/***/ ((__unused_webpack_module, __webpack_exports__, __webpack_require__) => {

__webpack_require__.r(__webpack_exports__);
/* harmony export */ __webpack_require__.d(__webpack_exports__, {
/* harmony export */   "TodoItem": () => /* binding */ TodoItem
/* harmony export */ });
/* harmony import */ var _tencent_mxflutter__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @tencent/mxflutter */ "./node_modules/@tencent/mxflutter/lib/index.js");
/* harmony import */ var _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @tencent/mxflutter-widgets */ "./node_modules/@tencent/mxflutter-widgets/index.js");
/* harmony import */ var _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1___default = /*#__PURE__*/__webpack_require__.n(_tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__);
/* eslint-disable */


class TodoItem extends _tencent_mxflutter__WEBPACK_IMPORTED_MODULE_0__.MXJSStatefulWidget {
    constructor({ item, callback, deleteCallback, editCallback }) {
        super("TodoItem");
        this.item = item;
        this.callback = callback;
        this.deleteCallback = deleteCallback;
        this.editCallback = editCallback;
    }
    createState() {
        return new TodoItemState();
    }
}
class TodoItemState extends _tencent_mxflutter__WEBPACK_IMPORTED_MODULE_0__.MXJSWidgetState {
    constructor() {
        super();
        this.editTextValue = '';
        this.isEdit = false;
    }
    build(context) {
        const textColor = this.widget.item.isDone ? _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Colors.grey : _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Theme.of(context).primaryColorDark;
        return new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Container({
            padding: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.EdgeInsets.all(20),
            child: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Container({
                decoration: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.BoxDecoration({
                    border: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Border.all({ color: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Colors.grey, width: 0.5 }),
                }),
                padding: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.EdgeInsets.all(8),
                child: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Row({
                    children: [
                        // new Checkbox({
                        //   value: this.widget.item.isDone,
                        //   activeColor: Colors.grey,
                        //   onChanged: (value) => {
                        //     this.widget.callback(value);
                        //   },
                        // })
                        new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.IconButton({
                            tooltip: '完成',
                            icon: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Icon(_tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Icons.done),
                            color: textColor,
                            onPressed: () => {
                                this.widget.callback(!this.widget.item.isDone);
                            }
                        }),
                        new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Padding({
                            padding: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.EdgeInsets.only({ left: 10 })
                        }),
                        this.buildNameWidget(textColor),
                        new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.IconButton({
                            tooltip: '删除',
                            icon: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Icon(_tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Icons.delete),
                            color: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Colors.grey,
                            onPressed: () => {
                                this.widget.deleteCallback(this.widget.item);
                            }
                        }),
                    ]
                })
            })
        });
    }
    buildNameWidget(textColor) {
        if (this.isEdit) {
            return new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Expanded({
                child: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Container({
                    width: 200,
                    child: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.TextField({
                        width: 200,
                        controller: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.TextEditingController({
                            text: this.widget.item.name
                        }),
                        onChanged: (value) => {
                            this.editTextValue = value;
                        },
                        onSubmitted: () => {
                            this.widget.editCallback(this.editTextValue);
                            this.setState(() => {
                                this.isEdit = false;
                            });
                        }
                    })
                })
            });
        }
        return new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Expanded({
            child: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.GestureDetector({
                onTap: () => {
                    this.setState(() => {
                        this.isEdit = true;
                    });
                },
                child: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text(this.widget.item.name, {
                    softWrap: true,
                    overflow: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.TextOverflow.ellipsis,
                    maxLines: 2,
                    textAlign: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.TextAlign.left,
                    style: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.TextStyle({
                        fontSize: 20,
                        color: textColor,
                    }),
                })
            })
        });
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
/******/ 			"bundle-example2": 1
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
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMi8uL3NyYy9pbmRleC50cyIsIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMi8uL3NyYy9pdGVtLnRzIiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUyL2V4dGVybmFsIFwiY29uc29sZVwiIiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUyL2V4dGVybmFsIFwiZ2xvYmFsVGhpcy5yZXF1aXJlKFxcXCJkYXJ0X3Nka1xcXCIpXCIiLCJ3ZWJwYWNrOi8vQHRlc3QvZXhhbXBsZTIvd2VicGFjay9ib290c3RyYXAiLCJ3ZWJwYWNrOi8vQHRlc3QvZXhhbXBsZTIvd2VicGFjay9ydW50aW1lL2NvbXBhdCBnZXQgZGVmYXVsdCBleHBvcnQiLCJ3ZWJwYWNrOi8vQHRlc3QvZXhhbXBsZTIvd2VicGFjay9ydW50aW1lL2RlZmluZSBwcm9wZXJ0eSBnZXR0ZXJzIiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUyL3dlYnBhY2svcnVudGltZS9lbnN1cmUgY2h1bmsiLCJ3ZWJwYWNrOi8vQHRlc3QvZXhhbXBsZTIvd2VicGFjay9ydW50aW1lL2dldCBqYXZhc2NyaXB0IGNodW5rIGZpbGVuYW1lIiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUyL3dlYnBhY2svcnVudGltZS9oYXNPd25Qcm9wZXJ0eSBzaG9ydGhhbmQiLCJ3ZWJwYWNrOi8vQHRlc3QvZXhhbXBsZTIvd2VicGFjay9ydW50aW1lL21ha2UgbmFtZXNwYWNlIG9iamVjdCIsIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMi93ZWJwYWNrL3J1bnRpbWUvc3RhcnR1cCBjaHVuayBkZXBlbmRlbmNpZXMiLCJ3ZWJwYWNrOi8vQHRlc3QvZXhhbXBsZTIvd2VicGFjay9ydW50aW1lL3JlcXVpcmUgY2h1bmsgbG9hZGluZyIsIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMi93ZWJwYWNrL3N0YXJ0dXAiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7Ozs7O0FBQUEs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Q0E7VUFDQTs7VUFFQTtVQUNBOztVQUVBO1VBQ0E7VUFDQTs7VUFFQTtVQUNBOztVQUVBO1VBQ0E7VUFDQTtVQUNBO1VBQ0E7VUFDQTs7Ozs7V0MvQkE7V0FDQTtXQUNBO1dBQ0E7V0FDQTtXQUNBLGdDQUFnQyxZQUFZO1dBQzVDO1dBQ0EsRTs7Ozs7V0NQQTtXQUNBO1dBQ0E7V0FDQTtXQUNBLHdDQUF3Qyx5Q0FBeUM7V0FDakY7V0FDQTtXQUNBLEU7Ozs7O1dDUEE7V0FDQTtXQUNBO1dBQ0E7V0FDQTtXQUNBO1dBQ0E7V0FDQSxFQUFFO1dBQ0YsRTs7Ozs7V0NSQTtXQUNBO1dBQ0E7V0FDQTtXQUNBLEU7Ozs7O1dDSkEsc0Y7Ozs7O1dDQUE7V0FDQTtXQUNBO1dBQ0Esc0RBQXNELGtCQUFrQjtXQUN4RTtXQUNBLCtDQUErQyxjQUFjO1dBQzdELEU7Ozs7O1dDTkE7V0FDQTtXQUNBO1dBQ0E7V0FDQSxFOzs7OztXQ0pBO1dBQ0E7V0FDQTtXQUNBO1dBQ0E7O1dBRUE7V0FDQTtXQUNBO1dBQ0E7V0FDQTtXQUNBO1dBQ0E7V0FDQTtXQUNBLGVBQWUscUJBQXFCO1dBQ3BDO1dBQ0E7O1dBRUE7V0FDQTs7V0FFQTtXQUNBO1dBQ0EsWUFBWTtXQUNaO1dBQ0EsR0FBRztXQUNIO1dBQ0E7O1dBRUE7O1dBRUE7O1dBRUEsa0I7Ozs7VUNqQ0E7VUFDQSIsImZpbGUiOiJidW5kbGUtZXhhbXBsZTIuanMiLCJzb3VyY2VzQ29udGVudCI6WyIvKiBlc2xpbnQtZGlzYWJsZSAqL1xuaW1wb3J0IHsgcnVuQXBwLCBNWEpTQmFzZVdpZGdldCwgTVhKU0ZsdXR0ZXJBcHAsIE1YSlNTdGF0ZWxlc3NXaWRnZXQsIE1YSlNTdGF0ZWZ1bFdpZGdldCwgTVhKU1dpZGdldFN0YXRlIH0gZnJvbSAnQHRlbmNlbnQvbXhmbHV0dGVyJ1xuaW1wb3J0IHtcbiAgQ29udGFpbmVyLFxuICBDb2x1bW4sXG4gIEV4cGFuZGVkLFxuICBDb2xvcnMsXG4gIFRleHQsXG4gIExpc3RWaWV3LFxuICBGb250V2VpZ2h0LFxuICBGbGF0QnV0dG9uLFxuICBFZGdlSW5zZXRzLFxuICBJbnB1dERlY29yYXRpb24sXG4gIFRleHRGaWVsZCxcbiAgVGV4dEVkaXRpbmdDb250cm9sbGVyLFxuICBUZXh0QWxpZ24sXG4gIFRleHRTdHlsZSxcbiAgUm93LFxuICBQYWRkaW5nLFxuICBUaGVtZSxcbiAgS2V5LFxufSBmcm9tICdAdGVuY2VudC9teGZsdXR0ZXItd2lkZ2V0cydcblxuaW1wb3J0IHsgVG9kb0l0ZW0gfSBmcm9tICcuL2l0ZW0nXG5cbmNsYXNzIFRvZG9MaXN0UGFnZSBleHRlbmRzIE1YSlNTdGF0ZWZ1bFdpZGdldCB7XG4gIHB1YmxpYyBkYXRhOiBhbnk7XG4gIHB1YmxpYyBjb25zdHJ1Y3RvcigpIHtcbiAgICBzdXBlcihcIlRvZG9MaXN0UGFnZVwiKTtcblxuICAgIHRoaXMuZGF0YSA9IFwidGVzdFwiO1xuICB9XG5cbiAgcHVibGljIGNyZWF0ZVN0YXRlKCkge1xuICAgIHJldHVybiBuZXcgVG9kb0xpc3RQYWdlU3RhdGUoKTtcbiAgfVxufVxuXG5jbGFzcyBUb2RvTGlzdFBhZ2VTdGF0ZSBleHRlbmRzIE1YSlNXaWRnZXRTdGF0ZSB7XG4gIHB1YmxpYyB0ZXh0Q3RyOiBhbnk7XG4gIHB1YmxpYyBhZGRUZXh0VmFsdWU6IGFueTtcbiAgcHVibGljIG5ld0lkeDogYW55O1xuICBwdWJsaWMgZGF0YUxpc3Q6IGFueTtcbiAgcHVibGljIGluZGV4OiBhbnk7XG5cbiAgcHVibGljIGNvbnN0cnVjdG9yKCkge1xuICAgIHN1cGVyKCk7XG4gICAgdGhpcy50ZXh0Q3RyID0gbmV3IFRleHRFZGl0aW5nQ29udHJvbGxlcih7XG4gICAgICB0ZXh0OiAnJ1xuICAgIH0pO1xuICAgIHRoaXMuYWRkVGV4dFZhbHVlID0gJyc7XG4gICAgdGhpcy5uZXdJZHggPSAwO1xuICAgIHRoaXMuZGF0YUxpc3QgPSBbXTtcbiAgfVxuXG4gIHB1YmxpYyBidWlsZChjb250ZXh0KSB7XG4gICAgY29uc3Qgd0xpc3QgPSB0aGlzLmJ1aWxkTGlzdChjb250ZXh0KTtcblxuICAgIHJldHVybiBuZXcgQ29udGFpbmVyKHtcbiAgICAgIHBhZGRpbmc6IEVkZ2VJbnNldHMuYWxsKDEwLjApLFxuICAgICAgY2hpbGQ6IG5ldyBDb2x1bW4oe1xuICAgICAgICBjaGlsZHJlbjogW1xuICAgICAgICAgIG5ldyBQYWRkaW5nKHtcbiAgICAgICAgICAgIHBhZGRpbmc6IEVkZ2VJbnNldHMub25seSh7IHRvcDogNSB9KVxuICAgICAgICAgIH0pLFxuICAgICAgICAgIG5ldyBSb3coe1xuICAgICAgICAgICAgY2hpbGRyZW46IFtcbiAgICAgICAgICAgICAgbmV3IFBhZGRpbmcoe1xuICAgICAgICAgICAgICAgIHBhZGRpbmc6IEVkZ2VJbnNldHMub25seSh7IGxlZnQ6IDIwIH0pXG4gICAgICAgICAgICAgIH0pLFxuICAgICAgICAgICAgICBuZXcgRXhwYW5kZWQoe1xuICAgICAgICAgICAgICAgIGNoaWxkOiBuZXcgVGV4dEZpZWxkKHtcbiAgICAgICAgICAgICAgICAgIHdpZHRoOiAyMDAsXG4gICAgICAgICAgICAgICAgICBjb250cm9sbGVyOiB0aGlzLnRleHRDdHIsXG4gICAgICAgICAgICAgICAgICBkZWNvcmF0aW9uOiBuZXcgSW5wdXREZWNvcmF0aW9uKHtcbiAgICAgICAgICAgICAgICAgICAgaGludFRleHQ6IFwi6K+35aGr5YaZIFRPRE8g5LqL6aG5XCJcbiAgICAgICAgICAgICAgICAgIH0pLFxuICAgICAgICAgICAgICAgICAgb25DaGFuZ2VkOiAodmFsdWUpID0+IHtcbiAgICAgICAgICAgICAgICAgICAgdGhpcy5hZGRUZXh0VmFsdWUgPSB2YWx1ZTtcbiAgICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgICB9KVxuICAgICAgICAgICAgICB9KSxcbiAgICAgICAgICAgICAgbmV3IFBhZGRpbmcoe1xuICAgICAgICAgICAgICAgIHBhZGRpbmc6IEVkZ2VJbnNldHMub25seSh7IGxlZnQ6IDIwIH0pXG4gICAgICAgICAgICAgIH0pLFxuICAgICAgICAgICAgICBuZXcgRmxhdEJ1dHRvbih7XG4gICAgICAgICAgICAgICAgY29sb3I6IFRoZW1lLm9mKGNvbnRleHQpLnByaW1hcnlDb2xvcixcbiAgICAgICAgICAgICAgICB0ZXh0Q29sb3I6IENvbG9ycy53aGl0ZSxcbiAgICAgICAgICAgICAgICBjaGlsZDogbmV3IFRleHQoXCLmt7vliqBcIiksXG4gICAgICAgICAgICAgICAgb25QcmVzc2VkOiAoKSA9PiB7XG4gICAgICAgICAgICAgICAgICB0aGlzLnNldFN0YXRlKCgpID0+IHtcbiAgICAgICAgICAgICAgICAgICAgdGhpcy5hZGROZXdJdGVtKHRoaXMuYWRkVGV4dFZhbHVlKTtcbiAgICAgICAgICAgICAgICAgIH0pO1xuICAgICAgICAgICAgICAgICAgXG4gICAgICAgICAgICAgICAgICBjb25zb2xlLmxvZygnYWRkOicgKyB0aGlzLmFkZFRleHRWYWx1ZSk7XG4gICAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgICB9KVxuICAgICAgICAgICAgXVxuICAgICAgICAgIH0pLFxuICAgICAgICAgIG5ldyBFeHBhbmRlZCh7XG4gICAgICAgICAgICBjaGlsZDogbmV3IExpc3RWaWV3KHtcbiAgICAgICAgICAgICAgY2hpbGRyZW46IHdMaXN0XG4gICAgICAgICAgICB9KVxuICAgICAgICAgIH0pXG4gICAgICAgIF1cbiAgICAgIH0pXG4gICAgfSlcbiAgfVxuXG4gIHB1YmxpYyBidWlsZExpc3QoY29udGV4dCkge1xuICAgIGxldCB3TGlzdDogYW55ID0gW107XG4gICAgbGV0IHdEb2luZ0xpc3QgPSB0aGlzLmJ1aWxkRGF0YUxpc3QodHJ1ZSk7XG4gICAgbGV0IHdEb25lTGlzdCA9IHRoaXMuYnVpbGREYXRhTGlzdChmYWxzZSk7XG5cbiAgICB3TGlzdC5wdXNoKG5ldyBQYWRkaW5nKHsgcGFkZGluZzogRWRnZUluc2V0cy5vbmx5KHsgdG9wOiAyMCB9KSB9KSk7XG4gICAgd0xpc3QucHVzaChuZXcgUm93KHtcbiAgICAgIGNoaWxkcmVuOiBbXG4gICAgICAgIG5ldyBQYWRkaW5nKHtcbiAgICAgICAgICBwYWRkaW5nOiBFZGdlSW5zZXRzLm9ubHkoeyBsZWZ0OiAyMCB9KVxuICAgICAgICB9KSxcbiAgICAgICAgbmV3IFRleHQoXCLmraPlnKjov5vooYxcIiwge1xuICAgICAgICAgIHRleHRBbGlnbjogVGV4dEFsaWduLmxlZnQsXG4gICAgICAgICAgc3R5bGU6IG5ldyBUZXh0U3R5bGUoe1xuICAgICAgICAgICAgZm9udFNpemU6IDIwLFxuICAgICAgICAgICAgZm9udFdlaWdodDogRm9udFdlaWdodC5ib2xkLFxuICAgICAgICAgICAgY29sb3I6IFRoZW1lLm9mKGNvbnRleHQpLnByaW1hcnlDb2xvckRhcmtcbiAgICAgICAgICB9KSBcbiAgICAgICAgfSksXG4gICAgICAgIG5ldyBFeHBhbmRlZCh7XG4gICAgICAgICAgY2hpbGQ6IG5ldyBUZXh0KHdEb2luZ0xpc3QubGVuZ3RoLnRvU3RyaW5nKCksIHtcbiAgICAgICAgICAgIHRleHRBbGlnbjogVGV4dEFsaWduLnJpZ2h0LFxuICAgICAgICAgICAgc3R5bGU6IG5ldyBUZXh0U3R5bGUoe1xuICAgICAgICAgICAgICBmb250U2l6ZTogMjAsXG4gICAgICAgICAgICAgIGZvbnRXZWlnaHQ6IEZvbnRXZWlnaHQuYm9sZCxcbiAgICAgICAgICAgICAgY29sb3I6IENvbG9ycy5yZWRcbiAgICAgICAgICAgIH0pIFxuICAgICAgICAgIH0pXG4gICAgICAgIH0pLFxuICAgICAgICBuZXcgUGFkZGluZyh7XG4gICAgICAgICAgcGFkZGluZzogRWRnZUluc2V0cy5vbmx5KHsgcmlnaHQ6IDIwIH0pXG4gICAgICAgIH0pLFxuICAgICAgXVxuICAgIH0pKVxuICAgIHdMaXN0ID0gd0xpc3QuY29uY2F0KHdEb2luZ0xpc3QpO1xuXG4gICAgd0xpc3QucHVzaChuZXcgUGFkZGluZyh7IHBhZGRpbmc6IEVkZ2VJbnNldHMub25seSh7IHRvcDogMjAgfSkgfSkpO1xuICAgIHdMaXN0LnB1c2gobmV3IFJvdyh7XG4gICAgICBjaGlsZHJlbjogW1xuICAgICAgICBuZXcgUGFkZGluZyh7XG4gICAgICAgICAgcGFkZGluZzogRWRnZUluc2V0cy5vbmx5KHsgbGVmdDogMjAgfSlcbiAgICAgICAgfSksXG4gICAgICAgIG5ldyBUZXh0KFwi5bey5a6M5oiQXCIsIHtcbiAgICAgICAgICB0ZXh0QWxpZ246IFRleHRBbGlnbi5sZWZ0LFxuICAgICAgICAgIHN0eWxlOiBuZXcgVGV4dFN0eWxlKHtcbiAgICAgICAgICAgIGZvbnRTaXplOiAyMCxcbiAgICAgICAgICAgIGZvbnRXZWlnaHQ6IEZvbnRXZWlnaHQuYm9sZCxcbiAgICAgICAgICAgIGNvbG9yOiBUaGVtZS5vZihjb250ZXh0KS5wcmltYXJ5Q29sb3JEYXJrXG4gICAgICAgICAgfSkgXG4gICAgICAgIH0pLFxuICAgICAgICBuZXcgRXhwYW5kZWQoe1xuICAgICAgICAgIGNoaWxkOiBuZXcgVGV4dCh3RG9uZUxpc3QubGVuZ3RoLnRvU3RyaW5nKCksIHtcbiAgICAgICAgICAgIHRleHRBbGlnbjogVGV4dEFsaWduLnJpZ2h0LFxuICAgICAgICAgICAgc3R5bGU6IG5ldyBUZXh0U3R5bGUoe1xuICAgICAgICAgICAgICBmb250U2l6ZTogMjAsXG4gICAgICAgICAgICAgIGZvbnRXZWlnaHQ6IEZvbnRXZWlnaHQuYm9sZCxcbiAgICAgICAgICAgICAgY29sb3I6IENvbG9ycy5ncmV5XG4gICAgICAgICAgICB9KSBcbiAgICAgICAgICB9KVxuICAgICAgICB9KSxcbiAgICAgICAgbmV3IFBhZGRpbmcoe1xuICAgICAgICAgIHBhZGRpbmc6IEVkZ2VJbnNldHMub25seSh7IHJpZ2h0OiAyMCB9KVxuICAgICAgICB9KSxcbiAgICAgIF1cbiAgICB9KSlcbiAgICB3TGlzdCA9IHdMaXN0LmNvbmNhdCh3RG9uZUxpc3QpO1xuXG4gICAgcmV0dXJuIHdMaXN0O1xuICB9XG5cbiAgcHVibGljIGJ1aWxkRGF0YUxpc3QoaXNEb2luZykge1xuICAgIGNvbnN0IGRhdGFMaXN0ID0gaXNEb2luZyA/IHRoaXMuZGF0YUxpc3QuZmlsdGVyKCh2KSA9PiB7XG4gICAgICByZXR1cm4gIXYuaXNEb25lXG4gICAgfSkgOiB0aGlzLmRhdGFMaXN0LmZpbHRlcigodikgPT4ge1xuICAgICAgcmV0dXJuIHYuaXNEb25lXG4gICAgfSk7XG5cbiAgICByZXR1cm4gZGF0YUxpc3QubWFwKChpdGVtLCBpbmRleCkgPT4ge1xuICAgICAgcmV0dXJuIG5ldyBUb2RvSXRlbSh7XG4gICAgICAgIGl0ZW06IGl0ZW0sXG4gICAgICAgIGNhbGxiYWNrOiAodmFsKSA9PiB7XG4gICAgICAgICAgY29uc29sZS5sb2coJ2NiMScsIHRoaXMuZGF0YUxpc3QsIGl0ZW0sIHZhbCk7XG4gICAgICAgICAgdGhpcy5zZXRTdGF0ZSgoKSA9PiB7XG4gICAgICAgICAgICBpdGVtLmlzRG9uZSA9IHZhbDtcbiAgICAgICAgICB9KTtcbiAgICAgICAgfSxcbiAgICAgICAgZGVsZXRlQ2FsbGJhY2s6ICh3SXRlbSkgPT4ge1xuICAgICAgICAgIGNvbnNvbGUubG9nKCdjYjInLCB0aGlzLmRhdGFMaXN0LCBpdGVtLCB3SXRlbSk7XG4gICAgICAgICAgdGhpcy5zZXRTdGF0ZSgoKSA9PiB7XG4gICAgICAgICAgICB0aGlzLmRhdGFMaXN0LnNwbGljZSh0aGlzLmRhdGFMaXN0LmZpbmRJbmRleChpdGVtID0+IGl0ZW0uaW5kZXggPT09IHdJdGVtLmluZGV4KSwgMSlcbiAgICAgICAgICB9KTtcbiAgICAgICAgfSxcbiAgICAgICAgZWRpdENhbGxiYWNrOiAobmV3TmFtZSkgPT4ge1xuICAgICAgICAgIGNvbnNvbGUubG9nKCdjYjMnLCB0aGlzLmRhdGFMaXN0LCBpdGVtLCBuZXdOYW1lKTtcbiAgICAgICAgICB0aGlzLnNldFN0YXRlKCgpID0+IHtcbiAgICAgICAgICAgIGl0ZW0ubmFtZSA9IG5ld05hbWU7XG4gICAgICAgICAgfSk7XG4gICAgICAgIH0sXG4gICAgICB9KVxuICAgIH0pXG4gIH1cblxuICBwdWJsaWMgYWRkTmV3SXRlbSh2YWx1ZSkge1xuICAgIHRoaXMubmV3SWR4ICs9IDE7XG4gICAgdGhpcy5kYXRhTGlzdC5wdXNoKHtcbiAgICAgIGluZGV4OiB0aGlzLmluZGV4LFxuICAgICAgbmFtZTogdmFsdWUsXG4gICAgICBpc0RvbmU6IGZhbHNlLFxuICAgIH0pXG4gIH1cblxufVxuXG5jb25zdCBNWEZsdXR0ZXIgPSBnbG9iYWxUaGlzLk1YRmx1dHRlcjtcblxuTVhGbHV0dGVyLnJlZ2lzdCh7XG4gIG5hbWU6ICdleGFtcGxlMicsXG4gIFJvb3RXaWRnZXQ6IFRvZG9MaXN0UGFnZSxcbn0pO1xuIiwiLyogZXNsaW50LWRpc2FibGUgKi9cbmltcG9ydCB7IHJ1bkFwcCwgTVhKU0Jhc2VXaWRnZXQsIE1YSlNGbHV0dGVyQXBwLCBNWEpTU3RhdGVsZXNzV2lkZ2V0LCBNWEpTU3RhdGVmdWxXaWRnZXQsIE1YSlNXaWRnZXRTdGF0ZSB9IGZyb20gJ0B0ZW5jZW50L214Zmx1dHRlcidcbmltcG9ydCB7XG4gIENvbnRhaW5lcixcbiAgRXhwYW5kZWQsXG4gIENvbG9ycyxcbiAgQm9yZGVyLFxuICBUZXh0LFxuICBJY29uLFxuICBJY29ucyxcbiAgRWRnZUluc2V0cyxcbiAgQm94RGVjb3JhdGlvbixcbiAgVGV4dEZpZWxkLFxuICBUZXh0RWRpdGluZ0NvbnRyb2xsZXIsXG4gIFRleHRBbGlnbixcbiAgVGV4dFN0eWxlLFxuICBUZXh0T3ZlcmZsb3csXG4gIFJvdyxcbiAgUGFkZGluZyxcbiAgSWNvbkJ1dHRvbixcbiAgVGhlbWUsXG4gIEdlc3R1cmVEZXRlY3Rvcixcbn0gZnJvbSAnQHRlbmNlbnQvbXhmbHV0dGVyLXdpZGdldHMnXG5cbmNsYXNzIFRvZG9JdGVtIGV4dGVuZHMgTVhKU1N0YXRlZnVsV2lkZ2V0IHtcbiAgcHVibGljIGl0ZW06IGFueTtcbiAgcHVibGljIGNhbGxiYWNrOiBhbnk7XG4gIHB1YmxpYyBkZWxldGVDYWxsYmFjazogYW55O1xuICBwdWJsaWMgZWRpdENhbGxiYWNrOiBhbnk7XG5cbiAgcHVibGljIGNvbnN0cnVjdG9yKHsgaXRlbSwgY2FsbGJhY2ssIGRlbGV0ZUNhbGxiYWNrLCBlZGl0Q2FsbGJhY2sgfSkge1xuICAgIHN1cGVyKFwiVG9kb0l0ZW1cIik7XG4gICAgdGhpcy5pdGVtID0gaXRlbTtcbiAgICB0aGlzLmNhbGxiYWNrID0gY2FsbGJhY2s7XG4gICAgdGhpcy5kZWxldGVDYWxsYmFjayA9IGRlbGV0ZUNhbGxiYWNrO1xuICAgIHRoaXMuZWRpdENhbGxiYWNrID0gZWRpdENhbGxiYWNrO1xuICB9XG5cbiAgcHVibGljIGNyZWF0ZVN0YXRlKCkge1xuICAgIHJldHVybiBuZXcgVG9kb0l0ZW1TdGF0ZSgpO1xuICB9XG59XG5cbmNsYXNzIFRvZG9JdGVtU3RhdGUgZXh0ZW5kcyBNWEpTV2lkZ2V0U3RhdGUge1xuICBwdWJsaWMgZWRpdFRleHRWYWx1ZTogYW55O1xuICBwdWJsaWMgaXNFZGl0OiBhbnk7XG4gIHB1YmxpYyB3aWRnZXQ6IFRvZG9JdGVtO1xuXG4gIHB1YmxpYyBjb25zdHJ1Y3RvcigpIHtcbiAgICBzdXBlcigpO1xuICAgIHRoaXMuZWRpdFRleHRWYWx1ZSA9ICcnO1xuICAgIHRoaXMuaXNFZGl0ID0gZmFsc2U7XG4gIH1cblxuICBwdWJsaWMgYnVpbGQoY29udGV4dCkge1xuICAgIGNvbnN0IHRleHRDb2xvciA9IHRoaXMud2lkZ2V0Lml0ZW0uaXNEb25lID8gQ29sb3JzLmdyZXkgOiBUaGVtZS5vZihjb250ZXh0KS5wcmltYXJ5Q29sb3JEYXJrO1xuXG4gICAgcmV0dXJuIG5ldyBDb250YWluZXIoe1xuICAgICAgcGFkZGluZzogRWRnZUluc2V0cy5hbGwoMjApLFxuICAgICAgY2hpbGQ6IG5ldyBDb250YWluZXIoe1xuICAgICAgICBkZWNvcmF0aW9uOiBuZXcgQm94RGVjb3JhdGlvbih7XG4gICAgICAgICAgYm9yZGVyOiBCb3JkZXIuYWxsKHsgY29sb3I6IENvbG9ycy5ncmV5LCB3aWR0aDogMC41IH0pLFxuICAgICAgICAgIC8vIGJvcmRlclJhZGl1czogQm9yZGVyUmFkaXVzLmFsbChSYWRpdXMuY2lyY3VsYXIoOCkpLFxuICAgICAgICB9KSxcbiAgICAgICAgcGFkZGluZzogRWRnZUluc2V0cy5hbGwoOCksXG4gICAgICAgIGNoaWxkOiBuZXcgUm93KHtcbiAgICAgICAgICBjaGlsZHJlbjogW1xuICAgICAgICAgICAgLy8gbmV3IENoZWNrYm94KHtcbiAgICAgICAgICAgIC8vICAgdmFsdWU6IHRoaXMud2lkZ2V0Lml0ZW0uaXNEb25lLFxuICAgICAgICAgICAgLy8gICBhY3RpdmVDb2xvcjogQ29sb3JzLmdyZXksXG4gICAgICAgICAgICAvLyAgIG9uQ2hhbmdlZDogKHZhbHVlKSA9PiB7XG4gICAgICAgICAgICAvLyAgICAgdGhpcy53aWRnZXQuY2FsbGJhY2sodmFsdWUpO1xuICAgICAgICAgICAgLy8gICB9LFxuICAgICAgICAgICAgLy8gfSlcbiAgICAgICAgICAgIG5ldyBJY29uQnV0dG9uKHtcbiAgICAgICAgICAgICAgdG9vbHRpcDogJ+WujOaIkCcsXG4gICAgICAgICAgICAgIGljb246IG5ldyBJY29uKEljb25zLmRvbmUpLFxuICAgICAgICAgICAgICBjb2xvcjogdGV4dENvbG9yLFxuICAgICAgICAgICAgICBvblByZXNzZWQ6ICgpID0+IHtcbiAgICAgICAgICAgICAgICB0aGlzLndpZGdldC5jYWxsYmFjayghdGhpcy53aWRnZXQuaXRlbS5pc0RvbmUpO1xuICAgICAgICAgICAgICB9XG4gICAgICAgICAgICB9KSxcbiAgICAgICAgICAgIG5ldyBQYWRkaW5nKHtcbiAgICAgICAgICAgICAgcGFkZGluZzogRWRnZUluc2V0cy5vbmx5KHsgbGVmdDogMTAgfSlcbiAgICAgICAgICAgIH0pLFxuICAgICAgICAgICAgdGhpcy5idWlsZE5hbWVXaWRnZXQodGV4dENvbG9yKSxcbiAgICAgICAgICAgIG5ldyBJY29uQnV0dG9uKHtcbiAgICAgICAgICAgICAgdG9vbHRpcDogJ+WIoOmZpCcsXG4gICAgICAgICAgICAgIGljb246IG5ldyBJY29uKEljb25zLmRlbGV0ZSksXG4gICAgICAgICAgICAgIGNvbG9yOiBDb2xvcnMuZ3JleSxcbiAgICAgICAgICAgICAgb25QcmVzc2VkOiAoKSA9PiB7XG4gICAgICAgICAgICAgICAgdGhpcy53aWRnZXQuZGVsZXRlQ2FsbGJhY2sodGhpcy53aWRnZXQuaXRlbSk7XG4gICAgICAgICAgICAgIH1cbiAgICAgICAgICAgIH0pLFxuICAgICAgICAgIF1cbiAgICAgICAgfSlcbiAgICAgIH0pXG4gICAgfSlcbiAgfVxuXG4gIHB1YmxpYyBidWlsZE5hbWVXaWRnZXQodGV4dENvbG9yKSB7XG4gICAgaWYgKHRoaXMuaXNFZGl0KSB7XG4gICAgICByZXR1cm4gbmV3IEV4cGFuZGVkKHtcbiAgICAgICAgY2hpbGQ6IG5ldyBDb250YWluZXIoe1xuICAgICAgICAgIHdpZHRoOiAyMDAsXG4gICAgICAgICAgY2hpbGQ6IG5ldyBUZXh0RmllbGQoe1xuICAgICAgICAgICAgd2lkdGg6IDIwMCxcbiAgICAgICAgICAgIGNvbnRyb2xsZXI6IG5ldyBUZXh0RWRpdGluZ0NvbnRyb2xsZXIoe1xuICAgICAgICAgICAgICB0ZXh0OiB0aGlzLndpZGdldC5pdGVtLm5hbWVcbiAgICAgICAgICAgIH0pLFxuICAgICAgICAgICAgb25DaGFuZ2VkOiAodmFsdWUpID0+IHtcbiAgICAgICAgICAgICAgdGhpcy5lZGl0VGV4dFZhbHVlID0gdmFsdWU7XG4gICAgICAgICAgICB9LFxuICAgICAgICAgICAgb25TdWJtaXR0ZWQ6ICgpID0+IHtcbiAgICAgICAgICAgICAgdGhpcy53aWRnZXQuZWRpdENhbGxiYWNrKHRoaXMuZWRpdFRleHRWYWx1ZSk7XG5cbiAgICAgICAgICAgICAgdGhpcy5zZXRTdGF0ZSgoKSA9PiB7XG4gICAgICAgICAgICAgICAgdGhpcy5pc0VkaXQgPSBmYWxzZTtcbiAgICAgICAgICAgICAgfSk7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfSlcbiAgICAgICAgfSlcbiAgICAgIH0pXG4gICAgfVxuXG4gICAgcmV0dXJuIG5ldyBFeHBhbmRlZCh7XG4gICAgICBjaGlsZDogbmV3IEdlc3R1cmVEZXRlY3Rvcih7XG4gICAgICAgIG9uVGFwOiAoKSA9PiB7XG4gICAgICAgICAgdGhpcy5zZXRTdGF0ZSgoKSA9PiB7XG4gICAgICAgICAgICB0aGlzLmlzRWRpdCA9IHRydWU7XG4gICAgICAgICAgfSk7XG4gICAgICAgIH0sXG4gICAgICAgIGNoaWxkOiBuZXcgVGV4dCh0aGlzLndpZGdldC5pdGVtLm5hbWUsIHtcbiAgICAgICAgICBzb2Z0V3JhcDogdHJ1ZSxcbiAgICAgICAgICBvdmVyZmxvdzogVGV4dE92ZXJmbG93LmVsbGlwc2lzLFxuICAgICAgICAgIG1heExpbmVzOiAyLFxuICAgICAgICAgIHRleHRBbGlnbjogVGV4dEFsaWduLmxlZnQsXG4gICAgICAgICAgc3R5bGU6IG5ldyBUZXh0U3R5bGUoe1xuICAgICAgICAgICAgZm9udFNpemU6IDIwLFxuICAgICAgICAgICAgY29sb3I6IHRleHRDb2xvcixcbiAgICAgICAgICB9KSxcbiAgICAgICAgfSlcbiAgICAgIH0pXG4gICAgfSk7XG4gIH1cbn1cblxuZXhwb3J0IHtcbiAgVG9kb0l0ZW1cbn0iLCJtb2R1bGUuZXhwb3J0cyA9IHJlcXVpcmUoXCJjb25zb2xlXCIpOyIsIm1vZHVsZS5leHBvcnRzID0gZ2xvYmFsVGhpcy5yZXF1aXJlKFwiZGFydF9zZGtcIik7IiwiLy8gVGhlIG1vZHVsZSBjYWNoZVxudmFyIF9fd2VicGFja19tb2R1bGVfY2FjaGVfXyA9IHt9O1xuXG4vLyBUaGUgcmVxdWlyZSBmdW5jdGlvblxuZnVuY3Rpb24gX193ZWJwYWNrX3JlcXVpcmVfXyhtb2R1bGVJZCkge1xuXHQvLyBDaGVjayBpZiBtb2R1bGUgaXMgaW4gY2FjaGVcblx0aWYoX193ZWJwYWNrX21vZHVsZV9jYWNoZV9fW21vZHVsZUlkXSkge1xuXHRcdHJldHVybiBfX3dlYnBhY2tfbW9kdWxlX2NhY2hlX19bbW9kdWxlSWRdLmV4cG9ydHM7XG5cdH1cblx0Ly8gQ3JlYXRlIGEgbmV3IG1vZHVsZSAoYW5kIHB1dCBpdCBpbnRvIHRoZSBjYWNoZSlcblx0dmFyIG1vZHVsZSA9IF9fd2VicGFja19tb2R1bGVfY2FjaGVfX1ttb2R1bGVJZF0gPSB7XG5cdFx0Ly8gbm8gbW9kdWxlLmlkIG5lZWRlZFxuXHRcdC8vIG5vIG1vZHVsZS5sb2FkZWQgbmVlZGVkXG5cdFx0ZXhwb3J0czoge31cblx0fTtcblxuXHQvLyBFeGVjdXRlIHRoZSBtb2R1bGUgZnVuY3Rpb25cblx0X193ZWJwYWNrX21vZHVsZXNfX1ttb2R1bGVJZF0uY2FsbChtb2R1bGUuZXhwb3J0cywgbW9kdWxlLCBtb2R1bGUuZXhwb3J0cywgX193ZWJwYWNrX3JlcXVpcmVfXyk7XG5cblx0Ly8gUmV0dXJuIHRoZSBleHBvcnRzIG9mIHRoZSBtb2R1bGVcblx0cmV0dXJuIG1vZHVsZS5leHBvcnRzO1xufVxuXG4vLyBleHBvc2UgdGhlIG1vZHVsZXMgb2JqZWN0IChfX3dlYnBhY2tfbW9kdWxlc19fKVxuX193ZWJwYWNrX3JlcXVpcmVfXy5tID0gX193ZWJwYWNrX21vZHVsZXNfXztcblxuLy8gdGhlIHN0YXJ0dXAgZnVuY3Rpb25cbl9fd2VicGFja19yZXF1aXJlX18ueCA9ICgpID0+IHtcblx0Ly8gTG9hZCBlbnRyeSBtb2R1bGVcblx0X193ZWJwYWNrX3JlcXVpcmVfXyhcIi4vc3JjL2luZGV4LnRzXCIpO1xuXHQvLyBUaGlzIGVudHJ5IG1vZHVsZSB1c2VkICdleHBvcnRzJyBzbyBpdCBjYW4ndCBiZSBpbmxpbmVkXG59O1xuXG4iLCIvLyBnZXREZWZhdWx0RXhwb3J0IGZ1bmN0aW9uIGZvciBjb21wYXRpYmlsaXR5IHdpdGggbm9uLWhhcm1vbnkgbW9kdWxlc1xuX193ZWJwYWNrX3JlcXVpcmVfXy5uID0gKG1vZHVsZSkgPT4ge1xuXHR2YXIgZ2V0dGVyID0gbW9kdWxlICYmIG1vZHVsZS5fX2VzTW9kdWxlID9cblx0XHQoKSA9PiBtb2R1bGVbJ2RlZmF1bHQnXSA6XG5cdFx0KCkgPT4gbW9kdWxlO1xuXHRfX3dlYnBhY2tfcmVxdWlyZV9fLmQoZ2V0dGVyLCB7IGE6IGdldHRlciB9KTtcblx0cmV0dXJuIGdldHRlcjtcbn07IiwiLy8gZGVmaW5lIGdldHRlciBmdW5jdGlvbnMgZm9yIGhhcm1vbnkgZXhwb3J0c1xuX193ZWJwYWNrX3JlcXVpcmVfXy5kID0gKGV4cG9ydHMsIGRlZmluaXRpb24pID0+IHtcblx0Zm9yKHZhciBrZXkgaW4gZGVmaW5pdGlvbikge1xuXHRcdGlmKF9fd2VicGFja19yZXF1aXJlX18ubyhkZWZpbml0aW9uLCBrZXkpICYmICFfX3dlYnBhY2tfcmVxdWlyZV9fLm8oZXhwb3J0cywga2V5KSkge1xuXHRcdFx0T2JqZWN0LmRlZmluZVByb3BlcnR5KGV4cG9ydHMsIGtleSwgeyBlbnVtZXJhYmxlOiB0cnVlLCBnZXQ6IGRlZmluaXRpb25ba2V5XSB9KTtcblx0XHR9XG5cdH1cbn07IiwiX193ZWJwYWNrX3JlcXVpcmVfXy5mID0ge307XG4vLyBUaGlzIGZpbGUgY29udGFpbnMgb25seSB0aGUgZW50cnkgY2h1bmsuXG4vLyBUaGUgY2h1bmsgbG9hZGluZyBmdW5jdGlvbiBmb3IgYWRkaXRpb25hbCBjaHVua3Ncbl9fd2VicGFja19yZXF1aXJlX18uZSA9IChjaHVua0lkKSA9PiB7XG5cdHJldHVybiBQcm9taXNlLmFsbChPYmplY3Qua2V5cyhfX3dlYnBhY2tfcmVxdWlyZV9fLmYpLnJlZHVjZSgocHJvbWlzZXMsIGtleSkgPT4ge1xuXHRcdF9fd2VicGFja19yZXF1aXJlX18uZltrZXldKGNodW5rSWQsIHByb21pc2VzKTtcblx0XHRyZXR1cm4gcHJvbWlzZXM7XG5cdH0sIFtdKSk7XG59OyIsIi8vIFRoaXMgZnVuY3Rpb24gYWxsb3cgdG8gcmVmZXJlbmNlIGFzeW5jIGNodW5rcyBhbmQgc2libGluZyBjaHVua3MgZm9yIHRoZSBlbnRyeXBvaW50XG5fX3dlYnBhY2tfcmVxdWlyZV9fLnUgPSAoY2h1bmtJZCkgPT4ge1xuXHQvLyByZXR1cm4gdXJsIGZvciBmaWxlbmFtZXMgYmFzZWQgb24gdGVtcGxhdGVcblx0cmV0dXJuIFwiXCIgKyBjaHVua0lkICsgXCIuanNcIjtcbn07IiwiX193ZWJwYWNrX3JlcXVpcmVfXy5vID0gKG9iaiwgcHJvcCkgPT4gT2JqZWN0LnByb3RvdHlwZS5oYXNPd25Qcm9wZXJ0eS5jYWxsKG9iaiwgcHJvcCkiLCIvLyBkZWZpbmUgX19lc01vZHVsZSBvbiBleHBvcnRzXG5fX3dlYnBhY2tfcmVxdWlyZV9fLnIgPSAoZXhwb3J0cykgPT4ge1xuXHRpZih0eXBlb2YgU3ltYm9sICE9PSAndW5kZWZpbmVkJyAmJiBTeW1ib2wudG9TdHJpbmdUYWcpIHtcblx0XHRPYmplY3QuZGVmaW5lUHJvcGVydHkoZXhwb3J0cywgU3ltYm9sLnRvU3RyaW5nVGFnLCB7IHZhbHVlOiAnTW9kdWxlJyB9KTtcblx0fVxuXHRPYmplY3QuZGVmaW5lUHJvcGVydHkoZXhwb3J0cywgJ19fZXNNb2R1bGUnLCB7IHZhbHVlOiB0cnVlIH0pO1xufTsiLCJ2YXIgbmV4dCA9IF9fd2VicGFja19yZXF1aXJlX18ueDtcbl9fd2VicGFja19yZXF1aXJlX18ueCA9ICgpID0+IHtcblx0X193ZWJwYWNrX3JlcXVpcmVfXy5lKFwiY29tbW9uXCIpO1xuXHRyZXR1cm4gbmV4dCgpO1xufTsiLCIvLyBvYmplY3QgdG8gc3RvcmUgbG9hZGVkIGNodW5rc1xuLy8gXCIxXCIgbWVhbnMgXCJsb2FkZWRcIiwgb3RoZXJ3aXNlIG5vdCBsb2FkZWQgeWV0XG52YXIgaW5zdGFsbGVkQ2h1bmtzID0ge1xuXHRcImJ1bmRsZS1leGFtcGxlMlwiOiAxXG59O1xuXG52YXIgaW5zdGFsbENodW5rID0gKGNodW5rKSA9PiB7XG5cdHZhciBtb3JlTW9kdWxlcyA9IGNodW5rLm1vZHVsZXMsIGNodW5rSWRzID0gY2h1bmsuaWRzLCBydW50aW1lID0gY2h1bmsucnVudGltZTtcblx0Zm9yKHZhciBtb2R1bGVJZCBpbiBtb3JlTW9kdWxlcykge1xuXHRcdGlmKF9fd2VicGFja19yZXF1aXJlX18ubyhtb3JlTW9kdWxlcywgbW9kdWxlSWQpKSB7XG5cdFx0XHRfX3dlYnBhY2tfcmVxdWlyZV9fLm1bbW9kdWxlSWRdID0gbW9yZU1vZHVsZXNbbW9kdWxlSWRdO1xuXHRcdH1cblx0fVxuXHRpZihydW50aW1lKSBydW50aW1lKF9fd2VicGFja19yZXF1aXJlX18pO1xuXHRmb3IodmFyIGkgPSAwOyBpIDwgY2h1bmtJZHMubGVuZ3RoOyBpKyspXG5cdFx0aW5zdGFsbGVkQ2h1bmtzW2NodW5rSWRzW2ldXSA9IDE7XG59O1xuXG4vLyByZXF1aXJlKCkgY2h1bmsgbG9hZGluZyBmb3IgamF2YXNjcmlwdFxuX193ZWJwYWNrX3JlcXVpcmVfXy5mLnJlcXVpcmUgPSBmdW5jdGlvbihjaHVua0lkLCBwcm9taXNlcykge1xuXG5cdC8vIFwiMVwiIGlzIHRoZSBzaWduYWwgZm9yIFwiYWxyZWFkeSBsb2FkZWRcIlxuXHRpZighaW5zdGFsbGVkQ2h1bmtzW2NodW5rSWRdKSB7XG5cdFx0aWYodHJ1ZSkgeyAvLyBhbGwgY2h1bmtzIGhhdmUgSlNcblx0XHRcdGluc3RhbGxDaHVuayhyZXF1aXJlKFwiLi9cIiArIF9fd2VicGFja19yZXF1aXJlX18udShjaHVua0lkKSkpO1xuXHRcdH0gZWxzZSBpbnN0YWxsZWRDaHVua3NbY2h1bmtJZF0gPSAxO1xuXHR9XG59O1xuXG4vLyBubyBleHRlcm5hbCBpbnN0YWxsIGNodW5rXG5cbi8vIG5vIEhNUlxuXG4vLyBubyBITVIgbWFuaWZlc3QiLCIvLyBydW4gc3RhcnR1cFxucmV0dXJuIF9fd2VicGFja19yZXF1aXJlX18ueCgpO1xuIl0sInNvdXJjZVJvb3QiOiIifQ==