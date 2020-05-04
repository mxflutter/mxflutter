//  MXFlutterFramework
//  Copyright 2019 The MXFlutter Authors. All rights reserved.
//
//  Use of this source code is governed by a MIT-style license that can be
//  found in the LICENSE file.

let {
  runApp,
  MXJSFlutterApp,
  MXJSWidgetState,
  MXJSStatefulWidget,
  Scaffold,
  Center,
  AppBar,
  Text,
  Icon,
  IconData,
  MediaQuery,
  FloatingActionButton,
  CustomScrollView,
  SliverAppBar,
  SliverPadding,
  SliverGrid,
  SliverGridDelegateWithMaxCrossAxisExtent,
  SliverChildBuilderDelegate,
  EdgeInsets,
  GestureDetector,
  Card,
  Expanded,
  Column,
  Hero,
  AspectRatio,
  Image,
  BoxFit,
  Row,
  Padding,
  MXJSStatelessWidget
  
} = require("js_flutter.js");


//业务代码

let _kGalleryAssetsPackage = 'flutter_gallery_assets';
let _kAppBarHeight = 128.0;
let _kFabHalfSize = 28.0; // TODO(mpcomplete): needs to adapt to screen size
let _kRecipePageMaxWidth = 500.0;

class JSPestoPage extends MXJSStatefulWidget {
  constructor() {
      super('JSPestoPage');
  }

  createState() {
    return new JSPestoPageState(this);
  }
}

class JSPestoPageState extends MXJSWidgetState {

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

        }
      }),
      body: new CustomScrollView({
        semanticChildCount: _recipeList.length,
        slivers: [
          //this.buildAppBar(context, statusBarHeight),
          this.buildBody(context, statusBarHeight)
        ]
      })
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

          }
        })
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
            })
          });
        }
      })
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
            let recipe = _recipeList[index];
            let w = new RecipeCard({
              recipe: recipe,
              onTap: function () { showRecipePage(context, recipe); }
            });

            return w;
          },
          {
            childCount: _recipeList.length
          })
      })
    });
  }

  // buildItems() {
  //   let recipeWidgetList = [];

  //   this.recipes.forEach(element => {
  //     let w = new RecipeCard({
  //       recipe: element,
  //       onTap: function () { showRecipePage(context, element); },
  //     });
  //     recipeWidgetList.push(w);
  //   });

  //   return recipeWidgetList;
  // }
}

// A card with the recipe's image, author, and title.
class RecipeCard extends MXJSStatelessWidget {

  constructor({ recipe, onTap }) {
    super("RecipeCard");
    this.recipe = recipe;
    this.onTap = onTap;

  }

  build(context) {

    //return new Text(this.recipe.name);
    return new GestureDetector({
      onTap: this.onTap,
      child: new Card({
        child: new Column({
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            new Hero({
              tag: 'packages/' + this.recipe.imagePackage + this.recipe.imagePath,
              child:
                new AspectRatio({
                  aspectRatio: 4.0 / 3.0,
                  child: Image.asset(
                    this.recipe.imagePath,
                    {
                      package: this.recipe.imagePackage,
                      fit: BoxFit.cover,
                      semanticLabel: this.recipe.name
                    })
                })
            }),
            new Expanded({
              child: new Row({
                children: [
                  new Padding({
                    padding: EdgeInsets.all(16.0),
                    child: Image.asset(
                      this.recipe.ingredientsImagePath,
                      {
                        package: this.recipe.ingredientsImagePackage,
                        width: 48.0,
                        height: 48.0
                      })
                  }),
                  new Expanded({
                    child: new Column({
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        new Text(this.recipe.name),
                        new Text(this.recipe.author),
                      ]
                    })
                  })
                ]
              })
            })
          ]
        })
      })
    });
  }
}



//ui数据
class Recipe {
  constructor({
    name,
    author,
    description,
    imagePath,
    imagePackage,
    ingredientsImagePath,
    ingredientsImagePackage,
    ingredients,
    steps
  } = {}) {

    this.name = name;
    this.author = author;
    this.description = description;
    this.imagePath = imagePath;
    this.imagePackage = imagePackage;
    this.ingredientsImagePath = ingredientsImagePath;
    this.ingredientsImagePackage = ingredientsImagePackage;
    this.ingredients = ingredients;
    this.steps = steps;
  }
}

