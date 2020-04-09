

//tabs_demo.js 正式开始，😝

let {
  runApp,
  MXJSFlutterApp,
  MXJSStatefulWidget,
  MXJSStatelessWidget,
  MXJSWidgetState,
  Scaffold,
  Text,
  Theme,
  EdgeInsets,
  Column,
  SizedBox,
  Card,
  CrossAxisAlignment,
  MainAxisAlignment,
  Align,
  Center,
  Image,
  Alignment,
  CircleAvatar,
  DefaultTabController,
  NestedScrollView,
  SliverOverlapAbsorber,
  SliverAppBar,
  TabBar,
  Tab,
  TabBarView,
  SafeArea,
  Builder,
  CustomScrollView,
  SliverChildBuilderDelegate,
  SliverOverlapInjector,
  SliverPadding,
  SliverFixedExtentList,
  Padding
  
} = require("js_flutter.js");

let _kGalleryAssetsPackage = 'flutter_gallery_assets';

class _Page {
    constructor({label}) {
        this.label = label;
    }

    get id() {
        return this.label[0];
    }

    toString() {
        return '$runtimeType("$this.label")';
    }
}

class _CardData {
    constructor({title, imageAsset, imageAssetPackage}) {
        this.title = title,
        this.imageAsset = imageAsset,
        this.imageAssetPackage = imageAssetPackage;
    }
}

// ES6的map写法比较奇怪
var _allPages = new Map();
_allPages.set(new _Page({label: 'HOME'}) , [
    new _CardData({
        title: 'Flatwear',
        imageAsset: 'products/flatwear.png',
        imageAssetPackage: _kGalleryAssetsPackage
    }),
    new _CardData({
        title: 'Pine Table',
        imageAsset: 'products/table.png',
        imageAssetPackage: _kGalleryAssetsPackage
    }),
    new _CardData({
        title: 'Blue Cup',
        imageAsset: 'products/cup.png',
        imageAssetPackage: _kGalleryAssetsPackage
    }),
      new _CardData({
        title: 'Tea Set',
        imageAsset: 'products/teaset.png',
        imageAssetPackage: _kGalleryAssetsPackage
    }),
      new _CardData({
        title: 'Desk Set',
        imageAsset: 'products/deskset.png',
        imageAssetPackage: _kGalleryAssetsPackage
    }),
      new _CardData({
        title: 'Blue Linen Napkins',
        imageAsset: 'products/napkins.png',
        imageAssetPackage: _kGalleryAssetsPackage
    }),
      new _CardData({
        title: 'Planters',
        imageAsset: 'products/planters.png',
        imageAssetPackage: _kGalleryAssetsPackage
    }),
    new _CardData({
        title: 'Kitchen Quattro',
        imageAsset: 'products/kitchen_quattro.png',
        imageAssetPackage: _kGalleryAssetsPackage
    }),
    new _CardData({
        title: 'Platter',
        imageAsset: 'products/platter.png',
        imageAssetPackage: _kGalleryAssetsPackage
    }),
]).set(new _Page({label: 'APPAREL'}) , [
    new _CardData({
        title: 'Cloud-White Dress',
        imageAsset: 'products/dress.png',
        imageAssetPackage: _kGalleryAssetsPackage
    }),
    new _CardData({
        title: 'Ginger Scarf',
        imageAsset: 'products/scarf.png',
        imageAssetPackage: _kGalleryAssetsPackage
    }),
    new _CardData({
        title: 'Blush Sweats',
        imageAsset: 'products/sweats.png',
        imageAssetPackage: _kGalleryAssetsPackage
    })
]);

class _CardDataItem extends MXJSStatelessWidget {
    constructor({page, data}) {
        super('_CardDataItem');
        this.page = page;
        this.data = data;
    }

    static get height() {
        return 272.0;
    }

    build(context) {
        let widget = new Card({
            child: new Padding({
                padding: EdgeInsets.all(16.0),
                child: new Column({
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                        new Align({
                            alignment: this.page.id == 'H' ? Alignment.centerLeft : Alignment.centerRight,
                            child: new CircleAvatar({
                                child: new Text(this.page.id),
                            })
                        }),
                        new SizedBox({
                            width: 144.0,
                            height: 144.0,
                            child: Image.asset(
                                this.data.imageAsset, {
                                    fit: BoxFit.contain,
                                    package: this.data.imageAssetPackage
                                }
                            )
                        }),
                        new Center({
                            child: new Text(
                                this.data.title, {
                                    style: Theme.of(context).textTheme.title,
                            })
                        })
                    ]
                })
            })
        });
        return widget;
    }
}

class JSTabsDemo extends MXJSStatefulWidget {
    constructor() {
        super('JSTabsDemo');
    }
  
    createState() {
        return new JSTabsDemoState(this);
    }
}

class JSTabsDemoState extends MXJSWidgetState {
    build(context){
        let widget = new DefaultTabController({
            length: _allPages.size,
            child: new Scaffold({
                body: new NestedScrollView({
                    headerSliverBuilder: function(context) {
                        return [
                            new SliverOverlapAbsorber({
                                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                                child: new SliverAppBar({
                                    title: new Text('Tabs and scrolling'),
                                    pinned: true,
                                    expandedHeight: 150.0,
                                    forceElevated: false,
                                    bottom: new TabBar({
                                        tabs: [...(_allPages.keys())].map(page => new Tab({text: page.label}))
                                    })
                                })
                            })
                        ];
                    },
                    body: new TabBarView({
                        children: [...(_allPages.keys())].map(function(page) {
                            return new SafeArea({
                                top: false,
                                bottom: false,
                                child: new Builder({
                                    builder: function(context) {
                                        return new CustomScrollView({
                                            slivers: [
                                                new SliverOverlapInjector({
                                                    handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context)
                                                }),
                                                new SliverPadding({
                                                    padding: EdgeInsets.symmetric({
                                                        vertical: 8.0,
                                                        horizontal: 16.0
                                                    }),
                                                    sliver: new SliverFixedExtentList({
                                                        itemExtent: _CardDataItem.height,
                                                        delegate: new SliverChildBuilderDelegate(
                                                            function(context, index) {
                                                                var data = (_allPages.get(page))[index];
                                                                return new Padding({
                                                                    padding: EdgeInsets.symmetric({
                                                                        vertical: 8.0
                                                                    }),
                                                                    child: new _CardDataItem({
                                                                        page: page,
                                                                        data: data
                                                                    })
                                                                });
                                                            },
                                                            {
                                                                childCount: (_allPages.get(page)).length
                                                            }
                                                        )
                                                    })
                                                })
                                            ]
                                        });
                                    }
                                })
                            });
                        })
                    })
                })
            })
        });
        return widget;
    }
}

module.exports = { JSTabsDemo };
