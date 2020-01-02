let rootWidget = require("pesto_demo.ddc.js");

function createJSRootWidget(widgetName) {
    let widget = new rootWidget.pesto_demo.PestoDemo.new;
    widget.name = widgetName;
    return widget;
}

exports.rootWidgetName = "PestoDemo";
exports.createJSRootWidget = createJSRootWidget;