class RecipeIngredient {
  constructor({
    amount,
    description
  } = {}) {

    this.amount = amount;
    this.description = description;
  }
}


class RecipeStep {
  constructor({
    duration,
    description
  } = {}) {

    this.duration = duration;
    this.description = description;
  }
}

//const List<Recipe> kPestoRecipes = <Recipe>[

let _recipeList = [
  new Recipe({
    name: 'Roasted Chicken',
    author: 'Peter Carlsson',
    ingredientsImagePath: 'food/icons/main.png',
    ingredientsImagePackage: _kGalleryAssetsPackage,
    description: 'The perfect dish to welcome your family and friends with on a crisp autumn night. Pair with roasted veggies to truly impress them.',
    imagePath: 'food/roasted_chicken.png',
    imagePackage: _kGalleryAssetsPackage,
    ingredients: [
      new RecipeIngredient({ amount: '1 whole', description: 'Chicken' }),
      new RecipeIngredient({ amount: '1/2 cup', description: 'Butter' }),
      new RecipeIngredient({ amount: '1 tbsp', description: 'Onion powder' }),
      new RecipeIngredient({ amount: '1 tbsp', description: 'Freshly ground pepper' }),
      new RecipeIngredient({ amount: '1 tsp', description: 'Salt' })
    ],
    steps: [
      new RecipeStep({ duration: '1 min', description: 'Put in oven' }),
      new RecipeStep({ duration: '1hr 45 min', description: 'Cook' })
    ],
  }),
  new Recipe({
    name: 'Chopped Beet Leaves',
    author: 'Trevor Hansen',
    ingredientsImagePath: 'food/icons/veggie.png',
    ingredientsImagePackage: _kGalleryAssetsPackage,
    description: 'This vegetable has more to offer than just its root. Beet greens can be tossed into a salad to add some variety or sauteed on its own with some oil and garlic.',
    imagePath: 'food/chopped_beet_leaves.png',
    imagePackage: _kGalleryAssetsPackage,
    ingredients: [
      new RecipeIngredient({ amount: '3 cups', description: 'Beet greens' })
    ],
    steps: [
      new RecipeStep({ duration: '5 min', description: 'Chop' })
    ]
  }),
  new Recipe({
    name: 'Pesto Pasta',
    author: 'Ali Connors',
    ingredientsImagePath: 'food/icons/main.png',
    ingredientsImagePackage: _kGalleryAssetsPackage,
    description: 'With this pesto recipe, you can quickly whip up a meal to satisfy your savory needs. And if you\'re feeling festive, you can add bacon to taste.',
    imagePath: 'food/pesto_pasta.png',
    imagePackage: _kGalleryAssetsPackage,
    ingredients: [
      new RecipeIngredient({ amount: '1/4 cup ', description: 'Pasta' }),
      new RecipeIngredient({ amount: '2 cups', description: 'Fresh basil leaves' }),
      new RecipeIngredient({ amount: '1/2 cup', description: 'Parmesan cheese' }),
      new RecipeIngredient({ amount: '1/2 cup', description: 'Extra virgin olive oil' }),
      new RecipeIngredient({ amount: '1/3 cup', description: 'Pine nuts' }),
      new RecipeIngredient({ amount: '1/4 cup', description: 'Lemon juice' }),
      new RecipeIngredient({ amount: '3 cloves', description: 'Garlic' }),
      new RecipeIngredient({ amount: '1/4 tsp', description: 'Salt' }),
      new RecipeIngredient({ amount: '1/8 tsp', description: 'Pepper' }),
      new RecipeIngredient({ amount: '3 lbs', description: 'Bacon' })
    ],
    steps: [
      new RecipeStep({ duration: '15 min', description: 'Blend' })
    ]
  }),
  new Recipe({
    name: 'Cherry Pie',
    author: 'Sandra Adams',
    ingredientsImagePath: 'food/icons/main.png',
    ingredientsImagePackage: _kGalleryAssetsPackage,
    description: 'Sometimes when you\'re craving some cheer in your life you can jumpstart your day with some cherry pie. Dessert for breakfast is perfectly acceptable.',
    imagePath: 'food/cherry_pie.png',
    imagePackage: _kGalleryAssetsPackage,
    ingredients: [
      new RecipeIngredient({ amount: '1', description: 'Pie crust' }),
      new RecipeIngredient({ amount: '4 cups', description: 'Fresh or frozen cherries' }),
      new RecipeIngredient({ amount: '1 cup', description: 'Granulated sugar' }),
      new RecipeIngredient({ amount: '4 tbsp', description: 'Cornstarch' }),
      new RecipeIngredient({ amount: '1½ tbsp', description: 'Butter' })
    ],
    steps: [
      new RecipeStep({ duration: '15 min', description: 'Mix' }),
      new RecipeStep({ duration: '1hr 30 min', description: 'Bake' })
    ]
  }),
  new Recipe({
    name: 'Spinach Salad',
    author: 'Peter Carlsson',
    ingredientsImagePath: 'food/icons/spicy.png',
    ingredientsImagePackage: _kGalleryAssetsPackage,
    description: 'Everyone\'s favorite leafy green is back. Paired with fresh sliced onion, it\'s ready to tackle any dish, whether it be a salad or an egg scramble.',
    imagePath: 'food/spinach_onion_salad.png',
    imagePackage: _kGalleryAssetsPackage,
    ingredients: [
      new RecipeIngredient({ amount: '4 cups', description: 'Spinach' }),
      new RecipeIngredient({ amount: '1 cup', description: 'Sliced onion' })
    ],
    steps: [
      new RecipeStep({ duration: '5 min', description: 'Mix' })
    ]
  }),
  new Recipe({
    name: 'Butternut Squash Soup',
    author: 'Ali Connors',
    ingredientsImagePath: 'food/icons/healthy.png',
    ingredientsImagePackage: _kGalleryAssetsPackage,
    description: 'This creamy butternut squash soup will warm you on the chilliest of winter nights and bring a delightful pop of orange to the dinner table.',
    imagePath: 'food/butternut_squash_soup.png',
    imagePackage: _kGalleryAssetsPackage,
    ingredients: [
      new RecipeIngredient({ amount: '1', description: 'Butternut squash' }),
      new RecipeIngredient({ amount: '4 cups', description: 'Chicken stock' }),
      new RecipeIngredient({ amount: '2', description: 'Potatoes' }),
      new RecipeIngredient({ amount: '1', description: 'Onion' }),
      new RecipeIngredient({ amount: '1', description: 'Carrot' }),
      new RecipeIngredient({ amount: '1', description: 'Celery' }),
      new RecipeIngredient({ amount: '1 tsp', description: 'Salt' }),
      new RecipeIngredient({ amount: '1 tsp', description: 'Pepper' })
    ],
    steps: [
      new RecipeStep({ duration: '10 min', description: 'Prep vegetables' }),
      new RecipeStep({ duration: '5 min', description: 'Stir' }),
      new RecipeStep({ duration: '1 hr 10 min', description: 'Cook' })
    ]
  }),
  new Recipe({
    name: 'Spanakopita',
    author: 'Trevor Hansen',
    ingredientsImagePath: 'food/icons/quick.png',
    ingredientsImagePackage: _kGalleryAssetsPackage,
    description: 'You \'feta\' believe this is a crowd-pleaser! Flaky phyllo pastry surrounds a delicious mixture of spinach and cheeses to create the perfect appetizer.',
    imagePath: 'food/spanakopita.png',
    imagePackage: _kGalleryAssetsPackage,
    ingredients: [
      new RecipeIngredient({ amount: '1 lb', description: 'Spinach' }),
      new RecipeIngredient({ amount: '½ cup', description: 'Feta cheese' }),
      new RecipeIngredient({ amount: '½ cup', description: 'Cottage cheese' }),
      new RecipeIngredient({ amount: '2', description: 'Eggs' }),
      new RecipeIngredient({ amount: '1', description: 'Onion' }),
      new RecipeIngredient({ amount: '½ lb', description: 'Phyllo dough' })
    ],
    steps: [
      new RecipeStep({ duration: '5 min', description: 'Sauté vegetables' }),
      new RecipeStep({ duration: '3 min', description: 'Stir vegetables and other filling ingredients' }),
      new RecipeStep({ duration: '10 min', description: 'Fill phyllo squares half-full with filling and fold.' }),
      new RecipeStep({ duration: '40 min', description: 'Bake' })
    ]
  })
];

module.exports = { JSPestoPage };
