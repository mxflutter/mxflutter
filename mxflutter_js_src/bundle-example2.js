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
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMi8uL3NyYy9pbmRleC50cyIsIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMi8uL3NyYy9pdGVtLnRzIiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUyL2V4dGVybmFsIFwiY29uc29sZVwiIiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUyL3dlYnBhY2svYm9vdHN0cmFwIiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUyL3dlYnBhY2svcnVudGltZS9jb21wYXQgZ2V0IGRlZmF1bHQgZXhwb3J0Iiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUyL3dlYnBhY2svcnVudGltZS9kZWZpbmUgcHJvcGVydHkgZ2V0dGVycyIsIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMi93ZWJwYWNrL3J1bnRpbWUvZW5zdXJlIGNodW5rIiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUyL3dlYnBhY2svcnVudGltZS9nZXQgamF2YXNjcmlwdCBjaHVuayBmaWxlbmFtZSIsIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMi93ZWJwYWNrL3J1bnRpbWUvaGFzT3duUHJvcGVydHkgc2hvcnRoYW5kIiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUyL3dlYnBhY2svcnVudGltZS9tYWtlIG5hbWVzcGFjZSBvYmplY3QiLCJ3ZWJwYWNrOi8vQHRlc3QvZXhhbXBsZTIvd2VicGFjay9ydW50aW1lL3N0YXJ0dXAgY2h1bmsgZGVwZW5kZW5jaWVzIiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUyL3dlYnBhY2svcnVudGltZS9yZXF1aXJlIGNodW5rIGxvYWRpbmciLCJ3ZWJwYWNrOi8vQHRlc3QvZXhhbXBsZTIvd2VicGFjay9zdGFydHVwIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7OztBQUFBLG9CQUFvQjtBQUNpSDtBQW9CbEc7QUFFRjtBQUVqQyxNQUFNLFlBQWEsU0FBUSxrRUFBa0I7SUFFM0M7UUFDRSxLQUFLLENBQUMsY0FB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O1dBQ0E7V0FDQTtXQUNBLGdDQUFnQyxZQUFZO1dBQzVDO1dBQ0EsRTs7Ozs7V0NQQTtXQUNBO1dBQ0E7V0FDQTtXQUNBLHdDQUF3Qyx5Q0FBeUM7V0FDakY7V0FDQTtXQUNBLEU7Ozs7O1dDUEE7V0FDQTtXQUNBO1dBQ0E7V0FDQTtXQUNBO1dBQ0E7V0FDQSxFQUFFO1dBQ0YsRTs7Ozs7V0NSQTtXQUNBO1dBQ0E7V0FDQTtXQUNBLEU7Ozs7O1dDSkEsc0Y7Ozs7O1dDQUE7V0FDQTtXQUNBO1dBQ0Esc0RBQXNELGtCQUFrQjtXQUN4RTtXQUNBLCtDQUErQyxjQUFjO1dBQzdELEU7Ozs7O1dDTkE7V0FDQTtXQUNBO1dBQ0E7V0FDQSxFOzs7OztXQ0pBO1dBQ0E7V0FDQTtXQUNBO1dBQ0E7O1dBRUE7V0FDQTtXQUNBO1dBQ0E7V0FDQTtXQUNBO1dBQ0E7V0FDQTtXQUNBLGVBQWUscUJBQXFCO1dBQ3BDO1dBQ0E7O1dBRUE7V0FDQTs7V0FFQTtXQUNBO1dBQ0EsWUFBWTtXQUNaO1dBQ0EsR0FBRztXQUNIO1dBQ0E7O1dBRUE7O1dBRUE7O1dBRUEsa0I7Ozs7VUNqQ0E7VUFDQSIsImZpbGUiOiJidW5kbGUtZXhhbXBsZTIuanMiLCJzb3VyY2VzQ29udGVudCI6WyIvKiBlc2xpbnQtZGlzYWJsZSAqL1xuaW1wb3J0IHsgcnVuQXBwLCBNWEpTQmFzZVdpZGdldCwgTVhKU0ZsdXR0ZXJBcHAsIE1YSlNTdGF0ZWxlc3NXaWRnZXQsIE1YSlNTdGF0ZWZ1bFdpZGdldCwgTVhKU1dpZGdldFN0YXRlIH0gZnJvbSAnQHRlbmNlbnQvbXhmbHV0dGVyJ1xuaW1wb3J0IHtcbiAgQ29udGFpbmVyLFxuICBDb2x1bW4sXG4gIEV4cGFuZGVkLFxuICBDb2xvcnMsXG4gIFRleHQsXG4gIExpc3RWaWV3LFxuICBGb250V2VpZ2h0LFxuICBGbGF0QnV0dG9uLFxuICBFZGdlSW5zZXRzLFxuICBJbnB1dERlY29yYXRpb24sXG4gIFRleHRGaWVsZCxcbiAgVGV4dEVkaXRpbmdDb250cm9sbGVyLFxuICBUZXh0QWxpZ24sXG4gIFRleHRTdHlsZSxcbiAgUm93LFxuICBQYWRkaW5nLFxuICBUaGVtZSxcbiAgS2V5LFxufSBmcm9tICdAdGVuY2VudC9teGZsdXR0ZXItd2lkZ2V0cydcblxuaW1wb3J0IHsgVG9kb0l0ZW0gfSBmcm9tICcuL2l0ZW0nXG5cbmNsYXNzIFRvZG9MaXN0UGFnZSBleHRlbmRzIE1YSlNTdGF0ZWZ1bFdpZGdldCB7XG4gIHB1YmxpYyBkYXRhOiBhbnk7XG4gIHB1YmxpYyBjb25zdHJ1Y3RvcigpIHtcbiAgICBzdXBlcihcIlRvZG9MaXN0UGFnZVwiKTtcblxuICAgIHRoaXMuZGF0YSA9IFwidGVzdFwiO1xuICB9XG5cbiAgcHVibGljIGNyZWF0ZVN0YXRlKCkge1xuICAgIHJldHVybiBuZXcgVG9kb0xpc3RQYWdlU3RhdGUoKTtcbiAgfVxufVxuXG5jbGFzcyBUb2RvTGlzdFBhZ2VTdGF0ZSBleHRlbmRzIE1YSlNXaWRnZXRTdGF0ZSB7XG4gIHB1YmxpYyB0ZXh0Q3RyOiBhbnk7XG4gIHB1YmxpYyBhZGRUZXh0VmFsdWU6IGFueTtcbiAgcHVibGljIG5ld0lkeDogYW55O1xuICBwdWJsaWMgZGF0YUxpc3Q6IGFueTtcbiAgcHVibGljIGluZGV4OiBhbnk7XG5cbiAgcHVibGljIGNvbnN0cnVjdG9yKCkge1xuICAgIHN1cGVyKCk7XG4gICAgdGhpcy50ZXh0Q3RyID0gbmV3IFRleHRFZGl0aW5nQ29udHJvbGxlcih7XG4gICAgICB0ZXh0OiAnJ1xuICAgIH0pO1xuICAgIHRoaXMuYWRkVGV4dFZhbHVlID0gJyc7XG4gICAgdGhpcy5uZXdJZHggPSAwO1xuICAgIHRoaXMuZGF0YUxpc3QgPSBbXTtcbiAgfVxuXG4gIHB1YmxpYyBidWlsZChjb250ZXh0KSB7XG4gICAgY29uc3Qgd0xpc3QgPSB0aGlzLmJ1aWxkTGlzdChjb250ZXh0KTtcblxuICAgIHJldHVybiBuZXcgQ29udGFpbmVyKHtcbiAgICAgIHBhZGRpbmc6IEVkZ2VJbnNldHMuYWxsKDEwLjApLFxuICAgICAgY2hpbGQ6IG5ldyBDb2x1bW4oe1xuICAgICAgICBjaGlsZHJlbjogW1xuICAgICAgICAgIG5ldyBQYWRkaW5nKHtcbiAgICAgICAgICAgIHBhZGRpbmc6IEVkZ2VJbnNldHMub25seSh7IHRvcDogNSB9KVxuICAgICAgICAgIH0pLFxuICAgICAgICAgIG5ldyBSb3coe1xuICAgICAgICAgICAgY2hpbGRyZW46IFtcbiAgICAgICAgICAgICAgbmV3IFBhZGRpbmcoe1xuICAgICAgICAgICAgICAgIHBhZGRpbmc6IEVkZ2VJbnNldHMub25seSh7IGxlZnQ6IDIwIH0pXG4gICAgICAgICAgICAgIH0pLFxuICAgICAgICAgICAgICBuZXcgRXhwYW5kZWQoe1xuICAgICAgICAgICAgICAgIGNoaWxkOiBuZXcgVGV4dEZpZWxkKHtcbiAgICAgICAgICAgICAgICAgIHdpZHRoOiAyMDAsXG4gICAgICAgICAgICAgICAgICBjb250cm9sbGVyOiB0aGlzLnRleHRDdHIsXG4gICAgICAgICAgICAgICAgICBkZWNvcmF0aW9uOiBuZXcgSW5wdXREZWNvcmF0aW9uKHtcbiAgICAgICAgICAgICAgICAgICAgaGludFRleHQ6IFwi6K+35aGr5YaZIFRPRE8g5LqL6aG5XCJcbiAgICAgICAgICAgICAgICAgIH0pLFxuICAgICAgICAgICAgICAgICAgb25DaGFuZ2VkOiAodmFsdWUpID0+IHtcbiAgICAgICAgICAgICAgICAgICAgdGhpcy5hZGRUZXh0VmFsdWUgPSB2YWx1ZTtcbiAgICAgICAgICAgICAgICAgIH1cbiAgICAgICAgICAgICAgICB9KVxuICAgICAgICAgICAgICB9KSxcbiAgICAgICAgICAgICAgbmV3IFBhZGRpbmcoe1xuICAgICAgICAgICAgICAgIHBhZGRpbmc6IEVkZ2VJbnNldHMub25seSh7IGxlZnQ6IDIwIH0pXG4gICAgICAgICAgICAgIH0pLFxuICAgICAgICAgICAgICBuZXcgRmxhdEJ1dHRvbih7XG4gICAgICAgICAgICAgICAgY29sb3I6IFRoZW1lLm9mKGNvbnRleHQpLnByaW1hcnlDb2xvcixcbiAgICAgICAgICAgICAgICB0ZXh0Q29sb3I6IENvbG9ycy53aGl0ZSxcbiAgICAgICAgICAgICAgICBjaGlsZDogbmV3IFRleHQoXCLmt7vliqBcIiksXG4gICAgICAgICAgICAgICAgb25QcmVzc2VkOiAoKSA9PiB7XG4gICAgICAgICAgICAgICAgICB0aGlzLnNldFN0YXRlKCgpID0+IHtcbiAgICAgICAgICAgICAgICAgICAgdGhpcy5hZGROZXdJdGVtKHRoaXMuYWRkVGV4dFZhbHVlKTtcbiAgICAgICAgICAgICAgICAgIH0pO1xuICAgICAgICAgICAgICAgICAgXG4gICAgICAgICAgICAgICAgICBjb25zb2xlLmxvZygnYWRkOicgKyB0aGlzLmFkZFRleHRWYWx1ZSk7XG4gICAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgICB9KVxuICAgICAgICAgICAgXVxuICAgICAgICAgIH0pLFxuICAgICAgICAgIG5ldyBFeHBhbmRlZCh7XG4gICAgICAgICAgICBjaGlsZDogbmV3IExpc3RWaWV3KHtcbiAgICAgICAgICAgICAgY2hpbGRyZW46IHdMaXN0XG4gICAgICAgICAgICB9KVxuICAgICAgICAgIH0pXG4gICAgICAgIF1cbiAgICAgIH0pXG4gICAgfSlcbiAgfVxuXG4gIHB1YmxpYyBidWlsZExpc3QoY29udGV4dCkge1xuICAgIGxldCB3TGlzdDogYW55ID0gW107XG4gICAgbGV0IHdEb2luZ0xpc3QgPSB0aGlzLmJ1aWxkRGF0YUxpc3QodHJ1ZSk7XG4gICAgbGV0IHdEb25lTGlzdCA9IHRoaXMuYnVpbGREYXRhTGlzdChmYWxzZSk7XG5cbiAgICB3TGlzdC5wdXNoKG5ldyBQYWRkaW5nKHsgcGFkZGluZzogRWRnZUluc2V0cy5vbmx5KHsgdG9wOiAyMCB9KSB9KSk7XG4gICAgd0xpc3QucHVzaChuZXcgUm93KHtcbiAgICAgIGNoaWxkcmVuOiBbXG4gICAgICAgIG5ldyBQYWRkaW5nKHtcbiAgICAgICAgICBwYWRkaW5nOiBFZGdlSW5zZXRzLm9ubHkoeyBsZWZ0OiAyMCB9KVxuICAgICAgICB9KSxcbiAgICAgICAgbmV3IFRleHQoXCLmraPlnKjov5vooYxcIiwge1xuICAgICAgICAgIHRleHRBbGlnbjogVGV4dEFsaWduLmxlZnQsXG4gICAgICAgICAgc3R5bGU6IG5ldyBUZXh0U3R5bGUoe1xuICAgICAgICAgICAgZm9udFNpemU6IDIwLFxuICAgICAgICAgICAgZm9udFdlaWdodDogRm9udFdlaWdodC5ib2xkLFxuICAgICAgICAgICAgY29sb3I6IFRoZW1lLm9mKGNvbnRleHQpLnByaW1hcnlDb2xvckRhcmtcbiAgICAgICAgICB9KSBcbiAgICAgICAgfSksXG4gICAgICAgIG5ldyBFeHBhbmRlZCh7XG4gICAgICAgICAgY2hpbGQ6IG5ldyBUZXh0KHdEb2luZ0xpc3QubGVuZ3RoLnRvU3RyaW5nKCksIHtcbiAgICAgICAgICAgIHRleHRBbGlnbjogVGV4dEFsaWduLnJpZ2h0LFxuICAgICAgICAgICAgc3R5bGU6IG5ldyBUZXh0U3R5bGUoe1xuICAgICAgICAgICAgICBmb250U2l6ZTogMjAsXG4gICAgICAgICAgICAgIGZvbnRXZWlnaHQ6IEZvbnRXZWlnaHQuYm9sZCxcbiAgICAgICAgICAgICAgY29sb3I6IENvbG9ycy5yZWRcbiAgICAgICAgICAgIH0pIFxuICAgICAgICAgIH0pXG4gICAgICAgIH0pLFxuICAgICAgICBuZXcgUGFkZGluZyh7XG4gICAgICAgICAgcGFkZGluZzogRWRnZUluc2V0cy5vbmx5KHsgcmlnaHQ6IDIwIH0pXG4gICAgICAgIH0pLFxuICAgICAgXVxuICAgIH0pKVxuICAgIHdMaXN0ID0gd0xpc3QuY29uY2F0KHdEb2luZ0xpc3QpO1xuXG4gICAgd0xpc3QucHVzaChuZXcgUGFkZGluZyh7IHBhZGRpbmc6IEVkZ2VJbnNldHMub25seSh7IHRvcDogMjAgfSkgfSkpO1xuICAgIHdMaXN0LnB1c2gobmV3IFJvdyh7XG4gICAgICBjaGlsZHJlbjogW1xuICAgICAgICBuZXcgUGFkZGluZyh7XG4gICAgICAgICAgcGFkZGluZzogRWRnZUluc2V0cy5vbmx5KHsgbGVmdDogMjAgfSlcbiAgICAgICAgfSksXG4gICAgICAgIG5ldyBUZXh0KFwi5bey5a6M5oiQXCIsIHtcbiAgICAgICAgICB0ZXh0QWxpZ246IFRleHRBbGlnbi5sZWZ0LFxuICAgICAgICAgIHN0eWxlOiBuZXcgVGV4dFN0eWxlKHtcbiAgICAgICAgICAgIGZvbnRTaXplOiAyMCxcbiAgICAgICAgICAgIGZvbnRXZWlnaHQ6IEZvbnRXZWlnaHQuYm9sZCxcbiAgICAgICAgICAgIGNvbG9yOiBUaGVtZS5vZihjb250ZXh0KS5wcmltYXJ5Q29sb3JEYXJrXG4gICAgICAgICAgfSkgXG4gICAgICAgIH0pLFxuICAgICAgICBuZXcgRXhwYW5kZWQoe1xuICAgICAgICAgIGNoaWxkOiBuZXcgVGV4dCh3RG9uZUxpc3QubGVuZ3RoLnRvU3RyaW5nKCksIHtcbiAgICAgICAgICAgIHRleHRBbGlnbjogVGV4dEFsaWduLnJpZ2h0LFxuICAgICAgICAgICAgc3R5bGU6IG5ldyBUZXh0U3R5bGUoe1xuICAgICAgICAgICAgICBmb250U2l6ZTogMjAsXG4gICAgICAgICAgICAgIGZvbnRXZWlnaHQ6IEZvbnRXZWlnaHQuYm9sZCxcbiAgICAgICAgICAgICAgY29sb3I6IENvbG9ycy5ncmV5XG4gICAgICAgICAgICB9KSBcbiAgICAgICAgICB9KVxuICAgICAgICB9KSxcbiAgICAgICAgbmV3IFBhZGRpbmcoe1xuICAgICAgICAgIHBhZGRpbmc6IEVkZ2VJbnNldHMub25seSh7IHJpZ2h0OiAyMCB9KVxuICAgICAgICB9KSxcbiAgICAgIF1cbiAgICB9KSlcbiAgICB3TGlzdCA9IHdMaXN0LmNvbmNhdCh3RG9uZUxpc3QpO1xuXG4gICAgcmV0dXJuIHdMaXN0O1xuICB9XG5cbiAgcHVibGljIGJ1aWxkRGF0YUxpc3QoaXNEb2luZykge1xuICAgIGNvbnN0IGRhdGFMaXN0ID0gaXNEb2luZyA/IHRoaXMuZGF0YUxpc3QuZmlsdGVyKCh2KSA9PiB7XG4gICAgICByZXR1cm4gIXYuaXNEb25lXG4gICAgfSkgOiB0aGlzLmRhdGFMaXN0LmZpbHRlcigodikgPT4ge1xuICAgICAgcmV0dXJuIHYuaXNEb25lXG4gICAgfSk7XG5cbiAgICByZXR1cm4gZGF0YUxpc3QubWFwKChpdGVtLCBpbmRleCkgPT4ge1xuICAgICAgcmV0dXJuIG5ldyBUb2RvSXRlbSh7XG4gICAgICAgIGl0ZW06IGl0ZW0sXG4gICAgICAgIGNhbGxiYWNrOiAodmFsKSA9PiB7XG4gICAgICAgICAgY29uc29sZS5sb2coJ2NiMScsIHRoaXMuZGF0YUxpc3QsIGl0ZW0sIHZhbCk7XG4gICAgICAgICAgdGhpcy5zZXRTdGF0ZSgoKSA9PiB7XG4gICAgICAgICAgICBpdGVtLmlzRG9uZSA9IHZhbDtcbiAgICAgICAgICB9KTtcbiAgICAgICAgfSxcbiAgICAgICAgZGVsZXRlQ2FsbGJhY2s6ICh3SXRlbSkgPT4ge1xuICAgICAgICAgIGNvbnNvbGUubG9nKCdjYjInLCB0aGlzLmRhdGFMaXN0LCBpdGVtLCB3SXRlbSk7XG4gICAgICAgICAgdGhpcy5zZXRTdGF0ZSgoKSA9PiB7XG4gICAgICAgICAgICB0aGlzLmRhdGFMaXN0LnNwbGljZSh0aGlzLmRhdGFMaXN0LmZpbmRJbmRleChpdGVtID0+IGl0ZW0uaW5kZXggPT09IHdJdGVtLmluZGV4KSwgMSlcbiAgICAgICAgICB9KTtcbiAgICAgICAgfSxcbiAgICAgICAgZWRpdENhbGxiYWNrOiAobmV3TmFtZSkgPT4ge1xuICAgICAgICAgIGNvbnNvbGUubG9nKCdjYjMnLCB0aGlzLmRhdGFMaXN0LCBpdGVtLCBuZXdOYW1lKTtcbiAgICAgICAgICB0aGlzLnNldFN0YXRlKCgpID0+IHtcbiAgICAgICAgICAgIGl0ZW0ubmFtZSA9IG5ld05hbWU7XG4gICAgICAgICAgfSk7XG4gICAgICAgIH0sXG4gICAgICB9KVxuICAgIH0pXG4gIH1cblxuICBwdWJsaWMgYWRkTmV3SXRlbSh2YWx1ZSkge1xuICAgIHRoaXMubmV3SWR4ICs9IDE7XG4gICAgdGhpcy5kYXRhTGlzdC5wdXNoKHtcbiAgICAgIGluZGV4OiB0aGlzLmluZGV4LFxuICAgICAgbmFtZTogdmFsdWUsXG4gICAgICBpc0RvbmU6IGZhbHNlLFxuICAgIH0pXG4gIH1cblxufVxuXG5jb25zdCBNWEZsdXR0ZXIgPSBnbG9iYWxUaGlzLk1YRmx1dHRlcjtcblxuTVhGbHV0dGVyLnJlZ2lzdCh7XG4gIG5hbWU6ICdleGFtcGxlMicsXG4gIFJvb3RXaWRnZXQ6IFRvZG9MaXN0UGFnZSxcbn0pO1xuIiwiLyogZXNsaW50LWRpc2FibGUgKi9cbmltcG9ydCB7IHJ1bkFwcCwgTVhKU0Jhc2VXaWRnZXQsIE1YSlNGbHV0dGVyQXBwLCBNWEpTU3RhdGVsZXNzV2lkZ2V0LCBNWEpTU3RhdGVmdWxXaWRnZXQsIE1YSlNXaWRnZXRTdGF0ZSB9IGZyb20gJ0B0ZW5jZW50L214Zmx1dHRlcidcbmltcG9ydCB7XG4gIENvbnRhaW5lcixcbiAgRXhwYW5kZWQsXG4gIENvbG9ycyxcbiAgQm9yZGVyLFxuICBUZXh0LFxuICBJY29uLFxuICBJY29ucyxcbiAgRWRnZUluc2V0cyxcbiAgQm94RGVjb3JhdGlvbixcbiAgVGV4dEZpZWxkLFxuICBUZXh0RWRpdGluZ0NvbnRyb2xsZXIsXG4gIFRleHRBbGlnbixcbiAgVGV4dFN0eWxlLFxuICBUZXh0T3ZlcmZsb3csXG4gIFJvdyxcbiAgUGFkZGluZyxcbiAgSWNvbkJ1dHRvbixcbiAgVGhlbWUsXG4gIEdlc3R1cmVEZXRlY3Rvcixcbn0gZnJvbSAnQHRlbmNlbnQvbXhmbHV0dGVyLXdpZGdldHMnXG5cbmNsYXNzIFRvZG9JdGVtIGV4dGVuZHMgTVhKU1N0YXRlZnVsV2lkZ2V0IHtcbiAgcHVibGljIGl0ZW06IGFueTtcbiAgcHVibGljIGNhbGxiYWNrOiBhbnk7XG4gIHB1YmxpYyBkZWxldGVDYWxsYmFjazogYW55O1xuICBwdWJsaWMgZWRpdENhbGxiYWNrOiBhbnk7XG5cbiAgcHVibGljIGNvbnN0cnVjdG9yKHsgaXRlbSwgY2FsbGJhY2ssIGRlbGV0ZUNhbGxiYWNrLCBlZGl0Q2FsbGJhY2sgfSkge1xuICAgIHN1cGVyKFwiVG9kb0l0ZW1cIik7XG4gICAgdGhpcy5pdGVtID0gaXRlbTtcbiAgICB0aGlzLmNhbGxiYWNrID0gY2FsbGJhY2s7XG4gICAgdGhpcy5kZWxldGVDYWxsYmFjayA9IGRlbGV0ZUNhbGxiYWNrO1xuICAgIHRoaXMuZWRpdENhbGxiYWNrID0gZWRpdENhbGxiYWNrO1xuICB9XG5cbiAgcHVibGljIGNyZWF0ZVN0YXRlKCkge1xuICAgIHJldHVybiBuZXcgVG9kb0l0ZW1TdGF0ZSgpO1xuICB9XG59XG5cbmNsYXNzIFRvZG9JdGVtU3RhdGUgZXh0ZW5kcyBNWEpTV2lkZ2V0U3RhdGUge1xuICBwdWJsaWMgZWRpdFRleHRWYWx1ZTogYW55O1xuICBwdWJsaWMgaXNFZGl0OiBhbnk7XG4gIHB1YmxpYyB3aWRnZXQ6IFRvZG9JdGVtO1xuXG4gIHB1YmxpYyBjb25zdHJ1Y3RvcigpIHtcbiAgICBzdXBlcigpO1xuICAgIHRoaXMuZWRpdFRleHRWYWx1ZSA9ICcnO1xuICAgIHRoaXMuaXNFZGl0ID0gZmFsc2U7XG4gIH1cblxuICBwdWJsaWMgYnVpbGQoY29udGV4dCkge1xuICAgIGNvbnN0IHRleHRDb2xvciA9IHRoaXMud2lkZ2V0Lml0ZW0uaXNEb25lID8gQ29sb3JzLmdyZXkgOiBUaGVtZS5vZihjb250ZXh0KS5wcmltYXJ5Q29sb3JEYXJrO1xuXG4gICAgcmV0dXJuIG5ldyBDb250YWluZXIoe1xuICAgICAgcGFkZGluZzogRWRnZUluc2V0cy5hbGwoMjApLFxuICAgICAgY2hpbGQ6IG5ldyBDb250YWluZXIoe1xuICAgICAgICBkZWNvcmF0aW9uOiBuZXcgQm94RGVjb3JhdGlvbih7XG4gICAgICAgICAgYm9yZGVyOiBCb3JkZXIuYWxsKHsgY29sb3I6IENvbG9ycy5ncmV5LCB3aWR0aDogMC41IH0pLFxuICAgICAgICAgIC8vIGJvcmRlclJhZGl1czogQm9yZGVyUmFkaXVzLmFsbChSYWRpdXMuY2lyY3VsYXIoOCkpLFxuICAgICAgICB9KSxcbiAgICAgICAgcGFkZGluZzogRWRnZUluc2V0cy5hbGwoOCksXG4gICAgICAgIGNoaWxkOiBuZXcgUm93KHtcbiAgICAgICAgICBjaGlsZHJlbjogW1xuICAgICAgICAgICAgLy8gbmV3IENoZWNrYm94KHtcbiAgICAgICAgICAgIC8vICAgdmFsdWU6IHRoaXMud2lkZ2V0Lml0ZW0uaXNEb25lLFxuICAgICAgICAgICAgLy8gICBhY3RpdmVDb2xvcjogQ29sb3JzLmdyZXksXG4gICAgICAgICAgICAvLyAgIG9uQ2hhbmdlZDogKHZhbHVlKSA9PiB7XG4gICAgICAgICAgICAvLyAgICAgdGhpcy53aWRnZXQuY2FsbGJhY2sodmFsdWUpO1xuICAgICAgICAgICAgLy8gICB9LFxuICAgICAgICAgICAgLy8gfSlcbiAgICAgICAgICAgIG5ldyBJY29uQnV0dG9uKHtcbiAgICAgICAgICAgICAgdG9vbHRpcDogJ+WujOaIkCcsXG4gICAgICAgICAgICAgIGljb246IG5ldyBJY29uKEljb25zLmRvbmUpLFxuICAgICAgICAgICAgICBjb2xvcjogdGV4dENvbG9yLFxuICAgICAgICAgICAgICBvblByZXNzZWQ6ICgpID0+IHtcbiAgICAgICAgICAgICAgICB0aGlzLndpZGdldC5jYWxsYmFjayghdGhpcy53aWRnZXQuaXRlbS5pc0RvbmUpO1xuICAgICAgICAgICAgICB9XG4gICAgICAgICAgICB9KSxcbiAgICAgICAgICAgIG5ldyBQYWRkaW5nKHtcbiAgICAgICAgICAgICAgcGFkZGluZzogRWRnZUluc2V0cy5vbmx5KHsgbGVmdDogMTAgfSlcbiAgICAgICAgICAgIH0pLFxuICAgICAgICAgICAgdGhpcy5idWlsZE5hbWVXaWRnZXQodGV4dENvbG9yKSxcbiAgICAgICAgICAgIG5ldyBJY29uQnV0dG9uKHtcbiAgICAgICAgICAgICAgdG9vbHRpcDogJ+WIoOmZpCcsXG4gICAgICAgICAgICAgIGljb246IG5ldyBJY29uKEljb25zLmRlbGV0ZSksXG4gICAgICAgICAgICAgIGNvbG9yOiBDb2xvcnMuZ3JleSxcbiAgICAgICAgICAgICAgb25QcmVzc2VkOiAoKSA9PiB7XG4gICAgICAgICAgICAgICAgdGhpcy53aWRnZXQuZGVsZXRlQ2FsbGJhY2sodGhpcy53aWRnZXQuaXRlbSk7XG4gICAgICAgICAgICAgIH1cbiAgICAgICAgICAgIH0pLFxuICAgICAgICAgIF1cbiAgICAgICAgfSlcbiAgICAgIH0pXG4gICAgfSlcbiAgfVxuXG4gIHB1YmxpYyBidWlsZE5hbWVXaWRnZXQodGV4dENvbG9yKSB7XG4gICAgaWYgKHRoaXMuaXNFZGl0KSB7XG4gICAgICByZXR1cm4gbmV3IEV4cGFuZGVkKHtcbiAgICAgICAgY2hpbGQ6IG5ldyBDb250YWluZXIoe1xuICAgICAgICAgIHdpZHRoOiAyMDAsXG4gICAgICAgICAgY2hpbGQ6IG5ldyBUZXh0RmllbGQoe1xuICAgICAgICAgICAgd2lkdGg6IDIwMCxcbiAgICAgICAgICAgIGNvbnRyb2xsZXI6IG5ldyBUZXh0RWRpdGluZ0NvbnRyb2xsZXIoe1xuICAgICAgICAgICAgICB0ZXh0OiB0aGlzLndpZGdldC5pdGVtLm5hbWVcbiAgICAgICAgICAgIH0pLFxuICAgICAgICAgICAgb25DaGFuZ2VkOiAodmFsdWUpID0+IHtcbiAgICAgICAgICAgICAgdGhpcy5lZGl0VGV4dFZhbHVlID0gdmFsdWU7XG4gICAgICAgICAgICB9LFxuICAgICAgICAgICAgb25TdWJtaXR0ZWQ6ICgpID0+IHtcbiAgICAgICAgICAgICAgdGhpcy53aWRnZXQuZWRpdENhbGxiYWNrKHRoaXMuZWRpdFRleHRWYWx1ZSk7XG5cbiAgICAgICAgICAgICAgdGhpcy5zZXRTdGF0ZSgoKSA9PiB7XG4gICAgICAgICAgICAgICAgdGhpcy5pc0VkaXQgPSBmYWxzZTtcbiAgICAgICAgICAgICAgfSk7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfSlcbiAgICAgICAgfSlcbiAgICAgIH0pXG4gICAgfVxuXG4gICAgcmV0dXJuIG5ldyBFeHBhbmRlZCh7XG4gICAgICBjaGlsZDogbmV3IEdlc3R1cmVEZXRlY3Rvcih7XG4gICAgICAgIG9uVGFwOiAoKSA9PiB7XG4gICAgICAgICAgdGhpcy5zZXRTdGF0ZSgoKSA9PiB7XG4gICAgICAgICAgICB0aGlzLmlzRWRpdCA9IHRydWU7XG4gICAgICAgICAgfSk7XG4gICAgICAgIH0sXG4gICAgICAgIGNoaWxkOiBuZXcgVGV4dCh0aGlzLndpZGdldC5pdGVtLm5hbWUsIHtcbiAgICAgICAgICBzb2Z0V3JhcDogdHJ1ZSxcbiAgICAgICAgICBvdmVyZmxvdzogVGV4dE92ZXJmbG93LmVsbGlwc2lzLFxuICAgICAgICAgIG1heExpbmVzOiAyLFxuICAgICAgICAgIHRleHRBbGlnbjogVGV4dEFsaWduLmxlZnQsXG4gICAgICAgICAgc3R5bGU6IG5ldyBUZXh0U3R5bGUoe1xuICAgICAgICAgICAgZm9udFNpemU6IDIwLFxuICAgICAgICAgICAgY29sb3I6IHRleHRDb2xvcixcbiAgICAgICAgICB9KSxcbiAgICAgICAgfSlcbiAgICAgIH0pXG4gICAgfSk7XG4gIH1cbn1cblxuZXhwb3J0IHtcbiAgVG9kb0l0ZW1cbn0iLCJtb2R1bGUuZXhwb3J0cyA9IHJlcXVpcmUoXCJjb25zb2xlXCIpOyIsIi8vIFRoZSBtb2R1bGUgY2FjaGVcbnZhciBfX3dlYnBhY2tfbW9kdWxlX2NhY2hlX18gPSB7fTtcblxuLy8gVGhlIHJlcXVpcmUgZnVuY3Rpb25cbmZ1bmN0aW9uIF9fd2VicGFja19yZXF1aXJlX18obW9kdWxlSWQpIHtcblx0Ly8gQ2hlY2sgaWYgbW9kdWxlIGlzIGluIGNhY2hlXG5cdGlmKF9fd2VicGFja19tb2R1bGVfY2FjaGVfX1ttb2R1bGVJZF0pIHtcblx0XHRyZXR1cm4gX193ZWJwYWNrX21vZHVsZV9jYWNoZV9fW21vZHVsZUlkXS5leHBvcnRzO1xuXHR9XG5cdC8vIENyZWF0ZSBhIG5ldyBtb2R1bGUgKGFuZCBwdXQgaXQgaW50byB0aGUgY2FjaGUpXG5cdHZhciBtb2R1bGUgPSBfX3dlYnBhY2tfbW9kdWxlX2NhY2hlX19bbW9kdWxlSWRdID0ge1xuXHRcdC8vIG5vIG1vZHVsZS5pZCBuZWVkZWRcblx0XHQvLyBubyBtb2R1bGUubG9hZGVkIG5lZWRlZFxuXHRcdGV4cG9ydHM6IHt9XG5cdH07XG5cblx0Ly8gRXhlY3V0ZSB0aGUgbW9kdWxlIGZ1bmN0aW9uXG5cdF9fd2VicGFja19tb2R1bGVzX19bbW9kdWxlSWRdLmNhbGwobW9kdWxlLmV4cG9ydHMsIG1vZHVsZSwgbW9kdWxlLmV4cG9ydHMsIF9fd2VicGFja19yZXF1aXJlX18pO1xuXG5cdC8vIFJldHVybiB0aGUgZXhwb3J0cyBvZiB0aGUgbW9kdWxlXG5cdHJldHVybiBtb2R1bGUuZXhwb3J0cztcbn1cblxuLy8gZXhwb3NlIHRoZSBtb2R1bGVzIG9iamVjdCAoX193ZWJwYWNrX21vZHVsZXNfXylcbl9fd2VicGFja19yZXF1aXJlX18ubSA9IF9fd2VicGFja19tb2R1bGVzX187XG5cbi8vIHRoZSBzdGFydHVwIGZ1bmN0aW9uXG5fX3dlYnBhY2tfcmVxdWlyZV9fLnggPSAoKSA9PiB7XG5cdC8vIExvYWQgZW50cnkgbW9kdWxlXG5cdF9fd2VicGFja19yZXF1aXJlX18oXCIuL3NyYy9pbmRleC50c1wiKTtcblx0Ly8gVGhpcyBlbnRyeSBtb2R1bGUgdXNlZCAnZXhwb3J0cycgc28gaXQgY2FuJ3QgYmUgaW5saW5lZFxufTtcblxuIiwiLy8gZ2V0RGVmYXVsdEV4cG9ydCBmdW5jdGlvbiBmb3IgY29tcGF0aWJpbGl0eSB3aXRoIG5vbi1oYXJtb255IG1vZHVsZXNcbl9fd2VicGFja19yZXF1aXJlX18ubiA9IChtb2R1bGUpID0+IHtcblx0dmFyIGdldHRlciA9IG1vZHVsZSAmJiBtb2R1bGUuX19lc01vZHVsZSA/XG5cdFx0KCkgPT4gbW9kdWxlWydkZWZhdWx0J10gOlxuXHRcdCgpID0+IG1vZHVsZTtcblx0X193ZWJwYWNrX3JlcXVpcmVfXy5kKGdldHRlciwgeyBhOiBnZXR0ZXIgfSk7XG5cdHJldHVybiBnZXR0ZXI7XG59OyIsIi8vIGRlZmluZSBnZXR0ZXIgZnVuY3Rpb25zIGZvciBoYXJtb255IGV4cG9ydHNcbl9fd2VicGFja19yZXF1aXJlX18uZCA9IChleHBvcnRzLCBkZWZpbml0aW9uKSA9PiB7XG5cdGZvcih2YXIga2V5IGluIGRlZmluaXRpb24pIHtcblx0XHRpZihfX3dlYnBhY2tfcmVxdWlyZV9fLm8oZGVmaW5pdGlvbiwga2V5KSAmJiAhX193ZWJwYWNrX3JlcXVpcmVfXy5vKGV4cG9ydHMsIGtleSkpIHtcblx0XHRcdE9iamVjdC5kZWZpbmVQcm9wZXJ0eShleHBvcnRzLCBrZXksIHsgZW51bWVyYWJsZTogdHJ1ZSwgZ2V0OiBkZWZpbml0aW9uW2tleV0gfSk7XG5cdFx0fVxuXHR9XG59OyIsIl9fd2VicGFja19yZXF1aXJlX18uZiA9IHt9O1xuLy8gVGhpcyBmaWxlIGNvbnRhaW5zIG9ubHkgdGhlIGVudHJ5IGNodW5rLlxuLy8gVGhlIGNodW5rIGxvYWRpbmcgZnVuY3Rpb24gZm9yIGFkZGl0aW9uYWwgY2h1bmtzXG5fX3dlYnBhY2tfcmVxdWlyZV9fLmUgPSAoY2h1bmtJZCkgPT4ge1xuXHRyZXR1cm4gUHJvbWlzZS5hbGwoT2JqZWN0LmtleXMoX193ZWJwYWNrX3JlcXVpcmVfXy5mKS5yZWR1Y2UoKHByb21pc2VzLCBrZXkpID0+IHtcblx0XHRfX3dlYnBhY2tfcmVxdWlyZV9fLmZba2V5XShjaHVua0lkLCBwcm9taXNlcyk7XG5cdFx0cmV0dXJuIHByb21pc2VzO1xuXHR9LCBbXSkpO1xufTsiLCIvLyBUaGlzIGZ1bmN0aW9uIGFsbG93IHRvIHJlZmVyZW5jZSBhc3luYyBjaHVua3MgYW5kIHNpYmxpbmcgY2h1bmtzIGZvciB0aGUgZW50cnlwb2ludFxuX193ZWJwYWNrX3JlcXVpcmVfXy51ID0gKGNodW5rSWQpID0+IHtcblx0Ly8gcmV0dXJuIHVybCBmb3IgZmlsZW5hbWVzIGJhc2VkIG9uIHRlbXBsYXRlXG5cdHJldHVybiBcIlwiICsgY2h1bmtJZCArIFwiLmpzXCI7XG59OyIsIl9fd2VicGFja19yZXF1aXJlX18ubyA9IChvYmosIHByb3ApID0+IE9iamVjdC5wcm90b3R5cGUuaGFzT3duUHJvcGVydHkuY2FsbChvYmosIHByb3ApIiwiLy8gZGVmaW5lIF9fZXNNb2R1bGUgb24gZXhwb3J0c1xuX193ZWJwYWNrX3JlcXVpcmVfXy5yID0gKGV4cG9ydHMpID0+IHtcblx0aWYodHlwZW9mIFN5bWJvbCAhPT0gJ3VuZGVmaW5lZCcgJiYgU3ltYm9sLnRvU3RyaW5nVGFnKSB7XG5cdFx0T2JqZWN0LmRlZmluZVByb3BlcnR5KGV4cG9ydHMsIFN5bWJvbC50b1N0cmluZ1RhZywgeyB2YWx1ZTogJ01vZHVsZScgfSk7XG5cdH1cblx0T2JqZWN0LmRlZmluZVByb3BlcnR5KGV4cG9ydHMsICdfX2VzTW9kdWxlJywgeyB2YWx1ZTogdHJ1ZSB9KTtcbn07IiwidmFyIG5leHQgPSBfX3dlYnBhY2tfcmVxdWlyZV9fLng7XG5fX3dlYnBhY2tfcmVxdWlyZV9fLnggPSAoKSA9PiB7XG5cdF9fd2VicGFja19yZXF1aXJlX18uZShcImNvbW1vblwiKTtcblx0cmV0dXJuIG5leHQoKTtcbn07IiwiLy8gb2JqZWN0IHRvIHN0b3JlIGxvYWRlZCBjaHVua3Ncbi8vIFwiMVwiIG1lYW5zIFwibG9hZGVkXCIsIG90aGVyd2lzZSBub3QgbG9hZGVkIHlldFxudmFyIGluc3RhbGxlZENodW5rcyA9IHtcblx0XCJidW5kbGUtZXhhbXBsZTJcIjogMVxufTtcblxudmFyIGluc3RhbGxDaHVuayA9IChjaHVuaykgPT4ge1xuXHR2YXIgbW9yZU1vZHVsZXMgPSBjaHVuay5tb2R1bGVzLCBjaHVua0lkcyA9IGNodW5rLmlkcywgcnVudGltZSA9IGNodW5rLnJ1bnRpbWU7XG5cdGZvcih2YXIgbW9kdWxlSWQgaW4gbW9yZU1vZHVsZXMpIHtcblx0XHRpZihfX3dlYnBhY2tfcmVxdWlyZV9fLm8obW9yZU1vZHVsZXMsIG1vZHVsZUlkKSkge1xuXHRcdFx0X193ZWJwYWNrX3JlcXVpcmVfXy5tW21vZHVsZUlkXSA9IG1vcmVNb2R1bGVzW21vZHVsZUlkXTtcblx0XHR9XG5cdH1cblx0aWYocnVudGltZSkgcnVudGltZShfX3dlYnBhY2tfcmVxdWlyZV9fKTtcblx0Zm9yKHZhciBpID0gMDsgaSA8IGNodW5rSWRzLmxlbmd0aDsgaSsrKVxuXHRcdGluc3RhbGxlZENodW5rc1tjaHVua0lkc1tpXV0gPSAxO1xufTtcblxuLy8gcmVxdWlyZSgpIGNodW5rIGxvYWRpbmcgZm9yIGphdmFzY3JpcHRcbl9fd2VicGFja19yZXF1aXJlX18uZi5yZXF1aXJlID0gZnVuY3Rpb24oY2h1bmtJZCwgcHJvbWlzZXMpIHtcblxuXHQvLyBcIjFcIiBpcyB0aGUgc2lnbmFsIGZvciBcImFscmVhZHkgbG9hZGVkXCJcblx0aWYoIWluc3RhbGxlZENodW5rc1tjaHVua0lkXSkge1xuXHRcdGlmKHRydWUpIHsgLy8gYWxsIGNodW5rcyBoYXZlIEpTXG5cdFx0XHRpbnN0YWxsQ2h1bmsocmVxdWlyZShcIi4vXCIgKyBfX3dlYnBhY2tfcmVxdWlyZV9fLnUoY2h1bmtJZCkpKTtcblx0XHR9IGVsc2UgaW5zdGFsbGVkQ2h1bmtzW2NodW5rSWRdID0gMTtcblx0fVxufTtcblxuLy8gbm8gZXh0ZXJuYWwgaW5zdGFsbCBjaHVua1xuXG4vLyBubyBITVJcblxuLy8gbm8gSE1SIG1hbmlmZXN0IiwiLy8gcnVuIHN0YXJ0dXBcbnJldHVybiBfX3dlYnBhY2tfcmVxdWlyZV9fLngoKTtcbiJdLCJzb3VyY2VSb290IjoiIn0=