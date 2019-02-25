import 'dart_flutter_framework.dart';
import 'dart_flutter_ui.dart';

const String _kSmallLogoImage = 'js_flutter_src/app_test/flutter_gallery_assets/logos/pesto/logo_small.png';
const String _kGalleryAssetsPackage = 'js_flutter_src/app_test/flutter_gallery_assets/';
const double _kAppBarHeight = 128.0;
const double _kFabHalfSize = 28.0; // TODO(mpcomplete): needs to adapt to screen size
const double _kRecipePageMaxWidth = 500.0;

class DartPestoPage extends MXDartWidget {
  List recipes;

  DartPestoPage() {
    this.name = "DartPestoPage";
    this.recipes = kPestoRecipes;
  }

  @override
  build(buildContext) {
    var statusBarHeight = 24;

    // var mq = DartFlutterMediaQuery.of(buildContext);
    // if (mq) {
    //   statusBarHeight = mq.padding.top;
    // }

    var w = Scaffold(
        appBar: AppBar(
          title: Text("Pesto Demo")),
        floatingActionButton: FloatingActionButton(
          child: Icon(IconData(0xe3c9)),
          onPressed: createCallbackID(() {

          })),
        body: CustomScrollView(
          semanticChildCount: this.recipes.length,
          slivers: [
            buildBody(buildContext, statusBarHeight),
        ]),
    );
    return w;
  }

  buildBody(context, statusBarHeight) {
    var mediaPadding = EdgeInsets.all(0);
    // var mq = DartFlutterMediaQuery.of(context);
    // if (mq) {
    //   mediaPadding = DartFlutterMediaQuery.of(context).padding;
    // }
    var padding = EdgeInsets.only(
      top: 8.0,
      left: 8.0 + mediaPadding.left,
      right: 8.0 + mediaPadding.right,
      bottom: 8.0
    );

    return SliverPadding(
      padding: padding,
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: _kRecipePageMaxWidth,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        delegate: SliverChildBuilderDelegate((index) {
            var recipe = this.recipes[index];
            var w = RecipeCard(recipe:recipe);
            return w;
        },
        childCount: this.recipes.length)
      ),
    );
  }
}

// A card with the recipe's image, author, and title.
class RecipeCard extends MXDartWidget {
  Recipe recipe;
  dynamic onTap;

  RecipeCard({recipe, onTap}) {
    this.name = "RecipeCard";
    this.recipe = recipe;
    this.onTap = onTap;
  }

