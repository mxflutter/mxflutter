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
/* harmony import */ var _item__WEBPACK_IMPORTED_MODULE_2__ = __webpack_require__(/*! ./item */ "./src/item.ts");
/* eslint-disable */



class TodoListPage extends _tencent_mxflutter__WEBPACK_IMPORTED_MODULE_0__.MXJSStatefulWidget {
    constructor() {
        super('TodoListPage');
        this.data = 'test';
    }
    createState() {
        return new TodoListPageState();
    }
}
class TodoListPageState extends _tencent_mxflutter__WEBPACK_IMPORTED_MODULE_0__.MXJSWidgetState {
    constructor() {
        super();
        this.textCtr = new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.TextEditingController({
            text: '',
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
                            padding: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.EdgeInsets.only({ top: 5 }),
                        }),
                        new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Row({
                            children: [
                                new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Padding({
                                    padding: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.EdgeInsets.only({ left: 20 }),
                                }),
                                new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Expanded({
                                    child: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.TextField({
                                        width: 200,
                                        controller: this.textCtr,
                                        decoration: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.InputDecoration({
                                            hintText: '请填写 TODO 事项',
                                        }),
                                        onChanged: (value) => {
                                            this.addTextValue = value;
                                        },
                                    }),
                                }),
                                new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Padding({
                                    padding: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.EdgeInsets.only({ left: 20 }),
                                }),
                                new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.FlatButton({
                                    color: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Theme.of(context).primaryColor,
                                    textColor: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Colors.white,
                                    child: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text('添加'),
                                    onPressed: () => {
                                        this.setState(() => {
                                            this.addNewItem(this.addTextValue);
                                        });
                                        console.log('add:' + this.addTextValue);
                                    },
                                }),
                            ],
                        }),
                        new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Expanded({
                            child: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.ListView({
                                children: wList,
                            }),
                        }),
                    ],
                }),
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
                    padding: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.EdgeInsets.only({ left: 20 }),
                }),
                new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text('正在进行', {
                    textAlign: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.TextAlign.left,
                    style: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.TextStyle({
                        fontSize: 20,
                        fontWeight: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.FontWeight.bold,
                        color: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Theme.of(context).primaryColorDark,
                    }),
                }),
                new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Expanded({
                    child: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text(wDoingList.length.toString(), {
                        textAlign: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.TextAlign.right,
                        style: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.TextStyle({
                            fontSize: 20,
                            fontWeight: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.FontWeight.bold,
                            color: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Colors.red,
                        }),
                    }),
                }),
                new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Padding({
                    padding: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.EdgeInsets.only({ right: 20 }),
                }),
            ],
        }));
        wList = wList.concat(wDoingList);
        wList.push(new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Padding({ padding: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.EdgeInsets.only({ top: 20 }) }));
        wList.push(new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Row({
            children: [
                new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Padding({
                    padding: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.EdgeInsets.only({ left: 20 }),
                }),
                new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text('已完成', {
                    textAlign: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.TextAlign.left,
                    style: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.TextStyle({
                        fontSize: 20,
                        fontWeight: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.FontWeight.bold,
                        color: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Theme.of(context).primaryColorDark,
                    }),
                }),
                new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Expanded({
                    child: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Text(wDoneList.length.toString(), {
                        textAlign: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.TextAlign.right,
                        style: new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.TextStyle({
                            fontSize: 20,
                            fontWeight: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.FontWeight.bold,
                            color: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Colors.grey,
                        }),
                    }),
                }),
                new _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.Padding({
                    padding: _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__.EdgeInsets.only({ right: 20 }),
                }),
            ],
        }));
        wList = wList.concat(wDoneList);
        return wList;
    }
    buildDataList(isDoing) {
        const dataList = isDoing
            ? this.dataList.filter((v) => {
                return !v.isDone;
            })
            : this.dataList.filter((v) => {
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
                        this.dataList.splice(this.dataList.findIndex((item) => item.index === wItem.index), 1);
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
_tencent_mxflutter__WEBPACK_IMPORTED_MODULE_0___default().regist({
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
/* harmony import */ var _tencent_mxflutter__WEBPACK_IMPORTED_MODULE_0__ = __webpack_require__(/*! @tencent/mxflutter */ "@tencent/mxflutter");
/* harmony import */ var _tencent_mxflutter__WEBPACK_IMPORTED_MODULE_0___default = /*#__PURE__*/__webpack_require__.n(_tencent_mxflutter__WEBPACK_IMPORTED_MODULE_0__);
/* harmony import */ var _tencent_mxflutter_widgets__WEBPACK_IMPORTED_MODULE_1__ = __webpack_require__(/*! @tencent/mxflutter-widgets */ "@tencent/mxflutter-widgets");
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
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMi8uL3NyYy9pbmRleC50cyIsIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMi8uL3NyYy9pdGVtLnRzIiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUyL2V4dGVybmFsIFwiZ2xvYmFsVGhpcy5NWEZsdXR0ZXJTREsuTVhGbHV0dGVyXCIiLCJ3ZWJwYWNrOi8vQHRlc3QvZXhhbXBsZTIvZXh0ZXJuYWwgXCJnbG9iYWxUaGlzLk1YRmx1dHRlclNESy5NWEZsdXR0ZXJXaWRnZXRzXCIiLCJ3ZWJwYWNrOi8vQHRlc3QvZXhhbXBsZTIvd2VicGFjay9ib290c3RyYXAiLCJ3ZWJwYWNrOi8vQHRlc3QvZXhhbXBsZTIvd2VicGFjay9ydW50aW1lL2NvbXBhdCBnZXQgZGVmYXVsdCBleHBvcnQiLCJ3ZWJwYWNrOi8vQHRlc3QvZXhhbXBsZTIvd2VicGFjay9ydW50aW1lL2RlZmluZSBwcm9wZXJ0eSBnZXR0ZXJzIiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUyL3dlYnBhY2svcnVudGltZS9oYXNPd25Qcm9wZXJ0eSBzaG9ydGhhbmQiLCJ3ZWJwYWNrOi8vQHRlc3QvZXhhbXBsZTIvd2VicGFjay9ydW50aW1lL21ha2UgbmFtZXNwYWNlIG9iamVjdCIsIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMi93ZWJwYWNrL3N0YXJ0dXAiXSwibmFtZXMiOltdLCJtYXBwaW5ncyI6Ijs7Ozs7Ozs7Ozs7Ozs7Ozs7OztBQUFBLG9CQUFvQjtBQUNnRTtBQXFCaEQ7QUFFRjtBQUVsQyxNQUFNLFlBQWEsU0FBUSxrRUFBa0I7SUFFM0M7UUFDRSxLQUFLLENBQUMsY0FBYyxDQUFDLENBQUM7UUFFdEIsSUFBSSxDQUFDLElBQUksR0FBRyxNQUFNLENBQUM7SUFDckIsQ0FBQztJQUVNLFdBQVc7UUFDaEIsT0FBTyxJQUFJLGlCQUFpQixFQUFFLENBQUM7SUFDakMsQ0FBQztDQUNGO0FBRUQsTUFBTSxpQkFBa0IsU0FBUSwrREFBZTtJQU83QztRQUNF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Q0E7V0FDQSxzREFBc0Qsa0JBQWtCO1dBQ3hFO1dBQ0EsK0NBQStDLGNBQWM7V0FDN0QsRTs7OztVQ05BO1VBQ0E7VUFDQTtVQUNBIiwiZmlsZSI6ImJ1bmRsZS1leGFtcGxlMi5qcyIsInNvdXJjZXNDb250ZW50IjpbIi8qIGVzbGludC1kaXNhYmxlICovXG5pbXBvcnQgbXhmbHV0dGVyLCB7IE1YSlNTdGF0ZWZ1bFdpZGdldCwgTVhKU1dpZGdldFN0YXRlIH0gZnJvbSAnQHRlbmNlbnQvbXhmbHV0dGVyJztcbmltcG9ydCB7XG4gIENvbnRhaW5lcixcbiAgQ29sdW1uLFxuICBFeHBhbmRlZCxcbiAgQ29sb3JzLFxuICBUZXh0LFxuICBMaXN0VmlldyxcbiAgRm9udFdlaWdodCxcbiAgRmxhdEJ1dHRvbixcbiAgRWRnZUluc2V0cyxcbiAgSW5wdXREZWNvcmF0aW9uLFxuICBUZXh0RmllbGQsXG4gIFRleHRFZGl0aW5nQ29udHJvbGxlcixcbiAgVGV4dEFsaWduLFxuICBUZXh0U3R5bGUsXG4gIFJvdyxcbiAgUGFkZGluZyxcbiAgVGhlbWUsXG4gIEtleSxcbiAgU2NhZmZvbGQsXG59IGZyb20gJ0B0ZW5jZW50L214Zmx1dHRlci13aWRnZXRzJztcblxuaW1wb3J0IHsgVG9kb0l0ZW0gfSBmcm9tICcuL2l0ZW0nO1xuXG5jbGFzcyBUb2RvTGlzdFBhZ2UgZXh0ZW5kcyBNWEpTU3RhdGVmdWxXaWRnZXQge1xuICBwdWJsaWMgZGF0YTogYW55O1xuICBwdWJsaWMgY29uc3RydWN0b3IoKSB7XG4gICAgc3VwZXIoJ1RvZG9MaXN0UGFnZScpO1xuXG4gICAgdGhpcy5kYXRhID0gJ3Rlc3QnO1xuICB9XG5cbiAgcHVibGljIGNyZWF0ZVN0YXRlKCkge1xuICAgIHJldHVybiBuZXcgVG9kb0xpc3RQYWdlU3RhdGUoKTtcbiAgfVxufVxuXG5jbGFzcyBUb2RvTGlzdFBhZ2VTdGF0ZSBleHRlbmRzIE1YSlNXaWRnZXRTdGF0ZSB7XG4gIHB1YmxpYyB0ZXh0Q3RyOiBhbnk7XG4gIHB1YmxpYyBhZGRUZXh0VmFsdWU6IGFueTtcbiAgcHVibGljIG5ld0lkeDogYW55O1xuICBwdWJsaWMgZGF0YUxpc3Q6IGFueTtcbiAgcHVibGljIGluZGV4OiBhbnk7XG5cbiAgcHVibGljIGNvbnN0cnVjdG9yKCkge1xuICAgIHN1cGVyKCk7XG4gICAgdGhpcy50ZXh0Q3RyID0gbmV3IFRleHRFZGl0aW5nQ29udHJvbGxlcih7XG4gICAgICB0ZXh0OiAnJyxcbiAgICB9KTtcbiAgICB0aGlzLmFkZFRleHRWYWx1ZSA9ICcnO1xuICAgIHRoaXMubmV3SWR4ID0gMDtcbiAgICB0aGlzLmRhdGFMaXN0ID0gW107XG4gIH1cblxuICBwdWJsaWMgYnVpbGQoY29udGV4dCkge1xuICAgIGNvbnN0IHdMaXN0ID0gdGhpcy5idWlsZExpc3QoY29udGV4dCk7XG5cbiAgICByZXR1cm4gbmV3IFNjYWZmb2xkKHtcbiAgICAgIGJvZHk6IG5ldyBDb250YWluZXIoe1xuICAgICAgICBwYWRkaW5nOiBFZGdlSW5zZXRzLmFsbCgxMC4wKSxcbiAgICAgICAgY2hpbGQ6IG5ldyBDb2x1bW4oe1xuICAgICAgICAgIGNoaWxkcmVuOiBbXG4gICAgICAgICAgICBuZXcgUGFkZGluZyh7XG4gICAgICAgICAgICAgIHBhZGRpbmc6IEVkZ2VJbnNldHMub25seSh7IHRvcDogNSB9KSxcbiAgICAgICAgICAgIH0pLFxuICAgICAgICAgICAgbmV3IFJvdyh7XG4gICAgICAgICAgICAgIGNoaWxkcmVuOiBbXG4gICAgICAgICAgICAgICAgbmV3IFBhZGRpbmcoe1xuICAgICAgICAgICAgICAgICAgcGFkZGluZzogRWRnZUluc2V0cy5vbmx5KHsgbGVmdDogMjAgfSksXG4gICAgICAgICAgICAgICAgfSksXG4gICAgICAgICAgICAgICAgbmV3IEV4cGFuZGVkKHtcbiAgICAgICAgICAgICAgICAgIGNoaWxkOiBuZXcgVGV4dEZpZWxkKHtcbiAgICAgICAgICAgICAgICAgICAgd2lkdGg6IDIwMCxcbiAgICAgICAgICAgICAgICAgICAgY29udHJvbGxlcjogdGhpcy50ZXh0Q3RyLFxuICAgICAgICAgICAgICAgICAgICBkZWNvcmF0aW9uOiBuZXcgSW5wdXREZWNvcmF0aW9uKHtcbiAgICAgICAgICAgICAgICAgICAgICBoaW50VGV4dDogJ+ivt+Whq+WGmSBUT0RPIOS6i+mhuScsXG4gICAgICAgICAgICAgICAgICAgIH0pLFxuICAgICAgICAgICAgICAgICAgICBvbkNoYW5nZWQ6ICh2YWx1ZSkgPT4ge1xuICAgICAgICAgICAgICAgICAgICAgIHRoaXMuYWRkVGV4dFZhbHVlID0gdmFsdWU7XG4gICAgICAgICAgICAgICAgICAgIH0sXG4gICAgICAgICAgICAgICAgICB9KSxcbiAgICAgICAgICAgICAgICB9KSxcbiAgICAgICAgICAgICAgICBuZXcgUGFkZGluZyh7XG4gICAgICAgICAgICAgICAgICBwYWRkaW5nOiBFZGdlSW5zZXRzLm9ubHkoeyBsZWZ0OiAyMCB9KSxcbiAgICAgICAgICAgICAgICB9KSxcbiAgICAgICAgICAgICAgICBuZXcgRmxhdEJ1dHRvbih7XG4gICAgICAgICAgICAgICAgICBjb2xvcjogVGhlbWUub2YoY29udGV4dCkucHJpbWFyeUNvbG9yLFxuICAgICAgICAgICAgICAgICAgdGV4dENvbG9yOiBDb2xvcnMud2hpdGUsXG4gICAgICAgICAgICAgICAgICBjaGlsZDogbmV3IFRleHQoJ+a3u+WKoCcpLFxuICAgICAgICAgICAgICAgICAgb25QcmVzc2VkOiAoKSA9PiB7XG4gICAgICAgICAgICAgICAgICAgIHRoaXMuc2V0U3RhdGUoKCkgPT4ge1xuICAgICAgICAgICAgICAgICAgICAgIHRoaXMuYWRkTmV3SXRlbSh0aGlzLmFkZFRleHRWYWx1ZSk7XG4gICAgICAgICAgICAgICAgICAgIH0pO1xuXG4gICAgICAgICAgICAgICAgICAgIGNvbnNvbGUubG9nKCdhZGQ6JyArIHRoaXMuYWRkVGV4dFZhbHVlKTtcbiAgICAgICAgICAgICAgICAgIH0sXG4gICAgICAgICAgICAgICAgfSksXG4gICAgICAgICAgICAgIF0sXG4gICAgICAgICAgICB9KSxcbiAgICAgICAgICAgIG5ldyBFeHBhbmRlZCh7XG4gICAgICAgICAgICAgIGNoaWxkOiBuZXcgTGlzdFZpZXcoe1xuICAgICAgICAgICAgICAgIGNoaWxkcmVuOiB3TGlzdCxcbiAgICAgICAgICAgICAgfSksXG4gICAgICAgICAgICB9KSxcbiAgICAgICAgICBdLFxuICAgICAgICB9KSxcbiAgICAgIH0pLFxuICAgIH0pO1xuICB9XG5cbiAgcHVibGljIGJ1aWxkTGlzdChjb250ZXh0KSB7XG4gICAgbGV0IHdMaXN0OiBhbnkgPSBbXTtcbiAgICBsZXQgd0RvaW5nTGlzdCA9IHRoaXMuYnVpbGREYXRhTGlzdCh0cnVlKTtcbiAgICBsZXQgd0RvbmVMaXN0ID0gdGhpcy5idWlsZERhdGFMaXN0KGZhbHNlKTtcblxuICAgIHdMaXN0LnB1c2gobmV3IFBhZGRpbmcoeyBwYWRkaW5nOiBFZGdlSW5zZXRzLm9ubHkoeyB0b3A6IDIwIH0pIH0pKTtcbiAgICB3TGlzdC5wdXNoKFxuICAgICAgbmV3IFJvdyh7XG4gICAgICAgIGNoaWxkcmVuOiBbXG4gICAgICAgICAgbmV3IFBhZGRpbmcoe1xuICAgICAgICAgICAgcGFkZGluZzogRWRnZUluc2V0cy5vbmx5KHsgbGVmdDogMjAgfSksXG4gICAgICAgICAgfSksXG4gICAgICAgICAgbmV3IFRleHQoJ+ato+WcqOi/m+ihjCcsIHtcbiAgICAgICAgICAgIHRleHRBbGlnbjogVGV4dEFsaWduLmxlZnQsXG4gICAgICAgICAgICBzdHlsZTogbmV3IFRleHRTdHlsZSh7XG4gICAgICAgICAgICAgIGZvbnRTaXplOiAyMCxcbiAgICAgICAgICAgICAgZm9udFdlaWdodDogRm9udFdlaWdodC5ib2xkLFxuICAgICAgICAgICAgICBjb2xvcjogVGhlbWUub2YoY29udGV4dCkucHJpbWFyeUNvbG9yRGFyayxcbiAgICAgICAgICAgIH0pLFxuICAgICAgICAgIH0pLFxuICAgICAgICAgIG5ldyBFeHBhbmRlZCh7XG4gICAgICAgICAgICBjaGlsZDogbmV3IFRleHQod0RvaW5nTGlzdC5sZW5ndGgudG9TdHJpbmcoKSwge1xuICAgICAgICAgICAgICB0ZXh0QWxpZ246IFRleHRBbGlnbi5yaWdodCxcbiAgICAgICAgICAgICAgc3R5bGU6IG5ldyBUZXh0U3R5bGUoe1xuICAgICAgICAgICAgICAgIGZvbnRTaXplOiAyMCxcbiAgICAgICAgICAgICAgICBmb250V2VpZ2h0OiBGb250V2VpZ2h0LmJvbGQsXG4gICAgICAgICAgICAgICAgY29sb3I6IENvbG9ycy5yZWQsXG4gICAgICAgICAgICAgIH0pLFxuICAgICAgICAgICAgfSksXG4gICAgICAgICAgfSksXG4gICAgICAgICAgbmV3IFBhZGRpbmcoe1xuICAgICAgICAgICAgcGFkZGluZzogRWRnZUluc2V0cy5vbmx5KHsgcmlnaHQ6IDIwIH0pLFxuICAgICAgICAgIH0pLFxuICAgICAgICBdLFxuICAgICAgfSksXG4gICAgKTtcbiAgICB3TGlzdCA9IHdMaXN0LmNvbmNhdCh3RG9pbmdMaXN0KTtcblxuICAgIHdMaXN0LnB1c2gobmV3IFBhZGRpbmcoeyBwYWRkaW5nOiBFZGdlSW5zZXRzLm9ubHkoeyB0b3A6IDIwIH0pIH0pKTtcbiAgICB3TGlzdC5wdXNoKFxuICAgICAgbmV3IFJvdyh7XG4gICAgICAgIGNoaWxkcmVuOiBbXG4gICAgICAgICAgbmV3IFBhZGRpbmcoe1xuICAgICAgICAgICAgcGFkZGluZzogRWRnZUluc2V0cy5vbmx5KHsgbGVmdDogMjAgfSksXG4gICAgICAgICAgfSksXG4gICAgICAgICAgbmV3IFRleHQoJ+W3suWujOaIkCcsIHtcbiAgICAgICAgICAgIHRleHRBbGlnbjogVGV4dEFsaWduLmxlZnQsXG4gICAgICAgICAgICBzdHlsZTogbmV3IFRleHRTdHlsZSh7XG4gICAgICAgICAgICAgIGZvbnRTaXplOiAyMCxcbiAgICAgICAgICAgICAgZm9udFdlaWdodDogRm9udFdlaWdodC5ib2xkLFxuICAgICAgICAgICAgICBjb2xvcjogVGhlbWUub2YoY29udGV4dCkucHJpbWFyeUNvbG9yRGFyayxcbiAgICAgICAgICAgIH0pLFxuICAgICAgICAgIH0pLFxuICAgICAgICAgIG5ldyBFeHBhbmRlZCh7XG4gICAgICAgICAgICBjaGlsZDogbmV3IFRleHQod0RvbmVMaXN0Lmxlbmd0aC50b1N0cmluZygpLCB7XG4gICAgICAgICAgICAgIHRleHRBbGlnbjogVGV4dEFsaWduLnJpZ2h0LFxuICAgICAgICAgICAgICBzdHlsZTogbmV3IFRleHRTdHlsZSh7XG4gICAgICAgICAgICAgICAgZm9udFNpemU6IDIwLFxuICAgICAgICAgICAgICAgIGZvbnRXZWlnaHQ6IEZvbnRXZWlnaHQuYm9sZCxcbiAgICAgICAgICAgICAgICBjb2xvcjogQ29sb3JzLmdyZXksXG4gICAgICAgICAgICAgIH0pLFxuICAgICAgICAgICAgfSksXG4gICAgICAgICAgfSksXG4gICAgICAgICAgbmV3IFBhZGRpbmcoe1xuICAgICAgICAgICAgcGFkZGluZzogRWRnZUluc2V0cy5vbmx5KHsgcmlnaHQ6IDIwIH0pLFxuICAgICAgICAgIH0pLFxuICAgICAgICBdLFxuICAgICAgfSksXG4gICAgKTtcbiAgICB3TGlzdCA9IHdMaXN0LmNvbmNhdCh3RG9uZUxpc3QpO1xuXG4gICAgcmV0dXJuIHdMaXN0O1xuICB9XG5cbiAgcHVibGljIGJ1aWxkRGF0YUxpc3QoaXNEb2luZykge1xuICAgIGNvbnN0IGRhdGFMaXN0ID0gaXNEb2luZ1xuICAgICAgPyB0aGlzLmRhdGFMaXN0LmZpbHRlcigodikgPT4ge1xuICAgICAgICAgIHJldHVybiAhdi5pc0RvbmU7XG4gICAgICAgIH0pXG4gICAgICA6IHRoaXMuZGF0YUxpc3QuZmlsdGVyKCh2KSA9PiB7XG4gICAgICAgICAgcmV0dXJuIHYuaXNEb25lO1xuICAgICAgICB9KTtcblxuICAgIHJldHVybiBkYXRhTGlzdC5tYXAoKGl0ZW0sIGluZGV4KSA9PiB7XG4gICAgICByZXR1cm4gbmV3IFRvZG9JdGVtKHtcbiAgICAgICAgaXRlbTogaXRlbSxcbiAgICAgICAgY2FsbGJhY2s6ICh2YWwpID0+IHtcbiAgICAgICAgICBjb25zb2xlLmxvZygnY2IxJywgdGhpcy5kYXRhTGlzdCwgaXRlbSwgdmFsKTtcbiAgICAgICAgICB0aGlzLnNldFN0YXRlKCgpID0+IHtcbiAgICAgICAgICAgIGl0ZW0uaXNEb25lID0gdmFsO1xuICAgICAgICAgIH0pO1xuICAgICAgICB9LFxuICAgICAgICBkZWxldGVDYWxsYmFjazogKHdJdGVtKSA9PiB7XG4gICAgICAgICAgY29uc29sZS5sb2coJ2NiMicsIHRoaXMuZGF0YUxpc3QsIGl0ZW0sIHdJdGVtKTtcbiAgICAgICAgICB0aGlzLnNldFN0YXRlKCgpID0+IHtcbiAgICAgICAgICAgIHRoaXMuZGF0YUxpc3Quc3BsaWNlKFxuICAgICAgICAgICAgICB0aGlzLmRhdGFMaXN0LmZpbmRJbmRleCgoaXRlbSkgPT4gaXRlbS5pbmRleCA9PT0gd0l0ZW0uaW5kZXgpLFxuICAgICAgICAgICAgICAxLFxuICAgICAgICAgICAgKTtcbiAgICAgICAgICB9KTtcbiAgICAgICAgfSxcbiAgICAgICAgZWRpdENhbGxiYWNrOiAobmV3TmFtZSkgPT4ge1xuICAgICAgICAgIGNvbnNvbGUubG9nKCdjYjMnLCB0aGlzLmRhdGFMaXN0LCBpdGVtLCBuZXdOYW1lKTtcbiAgICAgICAgICB0aGlzLnNldFN0YXRlKCgpID0+IHtcbiAgICAgICAgICAgIGl0ZW0ubmFtZSA9IG5ld05hbWU7XG4gICAgICAgICAgfSk7XG4gICAgICAgIH0sXG4gICAgICB9KTtcbiAgICB9KTtcbiAgfVxuXG4gIHB1YmxpYyBhZGROZXdJdGVtKHZhbHVlKSB7XG4gICAgdGhpcy5uZXdJZHggKz0gMTtcbiAgICB0aGlzLmRhdGFMaXN0LnB1c2goe1xuICAgICAgaW5kZXg6IHRoaXMuaW5kZXgsXG4gICAgICBuYW1lOiB2YWx1ZSxcbiAgICAgIGlzRG9uZTogZmFsc2UsXG4gICAgfSk7XG4gIH1cbn1cblxubXhmbHV0dGVyLnJlZ2lzdCh7XG4gIG5hbWU6ICdleGFtcGxlMicsXG4gIFJvb3RXaWRnZXQ6IFRvZG9MaXN0UGFnZSxcbn0pO1xuIiwiLyogZXNsaW50LWRpc2FibGUgKi9cbmltcG9ydCB7IE1YSlNCYXNlV2lkZ2V0LCBNWEpTRmx1dHRlckFwcCwgTVhKU1N0YXRlbGVzc1dpZGdldCwgTVhKU1N0YXRlZnVsV2lkZ2V0LCBNWEpTV2lkZ2V0U3RhdGUgfSBmcm9tICdAdGVuY2VudC9teGZsdXR0ZXInXG5pbXBvcnQge1xuICBDb250YWluZXIsXG4gIEV4cGFuZGVkLFxuICBDb2xvcnMsXG4gIEJvcmRlcixcbiAgVGV4dCxcbiAgSWNvbixcbiAgSWNvbnMsXG4gIEVkZ2VJbnNldHMsXG4gIEJveERlY29yYXRpb24sXG4gIFRleHRGaWVsZCxcbiAgVGV4dEVkaXRpbmdDb250cm9sbGVyLFxuICBUZXh0QWxpZ24sXG4gIFRleHRTdHlsZSxcbiAgVGV4dE92ZXJmbG93LFxuICBSb3csXG4gIFBhZGRpbmcsXG4gIEljb25CdXR0b24sXG4gIFRoZW1lLFxuICBHZXN0dXJlRGV0ZWN0b3IsXG4gIENvbHVtbixcbn0gZnJvbSAnQHRlbmNlbnQvbXhmbHV0dGVyLXdpZGdldHMnXG5cbmNsYXNzIFRvZG9JdGVtIGV4dGVuZHMgTVhKU1N0YXRlZnVsV2lkZ2V0IHtcbiAgcHVibGljIGl0ZW06IGFueTtcbiAgcHVibGljIGNhbGxiYWNrOiBhbnk7XG4gIHB1YmxpYyBkZWxldGVDYWxsYmFjazogYW55O1xuICBwdWJsaWMgZWRpdENhbGxiYWNrOiBhbnk7XG5cbiAgcHVibGljIGNvbnN0cnVjdG9yKHsgaXRlbSwgY2FsbGJhY2ssIGRlbGV0ZUNhbGxiYWNrLCBlZGl0Q2FsbGJhY2sgfSkge1xuICAgIHN1cGVyKFwiVG9kb0l0ZW1cIik7XG4gICAgdGhpcy5pdGVtID0gaXRlbTtcbiAgICB0aGlzLmNhbGxiYWNrID0gY2FsbGJhY2s7XG4gICAgdGhpcy5kZWxldGVDYWxsYmFjayA9IGRlbGV0ZUNhbGxiYWNrO1xuICAgIHRoaXMuZWRpdENhbGxiYWNrID0gZWRpdENhbGxiYWNrO1xuICB9XG5cbiAgcHVibGljIGNyZWF0ZVN0YXRlKCkge1xuICAgIHJldHVybiBuZXcgVG9kb0l0ZW1TdGF0ZSgpO1xuICB9XG59XG5cbmNsYXNzIFRvZG9JdGVtU3RhdGUgZXh0ZW5kcyBNWEpTV2lkZ2V0U3RhdGUge1xuICBwdWJsaWMgZWRpdFRleHRWYWx1ZTogYW55O1xuICBwdWJsaWMgaXNFZGl0OiBhbnk7XG4gIHB1YmxpYyB3aWRnZXQ6IFRvZG9JdGVtO1xuXG4gIHB1YmxpYyBjb25zdHJ1Y3RvcigpIHtcbiAgICBzdXBlcigpO1xuICAgIHRoaXMuZWRpdFRleHRWYWx1ZSA9ICcnO1xuICAgIHRoaXMuaXNFZGl0ID0gZmFsc2U7XG4gIH1cblxuICBwdWJsaWMgYnVpbGQoY29udGV4dCkge1xuICAgIGNvbnN0IHRleHRDb2xvciA9IHRoaXMud2lkZ2V0Lml0ZW0uaXNEb25lID8gQ29sb3JzLmdyZXkgOiBUaGVtZS5vZihjb250ZXh0KS5wcmltYXJ5Q29sb3JEYXJrO1xuXG4gICAgcmV0dXJuIG5ldyBDb250YWluZXIoe1xuICAgICAgcGFkZGluZzogRWRnZUluc2V0cy5hbGwoMjApLFxuICAgICAgY2hpbGQ6IG5ldyBDb250YWluZXIoe1xuICAgICAgICBkZWNvcmF0aW9uOiBuZXcgQm94RGVjb3JhdGlvbih7XG4gICAgICAgICAgYm9yZGVyOiBCb3JkZXIuYWxsKHsgY29sb3I6IENvbG9ycy5ncmV5LCB3aWR0aDogMC41IH0pLFxuICAgICAgICAgIC8vIGJvcmRlclJhZGl1czogQm9yZGVyUmFkaXVzLmFsbChSYWRpdXMuY2lyY3VsYXIoOCkpLFxuICAgICAgICB9KSxcbiAgICAgICAgcGFkZGluZzogRWRnZUluc2V0cy5hbGwoOCksXG4gICAgICAgIGNoaWxkOiBuZXcgUm93KHtcbiAgICAgICAgICBjaGlsZHJlbjogW1xuICAgICAgICAgICAgLy8gbmV3IENoZWNrYm94KHtcbiAgICAgICAgICAgIC8vICAgdmFsdWU6IHRoaXMud2lkZ2V0Lml0ZW0uaXNEb25lLFxuICAgICAgICAgICAgLy8gICBhY3RpdmVDb2xvcjogQ29sb3JzLmdyZXksXG4gICAgICAgICAgICAvLyAgIG9uQ2hhbmdlZDogKHZhbHVlKSA9PiB7XG4gICAgICAgICAgICAvLyAgICAgdGhpcy53aWRnZXQuY2FsbGJhY2sodmFsdWUpO1xuICAgICAgICAgICAgLy8gICB9LFxuICAgICAgICAgICAgLy8gfSlcbiAgICAgICAgICAgIG5ldyBJY29uQnV0dG9uKHtcbiAgICAgICAgICAgICAgdG9vbHRpcDogJ+WujOaIkCcsXG4gICAgICAgICAgICAgIGljb246IG5ldyBJY29uKEljb25zLmRvbmUpLFxuICAgICAgICAgICAgICBjb2xvcjogdGV4dENvbG9yLFxuICAgICAgICAgICAgICBvblByZXNzZWQ6ICgpID0+IHtcbiAgICAgICAgICAgICAgICB0aGlzLndpZGdldC5jYWxsYmFjayghdGhpcy53aWRnZXQuaXRlbS5pc0RvbmUpO1xuICAgICAgICAgICAgICB9XG4gICAgICAgICAgICB9KSxcbiAgICAgICAgICAgIG5ldyBQYWRkaW5nKHtcbiAgICAgICAgICAgICAgcGFkZGluZzogRWRnZUluc2V0cy5vbmx5KHsgbGVmdDogMTAgfSlcbiAgICAgICAgICAgIH0pLFxuICAgICAgICAgICAgdGhpcy5idWlsZE5hbWVXaWRnZXQodGV4dENvbG9yKSxcbiAgICAgICAgICAgIG5ldyBJY29uQnV0dG9uKHtcbiAgICAgICAgICAgICAgdG9vbHRpcDogJ+WIoOmZpCcsXG4gICAgICAgICAgICAgIGljb246IG5ldyBJY29uKEljb25zLmRlbGV0ZSksXG4gICAgICAgICAgICAgIGNvbG9yOiBDb2xvcnMuZ3JleSxcbiAgICAgICAgICAgICAgb25QcmVzc2VkOiAoKSA9PiB7XG4gICAgICAgICAgICAgICAgdGhpcy53aWRnZXQuZGVsZXRlQ2FsbGJhY2sodGhpcy53aWRnZXQuaXRlbSk7XG4gICAgICAgICAgICAgIH1cbiAgICAgICAgICAgIH0pLFxuICAgICAgICAgIF1cbiAgICAgICAgfSlcbiAgICAgIH0pXG4gICAgfSlcbiAgfVxuXG4gIHB1YmxpYyBidWlsZE5hbWVXaWRnZXQodGV4dENvbG9yKSB7XG4gICAgaWYgKHRoaXMuaXNFZGl0KSB7XG4gICAgICByZXR1cm4gbmV3IEV4cGFuZGVkKHtcbiAgICAgICAgY2hpbGQ6IG5ldyBDb250YWluZXIoe1xuICAgICAgICAgIHdpZHRoOiAyMDAsXG4gICAgICAgICAgY2hpbGQ6IG5ldyBUZXh0RmllbGQoe1xuICAgICAgICAgICAgd2lkdGg6IDIwMCxcbiAgICAgICAgICAgIGNvbnRyb2xsZXI6IG5ldyBUZXh0RWRpdGluZ0NvbnRyb2xsZXIoe1xuICAgICAgICAgICAgICB0ZXh0OiB0aGlzLndpZGdldC5pdGVtLm5hbWVcbiAgICAgICAgICAgIH0pLFxuICAgICAgICAgICAgb25DaGFuZ2VkOiAodmFsdWUpID0+IHtcbiAgICAgICAgICAgICAgdGhpcy5lZGl0VGV4dFZhbHVlID0gdmFsdWU7XG4gICAgICAgICAgICB9LFxuICAgICAgICAgICAgb25TdWJtaXR0ZWQ6ICgpID0+IHtcbiAgICAgICAgICAgICAgdGhpcy53aWRnZXQuZWRpdENhbGxiYWNrKHRoaXMuZWRpdFRleHRWYWx1ZSk7XG5cbiAgICAgICAgICAgICAgdGhpcy5zZXRTdGF0ZSgoKSA9PiB7XG4gICAgICAgICAgICAgICAgdGhpcy5pc0VkaXQgPSBmYWxzZTtcbiAgICAgICAgICAgICAgfSk7XG4gICAgICAgICAgICB9XG4gICAgICAgICAgfSlcbiAgICAgICAgfSlcbiAgICAgIH0pXG4gICAgfVxuXG4gICAgcmV0dXJuIG5ldyBFeHBhbmRlZCh7XG4gICAgICBjaGlsZDogbmV3IEdlc3R1cmVEZXRlY3Rvcih7XG4gICAgICAgIG9uVGFwOiAoKSA9PiB7XG4gICAgICAgICAgdGhpcy5zZXRTdGF0ZSgoKSA9PiB7XG4gICAgICAgICAgICB0aGlzLmlzRWRpdCA9IHRydWU7XG4gICAgICAgICAgfSk7XG4gICAgICAgIH0sXG4gICAgICAgIGNoaWxkOiBuZXcgVGV4dCh0aGlzLndpZGdldC5pdGVtLm5hbWUsIHtcbiAgICAgICAgICBzb2Z0V3JhcDogdHJ1ZSxcbiAgICAgICAgICBvdmVyZmxvdzogVGV4dE92ZXJmbG93LmVsbGlwc2lzLFxuICAgICAgICAgIG1heExpbmVzOiAyLFxuICAgICAgICAgIHRleHRBbGlnbjogVGV4dEFsaWduLmxlZnQsXG4gICAgICAgICAgc3R5bGU6IG5ldyBUZXh0U3R5bGUoe1xuICAgICAgICAgICAgZm9udFNpemU6IDIwLFxuICAgICAgICAgICAgY29sb3I6IHRleHRDb2xvcixcbiAgICAgICAgICB9KSxcbiAgICAgICAgfSlcbiAgICAgIH0pXG4gICAgfSk7XG4gIH1cbn1cblxuZXhwb3J0IHtcbiAgVG9kb0l0ZW1cbn1cbiIsIm1vZHVsZS5leHBvcnRzID0gZ2xvYmFsVGhpcy5NWEZsdXR0ZXJTREsuTVhGbHV0dGVyOyIsIm1vZHVsZS5leHBvcnRzID0gZ2xvYmFsVGhpcy5NWEZsdXR0ZXJTREsuTVhGbHV0dGVyV2lkZ2V0czsiLCIvLyBUaGUgbW9kdWxlIGNhY2hlXG52YXIgX193ZWJwYWNrX21vZHVsZV9jYWNoZV9fID0ge307XG5cbi8vIFRoZSByZXF1aXJlIGZ1bmN0aW9uXG5mdW5jdGlvbiBfX3dlYnBhY2tfcmVxdWlyZV9fKG1vZHVsZUlkKSB7XG5cdC8vIENoZWNrIGlmIG1vZHVsZSBpcyBpbiBjYWNoZVxuXHRpZihfX3dlYnBhY2tfbW9kdWxlX2NhY2hlX19bbW9kdWxlSWRdKSB7XG5cdFx0cmV0dXJuIF9fd2VicGFja19tb2R1bGVfY2FjaGVfX1ttb2R1bGVJZF0uZXhwb3J0cztcblx0fVxuXHQvLyBDcmVhdGUgYSBuZXcgbW9kdWxlIChhbmQgcHV0IGl0IGludG8gdGhlIGNhY2hlKVxuXHR2YXIgbW9kdWxlID0gX193ZWJwYWNrX21vZHVsZV9jYWNoZV9fW21vZHVsZUlkXSA9IHtcblx0XHQvLyBubyBtb2R1bGUuaWQgbmVlZGVkXG5cdFx0Ly8gbm8gbW9kdWxlLmxvYWRlZCBuZWVkZWRcblx0XHRleHBvcnRzOiB7fVxuXHR9O1xuXG5cdC8vIEV4ZWN1dGUgdGhlIG1vZHVsZSBmdW5jdGlvblxuXHRfX3dlYnBhY2tfbW9kdWxlc19fW21vZHVsZUlkXShtb2R1bGUsIG1vZHVsZS5leHBvcnRzLCBfX3dlYnBhY2tfcmVxdWlyZV9fKTtcblxuXHQvLyBSZXR1cm4gdGhlIGV4cG9ydHMgb2YgdGhlIG1vZHVsZVxuXHRyZXR1cm4gbW9kdWxlLmV4cG9ydHM7XG59XG5cbiIsIi8vIGdldERlZmF1bHRFeHBvcnQgZnVuY3Rpb24gZm9yIGNvbXBhdGliaWxpdHkgd2l0aCBub24taGFybW9ueSBtb2R1bGVzXG5fX3dlYnBhY2tfcmVxdWlyZV9fLm4gPSAobW9kdWxlKSA9PiB7XG5cdHZhciBnZXR0ZXIgPSBtb2R1bGUgJiYgbW9kdWxlLl9fZXNNb2R1bGUgP1xuXHRcdCgpID0+IG1vZHVsZVsnZGVmYXVsdCddIDpcblx0XHQoKSA9PiBtb2R1bGU7XG5cdF9fd2VicGFja19yZXF1aXJlX18uZChnZXR0ZXIsIHsgYTogZ2V0dGVyIH0pO1xuXHRyZXR1cm4gZ2V0dGVyO1xufTsiLCIvLyBkZWZpbmUgZ2V0dGVyIGZ1bmN0aW9ucyBmb3IgaGFybW9ueSBleHBvcnRzXG5fX3dlYnBhY2tfcmVxdWlyZV9fLmQgPSAoZXhwb3J0cywgZGVmaW5pdGlvbikgPT4ge1xuXHRmb3IodmFyIGtleSBpbiBkZWZpbml0aW9uKSB7XG5cdFx0aWYoX193ZWJwYWNrX3JlcXVpcmVfXy5vKGRlZmluaXRpb24sIGtleSkgJiYgIV9fd2VicGFja19yZXF1aXJlX18ubyhleHBvcnRzLCBrZXkpKSB7XG5cdFx0XHRPYmplY3QuZGVmaW5lUHJvcGVydHkoZXhwb3J0cywga2V5LCB7IGVudW1lcmFibGU6IHRydWUsIGdldDogZGVmaW5pdGlvbltrZXldIH0pO1xuXHRcdH1cblx0fVxufTsiLCJfX3dlYnBhY2tfcmVxdWlyZV9fLm8gPSAob2JqLCBwcm9wKSA9PiBPYmplY3QucHJvdG90eXBlLmhhc093blByb3BlcnR5LmNhbGwob2JqLCBwcm9wKSIsIi8vIGRlZmluZSBfX2VzTW9kdWxlIG9uIGV4cG9ydHNcbl9fd2VicGFja19yZXF1aXJlX18uciA9IChleHBvcnRzKSA9PiB7XG5cdGlmKHR5cGVvZiBTeW1ib2wgIT09ICd1bmRlZmluZWQnICYmIFN5bWJvbC50b1N0cmluZ1RhZykge1xuXHRcdE9iamVjdC5kZWZpbmVQcm9wZXJ0eShleHBvcnRzLCBTeW1ib2wudG9TdHJpbmdUYWcsIHsgdmFsdWU6ICdNb2R1bGUnIH0pO1xuXHR9XG5cdE9iamVjdC5kZWZpbmVQcm9wZXJ0eShleHBvcnRzLCAnX19lc01vZHVsZScsIHsgdmFsdWU6IHRydWUgfSk7XG59OyIsIi8vIHN0YXJ0dXBcbi8vIExvYWQgZW50cnkgbW9kdWxlXG5fX3dlYnBhY2tfcmVxdWlyZV9fKFwiLi9zcmMvaW5kZXgudHNcIik7XG4vLyBUaGlzIGVudHJ5IG1vZHVsZSB1c2VkICdleHBvcnRzJyBzbyBpdCBjYW4ndCBiZSBpbmxpbmVkXG4iXSwic291cmNlUm9vdCI6IiJ9