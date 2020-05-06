## High Performance Flutter Dynamic Framework Based on JS

Perhaps the most complete Flutter dynamic solution released so far

In October 2018, our team tried to use Flutter as an iOS developer. As soon as they came into contact with Flutter, they felt that although Flutter is powerful, there is a barrier to use that cannot be as dynamic as RN. Observing the Google team's plan for dynamics, it should not be online in the short term, so we started this technology exploration project ourselves.

For those who are interested in MXFlutter, you can join the QQ group to communicate with each other, QQ group: 747535761

# Introduction

Project code: MXFlutter （Matrix Flutter）[github TGIF-iMatrix](https://github.com/TGIF-iMatrix/MXFlutter)

The core idea of the project code is to put the first of the three trees in Flutter's rendering logic into JavaScript. The full implementation of the Flutter control layer wrapper in JavaScript, you can use JavaScript, develop a Flutter application in a very Dart-like way, use the JavaScript version of the lightweight Flutter Runtime, generate a UI description, pass to the UI engine of the Dart layer, the UI engine Describe the UI to produce a real Flutter control. So, it is completely dynamic on iOS, the complete code is:

[github TGIF-iMatrix](https://github.com/TGIF-iMatrix/MXFlutter)

If this code can help everyone, please click Star of MXFlutter, give us the power to continue to update.

Before you continue, take a look at the overall architecture. In one sentence, you will introduce MXFlutter, which is to use JavaScript to develop Flutter in the way of Flutter... still a little confused, let's look at the code posted below.

![](https://github.com/TGIF-lucaliu/Image/blob/master/11_1_e.png?raw=true)

## Effect

First look at the use of the effect, the following screenshot is developed under the MXFlutter framework with JS, you can download the above source code, which has a complete JS code example:

This is a sample screenshot of the APP.

![](https://github.com/langbluesky/Image/blob/master/pesto_demo.jpeg?raw=true)

Here is the JS code for the UI screenshot. Yes, you have no dazzling. This is a real JavaScript code that can render the Flutter UI on the MXFlutter runtime library.

```JavaScript
class JSPestoPage extends MXJSWidget {
  constructor() {
    super("JSPestoPage");
    this.recipes = recipeList;

  }

  build(context) {
    let statusBarHeight = 24;
    let mq = MediaQuery.of(context);
    if (mq) {
      statusBarHeight = mq.padding.top
    }

    let w = new Scaffold({
      appBar: new AppBar({
        title: new Text("Pesto Demo")
      }),
      floatingActionButton: new FloatingActionButton({
        child: new Icon(new IconData(0xe3c9)),
        onPressed: function () {

        },
      }),
      body: new CustomScrollView({
        semanticChildCount: this.recipes.length,
        slivers: [
          //this.buildAppBar(context, statusBarHeight),
          this.buildBody(context, statusBarHeight),
        ],
      }),
      //body:this.buildItems()[0]
    });

    return w;
  }

  buildAppBar(context, statusBarHeight) {
    return SliverAppBar({
      pinned: true,
      expandedHeight: _kAppBarHeight,
      actions: [
        IconButton({
          icon: new Icon(new IconData(1)),
          tooltip: 'Search',
          onPressed: function () {

          },
        }),
      ],
      flexibleSpace: LayoutBuilder({
        builder: function (context, constraints) {
          size = constraints.biggest;
          appBarHeight = size.height - statusBarHeight;
          t = (appBarHeight - kToolbarHeight) / (_kAppBarHeight - kToolbarHeight);
          extraPadding = new Tween({ begin: 10.0, end: 24.0 }).transform(t);
          logoHeight = appBarHeight - 1.5 * extraPadding;
          return Padding({
            padding: EdgeInsets.only({
              top: statusBarHeight + 0.5 * extraPadding,
              bottom: extraPadding,
            }),
            child: Center({
              child: new Icon(new IconData(1))
            }),
          });
        },
      }),
    });
  }

  buildBody(context, statusBarHeight) {

    let mediaPadding = EdgeInsets.all(0);
    let mq = MediaQuery.of(context);
    if (mq) {
      mediaPadding = MediaQuery.of(context).padding;
    }
    let padding = EdgeInsets.only({
      top: 8.0,
      left: 8.0 + mediaPadding.left,
      right: 8.0 + mediaPadding.right,
      bottom: 8.0
    });

    return new SliverPadding({
      padding: padding,
      sliver: new SliverGrid({
        gridDelegate: new SliverGridDelegateWithMaxCrossAxisExtent({
          maxCrossAxisExtent: _kRecipePageMaxWidth,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        }),
        delegate: new SliverChildBuilderDelegate(
          function (context, index) {
            let recipe = this.recipes[index];
            let w = new RecipeCard({
              recipe: recipe,
              onTap: function () { showRecipePage(context, recipe); },
            });

            return w;
          },
          {
            childCount: this.recipes.length,
          }),
      }),
    });
  }


```


There is a richer example in the source code, using JSFlutter to imitate the page of ZhiHu app.

[https://github.com/TGIF-iMatrix/MXFlutter/blob/master/mxflutter_js_src/mxflutter_app_demo/zhihu/home/home_page.js](https://github.com/TGIF-iMatrix/MXFlutter/blob/master/mxflutter_js_src/mxflutter_app_demo/zhihu/home/home_page.js)

This is the corresponding UI, which is very close to the online version.

![](https://github.com/langbluesky/Image/blob/master/zhihu.jpeg?raw=true)

# Now

Although MXFlutter has been relatively complete, the BUG needs to be solved before it is put into production. Since the group started new projects in early 19, it is very busy, and there is almost no time to continue development. It has been suspended since March, and the manpower is still very scarce. Everyone is interested, you can join us to improve the MXFlutter dynamic capabilities.

## 0x00 Sharing several abandoned solutions in the process of dynamic exploration

### Flutter Dynamic Solution 1: Statically parse the Dart language and generate a UI description

Dart itself is a description language, IDE's Outline tool can parse the Dart code generation tree structure, we can use its source code to generate JSON UI description, related code: [https://github.com/flutter/flutter-intellij/blob/b6461e8d8ed3857a9e4350bc61133c8f48249f43/src/io/flutter/preview/PreviewView.java](https://github.com/flutter/flutter-intellij/blob/b6461e8d8ed3857a9e4350bc61133c8f48249f43/src/io/flutter/preview/PreviewView.java)
dart-sdk: analysis_server

![](https://github.com/langbluesky/Image/blob/master/0x00_1.jpeg?raw=true)

Static parsing Dart's shortcomings, it can not write logic, there are many restrictions on writing UI code, can not write judgment statements, can not write functions, to support these high costs. So we have to give up.

### A brief introduction to the core rendering module of Flatter: Three Tree

Responsive UI framework

1. WidgetTree: Widget stores the configuration information of a view, which can be efficiently created and destroyed.
2. Element is the middle layer separating WidgetTree and the real rendering object, WidgetTree is used to describe the corresponding Element property
3. RenderObject to perform Diff, Hit Test layout, drawing

![](https://github.com/TGIF-lucaliu/Image/blob/master/7_e.png?raw=true)

The first tree has a complete UI description, so I only need to create the first tree through DartVM under JIT, and other time-consuming operations are thrown into the AOT.

![](https://github.com/TGIF-lucaliu/Image/blob/master/8_e.png?raw=true)

### Flutter Dynamics Solution 2: Dynamically run the Dart language, production UI description

Compared with the static analysis of Dart, the second solution is to write an extremely lightweight runtime library, let the Dart code that writes the UI run, generate a tree structure, and then serialize to JSON (debug), FlatBuffers (release ) UI description. Dynamic resolution scheme.

![](https://github.com/TGIF-lucaliu/Image/blob/master/9_e.png?raw=true)

Specific rendering logic

![](https://github.com/TGIF-lucaliu/Image/blob/master/10_e.png?raw=true)

Overall architecture

![](https://github.com/TGIF-lucaliu/Image/blob/master/11_1_e.png?raw=true)

The architecture is also there, and the solution is there. There are still a few troubles to solve when running, DartVM has to extract, the lightweight runtime library of the Dart JIT layer. Also need to implement UIEngin, Dart AOT layer to turn DSL into a real Widget, which is the yellow and red parts of the picture.

### Pull away from DartVM

#### It Cannot be extracted by simply modifying the compilation conditions

The Dart source code is conditionally compiled by the DART_PRECOMPILED_RUNTIME macro when compiling, so that the JIT mode is compiled in the Debug version, and the Release version compiles the AOT mode. And these two modes are mutually exclusive and cannot exist at the same time.

#### A simple solution

We compile a DartVM separately, package it into a dynamic library, modify and export symbols to avoid conflicts.

#### The work that needs to be done to import DartVM


* Develop DartVM and Native interworking interfaces, refer to Flutter, use Native Extension and Dart_Invoke to implement mutual calls
* Dual DartVM debugging solution, two DartVM runs independently, and DartFlutter is debugged separately via remote port
* Support to import third-party libraries, DartFlutter analyzes the .packages file through shell scripts when packaged and released, and automatically packages the dependent libraries with the Dart File Zip.
Commonly used libraries can be pre-packaged locally, reducing file size

#### A problem that cannot be solved temporarily

The installation package is too large, DartVM increases the installation package size 30M, if you add the original AOT 40M, the entire Flutter installation package size will increase to 70M, DartVM is not realistic. How to do it.

## 0x01 Final Solution JavasSriptCore Replaces DartVM

### Feasibility Analysis

1. JavasSriptCore is the official iOS library, no need to add installation packages
2. Dart code and JS code are very similar and can be converted by tools.
3. JavasSriptCore and Native have more convenient intermodulation interface
4. ReactNative has verified that it is feasible to develop App capabilities through JS.
5. JS execution efficiency is 3 times that of DartVM, and encoding 1M JSON takes only 2 milliseconds.

### Issues that need resolving

Developing fake Flutter Runtime with JS

Encapsulate JavasSriptCore and Native, Flutter intermodulation interface

## 0x02 explains the rendering principle of MXFlutter

### Render tree

Two important data structures

* MXScriptWidget
* MXWidgetTree

MXScriptWidget manages a Script page or control, is responsible for creating a management ScriptWidgetTree, using the self-incrementing ID method, and calling the Widget corresponding to the Flutter, each time you build will create a new MXWidgetTree

![](https://github.com/TGIF-lucaliu/Image/blob/master/14_e.png?raw=true)

### MXFlutter event

When the buildWidget is on the JS, we generate a unique callbackID for the function event, and combine it with the widgetID to form the widgetID/callbackID as the unique identifier of the event. When the user clicks a button on the interface, the event is transmitted from the Flutter to the JS. By parsing the widgetID/callbackID, the callback of the corresponding widget is found, and the event processing is completed.

![](https://github.com/TGIF-lucaliu/Image/blob/master/15_e.png?raw=true)

### MXFlutter efficient dynamic list

When the Build method is called through the ListView on the JS. Expand child ahead of time and add the children member variable to the ListView. At this point, because there is only data configuration, there will be no extra Layout process, so the speed is very fast....

```JavaScript
preBuild(jsWidget, buildContext) {
    if(this.builder) {
        for (let i = 0; i < this.childCount; ++i) {
            let w = this.builder(buildContext, i);
            this.children.push(w);
        }
        delete this.builder;
    }

    super.preBuild(jsWidget, buildContext);
}
```

On the Flutter, the ListView is still dynamically created. When the list is swiped, the MXFlutter Engine creates a real Flutter WidgetCell based on the configuration data in the Children array, which is exactly the same as the original.

```Dart
ListView.builder(
    itemCount: children.length,
    itemBuilder: (context, index) {
        return UIEngine.toWidget(children[index]);
    },
)
```

![](https://github.com/langbluesky/Image/blob/master/pesto_demo.jpeg?raw=true)

### MXFlutter animation solution

The animation parameters are configured once in the VM layer. After the animation starts, the loopback loop rebuilds in the Flutter layer to form an animation effect. This is a more general practice.

![](https://github.com/TGIF-lucaliu/Image/blob/master/17_e.png?raw=true)


## 0x03 rendering optimization

No matter how fast JSWidget is created, there is always cross-language execution, so reducing the number of builds and reducing the size of the DSL UI description that is built out can optimize performance.

### Rendering Optimization 1 - Partial Refresh: Configuration Tree Diff

#### A fact

Automatically compare two Widgets without creating a new one directly. If the developer does not participate, it is not worth the automatic calculation of Diff by the framework.

#### Feasible method

Sacrifice the design pattern of the responsive UI framework, adopting the Native and Web methods, and the developers participate in setting their own Diff nodes, that is, obtain the corresponding Widget according to the ID, modify the Widget parameters, and Rebuild generates a new DSL.

### Rendering optimization 2 - partial refresh - nested nodes

* MXScriptWidget is a basic unit with Build WidgetTree, cached Callback mapping table, and animation support. Can be used as a normal FlutterWidget.
* In the Flutter layer, if the node in the Widget tree has an MXScriptWidget, create an MXFlutterWidget custom control on the corresponding node.
* Two subtrees can correspond to each other to obtain partial refresh, call back callback, animation support, UI DSL produced during Rebuild is greatly reduced, and the refresh rate is accelerated.

![](https://github.com/TGIF-lucaliu/Image/blob/master/18_e.png?raw=true)

### Rendering optimization 3 - can separate dynamic and static controls

MXStatelessWidget can be marked to the framework by using a stateless ScriptWidget. The subtree below it will not change in every build. The build result will be cached and reused next time in the Flutter layer.

![](https://github.com/TGIF-lucaliu/Image/blob/master/19_e.png?raw=true)

### Memory - the life cycle of a cross-layer mirror object

How to control the life cycle of the VM layer, the Flutter layer, and the Native layer mirror object?

See Apple iOS JavaScriptCore and Objective-C solutions

1. Based on the object life cycle of the Flutter layer
2. Add WeakMap support in the VM layer, without increasing the object reference count, release the VM layer object after the Flutter layer is released.
3. Use JSManagerValue in the Native layer. After the VM layer object is released, the Native reference is automatically nil.

![](https://github.com/TGIF-lucaliu/Image/blob/master/20_e.png?raw=true)

### Thread problem

Referring to the design of the industry RN and other frameworks, the VM layer runs in a separate background thread.

1. From the Flutter layer to the VM through the native channel, two thread switching occurs.
2. Flutter UI layer and MXScript layer are asynchronous calls, limiting the architectural design of dynamic controls

a feasible solution

Modify the FlutterEngine, customize the development channel: Dart->Native->VM, call to the VM does not switch threads,The VM does not create new threads and is directly driven by the Flutter UI Thread message loop. This also supports efficient synchronous calls with the Flutter UI layer, but note that calling from Native to VM requires customizing the interface of the FlutterEngine.

## 0x04 lets developers write elegant code

Let developers write elegant code, we want the code written by developers using MXFlutter to look normal and look good.

* Perfect support for Dart Flutter syntax
* Define all Widget classes of the same name in Flutter, build Widget parameter classes, support the same Build mode, SetState trigger refresh, event response function
* Callback function automatically generates CallbackID
* Callback function automatically This binding
* ListView is developed like the Dart layer, supporting the itemBuilder callback function

Reference JS sample source code

[TGIF-iMatrix home_page.js](https://github.com/TGIF-iMatrix/MXFlutter/blob/master/mxflutter_js_src/mxflutter_app_demo/home_page.js)

## 0x05 MXFlutter Infrastructure

Because JavaScript does not support modular development and cannot reference other file code, we refer to RN, using the modular code of Node.js, and support the require syntax at the Native layer. When developing, IDE is best to use VSCode, because you can install JS plug-in directly to debug JS.

In addition, we redirect the simulator JS path file to the development machine. After the user has modified the JS file, the user can directly see the corresponding modification to implement the hot update page of the simulator.

## Conclusion

Due to the tight time, MXFlutter still has a lot of leftover problems. As a technical exploration, it is very hard but very interesting. I look forward to your guidance and look forward to discussing the issues with your friends.

To understand all, be sure to pull down the source code, run it and see if there is a problem, you can leave a message and discuss it, MXFlutter will continue to update.





