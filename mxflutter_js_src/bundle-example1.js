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
_tencent_mxflutter__WEBPACK_IMPORTED_MODULE_0___default().regist({
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
//# sourceMappingURL=data:application/json;charset=utf-8;base64,eyJ2ZXJzaW9uIjozLCJzb3VyY2VzIjpbIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMS8uL3NyYy9pbmRleC50cyIsIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMS8uL3NyYy9tb2RlbC50cyIsIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMS9leHRlcm5hbCBcImdsb2JhbFRoaXMuTVhGbHV0dGVyU0RLLk1YRmx1dHRlclwiIiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUxL2V4dGVybmFsIFwiZ2xvYmFsVGhpcy5NWEZsdXR0ZXJTREsuTVhGbHV0dGVyV2lkZ2V0c1wiIiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUxL3dlYnBhY2svYm9vdHN0cmFwIiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUxL3dlYnBhY2svcnVudGltZS9jb21wYXQgZ2V0IGRlZmF1bHQgZXhwb3J0Iiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUxL3dlYnBhY2svcnVudGltZS9kZWZpbmUgcHJvcGVydHkgZ2V0dGVycyIsIndlYnBhY2s6Ly9AdGVzdC9leGFtcGxlMS93ZWJwYWNrL3J1bnRpbWUvaGFzT3duUHJvcGVydHkgc2hvcnRoYW5kIiwid2VicGFjazovL0B0ZXN0L2V4YW1wbGUxL3dlYnBhY2svcnVudGltZS9tYWtlIG5hbWVzcGFjZSBvYmplY3QiLCJ3ZWJwYWNrOi8vQHRlc3QvZXhhbXBsZTEvd2VicGFjay9zdGFydHVwIl0sIm5hbWVzIjpbXSwibWFwcGluZ3MiOiI7Ozs7Ozs7Ozs7Ozs7Ozs7Ozs7QUFBQSxvQkFBb0I7QUFDcUY7QUF5QnJFO0FBRUc7QUFTdkMsTUFBTSxZQUFhLFNBQVEsbUVBQW1CO0lBRTVDLFlBQVksS0FBd0I7UUFDbEMsS0FBSyxFQUFFLENBQUM7UUFDUixJQUFJLENBQUMsS0FBSyxHQUFHLEtBQUssQ0FBQztJQUNyQixDQUFDO0lBRUQsWUFBWTtRQUNWLElBQUksQ0FBQyxLQUFLLENBQUMsU0FBUyxDQUFDLENBQUMsSUFBSSxDQUFDLEtBQUssQ0FBQyxTQUFTLENBQUMsQ0FBQztJQUM5QyxDQUFD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WTtJQUt2QixZQUFZLElBQVksRUFBRSxTQUFrQjtRQUMxQyxJQUFJLENBQUMsRUFBRSxHQUFHLEtBQUssRUFBRSxDQUFDO1FBQ2xCLElBQUksQ0FBQyxTQUFTLEdBQUcsU0FBUyxDQUFDO1FBQzNCLElBQUksQ0FBQyxJQUFJLEdBQUcsSUFBSSxDQUFDO0lBQ25CLENBQUM7Q0FDRjs7Ozs7Ozs7Ozs7OztBQ2RELG1EOzs7Ozs7Ozs7Ozs7QUNBQSwwRDs7Ozs7O1VDQUE7VUFDQTs7VUFFQTtVQUNBO1VBQ0E7VUFDQTtVQUNBO1VBQ0E7VUFDQTtVQUNBO1VBQ0E7VUFDQTtVQUNBO1VBQ0E7O1VBRUE7VUFDQTs7VUFFQTtVQUNBO1VBQ0E7Ozs7O1dDckJBO1dBQ0E7V0FDQTtXQUNBO1dBQ0E7V0FDQSxnQ0FBZ0MsWUFBWTtXQUM1QztXQUNBLEU7Ozs7O1dDUEE7V0FDQTtXQUNBO1dBQ0E7V0FDQSx3Q0FBd0MseUNBQXlDO1dBQ2pGO1dBQ0E7V0FDQSxFOzs7OztXQ1BBLHNGOzs7OztXQ0FBO1dBQ0E7V0FDQTtXQUNBLHNEQUFzRCxrQkFBa0I7V0FDeEU7V0FDQSwrQ0FBK0MsY0FBYztXQUM3RCxFOzs7O1VDTkE7VUFDQTtVQUNBO1VBQ0EiLCJmaWxlIjoiYnVuZGxlLWV4YW1wbGUxLmpzIiwic291cmNlc0NvbnRlbnQiOlsiLyogZXNsaW50LWRpc2FibGUgKi9cbmltcG9ydCBteGZsdXR0ZXIsIHsgTVhKU1N0YXRlbGVzc1dpZGdldCwgTVhKU1N0YXRlZnVsV2lkZ2V0LCBNWEpTV2lkZ2V0U3RhdGUgfSBmcm9tICdAdGVuY2VudC9teGZsdXR0ZXInO1xuaW1wb3J0IHtcbiAgQ29udGFpbmVyLFxuICBFeHBhbmRlZCxcbiAgQ29sb3IsXG4gIFRleHQsXG4gIEF4aXMsXG4gIExpc3RWaWV3LFxuICBJY29ucyxcbiAgSWNvbixcbiAgSWNvbkJ1dHRvbixcbiAgRWRnZUluc2V0cyxcbiAgVGV4dFN0eWxlLFxuICBUZXh0RmllbGQsXG4gIFRleHRFZGl0aW5nQ29udHJvbGxlcixcbiAgUm93LFxuICBDb2x1bW4sXG4gIE1haW5BeGlzQWxpZ25tZW50LFxuICBUZXh0RGVjb3JhdGlvbixcbiAgVGV4dERlY29yYXRpb25TdHlsZSxcbiAgQm9yZGVyUmFkaXVzLFxuICBBbGlnbm1lbnQsXG4gIEJveERlY29yYXRpb24sXG4gIFNjYWZmb2xkLFxuICBBcHBCYXIsXG59IGZyb20gJ0B0ZW5jZW50L214Zmx1dHRlci13aWRnZXRzJztcblxuaW1wb3J0IHsgRGF0YUxpc3RJdGVtIH0gZnJvbSAnLi9tb2RlbCc7XG5cbmludGVyZmFjZSBUb2RvTGlzdEl0ZW1Qcm9wcyB7XG4gIG9uQ2hhbmdlZDogKHZhbHVlOiBib29sZWFuKSA9PiB2b2lkO1xuICBvbkRlbGV0ZTogKCkgPT4gdm9pZDtcbiAgY29tcGxldGVkOiBib29sZWFuO1xuICB0ZXh0OiBzdHJpbmc7XG59XG5cbmNsYXNzIFRvZG9MaXN0SXRlbSBleHRlbmRzIE1YSlNTdGF0ZWxlc3NXaWRnZXQge1xuICBwcml2YXRlIHByb3BzOiBUb2RvTGlzdEl0ZW1Qcm9wcztcbiAgY29uc3RydWN0b3IocHJvcHM6IFRvZG9MaXN0SXRlbVByb3BzKSB7XG4gICAgc3VwZXIoKTtcbiAgICB0aGlzLnByb3BzID0gcHJvcHM7XG4gIH1cblxuICBoYW5kbGVUb2dnbGUoKSB7XG4gICAgdGhpcy5wcm9wcy5vbkNoYW5nZWQoIXRoaXMucHJvcHMuY29tcGxldGVkKTtcbiAgfVxuXG4gIGJ1aWxkKGNvbnRleHQ6IGFueSkge1xuICAgIHJldHVybiBuZXcgUm93KHtcbiAgICAgIG1haW5BeGlzQWxpZ25tZW50OiBNYWluQXhpc0FsaWdubWVudC5zcGFjZUJldHdlZW4sXG4gICAgICBjaGlsZHJlbjogW1xuICAgICAgICBuZXcgRXhwYW5kZWQoe1xuICAgICAgICAgIGZsZXg6IDEsXG4gICAgICAgICAgY2hpbGQ6IG5ldyBDb250YWluZXIoe1xuICAgICAgICAgICAgY2hpbGQ6IG5ldyBUZXh0KHRoaXMucHJvcHMudGV4dCwge1xuICAgICAgICAgICAgICBzdHlsZTogdGhpcy5wcm9wcy5jb21wbGV0ZWRcbiAgICAgICAgICAgICAgICA/IG5ldyBUZXh0U3R5bGUoe1xuICAgICAgICAgICAgICAgICAgICBkZWNvcmF0aW9uOiBUZXh0RGVjb3JhdGlvbi5saW5lVGhyb3VnaCxcbiAgICAgICAgICAgICAgICAgICAgZGVjb3JhdGlvblN0eWxlOiBUZXh0RGVjb3JhdGlvblN0eWxlLnNvbGlkLFxuICAgICAgICAgICAgICAgICAgfSlcbiAgICAgICAgICAgICAgICA6IG51bGwsXG4gICAgICAgICAgICB9KSxcbiAgICAgICAgICB9KSxcbiAgICAgICAgfSksXG4gICAgICAgIG5ldyBJY29uQnV0dG9uKHtcbiAgICAgICAgICBvblByZXNzZWQ6IHRoaXMucHJvcHMub25EZWxldGUsXG4gICAgICAgICAgaWNvbjogbmV3IEljb24oSWNvbnMuZGVsZXRlKSxcbiAgICAgICAgfSksXG4gICAgICBdLFxuICAgIH0pO1xuICB9XG59XG5cbmNsYXNzIFRvZG9MaXN0U3RhdGUgZXh0ZW5kcyBNWEpTV2lkZ2V0U3RhdGUge1xuICBwcml2YXRlIGlucHV0VGV4dDogc3RyaW5nO1xuICBwcml2YXRlIGxpc3Q6IERhdGFMaXN0SXRlbVtdO1xuXG4gIGNvbnN0cnVjdG9yKGluczogYW55KSB7XG4gICAgc3VwZXIoKTtcbiAgICB0aGlzLmlucHV0VGV4dCA9ICcnO1xuICAgIHRoaXMubGlzdCA9IFtuZXcgRGF0YUxpc3RJdGVtKCdhYWEnLCB0cnVlKV07XG4gIH1cblxuICBoYW5kbGVDaGFuZ2VJdGVtKGl0ZW0sIHZhbHVlKSB7XG4gICAgdGhpcy5zZXRTdGF0ZSgoKSA9PiB7XG4gICAgICBpdGVtLmNvbXBsZXRlZCA9IHZhbHVlO1xuICAgIH0pO1xuICB9XG5cbiAgaGFuZGxlRGVsZXRlSXRlbShpdGVtKSB7XG4gICAgdGhpcy5zZXRTdGF0ZSgoKSA9PiB7XG4gICAgICB0aGlzLmxpc3QgPSB0aGlzLmxpc3QuZmlsdGVyKChlKSA9PiBlLmlkICE9PSBpdGVtLmlkKTtcblxuICAgICAgLy8gbGlzdC5yZW1vdmVXaGVyZSgoZWxlbWVudCkgPT4gZWxlbWVudC5pZCA9PSBpdGVtLmlkKTtcbiAgICB9KTtcbiAgfVxuXG4gIGhhbmRsZUlucHV0VGV4dCgpIHtcbiAgICBpZiAodGhpcy5pbnB1dFRleHQudHJpbSgpLmxlbmd0aCA+IDApIHtcbiAgICAgIHRoaXMuc2V0U3RhdGUoKCkgPT4ge1xuICAgICAgICB0aGlzLmxpc3QucHVzaChuZXcgRGF0YUxpc3RJdGVtKHRoaXMuaW5wdXRUZXh0LCBmYWxzZSkpO1xuICAgICAgICB0aGlzLmlucHV0VGV4dCA9ICcnO1xuICAgICAgfSk7XG4gICAgfVxuICB9XG5cbiAgYnVpbGRUb2RvTGlzdChjb250ZXh0OiBhbnkpIHtcbiAgICByZXR1cm4gdGhpcy5saXN0Lm1hcCgoZSkgPT4ge1xuICAgICAgcmV0dXJuIG5ldyBUb2RvTGlzdEl0ZW0oe1xuICAgICAgICBjb21wbGV0ZWQ6IGUuY29tcGxldGVkLFxuICAgICAgICB0ZXh0OiBlLnRleHQsXG4gICAgICAgIG9uQ2hhbmdlZDogKHZhbHVlKSA9PiB7XG4gICAgICAgICAgdGhpcy5oYW5kbGVDaGFuZ2VJdGVtKGUsIHZhbHVlKTtcbiAgICAgICAgfSxcbiAgICAgICAgb25EZWxldGU6ICgpID0+IHtcbiAgICAgICAgICB0aGlzLmhhbmRsZURlbGV0ZUl0ZW0oZSk7XG4gICAgICAgIH0sXG4gICAgICB9KTtcbiAgICB9KTtcbiAgfVxuXG4gIGJ1aWxkSW5wdXRCb3goY29udGV4dDogYW55KSB7XG4gICAgcmV0dXJuIG5ldyBSb3coe1xuICAgICAgY2hpbGRyZW46IFtcbiAgICAgICAgbmV3IEV4cGFuZGVkKHtcbiAgICAgICAgICBmbGV4OiAxLFxuICAgICAgICAgIGNoaWxkOiBuZXcgVGV4dEZpZWxkKHtcbiAgICAgICAgICAgIGNvbnRyb2xsZXI6IG5ldyBUZXh0RWRpdGluZ0NvbnRyb2xsZXIoeyB0ZXh0OiB0aGlzLmlucHV0VGV4dCB9KSxcbiAgICAgICAgICAgIG9uU3VibWl0dGVkOiAodmFsdWUpID0+IHtcbiAgICAgICAgICAgICAgY29uc29sZS5sb2coJ29uU3VibWl0dGVkJywgdmFsdWUpO1xuICAgICAgICAgICAgICB0aGlzLmlucHV0VGV4dCA9IHZhbHVlO1xuICAgICAgICAgICAgICB0aGlzLmhhbmRsZUlucHV0VGV4dCgpO1xuICAgICAgICAgICAgfSxcbiAgICAgICAgICAgIG9uQ2hhbmdlZDogKHZhbHVlKSA9PiB7XG4gICAgICAgICAgICAgIHRoaXMuaW5wdXRUZXh0ID0gdmFsdWU7XG4gICAgICAgICAgICAgIGNvbnNvbGUubG9nKCdjaGFuZ2UyMjInLCB2YWx1ZSk7XG4gICAgICAgICAgICB9LFxuICAgICAgICAgIH0pLFxuICAgICAgICB9KSxcblxuICAgICAgICBuZXcgQ29udGFpbmVyKHtcbiAgICAgICAgICBkZWNvcmF0aW9uOiBuZXcgQm94RGVjb3JhdGlvbih7XG4gICAgICAgICAgICBib3JkZXJSYWRpdXM6IEJvcmRlclJhZGl1cy5jaXJjdWxhcig0Mi4wKSxcbiAgICAgICAgICAgIGNvbG9yOiBuZXcgQ29sb3IoMHhmZjllOWU5ZSksXG4gICAgICAgICAgfSksXG4gICAgICAgICAgY2hpbGQ6IG5ldyBJY29uQnV0dG9uKHtcbiAgICAgICAgICAgIG9uUHJlc3NlZDogKCkgPT4ge1xuICAgICAgICAgICAgICB0aGlzLmhhbmRsZUlucHV0VGV4dCgpO1xuICAgICAgICAgICAgfSxcbiAgICAgICAgICAgIGljb246IG5ldyBJY29uKEljb25zLmFkZCksXG4gICAgICAgICAgICBhbGlnbm1lbnQ6IEFsaWdubWVudC5jZW50ZXIsXG4gICAgICAgICAgfSksXG4gICAgICAgIH0pLFxuICAgICAgXSxcbiAgICB9KTtcbiAgfVxuXG4gIGJ1aWxkKGNvbnRleHQ6IGFueSkge1xuICAgIHJldHVybiBuZXcgU2NhZmZvbGQoe1xuICAgICAgYXBwQmFyOiBuZXcgQXBwQmFyKHtcbiAgICAgICAgdGl0bGU6IG5ldyBUZXh0KCdUb2RvTGlzdCcpLFxuICAgICAgfSksXG4gICAgICBib2R5OiBuZXcgQ29sdW1uKHtcbiAgICAgICAgY2hpbGRyZW46IFtcbiAgICAgICAgICBuZXcgRXhwYW5kZWQoe1xuICAgICAgICAgICAgZmxleDogMSxcbiAgICAgICAgICAgIGNoaWxkOiBuZXcgTGlzdFZpZXcoe1xuICAgICAgICAgICAgICBzY3JvbGxEaXJlY3Rpb246IEF4aXMudmVydGljYWwsXG4gICAgICAgICAgICAgIHNocmlua1dyYXA6IHRydWUsXG4gICAgICAgICAgICAgIHBhZGRpbmc6IEVkZ2VJbnNldHMuYWxsKDEwKSxcbiAgICAgICAgICAgICAgY2hpbGRyZW46IHRoaXMuYnVpbGRUb2RvTGlzdChjb250ZXh0KSxcbiAgICAgICAgICAgIH0pLFxuICAgICAgICAgIH0pLFxuICAgICAgICAgIG5ldyBDb250YWluZXIoe1xuICAgICAgICAgICAgcGFkZGluZzogRWRnZUluc2V0cy5mcm9tTFRSQigyMCwgMCwgMjAsIDIwKSxcbiAgICAgICAgICAgIGhlaWdodDogODAsXG4gICAgICAgICAgICBjaGlsZDogdGhpcy5idWlsZElucHV0Qm94KGNvbnRleHQpLFxuICAgICAgICAgIH0pLFxuICAgICAgICBdLFxuICAgICAgfSksXG4gICAgfSk7XG4gIH1cbn1cblxuY2xhc3MgSG9tZVBhZ2UgZXh0ZW5kcyBNWEpTU3RhdGVmdWxXaWRnZXQge1xuICBjb25zdHJ1Y3RvcigpIHtcbiAgICBzdXBlcigpO1xuICB9XG5cbiAgY3JlYXRlU3RhdGUoKSB7XG4gICAgcmV0dXJuIG5ldyBUb2RvTGlzdFN0YXRlKHRoaXMpO1xuICB9XG59XG5cbm14Zmx1dHRlci5yZWdpc3Qoe1xuICBuYW1lOiAnZXhhbXBsZTEnLFxuICBSb290V2lkZ2V0OiBIb21lUGFnZSxcbn0pO1xuIiwiLyogZXNsaW50LWRpc2FibGUgKi9cbmxldCBfc2VlZDogbnVtYmVyID0gMFxuXG5cbmV4cG9ydCBjbGFzcyBEYXRhTGlzdEl0ZW0ge1xuICBpZDogbnVtYmVyXG4gIGNvbXBsZXRlZDogYm9vbGVhblxuICB0ZXh0OiBzdHJpbmdcblxuICBjb25zdHJ1Y3Rvcih0ZXh0OiBzdHJpbmcsIGNvbXBsZXRlZDogYm9vbGVhbikge1xuICAgIHRoaXMuaWQgPSBfc2VlZCsrO1xuICAgIHRoaXMuY29tcGxldGVkID0gY29tcGxldGVkO1xuICAgIHRoaXMudGV4dCA9IHRleHQ7XG4gIH1cbn1cbiIsIm1vZHVsZS5leHBvcnRzID0gZ2xvYmFsVGhpcy5NWEZsdXR0ZXJTREsuTVhGbHV0dGVyOyIsIm1vZHVsZS5leHBvcnRzID0gZ2xvYmFsVGhpcy5NWEZsdXR0ZXJTREsuTVhGbHV0dGVyV2lkZ2V0czsiLCIvLyBUaGUgbW9kdWxlIGNhY2hlXG52YXIgX193ZWJwYWNrX21vZHVsZV9jYWNoZV9fID0ge307XG5cbi8vIFRoZSByZXF1aXJlIGZ1bmN0aW9uXG5mdW5jdGlvbiBfX3dlYnBhY2tfcmVxdWlyZV9fKG1vZHVsZUlkKSB7XG5cdC8vIENoZWNrIGlmIG1vZHVsZSBpcyBpbiBjYWNoZVxuXHRpZihfX3dlYnBhY2tfbW9kdWxlX2NhY2hlX19bbW9kdWxlSWRdKSB7XG5cdFx0cmV0dXJuIF9fd2VicGFja19tb2R1bGVfY2FjaGVfX1ttb2R1bGVJZF0uZXhwb3J0cztcblx0fVxuXHQvLyBDcmVhdGUgYSBuZXcgbW9kdWxlIChhbmQgcHV0IGl0IGludG8gdGhlIGNhY2hlKVxuXHR2YXIgbW9kdWxlID0gX193ZWJwYWNrX21vZHVsZV9jYWNoZV9fW21vZHVsZUlkXSA9IHtcblx0XHQvLyBubyBtb2R1bGUuaWQgbmVlZGVkXG5cdFx0Ly8gbm8gbW9kdWxlLmxvYWRlZCBuZWVkZWRcblx0XHRleHBvcnRzOiB7fVxuXHR9O1xuXG5cdC8vIEV4ZWN1dGUgdGhlIG1vZHVsZSBmdW5jdGlvblxuXHRfX3dlYnBhY2tfbW9kdWxlc19fW21vZHVsZUlkXShtb2R1bGUsIG1vZHVsZS5leHBvcnRzLCBfX3dlYnBhY2tfcmVxdWlyZV9fKTtcblxuXHQvLyBSZXR1cm4gdGhlIGV4cG9ydHMgb2YgdGhlIG1vZHVsZVxuXHRyZXR1cm4gbW9kdWxlLmV4cG9ydHM7XG59XG5cbiIsIi8vIGdldERlZmF1bHRFeHBvcnQgZnVuY3Rpb24gZm9yIGNvbXBhdGliaWxpdHkgd2l0aCBub24taGFybW9ueSBtb2R1bGVzXG5fX3dlYnBhY2tfcmVxdWlyZV9fLm4gPSAobW9kdWxlKSA9PiB7XG5cdHZhciBnZXR0ZXIgPSBtb2R1bGUgJiYgbW9kdWxlLl9fZXNNb2R1bGUgP1xuXHRcdCgpID0+IG1vZHVsZVsnZGVmYXVsdCddIDpcblx0XHQoKSA9PiBtb2R1bGU7XG5cdF9fd2VicGFja19yZXF1aXJlX18uZChnZXR0ZXIsIHsgYTogZ2V0dGVyIH0pO1xuXHRyZXR1cm4gZ2V0dGVyO1xufTsiLCIvLyBkZWZpbmUgZ2V0dGVyIGZ1bmN0aW9ucyBmb3IgaGFybW9ueSBleHBvcnRzXG5fX3dlYnBhY2tfcmVxdWlyZV9fLmQgPSAoZXhwb3J0cywgZGVmaW5pdGlvbikgPT4ge1xuXHRmb3IodmFyIGtleSBpbiBkZWZpbml0aW9uKSB7XG5cdFx0aWYoX193ZWJwYWNrX3JlcXVpcmVfXy5vKGRlZmluaXRpb24sIGtleSkgJiYgIV9fd2VicGFja19yZXF1aXJlX18ubyhleHBvcnRzLCBrZXkpKSB7XG5cdFx0XHRPYmplY3QuZGVmaW5lUHJvcGVydHkoZXhwb3J0cywga2V5LCB7IGVudW1lcmFibGU6IHRydWUsIGdldDogZGVmaW5pdGlvbltrZXldIH0pO1xuXHRcdH1cblx0fVxufTsiLCJfX3dlYnBhY2tfcmVxdWlyZV9fLm8gPSAob2JqLCBwcm9wKSA9PiBPYmplY3QucHJvdG90eXBlLmhhc093blByb3BlcnR5LmNhbGwob2JqLCBwcm9wKSIsIi8vIGRlZmluZSBfX2VzTW9kdWxlIG9uIGV4cG9ydHNcbl9fd2VicGFja19yZXF1aXJlX18uciA9IChleHBvcnRzKSA9PiB7XG5cdGlmKHR5cGVvZiBTeW1ib2wgIT09ICd1bmRlZmluZWQnICYmIFN5bWJvbC50b1N0cmluZ1RhZykge1xuXHRcdE9iamVjdC5kZWZpbmVQcm9wZXJ0eShleHBvcnRzLCBTeW1ib2wudG9TdHJpbmdUYWcsIHsgdmFsdWU6ICdNb2R1bGUnIH0pO1xuXHR9XG5cdE9iamVjdC5kZWZpbmVQcm9wZXJ0eShleHBvcnRzLCAnX19lc01vZHVsZScsIHsgdmFsdWU6IHRydWUgfSk7XG59OyIsIi8vIHN0YXJ0dXBcbi8vIExvYWQgZW50cnkgbW9kdWxlXG5fX3dlYnBhY2tfcmVxdWlyZV9fKFwiLi9zcmMvaW5kZXgudHNcIik7XG4vLyBUaGlzIGVudHJ5IG1vZHVsZSB1c2VkICdleHBvcnRzJyBzbyBpdCBjYW4ndCBiZSBpbmxpbmVkXG4iXSwic291cmNlUm9vdCI6IiJ9