  build(context) {
    return GestureDetector(
      onTap: this.onTap,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start.toString(),
          children: [
            Hero(
              tag: 'packages/' + this.recipe.imagePackage + this.recipe.imagePath,
              child:
                new AspectRatio(
                  aspectRatio: 4.0 / 3.0,
                  child: Image.asset(
                    this.recipe.imagePackage + this.recipe.imagePath,
                      fit: BoxFit.cover.toString(),
                      semanticLabel: this.recipe.name,
                    ),
                ),
            ),
            Expanded(
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Image.asset(
                      this.recipe.ingredientsImagePackage + this.recipe.ingredientsImagePath,
                        width: 48.0,
                        height: 48.0,
                      ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start.toString(),
                      mainAxisAlignment: MainAxisAlignment.center.toString(),
                      children: [
                        Text(this.recipe.name),
                        Text(this.recipe.author),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//数据
class Recipe {
  const Recipe({
    this.name,
    this.author,
    this.description,
    this.imagePath,
    this.imagePackage,
    this.ingredientsImagePath,
    this.ingredientsImagePackage,
    this.ingredients,
    this.steps
  });

  final String name;
  final String author;
  final String description;
  final String imagePath;
  final String imagePackage;
  final String ingredientsImagePath;
  final String ingredientsImagePackage;
  final List<RecipeIngredient> ingredients;
  final List<RecipeStep> steps;
}

class RecipeIngredient {
  const RecipeIngredient({this.amount, this.description});

  final String amount;
  final String description;
}

class RecipeStep {
  const RecipeStep({this.duration, this.description});

  final String duration;
  final String description;
}

const List<Recipe> kPestoRecipes = <Recipe>[
  Recipe(
    name: 'Roasted Chicken',
    author: 'Peter Carlsson',
    ingredientsImagePath: 'food/icons/main.png',
    ingredientsImagePackage: _kGalleryAssetsPackage,
    description: 'The perfect dish to welcome your family and friends with on a crisp autumn night. Pair with roasted veggies to truly impress them.',
    imagePath: 'food/roasted_chicken.png',
    imagePackage: _kGalleryAssetsPackage,
    ingredients: <RecipeIngredient>[
      RecipeIngredient(amount: '1 whole', description: 'Chicken'),
      RecipeIngredient(amount: '1/2 cup', description: 'Butter'),
      RecipeIngredient(amount: '1 tbsp', description: 'Onion powder'),
      RecipeIngredient(amount: '1 tbsp', description: 'Freshly ground pepper'),
      RecipeIngredient(amount: '1 tsp', description: 'Salt'),
    ],
    steps: <RecipeStep>[
      RecipeStep(duration: '1 min', description: 'Put in oven'),
      RecipeStep(duration: '1hr 45 min', description: 'Cook'),
    ],
  ),
  Recipe(
    name: 'Chopped Beet Leaves',
    author: 'Trevor Hansen',
    ingredientsImagePath: 'food/icons/veggie.png',
    ingredientsImagePackage: _kGalleryAssetsPackage,
    description: 'This vegetable has more to offer than just its root. Beet greens can be tossed into a salad to add some variety or sauteed on its own with some oil and garlic.',
    imagePath: 'food/chopped_beet_leaves.png',
    imagePackage: _kGalleryAssetsPackage,
    ingredients: <RecipeIngredient>[
       RecipeIngredient(amount: '3 cups', description: 'Beet greens'),
    ],
    steps: <RecipeStep>[
      RecipeStep(duration: '5 min', description: 'Chop'),
    ],
  ),
  Recipe(
    name: 'Pesto Pasta',
    author: 'Ali Connors',
    ingredientsImagePath: 'food/icons/main.png',
    ingredientsImagePackage: _kGalleryAssetsPackage,
    description: 'With this pesto recipe, you can quickly whip up a meal to satisfy your savory needs. And if you\'re feeling festive, you can add bacon to taste.',
    imagePath: 'food/pesto_pasta.png',
    imagePackage: _kGalleryAssetsPackage,
    ingredients: <RecipeIngredient>[
      RecipeIngredient(amount: '1/4 cup ', description: 'Pasta'),
      RecipeIngredient(amount: '2 cups', description: 'Fresh basil leaves'),
      RecipeIngredient(amount: '1/2 cup', description: 'Parmesan cheese'),
      RecipeIngredient(amount: '1/2 cup', description: 'Extra virgin olive oil'),
      RecipeIngredient(amount: '1/3 cup', description: 'Pine nuts'),
      RecipeIngredient(amount: '1/4 cup', description: 'Lemon juice'),
      RecipeIngredient(amount: '3 cloves', description: 'Garlic'),
      RecipeIngredient(amount: '1/4 tsp', description: 'Salt'),
      RecipeIngredient(amount: '1/8 tsp', description: 'Pepper'),
      RecipeIngredient(amount: '3 lbs', description: 'Bacon'),
    ],
    steps: <RecipeStep>[
      RecipeStep(duration: '15 min', description: 'Blend'),
    ],
  ),
  Recipe(
    name: 'Cherry Pie',
    author: 'Sandra Adams',
    ingredientsImagePath: 'food/icons/main.png',
    ingredientsImagePackage: _kGalleryAssetsPackage,
    description: 'Sometimes when you\'re craving some cheer in your life you can jumpstart your day with some cherry pie. Dessert for breakfast is perfectly acceptable.',
    imagePath: 'food/cherry_pie.png',
    imagePackage: _kGalleryAssetsPackage,
    ingredients: <RecipeIngredient>[
      RecipeIngredient(amount: '1', description: 'Pie crust'),
      RecipeIngredient(amount: '4 cups', description: 'Fresh or frozen cherries'),
      RecipeIngredient(amount: '1 cup', description: 'Granulated sugar'),
      RecipeIngredient(amount: '4 tbsp', description: 'Cornstarch'),
      RecipeIngredient(amount: '1½ tbsp', description: 'Butter'),
    ],
    steps: <RecipeStep>[
      RecipeStep(duration: '15 min', description: 'Mix'),
      RecipeStep(duration: '1hr 30 min', description: 'Bake'),
    ],
  ),
  Recipe(
    name: 'Spinach Salad',
    author: 'Peter Carlsson',
    ingredientsImagePath: 'food/icons/spicy.png',
    ingredientsImagePackage: _kGalleryAssetsPackage,
    description: 'Everyone\'s favorite leafy green is back. Paired with fresh sliced onion, it\'s ready to tackle any dish, whether it be a salad or an egg scramble.',
    imagePath: 'food/spinach_onion_salad.png',
    imagePackage: _kGalleryAssetsPackage,
    ingredients: <RecipeIngredient>[
      RecipeIngredient(amount: '4 cups', description: 'Spinach'),
      RecipeIngredient(amount: '1 cup', description: 'Sliced onion'),
    ],
    steps: <RecipeStep>[
      RecipeStep(duration: '5 min', description: 'Mix'),
    ],
  ),
  Recipe(
    name: 'Butternut Squash Soup',
    author: 'Ali Connors',
    ingredientsImagePath: 'food/icons/healthy.png',
    ingredientsImagePackage: _kGalleryAssetsPackage,
    description: 'This creamy butternut squash soup will warm you on the chilliest of winter nights and bring a delightful pop of orange to the dinner table.',
    imagePath: 'food/butternut_squash_soup.png',
    imagePackage: _kGalleryAssetsPackage,
    ingredients: <RecipeIngredient>[
      RecipeIngredient(amount: '1', description: 'Butternut squash'),
      RecipeIngredient(amount: '4 cups', description: 'Chicken stock'),
      RecipeIngredient(amount: '2', description: 'Potatoes'),
      RecipeIngredient(amount: '1', description: 'Onion'),
      RecipeIngredient(amount: '1', description: 'Carrot'),
      RecipeIngredient(amount: '1', description: 'Celery'),
      RecipeIngredient(amount: '1 tsp', description: 'Salt'),
      RecipeIngredient(amount: '1 tsp', description: 'Pepper'),
    ],
    steps: <RecipeStep>[
      RecipeStep(duration: '10 min', description: 'Prep vegetables'),
      RecipeStep(duration: '5 min', description: 'Stir'),
      RecipeStep(duration: '1 hr 10 min', description: 'Cook')
    ],
  ),
  Recipe(
    name: 'Spanakopita',
    author: 'Trevor Hansen',
    ingredientsImagePath: 'food/icons/quick.png',
    ingredientsImagePackage: _kGalleryAssetsPackage,
    description: 'You \'feta\' believe this is a crowd-pleaser! Flaky phyllo pastry surrounds a delicious mixture of spinach and cheeses to create the perfect appetizer.',
    imagePath: 'food/spanakopita.png',
    imagePackage: _kGalleryAssetsPackage,
    ingredients: <RecipeIngredient>[
      RecipeIngredient(amount: '1 lb', description: 'Spinach'),
      RecipeIngredient(amount: '½ cup', description: 'Feta cheese'),
      RecipeIngredient(amount: '½ cup', description: 'Cottage cheese'),
      RecipeIngredient(amount: '2', description: 'Eggs'),
      RecipeIngredient(amount: '1', description: 'Onion'),
      RecipeIngredient(amount: '½ lb', description: 'Phyllo dough'),
    ],
    steps: <RecipeStep>[
      RecipeStep(duration: '5 min', description: 'Sauté vegetables'),
      RecipeStep(duration: '3 min', description: 'Stir vegetables and other filling ingredients'),
      RecipeStep(duration: '10 min', description: 'Fill phyllo squares half-full with filling and fold.'),
      RecipeStep(duration: '40 min', description: 'Bake')
    ],
  ),
];
