'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const ui = dart_sdk.ui;
const _interceptors = dart_sdk._interceptors;
const collection = dart_sdk.collection;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__widgets__widget_span$46dart = require('packages/flutter/src/widgets/widget_span.dart');
const framework = packages__flutter__src__widgets__widget_span$46dart.src__widgets__framework;
const media_query = packages__flutter__src__widgets__widget_span$46dart.src__widgets__media_query;
const text = packages__flutter__src__widgets__widget_span$46dart.src__widgets__text;
const basic = packages__flutter__src__widgets__widget_span$46dart.src__widgets__basic;
const sliver = packages__flutter__src__widgets__widget_span$46dart.src__widgets__sliver;
const navigator = packages__flutter__src__widgets__widget_span$46dart.src__widgets__navigator;
const image = packages__flutter__src__widgets__widget_span$46dart.src__widgets__image;
const gesture_detector = packages__flutter__src__widgets__widget_span$46dart.src__widgets__gesture_detector;
const container = packages__flutter__src__widgets__widget_span$46dart.src__widgets__container;
const table = packages__flutter__src__widgets__widget_span$46dart.src__widgets__table;
const packages__flutter__src__painting__strut_style$46dart = require('packages/flutter/src/painting/strut_style.dart');
const text_style = packages__flutter__src__painting__strut_style$46dart.src__painting__text_style;
const packages__flutter__src__material__icon_button$46dart = require('packages/flutter/src/material/icon_button.dart');
const scaffold = packages__flutter__src__material__icon_button$46dart.src__material__scaffold;
const theme = packages__flutter__src__material__icon_button$46dart.src__material__theme;
const app_bar = packages__flutter__src__material__icon_button$46dart.src__material__app_bar;
const floating_action_button = packages__flutter__src__material__icon_button$46dart.src__material__floating_action_button;
const snack_bar = packages__flutter__src__material__icon_button$46dart.src__material__snack_bar;
const flexible_space_bar = packages__flutter__src__material__icon_button$46dart.src__material__flexible_space_bar;
const material = packages__flutter__src__material__icon_button$46dart.src__material__material;
const theme_data = packages__flutter__src__material__icon_button$46dart.src__material__theme_data;
const packages__flutter__src__widgets__icon$46dart = require('packages/flutter/src/widgets/icon.dart');
const icon$ = packages__flutter__src__widgets__icon$46dart.src__widgets__icon;
const packages__flutter__src__widgets__icon_data$46dart = require('packages/flutter/src/widgets/icon_data.dart');
const icon_data = packages__flutter__src__widgets__icon_data$46dart.src__widgets__icon_data;
const packages__flutter__src__widgets__scroll_view$46dart = require('packages/flutter/src/widgets/scroll_view.dart');
const scroll_view = packages__flutter__src__widgets__scroll_view$46dart.src__widgets__scroll_view;
const packages__flutter__src__painting__edge_insets$46dart = require('packages/flutter/src/painting/edge_insets.dart');
const edge_insets = packages__flutter__src__painting__edge_insets$46dart.src__painting__edge_insets;
const packages__flutter__src__rendering__sliver_grid$46dart = require('packages/flutter/src/rendering/sliver_grid.dart');
const sliver_grid = packages__flutter__src__rendering__sliver_grid$46dart.src__rendering__sliver_grid;
const packages__flutter__src__material__page$46dart = require('packages/flutter/src/material/page.dart');
const page = packages__flutter__src__material__page$46dart.src__material__page;
const packages__flutter__src__animation__listener_helpers$46dart = require('packages/flutter/src/animation/listener_helpers.dart');
const tween = packages__flutter__src__animation__listener_helpers$46dart.src__animation__tween;
const packages__flutter__src__animation__curves$46dart = require('packages/flutter/src/animation/curves.dart');
const curves = packages__flutter__src__animation__curves$46dart.src__animation__curves;
const packages__vector_math__vector_math_64$46dart = require('packages/vector_math/vector_math_64.dart');
const vector_math_64 = packages__vector_math__vector_math_64$46dart.vector_math_64;
const packages__flutter__src__painting__alignment$46dart = require('packages/flutter/src/painting/alignment.dart');
const alignment = packages__flutter__src__painting__alignment$46dart.src__painting__alignment;
const packages__flutter__src__rendering__stack$46dart = require('packages/flutter/src/rendering/stack.dart');
const stack = packages__flutter__src__rendering__stack$46dart.src__rendering__stack;
const packages__flutter__src__painting__box_fit$46dart = require('packages/flutter/src/painting/box_fit.dart');
const box_fit = packages__flutter__src__painting__box_fit$46dart.src__painting__box_fit;
const packages__flutter__src__material__card$46dart = require('packages/flutter/src/material/card.dart');
const card = packages__flutter__src__material__card$46dart.src__material__card;
const packages__flutter__src__rendering__flex$46dart = require('packages/flutter/src/rendering/flex.dart');
const flex = packages__flutter__src__rendering__flex$46dart.src__rendering__flex;
const packages__flutter__src__widgets__heroes$46dart = require('packages/flutter/src/widgets/heroes.dart');
const heroes = packages__flutter__src__widgets__heroes$46dart.src__widgets__heroes;
const packages__flutter__src__rendering__paragraph$46dart = require('packages/flutter/src/rendering/paragraph.dart');
const paragraph = packages__flutter__src__rendering__paragraph$46dart.src__rendering__paragraph;
const packages__flutter__src__material__colors$46dart = require('packages/flutter/src/material/colors.dart');
const colors = packages__flutter__src__material__colors$46dart.src__material__colors;
const packages__flutter__src__material__popup_menu$46dart = require('packages/flutter/src/material/popup_menu.dart');
const popup_menu = packages__flutter__src__material__popup_menu$46dart.src__material__popup_menu;
const packages__flutter__src__material__icons$46dart = require('packages/flutter/src/material/icons.dart');
const icons = packages__flutter__src__material__icons$46dart.src__material__icons;
const packages__flutter__src__rendering__proxy_box$46dart = require('packages/flutter/src/rendering/proxy_box.dart');
const proxy_box = packages__flutter__src__rendering__proxy_box$46dart.src__rendering__proxy_box;
const packages__flutter__src__painting__box_decoration$46dart = require('packages/flutter/src/painting/box_decoration.dart');
const box_decoration = packages__flutter__src__painting__box_decoration$46dart.src__painting__box_decoration;
const packages__flutter__src__painting__box_border$46dart = require('packages/flutter/src/painting/box_border.dart');
const box_border = packages__flutter__src__painting__box_border$46dart.src__painting__box_border;
const packages__flutter__src__painting__gradient$46dart = require('packages/flutter/src/painting/gradient.dart');
const gradient = packages__flutter__src__painting__gradient$46dart.src__painting__gradient;
const packages__flutter__src__widgets__safe_area$46dart = require('packages/flutter/src/widgets/safe_area.dart');
const safe_area = packages__flutter__src__widgets__safe_area$46dart.src__widgets__safe_area;
const packages__flutter__src__rendering__table$46dart = require('packages/flutter/src/rendering/table.dart');
const table$ = packages__flutter__src__rendering__table$46dart.src__rendering__table;
var pesto_demo = Object.create(dart.library);
var $toList = dartx.toList;
var $length = dartx.length;
var $_get = dartx._get;
var $map = dartx.map;
var $addAll = dartx.addAll;
var $add = dartx.add;
var GlobalKeyOfScaffoldState = () => (GlobalKeyOfScaffoldState = dart.constFn(framework.GlobalKey$(scaffold.ScaffoldState)))();
var VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
var JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
var BuildContextAndintToRecipeCard = () => (BuildContextAndintToRecipeCard = dart.constFn(dart.fnType(pesto_demo.RecipeCard, [framework.BuildContext, core.int])))();
var MaterialPageRouteOfvoid = () => (MaterialPageRouteOfvoid = dart.constFn(page.MaterialPageRoute$(dart.void)))();
var BuildContextToPestoFavorites = () => (BuildContextToPestoFavorites = dart.constFn(dart.fnType(pesto_demo.PestoFavorites, [framework.BuildContext])))();
var BuildContextToTheme = () => (BuildContextToTheme = dart.constFn(dart.fnType(theme.Theme, [framework.BuildContext])))();
var PopupMenuButtonOfString = () => (PopupMenuButtonOfString = dart.constFn(popup_menu.PopupMenuButton$(core.String)))();
var StringToNull = () => (StringToNull = dart.constFn(dart.fnType(core.Null, [core.String])))();
var PopupMenuItemOfString = () => (PopupMenuItemOfString = dart.constFn(popup_menu.PopupMenuItem$(core.String)))();
var JSArrayOfPopupMenuItemOfString = () => (JSArrayOfPopupMenuItemOfString = dart.constFn(_interceptors.JSArray$(PopupMenuItemOfString())))();
var ListOfPopupMenuItemOfString = () => (ListOfPopupMenuItemOfString = dart.constFn(core.List$(PopupMenuItemOfString())))();
var BuildContextToListOfPopupMenuItemOfString = () => (BuildContextToListOfPopupMenuItemOfString = dart.constFn(dart.fnType(ListOfPopupMenuItemOfString(), [framework.BuildContext])))();
var JSArrayOfTableRow = () => (JSArrayOfTableRow = dart.constFn(_interceptors.JSArray$(table.TableRow)))();
var RecipeIngredientToTableRow = () => (RecipeIngredientToTableRow = dart.constFn(dart.fnType(table.TableRow, [pesto_demo.RecipeIngredient])))();
var RecipeStepToTableRow = () => (RecipeStepToTableRow = dart.constFn(dart.fnType(table.TableRow, [pesto_demo.RecipeStep])))();
var LinkedHashSetOfRecipe = () => (LinkedHashSetOfRecipe = dart.constFn(collection.LinkedHashSet$(pesto_demo.Recipe)))();
const CT = Object.create(null);
var L0 = "package:jsbuild_test/pesto_demo.dart";
dart.defineLazy(CT, {
  get C4() {
    return C4 = dart.const({
      __proto__: pesto_demo.RecipeStep.prototype,
      [RecipeStep_description]: "Put in oven",
      [RecipeStep_duration]: "1 min"
    });
  },
  get C5() {
    return C5 = dart.const({
      __proto__: pesto_demo.RecipeStep.prototype,
      [RecipeStep_description]: "Cook",
      [RecipeStep_duration]: "1hr 45 min"
    });
  },
  get C3() {
    return C3 = dart.constList([C4 || CT.C4, C5 || CT.C5], pesto_demo.RecipeStep);
  },
  get C7() {
    return C7 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Chicken",
      [RecipeIngredient_amount]: "1 whole"
    });
  },
  get C8() {
    return C8 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Butter",
      [RecipeIngredient_amount]: "1/2 cup"
    });
  },
  get C9() {
    return C9 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Onion powder",
      [RecipeIngredient_amount]: "1 tbsp"
    });
  },
  get C10() {
    return C10 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Freshly ground pepper",
      [RecipeIngredient_amount]: "1 tbsp"
    });
  },
  get C11() {
    return C11 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Salt",
      [RecipeIngredient_amount]: "1 tsp"
    });
  },
  get C6() {
    return C6 = dart.constList([C7 || CT.C7, C8 || CT.C8, C9 || CT.C9, C10 || CT.C10, C11 || CT.C11], pesto_demo.RecipeIngredient);
  },
  get C2() {
    return C2 = dart.const({
      __proto__: pesto_demo.Recipe.prototype,
      [Recipe_steps]: C3 || CT.C3,
      [Recipe_ingredients]: C6 || CT.C6,
      [Recipe_ingredientsImagePackage]: "flutter_gallery_assets",
      [Recipe_ingredientsImagePath]: "food/icons/main.png",
      [Recipe_imagePackage]: "flutter_gallery_assets",
      [Recipe_imagePath]: "food/roasted_chicken.png",
      [Recipe_description]: "The perfect dish to welcome your family and friends with on a crisp autumn night. Pair with roasted veggies to truly impress them.",
      [Recipe_author]: "Peter Carlsson",
      [Recipe_name]: "Roasted Chicken"
    });
  },
  get C14() {
    return C14 = dart.const({
      __proto__: pesto_demo.RecipeStep.prototype,
      [RecipeStep_description]: "Chop",
      [RecipeStep_duration]: "5 min"
    });
  },
  get C13() {
    return C13 = dart.constList([C14 || CT.C14], pesto_demo.RecipeStep);
  },
  get C16() {
    return C16 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Beet greens",
      [RecipeIngredient_amount]: "3 cups"
    });
  },
  get C15() {
    return C15 = dart.constList([C16 || CT.C16], pesto_demo.RecipeIngredient);
  },
  get C12() {
    return C12 = dart.const({
      __proto__: pesto_demo.Recipe.prototype,
      [Recipe_steps]: C13 || CT.C13,
      [Recipe_ingredients]: C15 || CT.C15,
      [Recipe_ingredientsImagePackage]: "flutter_gallery_assets",
      [Recipe_ingredientsImagePath]: "food/icons/veggie.png",
      [Recipe_imagePackage]: "flutter_gallery_assets",
      [Recipe_imagePath]: "food/chopped_beet_leaves.png",
      [Recipe_description]: "This vegetable has more to offer than just its root. Beet greens can be tossed into a salad to add some variety or sauteed on its own with some oil and garlic.",
      [Recipe_author]: "Trevor Hansen",
      [Recipe_name]: "Chopped Beet Leaves"
    });
  },
  get C19() {
    return C19 = dart.const({
      __proto__: pesto_demo.RecipeStep.prototype,
      [RecipeStep_description]: "Blend",
      [RecipeStep_duration]: "15 min"
    });
  },
  get C18() {
    return C18 = dart.constList([C19 || CT.C19], pesto_demo.RecipeStep);
  },
  get C21() {
    return C21 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Pasta",
      [RecipeIngredient_amount]: "1/4 cup "
    });
  },
  get C22() {
    return C22 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Fresh basil leaves",
      [RecipeIngredient_amount]: "2 cups"
    });
  },
  get C23() {
    return C23 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Parmesan cheese",
      [RecipeIngredient_amount]: "1/2 cup"
    });
  },
  get C24() {
    return C24 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Extra virgin olive oil",
      [RecipeIngredient_amount]: "1/2 cup"
    });
  },
  get C25() {
    return C25 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Pine nuts",
      [RecipeIngredient_amount]: "1/3 cup"
    });
  },
  get C26() {
    return C26 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Lemon juice",
      [RecipeIngredient_amount]: "1/4 cup"
    });
  },
  get C27() {
    return C27 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Garlic",
      [RecipeIngredient_amount]: "3 cloves"
    });
  },
  get C28() {
    return C28 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Salt",
      [RecipeIngredient_amount]: "1/4 tsp"
    });
  },
  get C29() {
    return C29 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Pepper",
      [RecipeIngredient_amount]: "1/8 tsp"
    });
  },
  get C30() {
    return C30 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Bacon",
      [RecipeIngredient_amount]: "3 lbs"
    });
  },
  get C20() {
    return C20 = dart.constList([C21 || CT.C21, C22 || CT.C22, C23 || CT.C23, C24 || CT.C24, C25 || CT.C25, C26 || CT.C26, C27 || CT.C27, C28 || CT.C28, C29 || CT.C29, C30 || CT.C30], pesto_demo.RecipeIngredient);
  },
  get C17() {
    return C17 = dart.const({
      __proto__: pesto_demo.Recipe.prototype,
      [Recipe_steps]: C18 || CT.C18,
      [Recipe_ingredients]: C20 || CT.C20,
      [Recipe_ingredientsImagePackage]: "flutter_gallery_assets",
      [Recipe_ingredientsImagePath]: "food/icons/main.png",
      [Recipe_imagePackage]: "flutter_gallery_assets",
      [Recipe_imagePath]: "food/pesto_pasta.png",
      [Recipe_description]: "With this pesto recipe, you can quickly whip up a meal to satisfy your savory needs. And if you're feeling festive, you can add bacon to taste.",
      [Recipe_author]: "Ali Connors",
      [Recipe_name]: "Pesto Pasta"
    });
  },
  get C33() {
    return C33 = dart.const({
      __proto__: pesto_demo.RecipeStep.prototype,
      [RecipeStep_description]: "Mix",
      [RecipeStep_duration]: "15 min"
    });
  },
  get C34() {
    return C34 = dart.const({
      __proto__: pesto_demo.RecipeStep.prototype,
      [RecipeStep_description]: "Bake",
      [RecipeStep_duration]: "1hr 30 min"
    });
  },
  get C32() {
    return C32 = dart.constList([C33 || CT.C33, C34 || CT.C34], pesto_demo.RecipeStep);
  },
  get C36() {
    return C36 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Pie crust",
      [RecipeIngredient_amount]: "1"
    });
  },
  get C37() {
    return C37 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Fresh or frozen cherries",
      [RecipeIngredient_amount]: "4 cups"
    });
  },
  get C38() {
    return C38 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Granulated sugar",
      [RecipeIngredient_amount]: "1 cup"
    });
  },
  get C39() {
    return C39 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Cornstarch",
      [RecipeIngredient_amount]: "4 tbsp"
    });
  },
  get C40() {
    return C40 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Butter",
      [RecipeIngredient_amount]: "1½ tbsp"
    });
  },
  get C35() {
    return C35 = dart.constList([C36 || CT.C36, C37 || CT.C37, C38 || CT.C38, C39 || CT.C39, C40 || CT.C40], pesto_demo.RecipeIngredient);
  },
  get C31() {
    return C31 = dart.const({
      __proto__: pesto_demo.Recipe.prototype,
      [Recipe_steps]: C32 || CT.C32,
      [Recipe_ingredients]: C35 || CT.C35,
      [Recipe_ingredientsImagePackage]: "flutter_gallery_assets",
      [Recipe_ingredientsImagePath]: "food/icons/main.png",
      [Recipe_imagePackage]: "flutter_gallery_assets",
      [Recipe_imagePath]: "food/cherry_pie.png",
      [Recipe_description]: "Sometimes when you're craving some cheer in your life you can jumpstart your day with some cherry pie. Dessert for breakfast is perfectly acceptable.",
      [Recipe_author]: "Sandra Adams",
      [Recipe_name]: "Cherry Pie"
    });
  },
  get C43() {
    return C43 = dart.const({
      __proto__: pesto_demo.RecipeStep.prototype,
      [RecipeStep_description]: "Mix",
      [RecipeStep_duration]: "5 min"
    });
  },
  get C42() {
    return C42 = dart.constList([C43 || CT.C43], pesto_demo.RecipeStep);
  },
  get C45() {
    return C45 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Spinach",
      [RecipeIngredient_amount]: "4 cups"
    });
  },
  get C46() {
    return C46 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Sliced onion",
      [RecipeIngredient_amount]: "1 cup"
    });
  },
  get C44() {
    return C44 = dart.constList([C45 || CT.C45, C46 || CT.C46], pesto_demo.RecipeIngredient);
  },
  get C41() {
    return C41 = dart.const({
      __proto__: pesto_demo.Recipe.prototype,
      [Recipe_steps]: C42 || CT.C42,
      [Recipe_ingredients]: C44 || CT.C44,
      [Recipe_ingredientsImagePackage]: "flutter_gallery_assets",
      [Recipe_ingredientsImagePath]: "food/icons/spicy.png",
      [Recipe_imagePackage]: "flutter_gallery_assets",
      [Recipe_imagePath]: "food/spinach_onion_salad.png",
      [Recipe_description]: "Everyone's favorite leafy green is back. Paired with fresh sliced onion, it's ready to tackle any dish, whether it be a salad or an egg scramble.",
      [Recipe_author]: "Peter Carlsson",
      [Recipe_name]: "Spinach Salad"
    });
  },
  get C49() {
    return C49 = dart.const({
      __proto__: pesto_demo.RecipeStep.prototype,
      [RecipeStep_description]: "Prep vegetables",
      [RecipeStep_duration]: "10 min"
    });
  },
  get C50() {
    return C50 = dart.const({
      __proto__: pesto_demo.RecipeStep.prototype,
      [RecipeStep_description]: "Stir",
      [RecipeStep_duration]: "5 min"
    });
  },
  get C51() {
    return C51 = dart.const({
      __proto__: pesto_demo.RecipeStep.prototype,
      [RecipeStep_description]: "Cook",
      [RecipeStep_duration]: "1 hr 10 min"
    });
  },
  get C48() {
    return C48 = dart.constList([C49 || CT.C49, C50 || CT.C50, C51 || CT.C51], pesto_demo.RecipeStep);
  },
  get C53() {
    return C53 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Butternut squash",
      [RecipeIngredient_amount]: "1"
    });
  },
  get C54() {
    return C54 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Chicken stock",
      [RecipeIngredient_amount]: "4 cups"
    });
  },
  get C55() {
    return C55 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Potatoes",
      [RecipeIngredient_amount]: "2"
    });
  },
  get C56() {
    return C56 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Onion",
      [RecipeIngredient_amount]: "1"
    });
  },
  get C57() {
    return C57 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Carrot",
      [RecipeIngredient_amount]: "1"
    });
  },
  get C58() {
    return C58 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Celery",
      [RecipeIngredient_amount]: "1"
    });
  },
  get C59() {
    return C59 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Pepper",
      [RecipeIngredient_amount]: "1 tsp"
    });
  },
  get C52() {
    return C52 = dart.constList([C53 || CT.C53, C54 || CT.C54, C55 || CT.C55, C56 || CT.C56, C57 || CT.C57, C58 || CT.C58, C11 || CT.C11, C59 || CT.C59], pesto_demo.RecipeIngredient);
  },
  get C47() {
    return C47 = dart.const({
      __proto__: pesto_demo.Recipe.prototype,
      [Recipe_steps]: C48 || CT.C48,
      [Recipe_ingredients]: C52 || CT.C52,
      [Recipe_ingredientsImagePackage]: "flutter_gallery_assets",
      [Recipe_ingredientsImagePath]: "food/icons/healthy.png",
      [Recipe_imagePackage]: "flutter_gallery_assets",
      [Recipe_imagePath]: "food/butternut_squash_soup.png",
      [Recipe_description]: "This creamy butternut squash soup will warm you on the chilliest of winter nights and bring a delightful pop of orange to the dinner table.",
      [Recipe_author]: "Ali Connors",
      [Recipe_name]: "Butternut Squash Soup"
    });
  },
  get C62() {
    return C62 = dart.const({
      __proto__: pesto_demo.RecipeStep.prototype,
      [RecipeStep_description]: "Sauté vegetables",
      [RecipeStep_duration]: "5 min"
    });
  },
  get C63() {
    return C63 = dart.const({
      __proto__: pesto_demo.RecipeStep.prototype,
      [RecipeStep_description]: "Stir vegetables and other filling ingredients",
      [RecipeStep_duration]: "3 min"
    });
  },
  get C64() {
    return C64 = dart.const({
      __proto__: pesto_demo.RecipeStep.prototype,
      [RecipeStep_description]: "Fill phyllo squares half-full with filling and fold.",
      [RecipeStep_duration]: "10 min"
    });
  },
  get C65() {
    return C65 = dart.const({
      __proto__: pesto_demo.RecipeStep.prototype,
      [RecipeStep_description]: "Bake",
      [RecipeStep_duration]: "40 min"
    });
  },
  get C61() {
    return C61 = dart.constList([C62 || CT.C62, C63 || CT.C63, C64 || CT.C64, C65 || CT.C65], pesto_demo.RecipeStep);
  },
  get C67() {
    return C67 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Spinach",
      [RecipeIngredient_amount]: "1 lb"
    });
  },
  get C68() {
    return C68 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Feta cheese",
      [RecipeIngredient_amount]: "½ cup"
    });
  },
  get C69() {
    return C69 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Cottage cheese",
      [RecipeIngredient_amount]: "½ cup"
    });
  },
  get C70() {
    return C70 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Eggs",
      [RecipeIngredient_amount]: "2"
    });
  },
  get C71() {
    return C71 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Phyllo dough",
      [RecipeIngredient_amount]: "½ lb"
    });
  },
  get C66() {
    return C66 = dart.constList([C67 || CT.C67, C68 || CT.C68, C69 || CT.C69, C70 || CT.C70, C56 || CT.C56, C71 || CT.C71], pesto_demo.RecipeIngredient);
  },
  get C60() {
    return C60 = dart.const({
      __proto__: pesto_demo.Recipe.prototype,
      [Recipe_steps]: C61 || CT.C61,
      [Recipe_ingredients]: C66 || CT.C66,
      [Recipe_ingredientsImagePackage]: "flutter_gallery_assets",
      [Recipe_ingredientsImagePath]: "food/icons/quick.png",
      [Recipe_imagePackage]: "flutter_gallery_assets",
      [Recipe_imagePath]: "food/spanakopita.png",
      [Recipe_description]: "You 'feta' believe this is a crowd-pleaser! Flaky phyllo pastry surrounds a delicious mixture of spinach and cheeses to create the perfect appetizer.",
      [Recipe_author]: "Trevor Hansen",
      [Recipe_name]: "Spanakopita"
    });
  },
  get C1() {
    return C1 = dart.constList([C2 || CT.C2, C12 || CT.C12, C17 || CT.C17, C31 || CT.C31, C41 || CT.C41, C47 || CT.C47, C60 || CT.C60], pesto_demo.Recipe);
  },
  get C0() {
    return C0 = dart.const({
      __proto__: pesto_demo.RecipeGridPage.prototype,
      [Widget__location]: null,
      [Widget_key]: null,
      [RecipeGridPage_recipes]: C1 || CT.C1
    });
  },
  get C72() {
    return C72 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 3707764736.0
    });
  },
  get C74() {
    return C74 = dart.const({
      __proto__: icon_data.IconData.prototype,
      [IconData_matchTextDirection]: false,
      [IconData_fontPackage]: null,
      [IconData_fontFamily]: "MaterialIcons",
      [IconData_codePoint]: 58313
    });
  },
  get C73() {
    return C73 = dart.const({
      __proto__: icon$.Icon.prototype,
      [Widget__location]: null,
      [Widget_key]: null,
      [Icon_textDirection]: null,
      [Icon_semanticLabel]: null,
      [Icon_color]: null,
      [Icon_size]: null,
      [Icon_icon]: C74 || CT.C74
    });
  },
  get C76() {
    return C76 = dart.const({
      __proto__: core.Duration.prototype,
      [Duration__duration]: 4000000
    });
  },
  get C77() {
    return C77 = dart.const({
      __proto__: text.Text.prototype,
      [Widget__location]: null,
      [Widget_key]: null,
      [Text_textHeightBehavior]: null,
      [Text_textWidthBasis]: null,
      [Text_semanticsLabel]: null,
      [Text_maxLines]: null,
      [Text_textScaleFactor]: null,
      [Text_overflow]: null,
      [Text_softWrap]: null,
      [Text_locale]: null,
      [Text_textDirection]: null,
      [Text_textAlign]: null,
      [Text_strutStyle]: null,
      [Text_style]: null,
      [Text_textSpan]: null,
      [Text_data]: "Not supported."
    });
  },
  get C75() {
    return C75 = dart.const({
      __proto__: snack_bar.SnackBar.prototype,
      [Widget__location]: null,
      [Widget_key]: null,
      [SnackBar_onVisible]: null,
      [SnackBar_animation]: null,
      [SnackBar_duration]: C76 || CT.C76,
      [SnackBar_action]: null,
      [SnackBar_behavior]: null,
      [SnackBar_shape]: null,
      [SnackBar_elevation]: null,
      [SnackBar_backgroundColor]: null,
      [SnackBar_content]: C77 || CT.C77
    });
  },
  get C78() {
    return C78 = dart.const({
      __proto__: sliver_grid.SliverGridDelegateWithMaxCrossAxisExtent.prototype,
      [SliverGridDelegateWithMaxCrossAxisExtent_childAspectRatio]: 1,
      [SliverGridDelegateWithMaxCrossAxisExtent_crossAxisSpacing]: 8,
      [SliverGridDelegateWithMaxCrossAxisExtent_mainAxisSpacing]: 8,
      [SliverGridDelegateWithMaxCrossAxisExtent_maxCrossAxisExtent]: 500
    });
  },
  get C79() {
    return C79 = dart.const({
      __proto__: navigator.RouteSettings.prototype,
      [RouteSettings_arguments]: null,
      [RouteSettings_name]: "/pesto/favorites"
    });
  },
  get C80() {
    return C80 = dart.const({
      __proto__: navigator.RouteSettings.prototype,
      [RouteSettings_arguments]: null,
      [RouteSettings_name]: "/pesto/recipe"
    });
  },
  get C82() {
    return C82 = dart.const({
      __proto__: ui.TextBaseline.prototype,
      [_name]: "TextBaseline.alphabetic",
      index: 0
    });
  },
  get C83() {
    return C83 = dart.const({
      __proto__: ui.FontWeight.prototype,
      [FontWeight_index]: 8
    });
  },
  get C84() {
    return C84 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 4294967295.0
    });
  },
  get C81() {
    return C81 = dart.const({
      __proto__: pesto_demo.PestoStyle.prototype,
      [TextStyle_fontFeatures]: null,
      [TextStyle_shadows]: null,
      [TextStyle_debugLabel]: null,
      [TextStyle_decorationThickness]: null,
      [TextStyle_decorationStyle]: null,
      [TextStyle_decorationColor]: null,
      [TextStyle_decoration]: null,
      [TextStyle_background]: null,
      [TextStyle_foreground]: null,
      [TextStyle_locale]: null,
      [TextStyle_height]: null,
      [TextStyle_textBaseline]: C82 || CT.C82,
      [TextStyle_wordSpacing]: null,
      [TextStyle_letterSpacing]: 3,
      [TextStyle_fontStyle]: null,
      [TextStyle_fontWeight]: C83 || CT.C83,
      [TextStyle_fontSize]: 48,
      [TextStyle__package]: null,
      [TextStyle__fontFamilyFallback]: null,
      [TextStyle_fontFamily]: "Raleway",
      [TextStyle_backgroundColor]: null,
      [TextStyle_color]: C84 || CT.C84,
      [TextStyle_inherit]: false
    });
  },
  get C85() {
    return C85 = dart.const({
      __proto__: ui.Rect.prototype,
      [Rect_bottom]: 210,
      [Rect_right]: 220,
      [Rect_top]: 162,
      [Rect_left]: 0
    });
  },
  get C86() {
    return C86 = dart.const({
      __proto__: ui.Rect.prototype,
      [Rect_bottom]: 156,
      [Rect_right]: 220,
      [Rect_top]: 108,
      [Rect_left]: 0
    });
  },
  get C88() {
    return C88 = dart.const({
      __proto__: curves.Cubic.prototype,
      [Cubic_d]: 1,
      [Cubic_c]: 0.58,
      [Cubic_b]: 0,
      [Cubic_a]: 0.42
    });
  },
  get C87() {
    return C87 = dart.const({
      __proto__: curves.Interval.prototype,
      [Interval_curve]: C88 || CT.C88,
      [Interval_end]: 1,
      [Interval_begin]: 0.4
    });
  },
  get C89() {
    return C89 = dart.const({
      __proto__: ui.Rect.prototype,
      [Rect_bottom]: 162,
      [Rect_right]: 220,
      [Rect_top]: 0,
      [Rect_left]: 0
    });
  },
  get C90() {
    return C90 = dart.const({
      __proto__: ui.Rect.prototype,
      [Rect_bottom]: 108,
      [Rect_right]: 220,
      [Rect_top]: 0,
      [Rect_left]: 0
    });
  },
  get C92() {
    return C92 = dart.const({
      __proto__: ui.FontWeight.prototype,
      [FontWeight_index]: 5
    });
  },
  get C91() {
    return C91 = dart.const({
      __proto__: pesto_demo.PestoStyle.prototype,
      [TextStyle_fontFeatures]: null,
      [TextStyle_shadows]: null,
      [TextStyle_debugLabel]: null,
      [TextStyle_decorationThickness]: null,
      [TextStyle_decorationStyle]: null,
      [TextStyle_decorationColor]: null,
      [TextStyle_decoration]: null,
      [TextStyle_background]: null,
      [TextStyle_foreground]: null,
      [TextStyle_locale]: null,
      [TextStyle_height]: null,
      [TextStyle_textBaseline]: C82 || CT.C82,
      [TextStyle_wordSpacing]: null,
      [TextStyle_letterSpacing]: null,
      [TextStyle_fontStyle]: null,
      [TextStyle_fontWeight]: C92 || CT.C92,
      [TextStyle_fontSize]: 24,
      [TextStyle__package]: null,
      [TextStyle__fontFamilyFallback]: null,
      [TextStyle_fontFamily]: "Raleway",
      [TextStyle_backgroundColor]: null,
      [TextStyle_color]: C72 || CT.C72,
      [TextStyle_inherit]: false
    });
  },
  get C94() {
    return C94 = dart.const({
      __proto__: ui.FontWeight.prototype,
      [FontWeight_index]: 4
    });
  },
  get C95() {
    return C95 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 2315255808.0
    });
  },
  get C93() {
    return C93 = dart.const({
      __proto__: pesto_demo.PestoStyle.prototype,
      [TextStyle_fontFeatures]: null,
      [TextStyle_shadows]: null,
      [TextStyle_debugLabel]: null,
      [TextStyle_decorationThickness]: null,
      [TextStyle_decorationStyle]: null,
      [TextStyle_decorationColor]: null,
      [TextStyle_decoration]: null,
      [TextStyle_background]: null,
      [TextStyle_foreground]: null,
      [TextStyle_locale]: null,
      [TextStyle_height]: null,
      [TextStyle_textBaseline]: C82 || CT.C82,
      [TextStyle_wordSpacing]: null,
      [TextStyle_letterSpacing]: null,
      [TextStyle_fontStyle]: null,
      [TextStyle_fontWeight]: C94 || CT.C94,
      [TextStyle_fontSize]: 12,
      [TextStyle__package]: null,
      [TextStyle__fontFamilyFallback]: null,
      [TextStyle_fontFamily]: "Raleway",
      [TextStyle_backgroundColor]: null,
      [TextStyle_color]: C95 || CT.C95,
      [TextStyle_inherit]: false
    });
  },
  get C96() {
    return C96 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 16,
      [EdgeInsets_right]: 16,
      [EdgeInsets_top]: 16,
      [EdgeInsets_left]: 16
    });
  },
  get C97() {
    return C97 = dart.const({
      __proto__: pesto_demo.PestoStyle.prototype,
      [TextStyle_fontFeatures]: null,
      [TextStyle_shadows]: null,
      [TextStyle_debugLabel]: null,
      [TextStyle_decorationThickness]: null,
      [TextStyle_decorationStyle]: null,
      [TextStyle_decorationColor]: null,
      [TextStyle_decoration]: null,
      [TextStyle_background]: null,
      [TextStyle_foreground]: null,
      [TextStyle_locale]: null,
      [TextStyle_height]: 1.6,
      [TextStyle_textBaseline]: C82 || CT.C82,
      [TextStyle_wordSpacing]: null,
      [TextStyle_letterSpacing]: null,
      [TextStyle_fontStyle]: null,
      [TextStyle_fontWeight]: null,
      [TextStyle_fontSize]: 15,
      [TextStyle__package]: null,
      [TextStyle__fontFamilyFallback]: null,
      [TextStyle_fontFamily]: "Raleway",
      [TextStyle_backgroundColor]: null,
      [TextStyle_color]: C95 || CT.C95,
      [TextStyle_inherit]: false
    });
  },
  get C100() {
    return C100 = dart.const({
      __proto__: flexible_space_bar.StretchMode.prototype,
      [_name$]: "StretchMode.zoomBackground",
      index: 0
    });
  },
  get C99() {
    return C99 = dart.constList([C100 || CT.C100], flexible_space_bar.StretchMode);
  },
  get C101() {
    return C101 = dart.const({
      __proto__: flexible_space_bar.CollapseMode.prototype,
      [_name$]: "CollapseMode.parallax",
      index: 0
    });
  },
  get C103() {
    return C103 = dart.const({
      __proto__: proxy_box.DecorationPosition.prototype,
      [_name$0]: "DecorationPosition.background",
      index: 0
    });
  },
  get C105() {
    return C105 = dart.const({
      __proto__: box_border.BoxShape.prototype,
      [_name$1]: "BoxShape.rectangle",
      index: 0
    });
  },
  get C108() {
    return C108 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 1610612736
    });
  },
  get C109() {
    return C109 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 0
    });
  },
  get C107() {
    return C107 = dart.constList([C108 || CT.C108, C109 || CT.C109], ui.Color);
  },
  get C110() {
    return C110 = dart.const({
      __proto__: ui.TileMode.prototype,
      [_name]: "TileMode.clamp",
      index: 0
    });
  },
  get C111() {
    return C111 = dart.const({
      __proto__: alignment.Alignment.prototype,
      [Alignment_y]: -0.2,
      [Alignment_x]: 0
    });
  },
  get C112() {
    return C112 = dart.const({
      __proto__: alignment.Alignment.prototype,
      [Alignment_y]: -1,
      [Alignment_x]: 0
    });
  },
  get C106() {
    return C106 = dart.const({
      __proto__: gradient.LinearGradient.prototype,
      [Gradient_transform]: null,
      [Gradient_stops]: null,
      [Gradient_colors]: C107 || CT.C107,
      [LinearGradient_tileMode]: C110 || CT.C110,
      [LinearGradient_end]: C111 || CT.C111,
      [LinearGradient_begin]: C112 || CT.C112
    });
  },
  get C104() {
    return C104 = dart.const({
      __proto__: box_decoration.BoxDecoration.prototype,
      [BoxDecoration_shape]: C105 || CT.C105,
      [BoxDecoration_backgroundBlendMode]: null,
      [BoxDecoration_gradient]: C106 || CT.C106,
      [BoxDecoration_boxShadow]: null,
      [BoxDecoration_borderRadius]: null,
      [BoxDecoration_border]: null,
      [BoxDecoration_image]: null,
      [BoxDecoration_color]: null
    });
  },
  get C102() {
    return C102 = dart.const({
      __proto__: container.DecoratedBox.prototype,
      [Widget__location]: null,
      [Widget_key]: null,
      [SingleChildRenderObjectWidget_child]: null,
      [DecoratedBox_position]: C103 || CT.C103,
      [DecoratedBox_decoration]: C104 || CT.C104
    });
  },
  get C98() {
    return C98 = dart.const({
      __proto__: flexible_space_bar.FlexibleSpaceBar.prototype,
      [Widget__location]: null,
      [Widget_key]: null,
      [FlexibleSpaceBar_titlePadding]: null,
      [FlexibleSpaceBar_stretchModes]: C99 || CT.C99,
      [FlexibleSpaceBar_collapseMode]: C101 || CT.C101,
      [FlexibleSpaceBar_centerTitle]: null,
      [FlexibleSpaceBar_background]: C102 || CT.C102,
      [FlexibleSpaceBar_title]: null
    });
  },
  get C113() {
    return C113 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 28,
      [EdgeInsets_left]: 0
    });
  },
  get C114() {
    return C114 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 24,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 0
    });
  },
  get C115() {
    return C115 = dart.const({
      __proto__: pesto_demo.PestoStyle.prototype,
      [TextStyle_fontFeatures]: null,
      [TextStyle_shadows]: null,
      [TextStyle_debugLabel]: null,
      [TextStyle_decorationThickness]: null,
      [TextStyle_decorationStyle]: null,
      [TextStyle_decorationColor]: null,
      [TextStyle_decoration]: null,
      [TextStyle_background]: null,
      [TextStyle_foreground]: null,
      [TextStyle_locale]: null,
      [TextStyle_height]: null,
      [TextStyle_textBaseline]: C82 || CT.C82,
      [TextStyle_wordSpacing]: null,
      [TextStyle_letterSpacing]: null,
      [TextStyle_fontStyle]: null,
      [TextStyle_fontWeight]: null,
      [TextStyle_fontSize]: 34,
      [TextStyle__package]: null,
      [TextStyle__fontFamilyFallback]: null,
      [TextStyle_fontFamily]: "Raleway",
      [TextStyle_backgroundColor]: null,
      [TextStyle_color]: C72 || CT.C72,
      [TextStyle_inherit]: false
    });
  },
  get C116() {
    return C116 = dart.const({
      __proto__: pesto_demo.PestoStyle.prototype,
      [TextStyle_fontFeatures]: null,
      [TextStyle_shadows]: null,
      [TextStyle_debugLabel]: null,
      [TextStyle_decorationThickness]: null,
      [TextStyle_decorationStyle]: null,
      [TextStyle_decorationColor]: null,
      [TextStyle_decoration]: null,
      [TextStyle_background]: null,
      [TextStyle_foreground]: null,
      [TextStyle_locale]: null,
      [TextStyle_height]: 1.6,
      [TextStyle_textBaseline]: C82 || CT.C82,
      [TextStyle_wordSpacing]: null,
      [TextStyle_letterSpacing]: null,
      [TextStyle_fontStyle]: null,
      [TextStyle_fontWeight]: null,
      [TextStyle_fontSize]: 15,
      [TextStyle__package]: null,
      [TextStyle__fontFamilyFallback]: null,
      [TextStyle_fontFamily]: "Raleway",
      [TextStyle_backgroundColor]: null,
      [TextStyle_color]: C72 || CT.C72,
      [TextStyle_inherit]: false
    });
  },
  get C118() {
    return C118 = dart.const({
      __proto__: ui.FontWeight.prototype,
      [FontWeight_index]: 6
    });
  },
  get C117() {
    return C117 = dart.const({
      __proto__: pesto_demo.PestoStyle.prototype,
      [TextStyle_fontFeatures]: null,
      [TextStyle_shadows]: null,
      [TextStyle_debugLabel]: null,
      [TextStyle_decorationThickness]: null,
      [TextStyle_decorationStyle]: null,
      [TextStyle_decorationColor]: null,
      [TextStyle_decoration]: null,
      [TextStyle_background]: null,
      [TextStyle_foreground]: null,
      [TextStyle_locale]: null,
      [TextStyle_height]: 1.6,
      [TextStyle_textBaseline]: C82 || CT.C82,
      [TextStyle_wordSpacing]: null,
      [TextStyle_letterSpacing]: null,
      [TextStyle_fontStyle]: null,
      [TextStyle_fontWeight]: C118 || CT.C118,
      [TextStyle_fontSize]: 16,
      [TextStyle__package]: null,
      [TextStyle__fontFamilyFallback]: null,
      [TextStyle_fontFamily]: "Raleway",
      [TextStyle_backgroundColor]: null,
      [TextStyle_color]: C72 || CT.C72,
      [TextStyle_inherit]: false
    });
  },
  get C119() {
    return C119 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 40,
      [EdgeInsets_right]: 16,
      [EdgeInsets_top]: 40,
      [EdgeInsets_left]: 16
    });
  },
  get C121() {
    return C121 = dart.const({
      __proto__: table$.FixedColumnWidth.prototype,
      [FixedColumnWidth_value]: 64
    });
  },
  get C120() {
    return C120 = dart.constMap(core.int, table$.TableColumnWidth, [0, C121 || CT.C121]);
  },
  get C122() {
    return C122 = dart.const({
      __proto__: basic.SizedBox.prototype,
      [Widget__location]: null,
      [Widget_key]: null,
      [SingleChildRenderObjectWidget_child]: null,
      [SizedBox_height]: null,
      [SizedBox_width]: null
    });
  },
  get C123() {
    return C123 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 4,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 8,
      [EdgeInsets_left]: 0
    });
  },
  get C124() {
    return C124 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 4,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 24,
      [EdgeInsets_left]: 0
    });
  },
  get C125() {
    return C125 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 4,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 4,
      [EdgeInsets_left]: 0
    });
  }
}, false);
pesto_demo.PestoDemo = class PestoDemo extends framework.StatelessWidget {
  build(context) {
    return new pesto_demo.PestoHome.new();
  }
};
(pesto_demo.PestoDemo.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  pesto_demo.PestoDemo.__proto__.new.call(this, {key: key});
  ;
}).prototype = pesto_demo.PestoDemo.prototype;
dart.addTypeTests(pesto_demo.PestoDemo);
dart.addTypeCaches(pesto_demo.PestoDemo);
dart.setMethodSignature(pesto_demo.PestoDemo, () => ({
  __proto__: dart.getMethods(pesto_demo.PestoDemo.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(pesto_demo.PestoDemo, L0);
dart.defineLazy(pesto_demo.PestoDemo, {
  /*pesto_demo.PestoDemo.routeName*/get routeName() {
    return "/pesto";
  }
}, true);
var Widget__location = dart.privateName(framework, "Widget._location");
var Widget_key = dart.privateName(framework, "Widget.key");
var RecipeStep_description = dart.privateName(pesto_demo, "RecipeStep.description");
var RecipeStep_duration = dart.privateName(pesto_demo, "RecipeStep.duration");
var C4;
var C5;
var C3;
var Recipe_steps = dart.privateName(pesto_demo, "Recipe.steps");
var RecipeIngredient_description = dart.privateName(pesto_demo, "RecipeIngredient.description");
var RecipeIngredient_amount = dart.privateName(pesto_demo, "RecipeIngredient.amount");
var C7;
var C8;
var C9;
var C10;
var C11;
var C6;
var Recipe_ingredients = dart.privateName(pesto_demo, "Recipe.ingredients");
var Recipe_ingredientsImagePackage = dart.privateName(pesto_demo, "Recipe.ingredientsImagePackage");
var Recipe_ingredientsImagePath = dart.privateName(pesto_demo, "Recipe.ingredientsImagePath");
var Recipe_imagePackage = dart.privateName(pesto_demo, "Recipe.imagePackage");
var Recipe_imagePath = dart.privateName(pesto_demo, "Recipe.imagePath");
var Recipe_description = dart.privateName(pesto_demo, "Recipe.description");
var Recipe_author = dart.privateName(pesto_demo, "Recipe.author");
var Recipe_name = dart.privateName(pesto_demo, "Recipe.name");
var C2;
var C14;
var C13;
var C16;
var C15;
var C12;
var C19;
var C18;
var C21;
var C22;
var C23;
var C24;
var C25;
var C26;
var C27;
var C28;
var C29;
var C30;
var C20;
var C17;
var C33;
var C34;
var C32;
var C36;
var C37;
var C38;
var C39;
var C40;
var C35;
var C31;
var C43;
var C42;
var C45;
var C46;
var C44;
var C41;
var C49;
var C50;
var C51;
var C48;
var C53;
var C54;
var C55;
var C56;
var C57;
var C58;
var C59;
var C52;
var C47;
var C62;
var C63;
var C64;
var C65;
var C61;
var C67;
var C68;
var C69;
var C70;
var C71;
var C66;
var C60;
var C1;
var RecipeGridPage_recipes = dart.privateName(pesto_demo, "RecipeGridPage.recipes");
var C0;
pesto_demo.PestoHome = class PestoHome extends framework.StatelessWidget {
  build(context) {
    return C0 || CT.C0;
  }
};
(pesto_demo.PestoHome.new = function() {
  pesto_demo.PestoHome.__proto__.new.call(this);
  ;
}).prototype = pesto_demo.PestoHome.prototype;
dart.addTypeTests(pesto_demo.PestoHome);
dart.addTypeCaches(pesto_demo.PestoHome);
dart.setMethodSignature(pesto_demo.PestoHome, () => ({
  __proto__: dart.getMethods(pesto_demo.PestoHome.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(pesto_demo.PestoHome, L0);
pesto_demo.PestoFavorites = class PestoFavorites extends framework.StatelessWidget {
  build(context) {
    return new pesto_demo.RecipeGridPage.new({recipes: pesto_demo._favoriteRecipes[$toList]()});
  }
};
(pesto_demo.PestoFavorites.new = function() {
  pesto_demo.PestoFavorites.__proto__.new.call(this);
  ;
}).prototype = pesto_demo.PestoFavorites.prototype;
dart.addTypeTests(pesto_demo.PestoFavorites);
dart.addTypeCaches(pesto_demo.PestoFavorites);
dart.setMethodSignature(pesto_demo.PestoFavorites, () => ({
  __proto__: dart.getMethods(pesto_demo.PestoFavorites.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(pesto_demo.PestoFavorites, L0);
var Color_value = dart.privateName(ui, "Color.value");
var C72;
pesto_demo.PestoStyle = class PestoStyle extends text_style.TextStyle {};
(pesto_demo.PestoStyle.new = function(opts) {
  let fontSize = opts && 'fontSize' in opts ? opts.fontSize : 12;
  let fontWeight = opts && 'fontWeight' in opts ? opts.fontWeight : null;
  let color = opts && 'color' in opts ? opts.color : C72 || CT.C72;
  let letterSpacing = opts && 'letterSpacing' in opts ? opts.letterSpacing : null;
  let height = opts && 'height' in opts ? opts.height : null;
  pesto_demo.PestoStyle.__proto__.new.call(this, {inherit: false, color: color, fontFamily: "Raleway", fontSize: fontSize, fontWeight: fontWeight, textBaseline: ui.TextBaseline.alphabetic, letterSpacing: letterSpacing, height: height});
  ;
}).prototype = pesto_demo.PestoStyle.prototype;
dart.addTypeTests(pesto_demo.PestoStyle);
dart.addTypeCaches(pesto_demo.PestoStyle);
dart.setLibraryUri(pesto_demo.PestoStyle, L0);
pesto_demo.RecipeGridPage = class RecipeGridPage extends framework.StatefulWidget {
  get recipes() {
    return this[recipes$];
  }
  set recipes(value) {
    super.recipes = value;
  }
  createState() {
    return new pesto_demo._RecipeGridPageState.new();
  }
};
(pesto_demo.RecipeGridPage.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let recipes = opts && 'recipes' in opts ? opts.recipes : null;
  this[recipes$] = recipes;
  pesto_demo.RecipeGridPage.__proto__.new.call(this, {key: key});
  ;
}).prototype = pesto_demo.RecipeGridPage.prototype;
dart.addTypeTests(pesto_demo.RecipeGridPage);
dart.addTypeCaches(pesto_demo.RecipeGridPage);
const recipes$ = RecipeGridPage_recipes;
dart.setMethodSignature(pesto_demo.RecipeGridPage, () => ({
  __proto__: dart.getMethods(pesto_demo.RecipeGridPage.__proto__),
  createState: dart.fnType(pesto_demo._RecipeGridPageState, [])
}));
dart.setLibraryUri(pesto_demo.RecipeGridPage, L0);
dart.setFieldSignature(pesto_demo.RecipeGridPage, () => ({
  __proto__: dart.getFields(pesto_demo.RecipeGridPage.__proto__),
  recipes: dart.finalFieldType(core.List$(pesto_demo.Recipe))
}));
var Icon_textDirection = dart.privateName(icon$, "Icon.textDirection");
var Icon_semanticLabel = dart.privateName(icon$, "Icon.semanticLabel");
var Icon_color = dart.privateName(icon$, "Icon.color");
var Icon_size = dart.privateName(icon$, "Icon.size");
var IconData_matchTextDirection = dart.privateName(icon_data, "IconData.matchTextDirection");
var IconData_fontPackage = dart.privateName(icon_data, "IconData.fontPackage");
var IconData_fontFamily = dart.privateName(icon_data, "IconData.fontFamily");
var IconData_codePoint = dart.privateName(icon_data, "IconData.codePoint");
var C74;
var Icon_icon = dart.privateName(icon$, "Icon.icon");
var C73;
var SnackBar_onVisible = dart.privateName(snack_bar, "SnackBar.onVisible");
var SnackBar_animation = dart.privateName(snack_bar, "SnackBar.animation");
var Duration__duration = dart.privateName(core, "Duration._duration");
var C76;
var SnackBar_duration = dart.privateName(snack_bar, "SnackBar.duration");
var SnackBar_action = dart.privateName(snack_bar, "SnackBar.action");
var SnackBar_behavior = dart.privateName(snack_bar, "SnackBar.behavior");
var SnackBar_shape = dart.privateName(snack_bar, "SnackBar.shape");
var SnackBar_elevation = dart.privateName(snack_bar, "SnackBar.elevation");
var SnackBar_backgroundColor = dart.privateName(snack_bar, "SnackBar.backgroundColor");
var Text_textHeightBehavior = dart.privateName(text, "Text.textHeightBehavior");
var Text_textWidthBasis = dart.privateName(text, "Text.textWidthBasis");
var Text_semanticsLabel = dart.privateName(text, "Text.semanticsLabel");
var Text_maxLines = dart.privateName(text, "Text.maxLines");
var Text_textScaleFactor = dart.privateName(text, "Text.textScaleFactor");
var Text_overflow = dart.privateName(text, "Text.overflow");
var Text_softWrap = dart.privateName(text, "Text.softWrap");
var Text_locale = dart.privateName(text, "Text.locale");
var Text_textDirection = dart.privateName(text, "Text.textDirection");
var Text_textAlign = dart.privateName(text, "Text.textAlign");
var Text_strutStyle = dart.privateName(text, "Text.strutStyle");
var Text_style = dart.privateName(text, "Text.style");
var Text_textSpan = dart.privateName(text, "Text.textSpan");
var Text_data = dart.privateName(text, "Text.data");
var C77;
var SnackBar_content = dart.privateName(snack_bar, "SnackBar.content");
var C75;
var _buildBody = dart.privateName(pesto_demo, "_buildBody");
var SliverGridDelegateWithMaxCrossAxisExtent_childAspectRatio = dart.privateName(sliver_grid, "SliverGridDelegateWithMaxCrossAxisExtent.childAspectRatio");
var SliverGridDelegateWithMaxCrossAxisExtent_crossAxisSpacing = dart.privateName(sliver_grid, "SliverGridDelegateWithMaxCrossAxisExtent.crossAxisSpacing");
var SliverGridDelegateWithMaxCrossAxisExtent_mainAxisSpacing = dart.privateName(sliver_grid, "SliverGridDelegateWithMaxCrossAxisExtent.mainAxisSpacing");
var SliverGridDelegateWithMaxCrossAxisExtent_maxCrossAxisExtent = dart.privateName(sliver_grid, "SliverGridDelegateWithMaxCrossAxisExtent.maxCrossAxisExtent");
var C78;
var RouteSettings_arguments = dart.privateName(navigator, "RouteSettings.arguments");
var RouteSettings_name = dart.privateName(navigator, "RouteSettings.name");
var C79;
var C80;
pesto_demo._RecipeGridPageState = class _RecipeGridPageState extends framework.State$(pesto_demo.RecipeGridPage) {
  build(context) {
    let statusBarHeight = media_query.MediaQuery.of(context).padding.top;
    return new theme.Theme.new({data: pesto_demo._kTheme.copyWith({platform: theme.Theme.of(context).platform}), child: new scaffold.Scaffold.new({appBar: new app_bar.AppBar.new({title: new text.Text.new("Pesto Demo")}), key: this.scaffoldKey, floatingActionButton: new floating_action_button.FloatingActionButton.new({child: C73 || CT.C73, onPressed: dart.fn(() => {
            this.scaffoldKey.currentState.showSnackBar(C75 || CT.C75);
          }, VoidToNull())}), body: new scroll_view.CustomScrollView.new({semanticChildCount: this.widget.recipes[$length], slivers: JSArrayOfWidget().of([this[_buildBody](context, statusBarHeight)])})})});
  }
  [_buildBody](context, statusBarHeight) {
    let mediaPadding = media_query.MediaQuery.of(context).padding;
    let padding = new edge_insets.EdgeInsets.only({top: 8.0, left: 8.0 + dart.notNull(mediaPadding.left), right: 8.0 + dart.notNull(mediaPadding.right), bottom: 8.0});
    return new basic.SliverPadding.new({padding: padding, sliver: new sliver.SliverGrid.new({gridDelegate: C78 || CT.C78, delegate: new sliver.SliverChildBuilderDelegate.new(dart.fn((context, index) => {
          let recipe = this.widget.recipes[$_get](index);
          return new pesto_demo.RecipeCard.new({recipe: recipe, onTap: dart.fn(() => {
              this.showRecipePage(context, recipe);
            }, VoidToNull())});
        }, BuildContextAndintToRecipeCard()), {childCount: this.widget.recipes[$length]})})});
  }
  showFavoritesPage(context) {
    navigator.Navigator.push(dart.void, context, new (MaterialPageRouteOfvoid()).new({settings: C79 || CT.C79, builder: dart.fn(context => new pesto_demo.PestoFavorites.new(), BuildContextToPestoFavorites())}));
  }
  showRecipePage(context, recipe) {
    navigator.Navigator.push(dart.void, context, new (MaterialPageRouteOfvoid()).new({settings: C80 || CT.C80, builder: dart.fn(context => new theme.Theme.new({data: pesto_demo._kTheme.copyWith({platform: theme.Theme.of(context).platform}), child: new pesto_demo.RecipePage.new({recipe: recipe})}), BuildContextToTheme())}));
  }
};
(pesto_demo._RecipeGridPageState.new = function() {
  this.scaffoldKey = GlobalKeyOfScaffoldState().new();
  pesto_demo._RecipeGridPageState.__proto__.new.call(this);
  ;
}).prototype = pesto_demo._RecipeGridPageState.prototype;
dart.addTypeTests(pesto_demo._RecipeGridPageState);
dart.addTypeCaches(pesto_demo._RecipeGridPageState);
dart.setMethodSignature(pesto_demo._RecipeGridPageState, () => ({
  __proto__: dart.getMethods(pesto_demo._RecipeGridPageState.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext]),
  [_buildBody]: dart.fnType(framework.Widget, [framework.BuildContext, core.double]),
  showFavoritesPage: dart.fnType(dart.void, [framework.BuildContext]),
  showRecipePage: dart.fnType(dart.void, [framework.BuildContext, pesto_demo.Recipe])
}));
dart.setLibraryUri(pesto_demo._RecipeGridPageState, L0);
dart.setFieldSignature(pesto_demo._RecipeGridPageState, () => ({
  __proto__: dart.getFields(pesto_demo._RecipeGridPageState.__proto__),
  scaffoldKey: dart.finalFieldType(framework.GlobalKey$(scaffold.ScaffoldState))
}));
var height$ = dart.privateName(pesto_demo, "PestoLogo.height");
var t$ = dart.privateName(pesto_demo, "PestoLogo.t");
pesto_demo.PestoLogo = class PestoLogo extends framework.StatefulWidget {
  get height() {
    return this[height$];
  }
  set height(value) {
    super.height = value;
  }
  get t() {
    return this[t$];
  }
  set t(value) {
    super.t = value;
  }
  createState() {
    return new pesto_demo._PestoLogoState.new();
  }
};
(pesto_demo.PestoLogo.new = function(opts) {
  let height = opts && 'height' in opts ? opts.height : null;
  let t = opts && 't' in opts ? opts.t : null;
  this[height$] = height;
  this[t$] = t;
  pesto_demo.PestoLogo.__proto__.new.call(this);
  ;
}).prototype = pesto_demo.PestoLogo.prototype;
dart.addTypeTests(pesto_demo.PestoLogo);
dart.addTypeCaches(pesto_demo.PestoLogo);
dart.setMethodSignature(pesto_demo.PestoLogo, () => ({
  __proto__: dart.getMethods(pesto_demo.PestoLogo.__proto__),
  createState: dart.fnType(pesto_demo._PestoLogoState, [])
}));
dart.setLibraryUri(pesto_demo.PestoLogo, L0);
dart.setFieldSignature(pesto_demo.PestoLogo, () => ({
  __proto__: dart.getFields(pesto_demo.PestoLogo.__proto__),
  height: dart.finalFieldType(core.double),
  t: dart.finalFieldType(core.double)
}));
var TextStyle_fontFeatures = dart.privateName(text_style, "TextStyle.fontFeatures");
var TextStyle_shadows = dart.privateName(text_style, "TextStyle.shadows");
var TextStyle_debugLabel = dart.privateName(text_style, "TextStyle.debugLabel");
var TextStyle_decorationThickness = dart.privateName(text_style, "TextStyle.decorationThickness");
var TextStyle_decorationStyle = dart.privateName(text_style, "TextStyle.decorationStyle");
var TextStyle_decorationColor = dart.privateName(text_style, "TextStyle.decorationColor");
var TextStyle_decoration = dart.privateName(text_style, "TextStyle.decoration");
var TextStyle_background = dart.privateName(text_style, "TextStyle.background");
var TextStyle_foreground = dart.privateName(text_style, "TextStyle.foreground");
var TextStyle_locale = dart.privateName(text_style, "TextStyle.locale");
var TextStyle_height = dart.privateName(text_style, "TextStyle.height");
var _name = dart.privateName(ui, "_name");
var C82;
var TextStyle_textBaseline = dart.privateName(text_style, "TextStyle.textBaseline");
var TextStyle_wordSpacing = dart.privateName(text_style, "TextStyle.wordSpacing");
var TextStyle_letterSpacing = dart.privateName(text_style, "TextStyle.letterSpacing");
var TextStyle_fontStyle = dart.privateName(text_style, "TextStyle.fontStyle");
var FontWeight_index = dart.privateName(ui, "FontWeight.index");
var C83;
var TextStyle_fontWeight = dart.privateName(text_style, "TextStyle.fontWeight");
var TextStyle_fontSize = dart.privateName(text_style, "TextStyle.fontSize");
var TextStyle__package = dart.privateName(text_style, "TextStyle._package");
var TextStyle__fontFamilyFallback = dart.privateName(text_style, "TextStyle._fontFamilyFallback");
var TextStyle_fontFamily = dart.privateName(text_style, "TextStyle.fontFamily");
var TextStyle_backgroundColor = dart.privateName(text_style, "TextStyle.backgroundColor");
var C84;
var TextStyle_color = dart.privateName(text_style, "TextStyle.color");
var TextStyle_inherit = dart.privateName(text_style, "TextStyle.inherit");
var C81;
var _textRectTween = dart.privateName(pesto_demo, "_textRectTween");
var Rect_bottom = dart.privateName(ui, "Rect.bottom");
var Rect_right = dart.privateName(ui, "Rect.right");
var Rect_top = dart.privateName(ui, "Rect.top");
var Rect_left = dart.privateName(ui, "Rect.left");
var C85;
var C86;
var _textOpacity = dart.privateName(pesto_demo, "_textOpacity");
var Cubic_d = dart.privateName(curves, "Cubic.d");
var Cubic_c = dart.privateName(curves, "Cubic.c");
var Cubic_b = dart.privateName(curves, "Cubic.b");
var Cubic_a = dart.privateName(curves, "Cubic.a");
var C88;
var Interval_curve = dart.privateName(curves, "Interval.curve");
var Interval_end = dart.privateName(curves, "Interval.end");
var Interval_begin = dart.privateName(curves, "Interval.begin");
var C87;
var _imageRectTween = dart.privateName(pesto_demo, "_imageRectTween");
var C89;
var C90;
pesto_demo._PestoLogoState = class _PestoLogoState extends framework.State$(pesto_demo.PestoLogo) {
  build(context) {
    let t0;
    return new basic.Semantics.new({namesRoute: true, child: new basic.Transform.new({transform: (t0 = vector_math_64.Matrix4.identity(), t0.scale(dart.notNull(this.widget.height) / 162), t0), alignment: alignment.Alignment.topCenter, child: new basic.SizedBox.new({width: 220, child: new basic.Stack.new({overflow: stack.Overflow.visible, children: JSArrayOfWidget().of([new basic.Positioned.fromRect({rect: this[_imageRectTween].lerp(this.widget.t), child: new image.Image.asset("logos/pesto/logo_small.png", {package: "flutter_gallery_assets", fit: box_fit.BoxFit.contain})}), new basic.Positioned.fromRect({rect: this[_textRectTween].lerp(this.widget.t), child: new basic.Opacity.new({opacity: this[_textOpacity].transform(this.widget.t), child: new text.Text.new("PESTO", {style: this.titleStyle, textAlign: ui.TextAlign.center})})})])})})})});
  }
};
(pesto_demo._PestoLogoState.new = function() {
  this.titleStyle = C81 || CT.C81;
  this[_textRectTween] = new tween.RectTween.new({begin: C85 || CT.C85, end: C86 || CT.C86});
  this[_textOpacity] = C87 || CT.C87;
  this[_imageRectTween] = new tween.RectTween.new({begin: C89 || CT.C89, end: C90 || CT.C90});
  pesto_demo._PestoLogoState.__proto__.new.call(this);
  ;
}).prototype = pesto_demo._PestoLogoState.prototype;
dart.addTypeTests(pesto_demo._PestoLogoState);
dart.addTypeCaches(pesto_demo._PestoLogoState);
dart.setMethodSignature(pesto_demo._PestoLogoState, () => ({
  __proto__: dart.getMethods(pesto_demo._PestoLogoState.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setLibraryUri(pesto_demo._PestoLogoState, L0);
dart.setFieldSignature(pesto_demo._PestoLogoState, () => ({
  __proto__: dart.getFields(pesto_demo._PestoLogoState.__proto__),
  titleStyle: dart.finalFieldType(text_style.TextStyle),
  [_textRectTween]: dart.finalFieldType(tween.RectTween),
  [_textOpacity]: dart.finalFieldType(curves.Curve),
  [_imageRectTween]: dart.finalFieldType(tween.RectTween)
}));
dart.defineLazy(pesto_demo._PestoLogoState, {
  /*pesto_demo._PestoLogoState.kLogoHeight*/get kLogoHeight() {
    return 162;
  },
  /*pesto_demo._PestoLogoState.kLogoWidth*/get kLogoWidth() {
    return 220;
  },
  /*pesto_demo._PestoLogoState.kImageHeight*/get kImageHeight() {
    return 108;
  },
  /*pesto_demo._PestoLogoState.kTextHeight*/get kTextHeight() {
    return 48;
  }
}, true);
var C92;
var C91;
var C94;
var C95;
var C93;
var EdgeInsets_bottom = dart.privateName(edge_insets, "EdgeInsets.bottom");
var EdgeInsets_right = dart.privateName(edge_insets, "EdgeInsets.right");
var EdgeInsets_top = dart.privateName(edge_insets, "EdgeInsets.top");
var EdgeInsets_left = dart.privateName(edge_insets, "EdgeInsets.left");
var C96;
var recipe$ = dart.privateName(pesto_demo, "RecipeCard.recipe");
var onTap$ = dart.privateName(pesto_demo, "RecipeCard.onTap");
pesto_demo.RecipeCard = class RecipeCard extends framework.StatelessWidget {
  get recipe() {
    return this[recipe$];
  }
  set recipe(value) {
    super.recipe = value;
  }
  get onTap() {
    return this[onTap$];
  }
  set onTap(value) {
    super.onTap = value;
  }
  get titleStyle() {
    return C91 || CT.C91;
  }
  get authorStyle() {
    return C93 || CT.C93;
  }
  build(context) {
    return new gesture_detector.GestureDetector.new({onTap: this.onTap, child: new card.Card.new({child: new basic.Column.new({crossAxisAlignment: flex.CrossAxisAlignment.start, children: JSArrayOfWidget().of([new heroes.Hero.new({tag: "packages/" + "flutter_gallery_assets" + "/" + dart.str(this.recipe.imagePath), child: new basic.AspectRatio.new({aspectRatio: 4.0 / 3.0, child: new image.Image.asset(this.recipe.imagePath, {package: this.recipe.imagePackage, fit: box_fit.BoxFit.cover, semanticLabel: this.recipe.name})})}), new basic.Expanded.new({child: new basic.Row.new({children: JSArrayOfWidget().of([new basic.Padding.new({padding: C96 || CT.C96, child: new image.Image.asset(this.recipe.ingredientsImagePath, {package: this.recipe.ingredientsImagePackage, width: 48.0, height: 48.0})}), new basic.Expanded.new({child: new basic.Column.new({crossAxisAlignment: flex.CrossAxisAlignment.start, mainAxisAlignment: flex.MainAxisAlignment.center, children: JSArrayOfWidget().of([new text.Text.new(this.recipe.name, {style: this.titleStyle, softWrap: false, overflow: paragraph.TextOverflow.ellipsis}), new text.Text.new(this.recipe.author, {style: this.authorStyle})])})})])})})])})})});
  }
};
(pesto_demo.RecipeCard.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let recipe = opts && 'recipe' in opts ? opts.recipe : null;
  let onTap = opts && 'onTap' in opts ? opts.onTap : null;
  this[recipe$] = recipe;
  this[onTap$] = onTap;
  pesto_demo.RecipeCard.__proto__.new.call(this, {key: key});
  ;
}).prototype = pesto_demo.RecipeCard.prototype;
dart.addTypeTests(pesto_demo.RecipeCard);
dart.addTypeCaches(pesto_demo.RecipeCard);
dart.setMethodSignature(pesto_demo.RecipeCard, () => ({
  __proto__: dart.getMethods(pesto_demo.RecipeCard.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext])
}));
dart.setGetterSignature(pesto_demo.RecipeCard, () => ({
  __proto__: dart.getGetters(pesto_demo.RecipeCard.__proto__),
  titleStyle: text_style.TextStyle,
  authorStyle: text_style.TextStyle
}));
dart.setLibraryUri(pesto_demo.RecipeCard, L0);
dart.setFieldSignature(pesto_demo.RecipeCard, () => ({
  __proto__: dart.getFields(pesto_demo.RecipeCard.__proto__),
  recipe: dart.finalFieldType(pesto_demo.Recipe),
  onTap: dart.finalFieldType(dart.fnType(dart.void, []))
}));
var recipe$0 = dart.privateName(pesto_demo, "RecipePage.recipe");
pesto_demo.RecipePage = class RecipePage extends framework.StatefulWidget {
  get recipe() {
    return this[recipe$0];
  }
  set recipe(value) {
    super.recipe = value;
  }
  createState() {
    return new pesto_demo._RecipePageState.new();
  }
};
(pesto_demo.RecipePage.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let recipe = opts && 'recipe' in opts ? opts.recipe : null;
  this[recipe$0] = recipe;
  pesto_demo.RecipePage.__proto__.new.call(this, {key: key});
  ;
}).prototype = pesto_demo.RecipePage.prototype;
dart.addTypeTests(pesto_demo.RecipePage);
dart.addTypeCaches(pesto_demo.RecipePage);
dart.setMethodSignature(pesto_demo.RecipePage, () => ({
  __proto__: dart.getMethods(pesto_demo.RecipePage.__proto__),
  createState: dart.fnType(pesto_demo._RecipePageState, [])
}));
dart.setLibraryUri(pesto_demo.RecipePage, L0);
dart.setFieldSignature(pesto_demo.RecipePage, () => ({
  __proto__: dart.getFields(pesto_demo.RecipePage.__proto__),
  recipe: dart.finalFieldType(pesto_demo.Recipe)
}));
var _scaffoldKey = dart.privateName(pesto_demo, "_scaffoldKey");
var C97;
var _getAppBarHeight = dart.privateName(pesto_demo, "_getAppBarHeight");
var _buildMenuItem = dart.privateName(pesto_demo, "_buildMenuItem");
var FlexibleSpaceBar_titlePadding = dart.privateName(flexible_space_bar, "FlexibleSpaceBar.titlePadding");
var _name$ = dart.privateName(flexible_space_bar, "_name");
var C100;
var C99;
var FlexibleSpaceBar_stretchModes = dart.privateName(flexible_space_bar, "FlexibleSpaceBar.stretchModes");
var C101;
var FlexibleSpaceBar_collapseMode = dart.privateName(flexible_space_bar, "FlexibleSpaceBar.collapseMode");
var FlexibleSpaceBar_centerTitle = dart.privateName(flexible_space_bar, "FlexibleSpaceBar.centerTitle");
var SingleChildRenderObjectWidget_child = dart.privateName(framework, "SingleChildRenderObjectWidget.child");
var _name$0 = dart.privateName(proxy_box, "_name");
var C103;
var DecoratedBox_position = dart.privateName(container, "DecoratedBox.position");
var _name$1 = dart.privateName(box_border, "_name");
var C105;
var BoxDecoration_shape = dart.privateName(box_decoration, "BoxDecoration.shape");
var BoxDecoration_backgroundBlendMode = dart.privateName(box_decoration, "BoxDecoration.backgroundBlendMode");
var Gradient_transform = dart.privateName(gradient, "Gradient.transform");
var Gradient_stops = dart.privateName(gradient, "Gradient.stops");
var C108;
var C109;
var C107;
var Gradient_colors = dart.privateName(gradient, "Gradient.colors");
var C110;
var LinearGradient_tileMode = dart.privateName(gradient, "LinearGradient.tileMode");
var Alignment_y = dart.privateName(alignment, "Alignment.y");
var Alignment_x = dart.privateName(alignment, "Alignment.x");
var C111;
var LinearGradient_end = dart.privateName(gradient, "LinearGradient.end");
var C112;
var LinearGradient_begin = dart.privateName(gradient, "LinearGradient.begin");
var C106;
var BoxDecoration_gradient = dart.privateName(box_decoration, "BoxDecoration.gradient");
var BoxDecoration_boxShadow = dart.privateName(box_decoration, "BoxDecoration.boxShadow");
var BoxDecoration_borderRadius = dart.privateName(box_decoration, "BoxDecoration.borderRadius");
var BoxDecoration_border = dart.privateName(box_decoration, "BoxDecoration.border");
var BoxDecoration_image = dart.privateName(box_decoration, "BoxDecoration.image");
var BoxDecoration_color = dart.privateName(box_decoration, "BoxDecoration.color");
var C104;
var DecoratedBox_decoration = dart.privateName(container, "DecoratedBox.decoration");
var C102;
var FlexibleSpaceBar_background = dart.privateName(flexible_space_bar, "FlexibleSpaceBar.background");
var FlexibleSpaceBar_title = dart.privateName(flexible_space_bar, "FlexibleSpaceBar.title");
var C98;
var C113;
var _toggleFavorite = dart.privateName(pesto_demo, "_toggleFavorite");
var C114;
pesto_demo._RecipePageState = class _RecipePageState extends framework.State$(pesto_demo.RecipePage) {
  [_getAppBarHeight](context) {
    return dart.notNull(media_query.MediaQuery.of(context).size.height) * 0.3;
  }
  build(context) {
    let appBarHeight = this[_getAppBarHeight](context);
    let screenSize = media_query.MediaQuery.of(context).size;
    let fullWidth = dart.notNull(screenSize.width) < 500;
    let isFavorite = pesto_demo._favoriteRecipes.contains(this.widget.recipe);
    return new scaffold.Scaffold.new({key: this[_scaffoldKey], body: new basic.Stack.new({children: JSArrayOfWidget().of([new basic.Positioned.new({top: 0.0, left: 0.0, right: 0.0, height: dart.notNull(appBarHeight) + 28, child: new heroes.Hero.new({tag: "packages/" + "flutter_gallery_assets" + "/" + dart.str(this.widget.recipe.imagePath), child: new image.Image.asset(this.widget.recipe.imagePath, {package: this.widget.recipe.imagePackage, fit: fullWidth ? box_fit.BoxFit.fitWidth : box_fit.BoxFit.cover})})}), new scroll_view.CustomScrollView.new({slivers: JSArrayOfWidget().of([new app_bar.SliverAppBar.new({expandedHeight: dart.notNull(appBarHeight) - 28, backgroundColor: colors.Colors.transparent, actions: JSArrayOfWidget().of([new (PopupMenuButtonOfString()).new({onSelected: dart.fn(item => {
                    }, StringToNull()), itemBuilder: dart.fn(context => JSArrayOfPopupMenuItemOfString().of([this[_buildMenuItem](icons.Icons.share, "Tweet recipe"), this[_buildMenuItem](icons.Icons.email, "Email recipe"), this[_buildMenuItem](icons.Icons.message, "Message recipe"), this[_buildMenuItem](icons.Icons.people, "Share on Facebook")]), BuildContextToListOfPopupMenuItemOfString())})]), flexibleSpace: C98 || CT.C98}), new basic.SliverToBoxAdapter.new({child: new basic.Stack.new({children: JSArrayOfWidget().of([new container.Container.new({padding: C113 || CT.C113, width: fullWidth ? null : 500, child: new pesto_demo.RecipeSheet.new({recipe: this.widget.recipe})}), new basic.Positioned.new({right: 16.0, child: new floating_action_button.FloatingActionButton.new({child: new icon$.Icon.new(dart.test(isFavorite) ? icons.Icons.favorite : icons.Icons.favorite_border), onPressed: dart.bind(this, _toggleFavorite)})})])})})])})])})});
  }
  [_buildMenuItem](icon, label) {
    return new (PopupMenuItemOfString()).new({child: new basic.Row.new({children: JSArrayOfWidget().of([new basic.Padding.new({padding: C114 || CT.C114, child: new icon$.Icon.new(icon, {color: colors.Colors.black54})}), new text.Text.new(label, {style: this.menuItemStyle})])})});
  }
  [_toggleFavorite]() {
    this.setState(dart.fn(() => {
      if (dart.test(pesto_demo._favoriteRecipes.contains(this.widget.recipe)))
        pesto_demo._favoriteRecipes.remove(this.widget.recipe);
      else
        pesto_demo._favoriteRecipes.add(this.widget.recipe);
    }, VoidToNull()));
  }
};
(pesto_demo._RecipePageState.new = function() {
  this[_scaffoldKey] = GlobalKeyOfScaffoldState().new();
  this.menuItemStyle = C97 || CT.C97;
  pesto_demo._RecipePageState.__proto__.new.call(this);
  ;
}).prototype = pesto_demo._RecipePageState.prototype;
dart.addTypeTests(pesto_demo._RecipePageState);
dart.addTypeCaches(pesto_demo._RecipePageState);
dart.setMethodSignature(pesto_demo._RecipePageState, () => ({
  __proto__: dart.getMethods(pesto_demo._RecipePageState.__proto__),
  [_getAppBarHeight]: dart.fnType(core.double, [framework.BuildContext]),
  build: dart.fnType(framework.Widget, [framework.BuildContext]),
  [_buildMenuItem]: dart.fnType(popup_menu.PopupMenuItem$(core.String), [icon_data.IconData, core.String]),
  [_toggleFavorite]: dart.fnType(dart.void, [])
}));
dart.setLibraryUri(pesto_demo._RecipePageState, L0);
dart.setFieldSignature(pesto_demo._RecipePageState, () => ({
  __proto__: dart.getFields(pesto_demo._RecipePageState.__proto__),
  [_scaffoldKey]: dart.finalFieldType(framework.GlobalKey$(scaffold.ScaffoldState)),
  menuItemStyle: dart.finalFieldType(text_style.TextStyle)
}));
var C115;
var C116;
var C118;
var C117;
var C119;
var FixedColumnWidth_value = dart.privateName(table$, "FixedColumnWidth.value");
var C121;
var C120;
var SizedBox_height = dart.privateName(basic, "SizedBox.height");
var SizedBox_width = dart.privateName(basic, "SizedBox.width");
var C122;
var C123;
var C124;
var _buildItemRow = dart.privateName(pesto_demo, "_buildItemRow");
var C125;
var titleStyle = dart.privateName(pesto_demo, "RecipeSheet.titleStyle");
var descriptionStyle = dart.privateName(pesto_demo, "RecipeSheet.descriptionStyle");
var itemStyle = dart.privateName(pesto_demo, "RecipeSheet.itemStyle");
var itemAmountStyle = dart.privateName(pesto_demo, "RecipeSheet.itemAmountStyle");
var headingStyle = dart.privateName(pesto_demo, "RecipeSheet.headingStyle");
var recipe$1 = dart.privateName(pesto_demo, "RecipeSheet.recipe");
pesto_demo.RecipeSheet = class RecipeSheet extends framework.StatelessWidget {
  get titleStyle() {
    return this[titleStyle];
  }
  set titleStyle(value) {
    super.titleStyle = value;
  }
  get descriptionStyle() {
    return this[descriptionStyle];
  }
  set descriptionStyle(value) {
    super.descriptionStyle = value;
  }
  get itemStyle() {
    return this[itemStyle];
  }
  set itemStyle(value) {
    super.itemStyle = value;
  }
  get itemAmountStyle() {
    return this[itemAmountStyle];
  }
  set itemAmountStyle(value) {
    super.itemAmountStyle = value;
  }
  get headingStyle() {
    return this[headingStyle];
  }
  set headingStyle(value) {
    super.headingStyle = value;
  }
  get recipe() {
    return this[recipe$1];
  }
  set recipe(value) {
    super.recipe = value;
  }
  build(context) {
    let t0;
    return new material.Material.new({child: new safe_area.SafeArea.new({top: false, bottom: false, child: new basic.Padding.new({padding: C119 || CT.C119, child: new table.Table.new({columnWidths: C120 || CT.C120, children: (t0 = JSArrayOfTableRow().of([new table.TableRow.new({children: JSArrayOfWidget().of([new table.TableCell.new({verticalAlignment: table$.TableCellVerticalAlignment.middle, child: new image.Image.asset(this.recipe.ingredientsImagePath, {package: this.recipe.ingredientsImagePackage, width: 32.0, height: 32.0, alignment: alignment.Alignment.centerLeft, fit: box_fit.BoxFit.scaleDown})}), new table.TableCell.new({verticalAlignment: table$.TableCellVerticalAlignment.middle, child: new text.Text.new(this.recipe.name, {style: this.titleStyle})})])}), new table.TableRow.new({children: JSArrayOfWidget().of([C122 || CT.C122, new basic.Padding.new({padding: C123 || CT.C123, child: new text.Text.new(this.recipe.description, {style: this.descriptionStyle})})])}), new table.TableRow.new({children: JSArrayOfWidget().of([C122 || CT.C122, new basic.Padding.new({padding: C124 || CT.C124, child: new text.Text.new("Ingredients", {style: this.headingStyle})})])})]), t0[$addAll](this.recipe.ingredients[$map](table.TableRow, dart.fn(ingredient => this[_buildItemRow](ingredient.amount, ingredient.description), RecipeIngredientToTableRow()))), t0[$add](new table.TableRow.new({children: JSArrayOfWidget().of([C122 || CT.C122, new basic.Padding.new({padding: C124 || CT.C124, child: new text.Text.new("Steps", {style: this.headingStyle})})])})), t0[$addAll](this.recipe.steps[$map](table.TableRow, dart.fn(step => {
              let t1;
              return this[_buildItemRow]((t1 = step.duration, t1 == null ? "" : t1), step.description);
            }, RecipeStepToTableRow()))), t0)})})})});
  }
  [_buildItemRow](left, right) {
    return new table.TableRow.new({children: JSArrayOfWidget().of([new basic.Padding.new({padding: C125 || CT.C125, child: new text.Text.new(left, {style: this.itemAmountStyle})}), new basic.Padding.new({padding: C125 || CT.C125, child: new text.Text.new(right, {style: this.itemStyle})})])});
  }
};
(pesto_demo.RecipeSheet.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let recipe = opts && 'recipe' in opts ? opts.recipe : null;
  this[titleStyle] = C115 || CT.C115;
  this[descriptionStyle] = C97 || CT.C97;
  this[itemStyle] = C116 || CT.C116;
  this[itemAmountStyle] = new pesto_demo.PestoStyle.new({fontSize: 15.0, color: pesto_demo._kTheme.primaryColor, height: 24.0 / 15.0});
  this[headingStyle] = C117 || CT.C117;
  this[recipe$1] = recipe;
  pesto_demo.RecipeSheet.__proto__.new.call(this, {key: key});
  ;
}).prototype = pesto_demo.RecipeSheet.prototype;
dart.addTypeTests(pesto_demo.RecipeSheet);
dart.addTypeCaches(pesto_demo.RecipeSheet);
dart.setMethodSignature(pesto_demo.RecipeSheet, () => ({
  __proto__: dart.getMethods(pesto_demo.RecipeSheet.__proto__),
  build: dart.fnType(framework.Widget, [framework.BuildContext]),
  [_buildItemRow]: dart.fnType(table.TableRow, [core.String, core.String])
}));
dart.setLibraryUri(pesto_demo.RecipeSheet, L0);
dart.setFieldSignature(pesto_demo.RecipeSheet, () => ({
  __proto__: dart.getFields(pesto_demo.RecipeSheet.__proto__),
  titleStyle: dart.finalFieldType(text_style.TextStyle),
  descriptionStyle: dart.finalFieldType(text_style.TextStyle),
  itemStyle: dart.finalFieldType(text_style.TextStyle),
  itemAmountStyle: dart.finalFieldType(text_style.TextStyle),
  headingStyle: dart.finalFieldType(text_style.TextStyle),
  recipe: dart.finalFieldType(pesto_demo.Recipe)
}));
pesto_demo.Recipe = class Recipe extends core.Object {
  get name() {
    return this[name$];
  }
  set name(value) {
    super.name = value;
  }
  get author() {
    return this[author$];
  }
  set author(value) {
    super.author = value;
  }
  get description() {
    return this[description$];
  }
  set description(value) {
    super.description = value;
  }
  get imagePath() {
    return this[imagePath$];
  }
  set imagePath(value) {
    super.imagePath = value;
  }
  get imagePackage() {
    return this[imagePackage$];
  }
  set imagePackage(value) {
    super.imagePackage = value;
  }
  get ingredientsImagePath() {
    return this[ingredientsImagePath$];
  }
  set ingredientsImagePath(value) {
    super.ingredientsImagePath = value;
  }
  get ingredientsImagePackage() {
    return this[ingredientsImagePackage$];
  }
  set ingredientsImagePackage(value) {
    super.ingredientsImagePackage = value;
  }
  get ingredients() {
    return this[ingredients$];
  }
  set ingredients(value) {
    super.ingredients = value;
  }
  get steps() {
    return this[steps$];
  }
  set steps(value) {
    super.steps = value;
  }
};
(pesto_demo.Recipe.new = function(opts) {
  let name = opts && 'name' in opts ? opts.name : null;
  let author = opts && 'author' in opts ? opts.author : null;
  let description = opts && 'description' in opts ? opts.description : null;
  let imagePath = opts && 'imagePath' in opts ? opts.imagePath : null;
  let imagePackage = opts && 'imagePackage' in opts ? opts.imagePackage : null;
  let ingredientsImagePath = opts && 'ingredientsImagePath' in opts ? opts.ingredientsImagePath : null;
  let ingredientsImagePackage = opts && 'ingredientsImagePackage' in opts ? opts.ingredientsImagePackage : null;
  let ingredients = opts && 'ingredients' in opts ? opts.ingredients : null;
  let steps = opts && 'steps' in opts ? opts.steps : null;
  this[name$] = name;
  this[author$] = author;
  this[description$] = description;
  this[imagePath$] = imagePath;
  this[imagePackage$] = imagePackage;
  this[ingredientsImagePath$] = ingredientsImagePath;
  this[ingredientsImagePackage$] = ingredientsImagePackage;
  this[ingredients$] = ingredients;
  this[steps$] = steps;
  ;
}).prototype = pesto_demo.Recipe.prototype;
dart.addTypeTests(pesto_demo.Recipe);
dart.addTypeCaches(pesto_demo.Recipe);
const name$ = Recipe_name;
const author$ = Recipe_author;
const description$ = Recipe_description;
const imagePath$ = Recipe_imagePath;
const imagePackage$ = Recipe_imagePackage;
const ingredientsImagePath$ = Recipe_ingredientsImagePath;
const ingredientsImagePackage$ = Recipe_ingredientsImagePackage;
const ingredients$ = Recipe_ingredients;
const steps$ = Recipe_steps;
dart.setLibraryUri(pesto_demo.Recipe, L0);
dart.setFieldSignature(pesto_demo.Recipe, () => ({
  __proto__: dart.getFields(pesto_demo.Recipe.__proto__),
  name: dart.finalFieldType(core.String),
  author: dart.finalFieldType(core.String),
  description: dart.finalFieldType(core.String),
  imagePath: dart.finalFieldType(core.String),
  imagePackage: dart.finalFieldType(core.String),
  ingredientsImagePath: dart.finalFieldType(core.String),
  ingredientsImagePackage: dart.finalFieldType(core.String),
  ingredients: dart.finalFieldType(core.List$(pesto_demo.RecipeIngredient)),
  steps: dart.finalFieldType(core.List$(pesto_demo.RecipeStep))
}));
pesto_demo.RecipeIngredient = class RecipeIngredient extends core.Object {
  get amount() {
    return this[amount$];
  }
  set amount(value) {
    super.amount = value;
  }
  get description() {
    return this[description$0];
  }
  set description(value) {
    super.description = value;
  }
};
(pesto_demo.RecipeIngredient.new = function(opts) {
  let amount = opts && 'amount' in opts ? opts.amount : null;
  let description = opts && 'description' in opts ? opts.description : null;
  this[amount$] = amount;
  this[description$0] = description;
  ;
}).prototype = pesto_demo.RecipeIngredient.prototype;
dart.addTypeTests(pesto_demo.RecipeIngredient);
dart.addTypeCaches(pesto_demo.RecipeIngredient);
const amount$ = RecipeIngredient_amount;
const description$0 = RecipeIngredient_description;
dart.setLibraryUri(pesto_demo.RecipeIngredient, L0);
dart.setFieldSignature(pesto_demo.RecipeIngredient, () => ({
  __proto__: dart.getFields(pesto_demo.RecipeIngredient.__proto__),
  amount: dart.finalFieldType(core.String),
  description: dart.finalFieldType(core.String)
}));
pesto_demo.RecipeStep = class RecipeStep extends core.Object {
  get duration() {
    return this[duration$];
  }
  set duration(value) {
    super.duration = value;
  }
  get description() {
    return this[description$1];
  }
  set description(value) {
    super.description = value;
  }
};
(pesto_demo.RecipeStep.new = function(opts) {
  let duration = opts && 'duration' in opts ? opts.duration : null;
  let description = opts && 'description' in opts ? opts.description : null;
  this[duration$] = duration;
  this[description$1] = description;
  ;
}).prototype = pesto_demo.RecipeStep.prototype;
dart.addTypeTests(pesto_demo.RecipeStep);
dart.addTypeCaches(pesto_demo.RecipeStep);
const duration$ = RecipeStep_duration;
const description$1 = RecipeStep_description;
dart.setLibraryUri(pesto_demo.RecipeStep, L0);
dart.setFieldSignature(pesto_demo.RecipeStep, () => ({
  __proto__: dart.getFields(pesto_demo.RecipeStep.__proto__),
  duration: dart.finalFieldType(core.String),
  description: dart.finalFieldType(core.String)
}));
dart.defineLazy(pesto_demo, {
  /*pesto_demo._kSmallLogoImage*/get _kSmallLogoImage() {
    return "logos/pesto/logo_small.png";
  },
  /*pesto_demo._kGalleryAssetsPackage*/get _kGalleryAssetsPackage() {
    return "flutter_gallery_assets";
  },
  /*pesto_demo._kAppBarHeight*/get _kAppBarHeight() {
    return 128;
  },
  /*pesto_demo._kFabHalfSize*/get _kFabHalfSize() {
    return 28;
  },
  /*pesto_demo._kRecipePageMaxWidth*/get _kRecipePageMaxWidth() {
    return 500;
  },
  /*pesto_demo._favoriteRecipes*/get _favoriteRecipes() {
    return LinkedHashSetOfRecipe().new();
  },
  /*pesto_demo._kTheme*/get _kTheme() {
    return theme_data.ThemeData.new({brightness: ui.Brightness.light, primarySwatch: colors.Colors.teal, accentColor: colors.Colors.redAccent});
  },
  /*pesto_demo.kPestoRecipes*/get kPestoRecipes() {
    return C1 || CT.C1;
  }
}, true);
// Exports:
exports.pesto_demo = pesto_demo;

//# sourceMappingURL=pesto_demo.dart.lib.js.map
