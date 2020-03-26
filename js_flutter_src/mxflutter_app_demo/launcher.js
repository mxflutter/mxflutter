let rootWidget = require("home_page.js");

function createJSRootWidget(widgetName) {
    let widget = new rootWidget.JSWidgetHomePage();
    widget.name = widgetName;
    return widget;
}

exports.createJSRootWidget = createJSRootWidget;
