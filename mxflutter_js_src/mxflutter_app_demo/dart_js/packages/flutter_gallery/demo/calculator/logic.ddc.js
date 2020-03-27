'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const _interceptors = dart_sdk._interceptors;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const logic = Object.create(dart.library);
const $startsWith = dartx.startsWith;
const $endsWith = dartx.endsWith;
const $toStringAsPrecision = dartx.toStringAsPrecision;
const $add = dartx.add;
const $toList = dartx.toList;
const $removeLast = dartx.removeLast;
const $isNotEmpty = dartx.isNotEmpty;
const $removeAt = dartx.removeAt;
const $first = dartx.first;
let JSArrayOfExpressionToken = () => (JSArrayOfExpressionToken = dart.constFn(_interceptors.JSArray$(logic.ExpressionToken)))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C0() {
    return C0 = dart.const({
      __proto__: logic.Operation.prototype,
      [_name$]: "Operation.Addition",
      index: 0
    });
  },
  get C1() {
    return C1 = dart.const({
      __proto__: logic.Operation.prototype,
      [_name$]: "Operation.Subtraction",
      index: 1
    });
  },
  get C2() {
    return C2 = dart.const({
      __proto__: logic.Operation.prototype,
      [_name$]: "Operation.Multiplication",
      index: 2
    });
  },
  get C3() {
    return C3 = dart.const({
      __proto__: logic.Operation.prototype,
      [_name$]: "Operation.Division",
      index: 3
    });
  },
  get C4() {
    return C4 = dart.constList([C0 || CT.C0, C1 || CT.C1, C2 || CT.C2, C3 || CT.C3], logic.Operation);
  },
  get C5() {
    return C5 = dart.const({
      __proto__: logic.ExpressionState.prototype,
      [_name$]: "ExpressionState.Start",
      index: 0
    });
  },
  get C6() {
    return C6 = dart.const({
      __proto__: logic.ExpressionState.prototype,
      [_name$]: "ExpressionState.LeadingNeg",
      index: 1
    });
  },
  get C7() {
    return C7 = dart.const({
      __proto__: logic.ExpressionState.prototype,
      [_name$]: "ExpressionState.Number",
      index: 2
    });
  },
  get C8() {
    return C8 = dart.const({
      __proto__: logic.ExpressionState.prototype,
      [_name$]: "ExpressionState.Point",
      index: 3
    });
  },
  get C9() {
    return C9 = dart.const({
      __proto__: logic.ExpressionState.prototype,
      [_name$]: "ExpressionState.NumberWithPoint",
      index: 4
    });
  },
  get C10() {
    return C10 = dart.const({
      __proto__: logic.ExpressionState.prototype,
      [_name$]: "ExpressionState.Result",
      index: 5
    });
  },
  get C11() {
    return C11 = dart.constList([C5 || CT.C5, C6 || CT.C6, C7 || CT.C7, C8 || CT.C8, C9 || CT.C9, C10 || CT.C10], logic.ExpressionState);
  }
});
const stringRep$ = dart.privateName(logic, "ExpressionToken.stringRep");
logic.ExpressionToken = class ExpressionToken extends core.Object {
  get stringRep() {
    return this[stringRep$];
  }
  set stringRep(value) {
    super.stringRep = value;
  }
  toString() {
    return this.stringRep;
  }
};
(logic.ExpressionToken.new = function(stringRep) {
  this[stringRep$] = stringRep;
  ;
}).prototype = logic.ExpressionToken.prototype;
dart.addTypeTests(logic.ExpressionToken);
dart.setLibraryUri(logic.ExpressionToken, "package:flutter_gallery/demo/calculator/logic.dart");
dart.setFieldSignature(logic.ExpressionToken, () => ({
  __proto__: dart.getFields(logic.ExpressionToken.__proto__),
  stringRep: dart.finalFieldType(core.String)
}));
dart.defineExtensionMethods(logic.ExpressionToken, ['toString']);
const number$ = dart.privateName(logic, "NumberToken.number");
logic.NumberToken = class NumberToken extends logic.ExpressionToken {
  get number() {
    return this[number$];
  }
  set number(value) {
    super.number = value;
  }
};
(logic.NumberToken.new = function(stringRep, number) {
  this[number$] = number;
  logic.NumberToken.__proto__.new.call(this, stringRep);
  ;
}).prototype = logic.NumberToken.prototype;
(logic.NumberToken.fromNumber = function(number) {
  logic.NumberToken.new.call(this, dart.str(number), number);
}).prototype = logic.NumberToken.prototype;
dart.addTypeTests(logic.NumberToken);
dart.setLibraryUri(logic.NumberToken, "package:flutter_gallery/demo/calculator/logic.dart");
dart.setFieldSignature(logic.NumberToken, () => ({
  __proto__: dart.getFields(logic.NumberToken.__proto__),
  number: dart.finalFieldType(core.num)
}));
logic.IntToken = class IntToken extends logic.NumberToken {};
(logic.IntToken.new = function(stringRep) {
  logic.IntToken.__proto__.new.call(this, stringRep, core.int.parse(stringRep));
  ;
}).prototype = logic.IntToken.prototype;
dart.addTypeTests(logic.IntToken);
dart.setLibraryUri(logic.IntToken, "package:flutter_gallery/demo/calculator/logic.dart");
logic.FloatToken = class FloatToken extends logic.NumberToken {
  static _parse(stringRep) {
    let toParse = stringRep;
    if (toParse[$startsWith](".")) toParse = "0" + dart.notNull(toParse);
    if (toParse[$endsWith](".")) toParse = dart.notNull(toParse) + "0";
    return core.double.parse(toParse);
  }
};
(logic.FloatToken.new = function(stringRep) {
  logic.FloatToken.__proto__.new.call(this, stringRep, logic.FloatToken._parse(stringRep));
  ;
}).prototype = logic.FloatToken.prototype;
dart.addTypeTests(logic.FloatToken);
dart.setLibraryUri(logic.FloatToken, "package:flutter_gallery/demo/calculator/logic.dart");
logic.ResultToken = class ResultToken extends logic.NumberToken {
  static round(number) {
    if (core.int.is(number)) return number;
    return core.double.parse(number[$toStringAsPrecision](14));
  }
};
(logic.ResultToken.new = function(number) {
  logic.ResultToken.__proto__.fromNumber.call(this, logic.ResultToken.round(number));
  ;
}).prototype = logic.ResultToken.prototype;
dart.addTypeTests(logic.ResultToken);
dart.setLibraryUri(logic.ResultToken, "package:flutter_gallery/demo/calculator/logic.dart");
logic.LeadingNegToken = class LeadingNegToken extends logic.ExpressionToken {};
(logic.LeadingNegToken.new = function() {
  logic.LeadingNegToken.__proto__.new.call(this, "-");
  ;
}).prototype = logic.LeadingNegToken.prototype;
dart.addTypeTests(logic.LeadingNegToken);
dart.setLibraryUri(logic.LeadingNegToken, "package:flutter_gallery/demo/calculator/logic.dart");
const _name$ = dart.privateName(logic, "_name");
let C0;
let C1;
let C2;
let C3;
let C4;
logic.Operation = class Operation extends core.Object {
  toString() {
    return this[_name$];
  }
};
(logic.Operation.new = function(index, _name) {
  this.index = index;
  this[_name$] = _name;
  ;
}).prototype = logic.Operation.prototype;
dart.addTypeTests(logic.Operation);
dart.setLibraryUri(logic.Operation, "package:flutter_gallery/demo/calculator/logic.dart");
dart.setFieldSignature(logic.Operation, () => ({
  __proto__: dart.getFields(logic.Operation.__proto__),
  index: dart.finalFieldType(core.int),
  [_name$]: dart.finalFieldType(core.String)
}));
dart.defineExtensionMethods(logic.Operation, ['toString']);
logic.Operation.Addition = C0 || CT.C0;
logic.Operation.Subtraction = C1 || CT.C1;
logic.Operation.Multiplication = C2 || CT.C2;
logic.Operation.Division = C3 || CT.C3;
logic.Operation.values = C4 || CT.C4;
const operation$ = dart.privateName(logic, "OperationToken.operation");
logic.OperationToken = class OperationToken extends logic.ExpressionToken {
  get operation() {
    return this[operation$];
  }
  set operation(value) {
    this[operation$] = value;
  }
  static opString(operation) {
    switch (operation) {
      case C0 || CT.C0:
      {
        return " + ";
      }
      case C1 || CT.C1:
      {
        return " - ";
      }
      case C2 || CT.C2:
      {
        return "  ×  ";
      }
      case C3 || CT.C3:
      {
        return "  ÷  ";
      }
    }
    if (!(operation != null)) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/calculator/logic.dart", 85, 12, "operation != null");
    return null;
  }
};
(logic.OperationToken.new = function(operation) {
  this[operation$] = operation;
  logic.OperationToken.__proto__.new.call(this, logic.OperationToken.opString(operation));
  ;
}).prototype = logic.OperationToken.prototype;
dart.addTypeTests(logic.OperationToken);
dart.setLibraryUri(logic.OperationToken, "package:flutter_gallery/demo/calculator/logic.dart");
dart.setFieldSignature(logic.OperationToken, () => ({
  __proto__: dart.getFields(logic.OperationToken.__proto__),
  operation: dart.fieldType(logic.Operation)
}));
let C5;
let C6;
let C7;
let C8;
let C9;
let C10;
let C11;
logic.ExpressionState = class ExpressionState extends core.Object {
  toString() {
    return this[_name$];
  }
};
(logic.ExpressionState.new = function(index, _name) {
  this.index = index;
  this[_name$] = _name;
  ;
}).prototype = logic.ExpressionState.prototype;
dart.addTypeTests(logic.ExpressionState);
dart.setLibraryUri(logic.ExpressionState, "package:flutter_gallery/demo/calculator/logic.dart");
dart.setFieldSignature(logic.ExpressionState, () => ({
  __proto__: dart.getFields(logic.ExpressionState.__proto__),
  index: dart.finalFieldType(core.int),
  [_name$]: dart.finalFieldType(core.String)
}));
dart.defineExtensionMethods(logic.ExpressionState, ['toString']);
logic.ExpressionState.Start = C5 || CT.C5;
logic.ExpressionState.LeadingNeg = C6 || CT.C6;
logic.ExpressionState.Number = C7 || CT.C7;
logic.ExpressionState.Point = C8 || CT.C8;
logic.ExpressionState.NumberWithPoint = C9 || CT.C9;
logic.ExpressionState.Result = C10 || CT.C10;
logic.ExpressionState.values = C11 || CT.C11;
const _list$ = dart.privateName(logic, "_list");
const state$ = dart.privateName(logic, "CalcExpression.state");
logic.CalcExpression = class CalcExpression extends core.Object {
  get state() {
    return this[state$];
  }
  set state(value) {
    super.state = value;
  }
  toString() {
    let buffer = new core.StringBuffer.new("");
    buffer.writeAll(this[_list$]);
    return buffer.toString();
  }
  appendDigit(digit) {
    let newState = logic.ExpressionState.Number;
    let newToken = null;
    let outList = this[_list$][$toList]();
    switch (this.state) {
      case C5 || CT.C5:
      {
        newToken = new logic.IntToken.new(dart.str(digit));
        break;
      }
      case C6 || CT.C6:
      {
        outList[$removeLast]();
        newToken = new logic.IntToken.new("-" + dart.str(digit));
        break;
      }
      case C7 || CT.C7:
      {
        let last = outList[$removeLast]();
        newToken = new logic.IntToken.new(dart.str(last.stringRep) + dart.str(digit));
        break;
      }
      case C8 || CT.C8:
      case C9 || CT.C9:
      {
        let last = outList[$removeLast]();
        newState = logic.ExpressionState.NumberWithPoint;
        newToken = new logic.FloatToken.new(dart.str(last.stringRep) + dart.str(digit));
        break;
      }
      case C10 || CT.C10:
      {
        return null;
      }
    }
    outList[$add](newToken);
    return new logic.CalcExpression.new(outList, newState);
  }
  appendPoint() {
    let newToken = null;
    let outList = this[_list$][$toList]();
    switch (this.state) {
      case C5 || CT.C5:
      {
        newToken = new logic.FloatToken.new(".");
        break;
      }
      case C6 || CT.C6:
      case C7 || CT.C7:
      {
        let last = outList[$removeLast]();
        newToken = new logic.FloatToken.new(dart.notNull(last.stringRep) + ".");
        break;
      }
      case C8 || CT.C8:
      case C9 || CT.C9:
      case C10 || CT.C10:
      {
        return null;
      }
    }
    outList[$add](newToken);
    return new logic.CalcExpression.new(outList, logic.ExpressionState.Point);
  }
  appendOperation(op) {
    switch (this.state) {
      case C5 || CT.C5:
      case C6 || CT.C6:
      case C8 || CT.C8:
      {
        return null;
      }
      case C7 || CT.C7:
      case C9 || CT.C9:
      case C10 || CT.C10:
      {
        break;
      }
    }
    let outList = this[_list$][$toList]();
    outList[$add](new logic.OperationToken.new(op));
    return new logic.CalcExpression.new(outList, logic.ExpressionState.Start);
  }
  appendLeadingNeg() {
    switch (this.state) {
      case C5 || CT.C5:
      {
        break;
      }
      case C6 || CT.C6:
      case C8 || CT.C8:
      case C7 || CT.C7:
      case C9 || CT.C9:
      case C10 || CT.C10:
      {
        return null;
      }
    }
    let outList = this[_list$][$toList]();
    outList[$add](new logic.LeadingNegToken.new());
    return new logic.CalcExpression.new(outList, logic.ExpressionState.LeadingNeg);
  }
  appendMinus() {
    switch (this.state) {
      case C5 || CT.C5:
      {
        return this.appendLeadingNeg();
      }
      case C6 || CT.C6:
      case C8 || CT.C8:
      case C7 || CT.C7:
      case C9 || CT.C9:
      case C10 || CT.C10:
      {
        return this.appendOperation(logic.Operation.Subtraction);
      }
      default:
      {
        return null;
      }
    }
  }
  computeResult() {
    switch (this.state) {
      case C5 || CT.C5:
      case C6 || CT.C6:
      case C8 || CT.C8:
      case C10 || CT.C10:
      {
        return null;
      }
      case C7 || CT.C7:
      case C9 || CT.C9:
      {
        break;
      }
    }
    let list = this[_list$][$toList]();
    let currentTermValue = logic.CalcExpression.removeNextTerm(list);
    while (dart.test(list[$isNotEmpty])) {
      let opToken = logic.OperationToken._check(list[$removeAt](0));
      let nextTermValue = logic.CalcExpression.removeNextTerm(list);
      switch (opToken.operation) {
        case C0 || CT.C0:
        {
          currentTermValue = dart.notNull(currentTermValue) + dart.notNull(nextTermValue);
          break;
        }
        case C1 || CT.C1:
        {
          currentTermValue = dart.notNull(currentTermValue) - dart.notNull(nextTermValue);
          break;
        }
        case C2 || CT.C2:
        case C3 || CT.C3:
        {
          if (!false) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/calculator/logic.dart", 302, 18, "false");
        }
      }
    }
    let outList = JSArrayOfExpressionToken().of([new logic.ResultToken.new(currentTermValue)]);
    return new logic.CalcExpression.new(outList, logic.ExpressionState.Result);
  }
  static removeNextTerm(list) {
    if (!(list != null && dart.test(list[$isNotEmpty]))) dart.assertFailed(null, "org-dartlang-app:///packages/flutter_gallery/demo/calculator/logic.dart", 315, 12, "list != null && list.isNotEmpty");
    let firstNumToken = logic.NumberToken._check(list[$removeAt](0));
    let currentValue = firstNumToken.number;
    while (dart.test(list[$isNotEmpty])) {
      let isDivision = false;
      let nextOpToken = logic.OperationToken._check(list[$first]);
      switch (nextOpToken.operation) {
        case C0 || CT.C0:
        case C1 || CT.C1:
        {
          return currentValue;
        }
        case C2 || CT.C2:
        {
          break;
        }
        case C3 || CT.C3:
        {
          isDivision = true;
        }
      }
      list[$removeAt](0);
      let nextNumToken = logic.NumberToken._check(list[$removeAt](0));
      let nextNumber = nextNumToken.number;
      if (isDivision)
        currentValue = dart.notNull(currentValue) / dart.notNull(nextNumber);
      else
        currentValue = dart.notNull(currentValue) * dart.notNull(nextNumber);
    }
    return currentValue;
  }
};
(logic.CalcExpression.new = function(_list, state) {
  this[_list$] = _list;
  this[state$] = state;
  ;
}).prototype = logic.CalcExpression.prototype;
(logic.CalcExpression.empty = function() {
  logic.CalcExpression.new.call(this, JSArrayOfExpressionToken().of([]), logic.ExpressionState.Start);
}).prototype = logic.CalcExpression.prototype;
(logic.CalcExpression.result = function(result) {
  this[_list$] = JSArrayOfExpressionToken().of([]);
  this[state$] = logic.ExpressionState.Result;
  this[_list$][$add](result);
}).prototype = logic.CalcExpression.prototype;
dart.addTypeTests(logic.CalcExpression);
dart.setMethodSignature(logic.CalcExpression, () => ({
  __proto__: dart.getMethods(logic.CalcExpression.__proto__),
  appendDigit: dart.fnType(logic.CalcExpression, [core.int]),
  appendPoint: dart.fnType(logic.CalcExpression, []),
  appendOperation: dart.fnType(logic.CalcExpression, [logic.Operation]),
  appendLeadingNeg: dart.fnType(logic.CalcExpression, []),
  appendMinus: dart.fnType(logic.CalcExpression, []),
  computeResult: dart.fnType(logic.CalcExpression, [])
}));
dart.setLibraryUri(logic.CalcExpression, "package:flutter_gallery/demo/calculator/logic.dart");
dart.setFieldSignature(logic.CalcExpression, () => ({
  __proto__: dart.getFields(logic.CalcExpression.__proto__),
  [_list$]: dart.finalFieldType(core.List$(logic.ExpressionToken)),
  state: dart.finalFieldType(logic.ExpressionState)
}));
dart.defineExtensionMethods(logic.CalcExpression, ['toString']);
dart.trackLibraries("packages/flutter_gallery/demo/calculator/logic", {
  "package:flutter_gallery/demo/calculator/logic.dart": logic
}, {
}, '{"version":3,"sourceRoot":"","sources":["logic.dart"],"names":[],"mappings":"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","file":"logic.ddc.js"}');
// Exports:
exports.demo__calculator__logic = logic;

//# sourceMappingURL=logic.ddc.js.map
