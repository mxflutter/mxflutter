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

![](https://github.com/langbluesky/Image/blob/master/16b8cec2d34ded87.jpeg?raw=true)

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
        onPressed: this.createCallbackID(function () {

        }),
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
          onPressed: this.createCallbackID(function () {

          }),
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

[https://github.com/TGIF-iMatrix/MXFlutter/blob/master/js_flutter_src/app_test/zhihu/home/home_page.js](https://github.com/TGIF-iMatrix/MXFlutter/blob/master/js_flutter_src/app_test/zhihu/home/home_page.js)

This is the corresponding UI, which is very close to the online version.

![](https://github.com/langbluesky/Image/blob/master/zhihu.jpeg?raw=true)

# Now




