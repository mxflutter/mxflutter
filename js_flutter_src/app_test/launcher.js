let rootWidget = require("packages/vv_flutter/biz/my_history/view/vv_my_history_view.ddc.js");

function createJSRootWidget(widgetName) {
    let widget = new rootWidget.biz__my_history__view__vv_my_history_view.VVMyHistoryPage.new
    widget.name = widgetName;
    return widget;
}

exports.rootWidgetName = "PestoDemo";
exports.createJSRootWidget = createJSRootWidget;
