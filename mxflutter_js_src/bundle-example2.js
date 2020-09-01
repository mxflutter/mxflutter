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
        return new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Scaffold({
            body: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Container({
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
            }),
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
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMi8uL3NyYy9pbmRleC50cyIsIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMi8uL3NyYy9pdGVtLnRzIiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUyL2V4dGVybmFsIFwiY29uc29sZVwiIiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUyL3dlYnBhY2svYm9vdHN0cmFwIiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUyL3dlYnBhY2svcnVudGltZS9jb21wYXQgZ2V0IGRlZmF1bHQgZXhwb3J0Iiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUyL3dlYnBhY2svcnVudGltZS9kZWZpbmUgcHJvcGVydHkgZ2V0dGVycyIsIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMi93ZWJwYWNrL3J1bnRpbWUvZW5zdXJlIGNodW5rIiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUyL3dlYnBhY2svcnVudGltZS9nZXQgamF2YXNjcmlwdCBjaHVuayBmaWxlbmFtZSIsIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMi93ZWJwYWNrL3J1bnRpbWUvaGFzT3duUHJvcGVydHkgc2hvcnRoYW5kIiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUyL3dlYnBhY2svcnVudGltZS9tYWtlIG5hbWVzcGFjZSBvYmplY3QiLCJ3ZWJwYWNrOi8vQHRlc3QvZXhhbXBsZTIvd2VicGFjay9ydW50aW1lL3N0YXJ0dXAgY2h1bmsgZGVwZW5kZW5jaWVzIiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUyL3dlYnBhY2svcnVudGltZS9yZXF1aXJlIGNodW5rIGxvYWRpbmciLCJ3ZWJwYWNrOi8vQHRlc3QvZXhhbXBsZTIvd2VicGFjay9zdGFydHVwIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7OztBQUFBLG9CQUFvQjtBQUNpSDtBQXFCbEc7QUFFRjtBQUVqQyxNQUFNLFlBQWEsU0FBUSxrRUFBa0I7SUFFM0M7UUFDRSxLQUFLLENBQUMsY0FB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O1VBQ0E7VUFDQTtVQUNBO1VBQ0E7VUFDQTs7Ozs7V0MvQkE7V0FDQTtXQUNBO1dBQ0E7V0FDQTtXQUNBLGdDQUFnQyxZQUFZO1dBQzVDO1dBQ0EsRTs7Ozs7V0NQQTtXQUNBO1dBQ0E7V0FDQTtXQUNBLHdDQUF3Qyx5Q0FBeUM7V0FDakY7V0FDQTtXQUNBLEU7Ozs7O1dDUEE7V0FDQTtXQUNBO1dBQ0E7V0FDQTtXQUNBO1dBQ0E7V0FDQSxFQUFFO1dBQ0YsRTs7Ozs7V0NSQTtXQUNBO1dBQ0E7V0FDQTtXQUNBLEU7Ozs7O1dDSkEsc0Y7Ozs7O1dDQUE7V0FDQTtXQUNBO1dBQ0Esc0RBQXNELGtCQUFrQjtXQUN4RTtXQUNBLCtDQUErQyxjQUFjO1dBQzdELEU7Ozs7O1dDTkE7V0FDQTtXQUNBO1dBQ0E7V0FDQSxFOzs7OztXQ0pBO1dBQ0E7V0FDQTtXQUNBO1dBQ0E7O1dBRUE7V0FDQTtXQUNBO1dBQ0E7V0FDQTtXQUNBO1dBQ0E7V0FDQTtXQUNBLGVBQWUscUJBQXFCO1dBQ3BDO1dBQ0E7O1dBRUE7V0FDQTs7V0FFQTtXQUNBO1dBQ0EsWUFBWTtXQUNaO1dBQ0EsR0FBRztXQUNIO1dBQ0E7O1dBRUE7O1dBRUE7O1dBRUEsa0I7Ozs7VUNqQ0E7VUFDQSIsImZpbGUiOiJidW5kbGUtZXhhbXBsZTIuanMiLCJzb3VyY2VzQ29udGVudCI6WyIvKiBlc2xpbnQtZGlzYWJsZSAqL1xuaW1wb3J0IHsgcnVuQXBwLCBNWEpTQmFzZVdpZGdldCwgTVhKU0ZsdXR0ZXJBcHAsIE1YSlNTdGF0ZWxlc3NXaWRnZXQsIE1YSlNTdGF0ZWZ1bFdpZGdldCwgTVhKU1dpZGdldFN0YXRlIH0gZnJvbSAnQHRlbmNlbnQvbXhmbHV0dGVyJ1xuaW1wb3J0IHtcbiAgQ29udGFpbmVyLFxuICBDb2x1bW4sXG4gIEV4cGFuZGVkLFxuICBDb2xvcnMsXG4gIFRleHQsXG4gIExpc3RWaWV3LFxuICBGb250V2VpZ2h0LFxuICBGbGF0QnV0dG9uLFxuICBFZGdlSW5zZXRzLFxuICBJbnB1dERlY29yYXRpb24sXG4gIFRleHRGaWVsZCxcbiAgVGV4dEVkaXRpbmdDb250cm9sbGVyLFxuICBUZXh0QWxpZ24sXG4gIFRleHRTdHlsZSxcbiAgUm93LFxuICBQYWRkaW5nLFxuICBUaGVtZSxcbiAgS2V5LFxuICBTY2FmZm9sZCxcbn0gZnJvbSAnQHRlbmNlbnQvbXhmbHV0dGVyLXdpZGdldHMnXG5cbmltcG9ydCB7IFRvZG9JdGVtIH0gZnJvbSAnLi9pdGVtJ1xuXG5jbGFzcyBUb2RvTGlzdFBhZ2UgZXh0ZW5kcyBNWEpTU3RhdGVmdWxXaWRnZXQge1xuICBwdWJsaWMgZGF0YTogYW55O1xuICBwdWJsaWMgY29uc3RydWN0b3IoKSB7XG4gICAgc3VwZXIoXCJUb2RvTGlzdFBhZ2VcIik7XG5cbiAgICB0aGlzLmRhdGEgPSBcInRlc3RcIjtcbiAgfVxuXG4gIHB1YmxpYyBjcmVhdGVTdGF0ZSgpIHtcbiAgICByZXR1cm4gbmV3IFRvZG9MaXN0UGFnZVN0YXRlKCk7XG4gIH1cbn1cblxuY2xhc3MgVG9kb0xpc3RQYWdlU3RhdGUgZXh0ZW5kcyBNWEpTV2lkZ2V0U3RhdGUge1xuICBwdWJsaWMgdGV4dEN0cjogYW55O1xuICBwdWJsaWMgYWRkVGV4dFZhbHVlOiBhbnk7XG4gIHB1YmxpYyBuZXdJZHg6IGFueTtcbiAgcHVibGljIGRhdGFMaXN0OiBhbnk7XG4gIHB1YmxpYyBpbmRleDogYW55O1xuXG4gIHB1YmxpYyBjb25zdHJ1Y3RvcigpIHtcbiAgICBzdXBlcigpO1xuICAgIHRoaXMudGV4dEN0ciA9IG5ldyBUZXh0RWRpdGluZ0NvbnRyb2xsZXIoe1xuICAgICAgdGV4dDogJydcbiAgICB9KTtcbiAgICB0aGlzLmFkZFRleHRWYWx1ZSA9ICcnO1xuICAgIHRoaXMubmV3SWR4ID0gMDtcbiAgICB0aGlzLmRhdGFMaXN0ID0gW107XG4gIH1cblxuICBwdWJsaWMgYnVpbGQoY29udGV4dCkge1xuICAgIGNvbnN0IHdMaXN0ID0gdGhpcy5idWlsZExpc3QoY29udGV4dCk7XG5cbiAgICByZXR1cm4gbmV3IFNjYWZmb2xkKHtcbiAgICAgIGJvZHk6IG5ldyBDb250YWluZXIoe1xuICAgICAgcGFkZGluZzogRWRnZUluc2V0cy5hbGwoMTAuMCksXG4gICAgICBjaGlsZDogbmV3IENvbHVtbih7XG4gICAgICAgIGNoaWxkcmVuOiBbXG4gICAgICAgICAgbmV3IFBhZGRpbmcoe1xuICAgICAgICAgICAgcGFkZGluZzogRWRnZUluc2V0cy5vbmx5KHsgdG9wOiA1IH0pXG4gICAgICAgICAgfSksXG4gICAgICAgICAgbmV3IFJvdyh7XG4gICAgICAgICAgICBjaGlsZHJlbjogW1xuICAgICAgICAgICAgICBuZXcgUGFkZGluZyh7XG4gICAgICAgICAgICAgICAgcGFkZGluZzogRWRnZUluc2V0cy5vbmx5KHsgbGVmdDogMjAgfSlcbiAgICAgICAgICAgICAgfSksXG4gICAgICAgICAgICAgIG5ldyBFeHBhbmRlZCh7XG4gICAgICAgICAgICAgICAgY2hpbGQ6IG5ldyBUZXh0RmllbGQoe1xuICAgICAgICAgICAgICAgICAgd2lkdGg6IDIwMCxcbiAgICAgICAgICAgICAgICAgIGNvbnRyb2xsZXI6IHRoaXMudGV4dEN0cixcbiAgICAgICAgICAgICAgICAgIGRlY29yYXRpb246IG5ldyBJbnB1dERlY29yYXRpb24oe1xuICAgICAgICAgICAgICAgICAgICBoaW50VGV4dDogXCLor7floavlhpkgVE9ETyDkuovpoblcIlxuICAgICAgICAgICAgICAgICAgfSksXG4gICAgICAgICAgICAgICAgICBvbkNoYW5nZWQ6ICh2YWx1ZSkgPT4ge1xuICAgICAgICAgICAgICAgICAgICB0aGlzLmFkZFRleHRWYWx1ZSA9IHZhbHVlO1xuICAgICAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgICAgIH0pXG4gICAgICAgICAgICAgIH0pLFxuICAgICAgICAgICAgICBuZXcgUGFkZGluZyh7XG4gICAgICAgICAgICAgICAgcGFkZGluZzogRWRnZUluc2V0cy5vbmx5KHsgbGVmdDogMjAgfSlcbiAgICAgICAgICAgICAgfSksXG4gICAgICAgICAgICAgIG5ldyBGbGF0QnV0dG9uKHtcbiAgICAgICAgICAgICAgICBjb2xvcjogVGhlbWUub2YoY29udGV4dCkucHJpbWFyeUNvbG9yLFxuICAgICAgICAgICAgICAgIHRleHRDb2xvcjogQ29sb3JzLndoaXRlLFxuICAgICAgICAgICAgICAgIGNoaWxkOiBuZXcgVGV4dChcIua3u+WKoFwiKSxcbiAgICAgICAgICAgICAgICBvblByZXNzZWQ6ICgpID0+IHtcbiAgICAgICAgICAgICAgICAgIHRoaXMuc2V0U3RhdGUoKCkgPT4ge1xuICAgICAgICAgICAgICAgICAgICB0aGlzLmFkZE5ld0l0ZW0odGhpcy5hZGRUZXh0VmFsdWUpO1xuICAgICAgICAgICAgICAgICAgfSk7XG4gICAgICAgICAgICAgICAgICBcbiAgICAgICAgICAgICAgICAgIGNvbnNvbGUubG9nKCdhZGQ6JyArIHRoaXMuYWRkVGV4dFZhbHVlKTtcbiAgICAgICAgICAgICAgICB9XG4gICAgICAgICAgICAgIH0pXG4gICAgICAgICAgICBdXG4gICAgICAgICAgfSksXG4gICAgICAgICAgbmV3IEV4cGFuZGVkKHtcbiAgICAgICAgICAgIGNoaWxkOiBuZXcgTGlzdFZpZXcoe1xuICAgICAgICAgICAgICBjaGlsZHJlbjogd0xpc3RcbiAgICAgICAgICAgIH0pXG4gICAgICAgICAgfSlcbiAgICAgICAgXVxuICAgICAgfSlcbiAgICB9KSxcbiAgICB9KVxuICAgIFxuICB9XG5cbiAgcHVibGljIGJ1aWxkTGlzdChjb250ZXh0KSB7XG4gICAgbGV0IHdMaXN0OiBhbnkgPSBbXTtcbiAgICBsZXQgd0RvaW5nTGlzdCA9IHRoaXMuYnVpbGREYXRhTGlzdCh0cnVlKTtcbiAgICBsZXQgd0RvbmVMaXN0ID0gdGhpcy5idWlsZERhdGFMaXN0KGZhbHNlKTtcblxuICAgIHdMaXN0LnB1c2gobmV3IFBhZGRpbmcoeyBwYWRkaW5nOiBFZGdlSW5zZXRzLm9ubHkoeyB0b3A6IDIwIH0pIH0pKTtcbiAgICB3TGlzdC5wdXNoKG5ldyBSb3coe1xuICAgICAgY2hpbGRyZW46IFtcbiAgICAgICAgbmV3IFBhZGRpbmcoe1xuICAgICAgICAgIHBhZGRpbmc6IEVkZ2VJbnNldHMub25seSh7IGxlZnQ6IDIwIH0pXG4gICAgICAgIH0pLFxuICAgICAgICBuZXcgVGV4dChcIuato+WcqOi/m+ihjFwiLCB7XG4gICAgICAgICAgdGV4dEFsaWduOiBUZXh0QWxpZ24ubGVmdCxcbiAgICAgICAgICBzdHlsZTogbmV3IFRleHRTdHlsZSh7XG4gICAgICAgICAgICBmb250U2l6ZTogMjAsXG4gICAgICAgICAgICBmb250V2VpZ2h0OiBGb250V2VpZ2h0LmJvbGQsXG4gICAgICAgICAgICBjb2xvcjogVGhlbWUub2YoY29udGV4dCkucHJpbWFyeUNvbG9yRGFya1xuICAgICAgICAgIH0pIFxuICAgICAgICB9KSxcbiAgICAgICAgbmV3IEV4cGFuZGVkKHtcbiAgICAgICAgICBjaGlsZDogbmV3IFRleHQod0RvaW5nTGlzdC5sZW5ndGgudG9TdHJpbmcoKSwge1xuICAgICAgICAgICAgdGV4dEFsaWduOiBUZXh0QWxpZ24ucmlnaHQsXG4gICAgICAgICAgICBzdHlsZTogbmV3IFRleHRTdHlsZSh7XG4gICAgICAgICAgICAgIGZvbnRTaXplOiAyMCxcbiAgICAgICAgICAgICAgZm9udFdlaWdodDogRm9udFdlaWdodC5ib2xkLFxuICAgICAgICAgICAgICBjb2xvcjogQ29sb3JzLnJlZFxuICAgICAgICAgICAgfSkgXG4gICAgICAgICAgfSlcbiAgICAgICAgfSksXG4gICAgICAgIG5ldyBQYWRkaW5nKHtcbiAgICAgICAgICBwYWRkaW5nOiBFZGdlSW5zZXRzLm9ubHkoeyByaWdodDogMjAgfSlcbiAgICAgICAgfSksXG4gICAgICBdXG4gICAgfSkpXG4gICAgd0xpc3QgPSB3TGlzdC5jb25jYXQod0RvaW5nTGlzdCk7XG5cbiAgICB3TGlzdC5wdXNoKG5ldyBQYWRkaW5nKHsgcGFkZGluZzogRWRnZUluc2V0cy5vbmx5KHsgdG9wOiAyMCB9KSB9KSk7XG4gICAgd0xpc3QucHVzaChuZXcgUm93KHtcbiAgICAgIGNoaWxkcmVuOiBbXG4gICAgICAgIG5ldyBQYWRkaW5nKHtcbiAgICAgICAgICBwYWRkaW5nOiBFZGdlSW5zZXRzLm9ubHkoeyBsZWZ0OiAyMCB9KVxuICAgICAgICB9KSxcbiAgICAgICAgbmV3IFRleHQoXCLlt7LlrozmiJBcIiwge1xuICAgICAgICAgIHRleHRBbGlnbjogVGV4dEFsaWduLmxlZnQsXG4gICAgICAgICAgc3R5bGU6IG5ldyBUZXh0U3R5bGUoe1xuICAgICAgICAgICAgZm9udFNpemU6IDIwLFxuICAgICAgICAgICAgZm9udFdlaWdodDogRm9udFdlaWdodC5ib2xkLFxuICAgICAgICAgICAgY29sb3I6IFRoZW1lLm9mKGNvbnRleHQpLnByaW1hcnlDb2xvckRhcmtcbiAgICAgICAgICB9KSBcbiAgICAgICAgfSksXG4gICAgICAgIG5ldyBFeHBhbmRlZCh7XG4gICAgICAgICAgY2hpbGQ6IG5ldyBUZXh0KHdEb25lTGlzdC5sZW5ndGgudG9TdHJpbmcoKSwge1xuICAgICAgICAgICAgdGV4dEFsaWduOiBUZXh0QWxpZ24ucmlnaHQsXG4gICAgICAgICAgICBzdHlsZTogbmV3IFRleHRTdHlsZSh7XG4gICAgICAgICAgICAgIGZvbnRTaXplOiAyMCxcbiAgICAgICAgICAgICAgZm9udFdlaWdodDogRm9udFdlaWdodC5ib2xkLFxuICAgICAgICAgICAgICBjb2xvcjogQ29sb3JzLmdyZXlcbiAgICAgICAgICAgIH0pIFxuICAgICAgICAgIH0pXG4gICAgICAgIH0pLFxuICAgICAgICBuZXcgUGFkZGluZyh7XG4gICAgICAgICAgcGFkZGluZzogRWRnZUluc2V0cy5vbmx5KHsgcmlnaHQ6IDIwIH0pXG4gICAgICAgIH0pLFxuICAgICAgXVxuICAgIH0pKVxuICAgIHdMaXN0ID0gd0xpc3QuY29uY2F0KHdEb25lTGlzdCk7XG5cbiAgICByZXR1cm4gd0xpc3Q7XG4gIH1cblxuICBwdWJsaWMgYnVpbGREYXRhTGlzdChpc0RvaW5nKSB7XG4gICAgY29uc3QgZGF0YUxpc3QgPSBpc0RvaW5nID8gdGhpcy5kYXRhTGlzdC5maWx0ZXIoKHYpID0+IHtcbiAgICAgIHJldHVybiAhdi5pc0RvbmVcbiAgICB9KSA6IHRoaXMuZGF0YUxpc3QuZmlsdGVyKCh2KSA9PiB7XG4gICAgICByZXR1cm4gdi5pc0RvbmVcbiAgICB9KTtcblxuICAgIHJldHVybiBkYXRhTGlzdC5tYXAoKGl0ZW0sIGluZGV4KSA9PiB7XG4gICAgICByZXR1cm4gbmV3IFRvZG9JdGVtKHtcbiAgICAgICAgaXRlbTogaXRlbSxcbiAgICAgICAgY2FsbGJhY2s6ICh2YWwpID0+IHtcbiAgICAgICAgICBjb25zb2xlLmxvZygnY2IxJywgdGhpcy5kYXRhTGlzdCwgaXRlbSwgdmFsKTtcbiAgICAgICAgICB0aGlzLnNldFN0YXRlKCgpID0+IHtcbiAgICAgICAgICAgIGl0ZW0uaXNEb25lID0gdmFsO1xuICAgICAgICAgIH0pO1xuICAgICAgICB9LFxuICAgICAgICBkZWxldGVDYWxsYmFjazogKHdJdGVtKSA9PiB7XG4gICAgICAgICAgY29uc29sZS5sb2coJ2NiMicsIHRoaXMuZGF0YUxpc3QsIGl0ZW0sIHdJdGVtKTtcbiAgICAgICAgICB0aGlzLnNldFN0YXRlKCgpID0+IHtcbiAgICAgICAgICAgIHRoaXMuZGF0YUxpc3Quc3BsaWNlKHRoaXMuZGF0YUxpc3QuZmluZEluZGV4KGl0ZW0gPT4gaXRlbS5pbmRleCA9PT0gd0l0ZW0uaW5kZXgpLCAxKVxuICAgICAgICAgIH0pO1xuICAgICAgICB9LFxuICAgICAgICBlZGl0Q2FsbGJhY2s6IChuZXdOYW1lKSA9PiB7XG4gICAgICAgICAgY29uc29sZS5sb2coJ2NiMycsIHRoaXMuZGF0YUxpc3QsIGl0ZW0sIG5ld05hbWUpO1xuICAgICAgICAgIHRoaXMuc2V0U3RhdGUoKCkgPT4ge1xuICAgICAgICAgICAgaXRlbS5uYW1lID0gbmV3TmFtZTtcbiAgICAgICAgICB9KTtcbiAgICAgICAgfSxcbiAgICAgIH0pXG4gICAgfSlcbiAgfVxuXG4gIHB1YmxpYyBhZGROZXdJdGVtKHZhbHVlKSB7XG4gICAgdGhpcy5uZXdJZHggKz0gMTtcbiAgICB0aGlzLmRhdGFMaXN0LnB1c2goe1xuICAgICAgaW5kZXg6IHRoaXMuaW5kZXgsXG4gICAgICBuYW1lOiB2YWx1ZSxcbiAgICAgIGlzRG9uZTogZmFsc2UsXG4gICAgfSlcbiAgfVxuXG59XG5cbmNvbnN0IE1YRmx1dHRlciA9IGdsb2JhbFRoaXMuTVhGbHV0dGVyO1xuXG5NWEZsdXR0ZXIucmVnaXN0KHtcbiAgbmFtZTogJ2V4YW1wbGUyJyxcbiAgUm9vdFdpZGdldDogVG9kb0xpc3RQYWdlLFxufSk7XG4iLCIvKiBlc2xpbnQtZGlzYWJsZSAqL1xuaW1wb3J0IHsgcnVuQXBwLCBNWEpTQmFzZVdpZGdldCwgTVhKU0ZsdXR0ZXJBcHAsIE1YSlNTdGF0ZWxlc3NXaWRnZXQsIE1YSlNTdGF0ZWZ1bFdpZGdldCwgTVhKU1dpZGdldFN0YXRlIH0gZnJvbSAnQHRlbmNlbnQvbXhmbHV0dGVyJ1xuaW1wb3J0IHtcbiAgQ29udGFpbmVyLFxuICBFeHBhbmRlZCxcbiAgQ29sb3JzLFxuICBCb3JkZXIsXG4gIFRleHQsXG4gIEljb24sXG4gIEljb25zLFxuICBFZGdlSW5zZXRzLFxuICBCb3hEZWNvcmF0aW9uLFxuICBUZXh0RmllbGQsXG4gIFRleHRFZGl0aW5nQ29udHJvbGxlcixcbiAgVGV4dEFsaWduLFxuICBUZXh0U3R5bGUsXG4gIFRleHRPdmVyZmxvdyxcbiAgUm93LFxuICBQYWRkaW5nLFxuICBJY29uQnV0dG9uLFxuICBUaGVtZSxcbiAgR2VzdHVyZURldGVjdG9yLFxuICBDb2x1bW4sXG59IGZyb20gJ0B0ZW5jZW50L214Zmx1dHRlci13aWRnZXRzJ1xuXG5jbGFzcyBUb2RvSXRlbSBleHRlbmRzIE1YSlNTdGF0ZWZ1bFdpZGdldCB7XG4gIHB1YmxpYyBpdGVtOiBhbnk7XG4gIHB1YmxpYyBjYWxsYmFjazogYW55O1xuICBwdWJsaWMgZGVsZXRlQ2FsbGJhY2s6IGFueTtcbiAgcHVibGljIGVkaXRDYWxsYmFjazogYW55O1xuXG4gIHB1YmxpYyBjb25zdHJ1Y3Rvcih7IGl0ZW0sIGNhbGxiYWNrLCBkZWxldGVDYWxsYmFjaywgZWRpdENhbGxiYWNrIH0pIHtcbiAgICBzdXBlcihcIlRvZG9JdGVtXCIpO1xuICAgIHRoaXMuaXRlbSA9IGl0ZW07XG4gICAgdGhpcy5jYWxsYmFjayA9IGNhbGxiYWNrO1xuICAgIHRoaXMuZGVsZXRlQ2FsbGJhY2sgPSBkZWxldGVDYWxsYmFjaztcbiAgICB0aGlzLmVkaXRDYWxsYmFjayA9IGVkaXRDYWxsYmFjaztcbiAgfVxuXG4gIHB1YmxpYyBjcmVhdGVTdGF0ZSgpIHtcbiAgICByZXR1cm4gbmV3IFRvZG9JdGVtU3RhdGUoKTtcbiAgfVxufVxuXG5jbGFzcyBUb2RvSXRlbVN0YXRlIGV4dGVuZHMgTVhKU1dpZGdldFN0YXRlIHtcbiAgcHVibGljIGVkaXRUZXh0VmFsdWU6IGFueTtcbiAgcHVibGljIGlzRWRpdDogYW55O1xuICBwdWJsaWMgd2lkZ2V0OiBUb2RvSXRlbTtcblxuICBwdWJsaWMgY29uc3RydWN0b3IoKSB7XG4gICAgc3VwZXIoKTtcbiAgICB0aGlzLmVkaXRUZXh0VmFsdWUgPSAnJztcbiAgICB0aGlzLmlzRWRpdCA9IGZhbHNlO1xuICB9XG5cbiAgcHVibGljIGJ1aWxkKGNvbnRleHQpIHtcbiAgICBjb25zdCB0ZXh0Q29sb3IgPSB0aGlzLndpZGdldC5pdGVtLmlzRG9uZSA/IENvbG9ycy5ncmV5IDogVGhlbWUub2YoY29udGV4dCkucHJpbWFyeUNvbG9yRGFyaztcblxuICAgIHJldHVybiBuZXcgQ29udGFpbmVyKHtcbiAgICAgIHBhZGRpbmc6IEVkZ2VJbnNldHMuYWxsKDIwKSxcbiAgICAgIGNoaWxkOiBuZXcgQ29udGFpbmVyKHtcbiAgICAgICAgZGVjb3JhdGlvbjogbmV3IEJveERlY29yYXRpb24oe1xuICAgICAgICAgIGJvcmRlcjogQm9yZGVyLmFsbCh7IGNvbG9yOiBDb2xvcnMuZ3JleSwgd2lkdGg6IDAuNSB9KSxcbiAgICAgICAgICAvLyBib3JkZXJSYWRpdXM6IEJvcmRlclJhZGl1cy5hbGwoUmFkaXVzLmNpcmN1bGFyKDgpKSxcbiAgICAgICAgfSksXG4gICAgICAgIHBhZGRpbmc6IEVkZ2VJbnNldHMuYWxsKDgpLFxuICAgICAgICBjaGlsZDogbmV3IFJvdyh7XG4gICAgICAgICAgY2hpbGRyZW46IFtcbiAgICAgICAgICAgIC8vIG5ldyBDaGVja2JveCh7XG4gICAgICAgICAgICAvLyAgIHZhbHVlOiB0aGlzLndpZGdldC5pdGVtLmlzRG9uZSxcbiAgICAgICAgICAgIC8vICAgYWN0aXZlQ29sb3I6IENvbG9ycy5ncmV5LFxuICAgICAgICAgICAgLy8gICBvbkNoYW5nZWQ6ICh2YWx1ZSkgPT4ge1xuICAgICAgICAgICAgLy8gICAgIHRoaXMud2lkZ2V0LmNhbGxiYWNrKHZhbHVlKTtcbiAgICAgICAgICAgIC8vICAgfSxcbiAgICAgICAgICAgIC8vIH0pXG4gICAgICAgICAgICBuZXcgSWNvbkJ1dHRvbih7XG4gICAgICAgICAgICAgIHRvb2x0aXA6ICflrozmiJAnLFxuICAgICAgICAgICAgICBpY29uOiBuZXcgSWNvbihJY29ucy5kb25lKSxcbiAgICAgICAgICAgICAgY29sb3I6IHRleHRDb2xvcixcbiAgICAgICAgICAgICAgb25QcmVzc2VkOiAoKSA9PiB7XG4gICAgICAgICAgICAgICAgdGhpcy53aWRnZXQuY2FsbGJhY2soIXRoaXMud2lkZ2V0Lml0ZW0uaXNEb25lKTtcbiAgICAgICAgICAgICAgfVxuICAgICAgICAgICAgfSksXG4gICAgICAgICAgICBuZXcgUGFkZGluZyh7XG4gICAgICAgICAgICAgIHBhZGRpbmc6IEVkZ2VJbnNldHMub25seSh7IGxlZnQ6IDEwIH0pXG4gICAgICAgICAgICB9KSxcbiAgICAgICAgICAgIHRoaXMuYnVpbGROYW1lV2lkZ2V0KHRleHRDb2xvciksXG4gICAgICAgICAgICBuZXcgSWNvbkJ1dHRvbih7XG4gICAgICAgICAgICAgIHRvb2x0aXA6ICfliKDpmaQnLFxuICAgICAgICAgICAgICBpY29uOiBuZXcgSWNvbihJY29ucy5kZWxldGUpLFxuICAgICAgICAgICAgICBjb2xvcjogQ29sb3JzLmdyZXksXG4gICAgICAgICAgICAgIG9uUHJlc3NlZDogKCkgPT4ge1xuICAgICAgICAgICAgICAgIHRoaXMud2lkZ2V0LmRlbGV0ZUNhbGxiYWNrKHRoaXMud2lkZ2V0Lml0ZW0pO1xuICAgICAgICAgICAgICB9XG4gICAgICAgICAgICB9KSxcbiAgICAgICAgICBdXG4gICAgICAgIH0pXG4gICAgICB9KVxuICAgIH0pXG4gIH1cblxuICBwdWJsaWMgYnVpbGROYW1lV2lkZ2V0KHRleHRDb2xvcikge1xuICAgIGlmICh0aGlzLmlzRWRpdCkge1xuICAgICAgcmV0dXJuIG5ldyBFeHBhbmRlZCh7XG4gICAgICAgIGNoaWxkOiBuZXcgQ29udGFpbmVyKHtcbiAgICAgICAgICB3aWR0aDogMjAwLFxuICAgICAgICAgIGNoaWxkOiBuZXcgVGV4dEZpZWxkKHtcbiAgICAgICAgICAgIHdpZHRoOiAyMDAsXG4gICAgICAgICAgICBjb250cm9sbGVyOiBuZXcgVGV4dEVkaXRpbmdDb250cm9sbGVyKHtcbiAgICAgICAgICAgICAgdGV4dDogdGhpcy53aWRnZXQuaXRlbS5uYW1lXG4gICAgICAgICAgICB9KSxcbiAgICAgICAgICAgIG9uQ2hhbmdlZDogKHZhbHVlKSA9PiB7XG4gICAgICAgICAgICAgIHRoaXMuZWRpdFRleHRWYWx1ZSA9IHZhbHVlO1xuICAgICAgICAgICAgfSxcbiAgICAgICAgICAgIG9uU3VibWl0dGVkOiAoKSA9PiB7XG4gICAgICAgICAgICAgIHRoaXMud2lkZ2V0LmVkaXRDYWxsYmFjayh0aGlzLmVkaXRUZXh0VmFsdWUpO1xuXG4gICAgICAgICAgICAgIHRoaXMuc2V0U3RhdGUoKCkgPT4ge1xuICAgICAgICAgICAgICAgIHRoaXMuaXNFZGl0ID0gZmFsc2U7XG4gICAgICAgICAgICAgIH0pO1xuICAgICAgICAgICAgfVxuICAgICAgICAgIH0pXG4gICAgICAgIH0pXG4gICAgICB9KVxuICAgIH1cblxuICAgIHJldHVybiBuZXcgRXhwYW5kZWQoe1xuICAgICAgY2hpbGQ6IG5ldyBHZXN0dXJlRGV0ZWN0b3Ioe1xuICAgICAgICBvblRhcDogKCkgPT4ge1xuICAgICAgICAgIHRoaXMuc2V0U3RhdGUoKCkgPT4ge1xuICAgICAgICAgICAgdGhpcy5pc0VkaXQgPSB0cnVlO1xuICAgICAgICAgIH0pO1xuICAgICAgICB9LFxuICAgICAgICBjaGlsZDogbmV3IFRleHQodGhpcy53aWRnZXQuaXRlbS5uYW1lLCB7XG4gICAgICAgICAgc29mdFdyYXA6IHRydWUsXG4gICAgICAgICAgb3ZlcmZsb3c6IFRleHRPdmVyZmxvdy5lbGxpcHNpcyxcbiAgICAgICAgICBtYXhMaW5lczogMixcbiAgICAgICAgICB0ZXh0QWxpZ246IFRleHRBbGlnbi5sZWZ0LFxuICAgICAgICAgIHN0eWxlOiBuZXcgVGV4dFN0eWxlKHtcbiAgICAgICAgICAgIGZvbnRTaXplOiAyMCxcbiAgICAgICAgICAgIGNvbG9yOiB0ZXh0Q29sb3IsXG4gICAgICAgICAgfSksXG4gICAgICAgIH0pXG4gICAgICB9KVxuICAgIH0pO1xuICB9XG59XG5cbmV4cG9ydCB7XG4gIFRvZG9JdGVtXG59IiwibW9kdWxlLmV4cG9ydHMgPSByZXF1aXJlKFwiY29uc29sZVwiKTsiLCIvLyBUaGUgbW9kdWxlIGNhY2hlXG52YXIgX193ZWJwYWNrX21vZHVsZV9jYWNoZV9fID0ge307XG5cbi8vIFRoZSByZXF1aXJlIGZ1bmN0aW9uXG5mdW5jdGlvbiBfX3dlYnBhY2tfcmVxdWlyZV9fKG1vZHVsZUlkKSB7XG5cdC8vIENoZWNrIGlmIG1vZHVsZSBpcyBpbiBjYWNoZVxuXHRpZihfX3dlYnBhY2tfbW9kdWxlX2NhY2hlX19bbW9kdWxlSWRdKSB7XG5cdFx0cmV0dXJuIF9fd2VicGFja19tb2R1bGVfY2FjaGVfX1ttb2R1bGVJZF0uZXhwb3J0cztcblx0fVxuXHQvLyBDcmVhdGUgYSBuZXcgbW9kdWxlIChhbmQgcHV0IGl0IGludG8gdGhlIGNhY2hlKVxuXHR2YXIgbW9kdWxlID0gX193ZWJwYWNrX21vZHVsZV9jYWNoZV9fW21vZHVsZUlkXSA9IHtcblx0XHQvLyBubyBtb2R1bGUuaWQgbmVlZGVkXG5cdFx0Ly8gbm8gbW9kdWxlLmxvYWRlZCBuZWVkZWRcblx0XHRleHBvcnRzOiB7fVxuXHR9O1xuXG5cdC8vIEV4ZWN1dGUgdGhlIG1vZHVsZSBmdW5jdGlvblxuXHRfX3dlYnBhY2tfbW9kdWxlc19fW21vZHVsZUlkXS5jYWxsKG1vZHVsZS5leHBvcnRzLCBtb2R1bGUsIG1vZHVsZS5leHBvcnRzLCBfX3dlYnBhY2tfcmVxdWlyZV9fKTtcblxuXHQvLyBSZXR1cm4gdGhlIGV4cG9ydHMgb2YgdGhlIG1vZHVsZVxuXHRyZXR1cm4gbW9kdWxlLmV4cG9ydHM7XG59XG5cbi8vIGV4cG9zZSB0aGUgbW9kdWxlcyBvYmplY3QgKF9fd2VicGFja19tb2R1bGVzX18pXG5fX3dlYnBhY2tfcmVxdWlyZV9fLm0gPSBfX3dlYnBhY2tfbW9kdWxlc19fO1xuXG4vLyB0aGUgc3RhcnR1cCBmdW5jdGlvblxuX193ZWJwYWNrX3JlcXVpcmVfXy54ID0gKCkgPT4ge1xuXHQvLyBMb2FkIGVudHJ5IG1vZHVsZVxuXHRfX3dlYnBhY2tfcmVxdWlyZV9fKFwiLi9zcmMvaW5kZXgudHNcIik7XG5cdC8vIFRoaXMgZW50cnkgbW9kdWxlIHVzZWQgJ2V4cG9ydHMnIHNvIGl0IGNhbid0IGJlIGlubGluZWRcbn07XG5cbiIsIi8vIGdldERlZmF1bHRFeHBvcnQgZnVuY3Rpb24gZm9yIGNvbXBhdGliaWxpdHkgd2l0aCBub24taGFybW9ueSBtb2R1bGVzXG5fX3dlYnBhY2tfcmVxdWlyZV9fLm4gPSAobW9kdWxlKSA9PiB7XG5cdHZhciBnZXR0ZXIgPSBtb2R1bGUgJiYgbW9kdWxlLl9fZXNNb2R1bGUgP1xuXHRcdCgpID0+IG1vZHVsZVsnZGVmYXVsdCddIDpcblx0XHQoKSA9PiBtb2R1bGU7XG5cdF9fd2VicGFja19yZXF1aXJlX18uZChnZXR0ZXIsIHsgYTogZ2V0dGVyIH0pO1xuXHRyZXR1cm4gZ2V0dGVyO1xufTsiLCIvLyBkZWZpbmUgZ2V0dGVyIGZ1bmN0aW9ucyBmb3IgaGFybW9ueSBleHBvcnRzXG5fX3dlYnBhY2tfcmVxdWlyZV9fLmQgPSAoZXhwb3J0cywgZGVmaW5pdGlvbikgPT4ge1xuXHRmb3IodmFyIGtleSBpbiBkZWZpbml0aW9uKSB7XG5cdFx0aWYoX193ZWJwYWNrX3JlcXVpcmVfXy5vKGRlZmluaXRpb24sIGtleSkgJiYgIV9fd2VicGFja19yZXF1aXJlX18ubyhleHBvcnRzLCBrZXkpKSB7XG5cdFx0XHRPYmplY3QuZGVmaW5lUHJvcGVydHkoZXhwb3J0cywga2V5LCB7IGVudW1lcmFibGU6IHRydWUsIGdldDogZGVmaW5pdGlvbltrZXldIH0pO1xuXHRcdH1cblx0fVxufTsiLCJfX3dlYnBhY2tfcmVxdWlyZV9fLmYgPSB7fTtcbi8vIFRoaXMgZmlsZSBjb250YWlucyBvbmx5IHRoZSBlbnRyeSBjaHVuay5cbi8vIFRoZSBjaHVuayBsb2FkaW5nIGZ1bmN0aW9uIGZvciBhZGRpdGlvbmFsIGNodW5rc1xuX193ZWJwYWNrX3JlcXVpcmVfXy5lID0gKGNodW5rSWQpID0+IHtcblx0cmV0dXJuIFByb21pc2UuYWxsKE9iamVjdC5rZXlzKF9fd2VicGFja19yZXF1aXJlX18uZikucmVkdWNlKChwcm9taXNlcywga2V5KSA9PiB7XG5cdFx0X193ZWJwYWNrX3JlcXVpcmVfXy5mW2tleV0oY2h1bmtJZCwgcHJvbWlzZXMpO1xuXHRcdHJldHVybiBwcm9taXNlcztcblx0fSwgW10pKTtcbn07IiwiLy8gVGhpcyBmdW5jdGlvbiBhbGxvdyB0byByZWZlcmVuY2UgYXN5bmMgY2h1bmtzIGFuZCBzaWJsaW5nIGNodW5rcyBmb3IgdGhlIGVudHJ5cG9pbnRcbl9fd2VicGFja19yZXF1aXJlX18udSA9IChjaHVua0lkKSA9PiB7XG5cdC8vIHJldHVybiB1cmwgZm9yIGZpbGVuYW1lcyBiYXNlZCBvbiB0ZW1wbGF0ZVxuXHRyZXR1cm4gXCJcIiArIGNodW5rSWQgKyBcIi5qc1wiO1xufTsiLCJfX3dlYnBhY2tfcmVxdWlyZV9fLm8gPSAob2JqLCBwcm9wKSA9PiBPYmplY3QucHJvdG90eXBlLmhhc093blByb3BlcnR5LmNhbGwob2JqLCBwcm9wKSIsIi8vIGRlZmluZSBfX2VzTW9kdWxlIG9uIGV4cG9ydHNcbl9fd2VicGFja19yZXF1aXJlX18uciA9IChleHBvcnRzKSA9PiB7XG5cdGlmKHR5cGVvZiBTeW1ib2wgIT09ICd1bmRlZmluZWQnICYmIFN5bWJvbC50b1N0cmluZ1RhZykge1xuXHRcdE9iamVjdC5kZWZpbmVQcm9wZXJ0eShleHBvcnRzLCBTeW1ib2wudG9TdHJpbmdUYWcsIHsgdmFsdWU6ICdNb2R1bGUnIH0pO1xuXHR9XG5cdE9iamVjdC5kZWZpbmVQcm9wZXJ0eShleHBvcnRzLCAnX19lc01vZHVsZScsIHsgdmFsdWU6IHRydWUgfSk7XG59OyIsInZhciBuZXh0ID0gX193ZWJwYWNrX3JlcXVpcmVfXy54O1xuX193ZWJwYWNrX3JlcXVpcmVfXy54ID0gKCkgPT4ge1xuXHRfX3dlYnBhY2tfcmVxdWlyZV9fLmUoXCJteGZsdXR0ZXItc2RrXCIpO1xuXHRyZXR1cm4gbmV4dCgpO1xufTsiLCIvLyBvYmplY3QgdG8gc3RvcmUgbG9hZGVkIGNodW5rc1xuLy8gXCIxXCIgbWVhbnMgXCJsb2FkZWRcIiwgb3RoZXJ3aXNlIG5vdCBsb2FkZWQgeWV0XG52YXIgaW5zdGFsbGVkQ2h1bmtzID0ge1xuXHRcImJ1bmRsZS1leGFtcGxlMlwiOiAxXG59O1xuXG52YXIgaW5zdGFsbENodW5rID0gKGNodW5rKSA9PiB7XG5cdHZhciBtb3JlTW9kdWxlcyA9IGNodW5rLm1vZHVsZXMsIGNodW5rSWRzID0gY2h1bmsuaWRzLCBydW50aW1lID0gY2h1bmsucnVudGltZTtcblx0Zm9yKHZhciBtb2R1bGVJZCBpbiBtb3JlTW9kdWxlcykge1xuXHRcdGlmKF9fd2VicGFja19yZXF1aXJlX18ubyhtb3JlTW9kdWxlcywgbW9kdWxlSWQpKSB7XG5cdFx0XHRfX3dlYnBhY2tfcmVxdWlyZV9fLm1bbW9kdWxlSWRdID0gbW9yZU1vZHVsZXNbbW9kdWxlSWRdO1xuXHRcdH1cblx0fVxuXHRpZihydW50aW1lKSBydW50aW1lKF9fd2VicGFja19yZXF1aXJlX18pO1xuXHRmb3IodmFyIGkgPSAwOyBpIDwgY2h1bmtJZHMubGVuZ3RoOyBpKyspXG5cdFx0aW5zdGFsbGVkQ2h1bmtzW2NodW5rSWRzW2ldXSA9IDE7XG59O1xuXG4vLyByZXF1aXJlKCkgY2h1bmsgbG9hZGluZyBmb3IgamF2YXNjcmlwdFxuX193ZWJwYWNrX3JlcXVpcmVfXy5mLnJlcXVpcmUgPSBmdW5jdGlvbihjaHVua0lkLCBwcm9taXNlcykge1xuXG5cdC8vIFwiMVwiIGlzIHRoZSBzaWduYWwgZm9yIFwiYWxyZWFkeSBsb2FkZWRcIlxuXHRpZighaW5zdGFsbGVkQ2h1bmtzW2NodW5rSWRdKSB7XG5cdFx0aWYodHJ1ZSkgeyAvLyBhbGwgY2h1bmtzIGhhdmUgSlNcblx0XHRcdGluc3RhbGxDaHVuayhyZXF1aXJlKFwiLi9cIiArIF9fd2VicGFja19yZXF1aXJlX18udShjaHVua0lkKSkpO1xuXHRcdH0gZWxzZSBpbnN0YWxsZWRDaHVua3NbY2h1bmtJZF0gPSAxO1xuXHR9XG59O1xuXG4vLyBubyBleHRlcm5hbCBpbnN0YWxsIGNodW5rXG5cbi8vIG5vIEhNUlxuXG4vLyBubyBITVIgbWFuaWZlc3QiLCIvLyBydW4gc3RhcnR1cFxucmV0dXJuIF9fd2VicGFja19yZXF1aXJlX18ueCgpO1xuIl0sInNvdXJjZVJvb3QiOiIifQ==