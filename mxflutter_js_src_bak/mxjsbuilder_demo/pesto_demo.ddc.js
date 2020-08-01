'use strict';
const dart_sdk = require('dart_sdk');
const core = dart_sdk.core;
const ui = dart_sdk.ui;
const _interceptors = dart_sdk._interceptors;
const collection = dart_sdk.collection;
const dart = dart_sdk.dart;
const dartx = dart_sdk.dartx;
const packages__flutter__src__widgets__actions = require('packages/flutter/src/widgets/actions');
const widget_inspector = packages__flutter__src__widgets__actions.src__widgets__widget_inspector;
const framework = packages__flutter__src__widgets__actions.src__widgets__framework;
const media_query = packages__flutter__src__widgets__actions.src__widgets__media_query;
const text = packages__flutter__src__widgets__actions.src__widgets__text;
const icon$ = packages__flutter__src__widgets__actions.src__widgets__icon;
const icon_data = packages__flutter__src__widgets__actions.src__widgets__icon_data;
const scroll_view = packages__flutter__src__widgets__actions.src__widgets__scroll_view;
const basic = packages__flutter__src__widgets__actions.src__widgets__basic;
const sliver = packages__flutter__src__widgets__actions.src__widgets__sliver;
const navigator = packages__flutter__src__widgets__actions.src__widgets__navigator;
const gesture_detector = packages__flutter__src__widgets__actions.src__widgets__gesture_detector;
const heroes = packages__flutter__src__widgets__actions.src__widgets__heroes;
const image = packages__flutter__src__widgets__actions.src__widgets__image;
const container = packages__flutter__src__widgets__actions.src__widgets__container;
const safe_area = packages__flutter__src__widgets__actions.src__widgets__safe_area;
const table = packages__flutter__src__widgets__actions.src__widgets__table;
const packages__flutter__src__painting___network_image_web = require('packages/flutter/src/painting/_network_image_web');
const text_style = packages__flutter__src__painting___network_image_web.src__painting__text_style;
const edge_insets = packages__flutter__src__painting___network_image_web.src__painting__edge_insets;
const box_fit = packages__flutter__src__painting___network_image_web.src__painting__box_fit;
const box_decoration = packages__flutter__src__painting___network_image_web.src__painting__box_decoration;
const box_border = packages__flutter__src__painting___network_image_web.src__painting__box_border;
const gradient = packages__flutter__src__painting___network_image_web.src__painting__gradient;
const alignment = packages__flutter__src__painting___network_image_web.src__painting__alignment;
const packages__flutter__material = require('packages/flutter/material');
const scaffold = packages__flutter__material.src__material__scaffold;
const theme = packages__flutter__material.src__material__theme;
const app_bar = packages__flutter__material.src__material__app_bar;
const floating_action_button = packages__flutter__material.src__material__floating_action_button;
const snack_bar = packages__flutter__material.src__material__snack_bar;
const page = packages__flutter__material.src__material__page;
const card = packages__flutter__material.src__material__card;
const colors = packages__flutter__material.src__material__colors;
const popup_menu = packages__flutter__material.src__material__popup_menu;
const icons = packages__flutter__material.src__material__icons;
const flexible_space_bar = packages__flutter__material.src__material__flexible_space_bar;
const material = packages__flutter__material.src__material__material;
const theme_data = packages__flutter__material.src__material__theme_data;
const packages__flutter__src__rendering__animated_size = require('packages/flutter/src/rendering/animated_size');
const sliver_grid = packages__flutter__src__rendering__animated_size.src__rendering__sliver_grid;
const flex = packages__flutter__src__rendering__animated_size.src__rendering__flex;
const paragraph = packages__flutter__src__rendering__animated_size.src__rendering__paragraph;
const proxy_box = packages__flutter__src__rendering__animated_size.src__rendering__proxy_box;
const table$ = packages__flutter__src__rendering__animated_size.src__rendering__table;
const pesto_demo = Object.create(dart.library);
const $toList = dartx.toList;
const $length = dartx.length;
const $_get = dartx._get;
const $add = dartx.add;
const $map = dartx.map;
// let GlobalKeyOfScaffoldState = () => (GlobalKeyOfScaffoldState = dart.constFn(framework.GlobalKey$(scaffold.ScaffoldState)))();
let VoidToNull = () => (VoidToNull = dart.constFn(dart.fnType(core.Null, [])))();
let JSArrayOfWidget = () => (JSArrayOfWidget = dart.constFn(_interceptors.JSArray$(framework.Widget)))();
let BuildContextAndintToRecipeCard = () => (BuildContextAndintToRecipeCard = dart.constFn(dart.fnType(pesto_demo.RecipeCard, [framework.BuildContext, core.int])))();
let MaterialPageRouteOfvoid = () => (MaterialPageRouteOfvoid = dart.constFn(page.MaterialPageRoute$(dart.void)))();
let BuildContextToPestoFavorites = () => (BuildContextToPestoFavorites = dart.constFn(dart.fnType(pesto_demo.PestoFavorites, [framework.BuildContext])))();
let BuildContextToTheme = () => (BuildContextToTheme = dart.constFn(dart.fnType(theme.Theme, [framework.BuildContext])))();
let PopupMenuButtonOfString = () => (PopupMenuButtonOfString = dart.constFn(popup_menu.PopupMenuButton$(core.String)))();
let StringToNull = () => (StringToNull = dart.constFn(dart.fnType(core.Null, [core.String])))();
let PopupMenuItemOfString = () => (PopupMenuItemOfString = dart.constFn(popup_menu.PopupMenuItem$(core.String)))();
let JSArrayOfPopupMenuItemOfString = () => (JSArrayOfPopupMenuItemOfString = dart.constFn(_interceptors.JSArray$(PopupMenuItemOfString())))();
let ListOfPopupMenuItemOfString = () => (ListOfPopupMenuItemOfString = dart.constFn(core.List$(PopupMenuItemOfString())))();
let BuildContextToListOfPopupMenuItemOfString = () => (BuildContextToListOfPopupMenuItemOfString = dart.constFn(dart.fnType(ListOfPopupMenuItemOfString(), [framework.BuildContext])))();
let JSArrayOfTableRow = () => (JSArrayOfTableRow = dart.constFn(_interceptors.JSArray$(table.TableRow)))();
let RecipeIngredientToTableRow = () => (RecipeIngredientToTableRow = dart.constFn(dart.fnType(table.TableRow, [pesto_demo.RecipeIngredient])))();
let RecipeStepToTableRow = () => (RecipeStepToTableRow = dart.constFn(dart.fnType(table.TableRow, [pesto_demo.RecipeStep])))();
let LinkedHashSetOfRecipe = () => (LinkedHashSetOfRecipe = dart.constFn(collection.LinkedHashSet$(pesto_demo.Recipe)))();
const CT = Object.create(null);
dart.defineLazy(CT, {
  get C6() {
    return C6 = dart.const({
      __proto__: pesto_demo.RecipeStep.prototype,
      [RecipeStep_description]: "Put in oven",
      [RecipeStep_duration]: "1 min"
    });
  },
  get C7() {
    return C7 = dart.const({
      __proto__: pesto_demo.RecipeStep.prototype,
      [RecipeStep_description]: "Cook",
      [RecipeStep_duration]: "1hr 45 min"
    });
  },
  get C5() {
    return C5 = dart.constList([C6 || CT.C6, C7 || CT.C7], pesto_demo.RecipeStep);
  },
  get C9() {
    return C9 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Chicken",
      [RecipeIngredient_amount]: "1 whole"
    });
  },
  get C10() {
    return C10 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Butter",
      [RecipeIngredient_amount]: "1/2 cup"
    });
  },
  get C11() {
    return C11 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Onion powder",
      [RecipeIngredient_amount]: "1 tbsp"
    });
  },
  get C12() {
    return C12 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Freshly ground pepper",
      [RecipeIngredient_amount]: "1 tbsp"
    });
  },
  get C13() {
    return C13 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Salt",
      [RecipeIngredient_amount]: "1 tsp"
    });
  },
  get C8() {
    return C8 = dart.constList([C9 || CT.C9, C10 || CT.C10, C11 || CT.C11, C12 || CT.C12, C13 || CT.C13], pesto_demo.RecipeIngredient);
  },
  get C4() {
    return C4 = dart.const({
      __proto__: pesto_demo.Recipe.prototype,
      [Recipe_steps]: C5 || CT.C5,
      [Recipe_ingredients]: C8 || CT.C8,
      [Recipe_ingredientsImagePackage]: "flutter_gallery_assets",
      [Recipe_ingredientsImagePath]: "mxflutter_js_src/mxflutter_app_demo/flutter_gallery_assets/food/icons/main.png",
      [Recipe_imagePackage]: "flutter_gallery_assets",
      [Recipe_imagePath]: "mxflutter_js_src/mxflutter_app_demo/flutter_gallery_assets/food/roasted_chicken.png",
      [Recipe_description]: "The perfect dish to welcome your family and friends with on a crisp autumn night. Pair with roasted veggies to truly impress them.",
      [Recipe_author]: "Peter Carlsson",
      [Recipe_name]: "Roasted Chicken"
    });
  },
  get C16() {
    return C16 = dart.const({
      __proto__: pesto_demo.RecipeStep.prototype,
      [RecipeStep_description]: "Chop",
      [RecipeStep_duration]: "5 min"
    });
  },
  get C15() {
    return C15 = dart.constList([C16 || CT.C16], pesto_demo.RecipeStep);
  },
  get C18() {
    return C18 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Beet greens",
      [RecipeIngredient_amount]: "3 cups"
    });
  },
  get C17() {
    return C17 = dart.constList([C18 || CT.C18], pesto_demo.RecipeIngredient);
  },
  get C14() {
    return C14 = dart.const({
      __proto__: pesto_demo.Recipe.prototype,
      [Recipe_steps]: C15 || CT.C15,
      [Recipe_ingredients]: C17 || CT.C17,
      [Recipe_ingredientsImagePackage]: "flutter_gallery_assets",
      [Recipe_ingredientsImagePath]: "mxflutter_js_src/mxflutter_app_demo/flutter_gallery_assets/food/icons/veggie.png",
      [Recipe_imagePackage]: "flutter_gallery_assets",
      [Recipe_imagePath]: "mxflutter_js_src/mxflutter_app_demo/flutter_gallery_assets/food/chopped_beet_leaves.png",
      [Recipe_description]: "This vegetable has more to offer than just its root. Beet greens can be tossed into a salad to add some variety or sauteed on its own with some oil and garlic.",
      [Recipe_author]: "Trevor Hansen",
      [Recipe_name]: "Chopped Beet Leaves"
    });
  },
  get C21() {
    return C21 = dart.const({
      __proto__: pesto_demo.RecipeStep.prototype,
      [RecipeStep_description]: "Blend",
      [RecipeStep_duration]: "15 min"
    });
  },
  get C20() {
    return C20 = dart.constList([C21 || CT.C21], pesto_demo.RecipeStep);
  },
  get C23() {
    return C23 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Pasta",
      [RecipeIngredient_amount]: "1/4 cup "
    });
  },
  get C24() {
    return C24 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Fresh basil leaves",
      [RecipeIngredient_amount]: "2 cups"
    });
  },
  get C25() {
    return C25 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Parmesan cheese",
      [RecipeIngredient_amount]: "1/2 cup"
    });
  },
  get C26() {
    return C26 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Extra virgin olive oil",
      [RecipeIngredient_amount]: "1/2 cup"
    });
  },
  get C27() {
    return C27 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Pine nuts",
      [RecipeIngredient_amount]: "1/3 cup"
    });
  },
  get C28() {
    return C28 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Lemon juice",
      [RecipeIngredient_amount]: "1/4 cup"
    });
  },
  get C29() {
    return C29 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Garlic",
      [RecipeIngredient_amount]: "3 cloves"
    });
  },
  get C30() {
    return C30 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Salt",
      [RecipeIngredient_amount]: "1/4 tsp"
    });
  },
  get C31() {
    return C31 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Pepper",
      [RecipeIngredient_amount]: "1/8 tsp"
    });
  },
  get C32() {
    return C32 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Bacon",
      [RecipeIngredient_amount]: "3 lbs"
    });
  },
  get C22() {
    return C22 = dart.constList([C23 || CT.C23, C24 || CT.C24, C25 || CT.C25, C26 || CT.C26, C27 || CT.C27, C28 || CT.C28, C29 || CT.C29, C30 || CT.C30, C31 || CT.C31, C32 || CT.C32], pesto_demo.RecipeIngredient);
  },
  get C19() {
    return C19 = dart.const({
      __proto__: pesto_demo.Recipe.prototype,
      [Recipe_steps]: C20 || CT.C20,
      [Recipe_ingredients]: C22 || CT.C22,
      [Recipe_ingredientsImagePackage]: "flutter_gallery_assets",
      [Recipe_ingredientsImagePath]: "mxflutter_js_src/mxflutter_app_demo/flutter_gallery_assets/food/icons/main.png",
      [Recipe_imagePackage]: "flutter_gallery_assets",
      [Recipe_imagePath]: "mxflutter_js_src/mxflutter_app_demo/flutter_gallery_assets/food/pesto_pasta.png",
      [Recipe_description]: "With this pesto recipe, you can quickly whip up a meal to satisfy your savory needs. And if you're feeling festive, you can add bacon to taste.",
      [Recipe_author]: "Ali Connors",
      [Recipe_name]: "Pesto Pasta"
    });
  },
  get C35() {
    return C35 = dart.const({
      __proto__: pesto_demo.RecipeStep.prototype,
      [RecipeStep_description]: "Mix",
      [RecipeStep_duration]: "15 min"
    });
  },
  get C36() {
    return C36 = dart.const({
      __proto__: pesto_demo.RecipeStep.prototype,
      [RecipeStep_description]: "Bake",
      [RecipeStep_duration]: "1hr 30 min"
    });
  },
  get C34() {
    return C34 = dart.constList([C35 || CT.C35, C36 || CT.C36], pesto_demo.RecipeStep);
  },
  get C38() {
    return C38 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Pie crust",
      [RecipeIngredient_amount]: "1"
    });
  },
  get C39() {
    return C39 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Fresh or frozen cherries",
      [RecipeIngredient_amount]: "4 cups"
    });
  },
  get C40() {
    return C40 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Granulated sugar",
      [RecipeIngredient_amount]: "1 cup"
    });
  },
  get C41() {
    return C41 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Cornstarch",
      [RecipeIngredient_amount]: "4 tbsp"
    });
  },
  get C42() {
    return C42 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Butter",
      [RecipeIngredient_amount]: "1½ tbsp"
    });
  },
  get C37() {
    return C37 = dart.constList([C38 || CT.C38, C39 || CT.C39, C40 || CT.C40, C41 || CT.C41, C42 || CT.C42], pesto_demo.RecipeIngredient);
  },
  get C33() {
    return C33 = dart.const({
      __proto__: pesto_demo.Recipe.prototype,
      [Recipe_steps]: C34 || CT.C34,
      [Recipe_ingredients]: C37 || CT.C37,
      [Recipe_ingredientsImagePackage]: "flutter_gallery_assets",
      [Recipe_ingredientsImagePath]: "mxflutter_js_src/mxflutter_app_demo/flutter_gallery_assets/food/icons/main.png",
      [Recipe_imagePackage]: "flutter_gallery_assets",
      [Recipe_imagePath]: "mxflutter_js_src/mxflutter_app_demo/flutter_gallery_assets/food/cherry_pie.png",
      [Recipe_description]: "Sometimes when you're craving some cheer in your life you can jumpstart your day with some cherry pie. Dessert for breakfast is perfectly acceptable.",
      [Recipe_author]: "Sandra Adams",
      [Recipe_name]: "Cherry Pie"
    });
  },
  get C45() {
    return C45 = dart.const({
      __proto__: pesto_demo.RecipeStep.prototype,
      [RecipeStep_description]: "Mix",
      [RecipeStep_duration]: "5 min"
    });
  },
  get C44() {
    return C44 = dart.constList([C45 || CT.C45], pesto_demo.RecipeStep);
  },
  get C47() {
    return C47 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Spinach",
      [RecipeIngredient_amount]: "4 cups"
    });
  },
  get C48() {
    return C48 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Sliced onion",
      [RecipeIngredient_amount]: "1 cup"
    });
  },
  get C46() {
    return C46 = dart.constList([C47 || CT.C47, C48 || CT.C48], pesto_demo.RecipeIngredient);
  },
  get C43() {
    return C43 = dart.const({
      __proto__: pesto_demo.Recipe.prototype,
      [Recipe_steps]: C44 || CT.C44,
      [Recipe_ingredients]: C46 || CT.C46,
      [Recipe_ingredientsImagePackage]: "flutter_gallery_assets",
      [Recipe_ingredientsImagePath]: "mxflutter_js_src/mxflutter_app_demo/flutter_gallery_assets/food/icons/spicy.png",
      [Recipe_imagePackage]: "flutter_gallery_assets",
      [Recipe_imagePath]: "mxflutter_js_src/mxflutter_app_demo/flutter_gallery_assets/food/spinach_onion_salad.png",
      [Recipe_description]: "Everyone's favorite leafy green is back. Paired with fresh sliced onion, it's ready to tackle any dish, whether it be a salad or an egg scramble.",
      [Recipe_author]: "Peter Carlsson",
      [Recipe_name]: "Spinach Salad"
    });
  },
  get C51() {
    return C51 = dart.const({
      __proto__: pesto_demo.RecipeStep.prototype,
      [RecipeStep_description]: "Prep vegetables",
      [RecipeStep_duration]: "10 min"
    });
  },
  get C52() {
    return C52 = dart.const({
      __proto__: pesto_demo.RecipeStep.prototype,
      [RecipeStep_description]: "Stir",
      [RecipeStep_duration]: "5 min"
    });
  },
  get C53() {
    return C53 = dart.const({
      __proto__: pesto_demo.RecipeStep.prototype,
      [RecipeStep_description]: "Cook",
      [RecipeStep_duration]: "1 hr 10 min"
    });
  },
  get C50() {
    return C50 = dart.constList([C51 || CT.C51, C52 || CT.C52, C53 || CT.C53], pesto_demo.RecipeStep);
  },
  get C55() {
    return C55 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Butternut squash",
      [RecipeIngredient_amount]: "1"
    });
  },
  get C56() {
    return C56 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Chicken stock",
      [RecipeIngredient_amount]: "4 cups"
    });
  },
  get C57() {
    return C57 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Potatoes",
      [RecipeIngredient_amount]: "2"
    });
  },
  get C58() {
    return C58 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Onion",
      [RecipeIngredient_amount]: "1"
    });
  },
  get C59() {
    return C59 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Carrot",
      [RecipeIngredient_amount]: "1"
    });
  },
  get C60() {
    return C60 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Celery",
      [RecipeIngredient_amount]: "1"
    });
  },
  get C61() {
    return C61 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Pepper",
      [RecipeIngredient_amount]: "1 tsp"
    });
  },
  get C54() {
    return C54 = dart.constList([C55 || CT.C55, C56 || CT.C56, C57 || CT.C57, C58 || CT.C58, C59 || CT.C59, C60 || CT.C60, C13 || CT.C13, C61 || CT.C61], pesto_demo.RecipeIngredient);
  },
  get C49() {
    return C49 = dart.const({
      __proto__: pesto_demo.Recipe.prototype,
      [Recipe_steps]: C50 || CT.C50,
      [Recipe_ingredients]: C54 || CT.C54,
      [Recipe_ingredientsImagePackage]: "flutter_gallery_assets",
      [Recipe_ingredientsImagePath]: "mxflutter_js_src/mxflutter_app_demo/flutter_gallery_assets/food/icons/healthy.png",
      [Recipe_imagePackage]: "flutter_gallery_assets",
      [Recipe_imagePath]: "mxflutter_js_src/mxflutter_app_demo/flutter_gallery_assets/food/butternut_squash_soup.png",
      [Recipe_description]: "This creamy butternut squash soup will warm you on the chilliest of winter nights and bring a delightful pop of orange to the dinner table.",
      [Recipe_author]: "Ali Connors",
      [Recipe_name]: "Butternut Squash Soup"
    });
  },
  get C64() {
    return C64 = dart.const({
      __proto__: pesto_demo.RecipeStep.prototype,
      [RecipeStep_description]: "Sauté vegetables",
      [RecipeStep_duration]: "5 min"
    });
  },
  get C65() {
    return C65 = dart.const({
      __proto__: pesto_demo.RecipeStep.prototype,
      [RecipeStep_description]: "Stir vegetables and other filling ingredients",
      [RecipeStep_duration]: "3 min"
    });
  },
  get C66() {
    return C66 = dart.const({
      __proto__: pesto_demo.RecipeStep.prototype,
      [RecipeStep_description]: "Fill phyllo squares half-full with filling and fold.",
      [RecipeStep_duration]: "10 min"
    });
  },
  get C67() {
    return C67 = dart.const({
      __proto__: pesto_demo.RecipeStep.prototype,
      [RecipeStep_description]: "Bake",
      [RecipeStep_duration]: "40 min"
    });
  },
  get C63() {
    return C63 = dart.constList([C64 || CT.C64, C65 || CT.C65, C66 || CT.C66, C67 || CT.C67], pesto_demo.RecipeStep);
  },
  get C69() {
    return C69 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Spinach",
      [RecipeIngredient_amount]: "1 lb"
    });
  },
  get C70() {
    return C70 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Feta cheese",
      [RecipeIngredient_amount]: "½ cup"
    });
  },
  get C71() {
    return C71 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Cottage cheese",
      [RecipeIngredient_amount]: "½ cup"
    });
  },
  get C72() {
    return C72 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Eggs",
      [RecipeIngredient_amount]: "2"
    });
  },
  get C73() {
    return C73 = dart.const({
      __proto__: pesto_demo.RecipeIngredient.prototype,
      [RecipeIngredient_description]: "Phyllo dough",
      [RecipeIngredient_amount]: "½ lb"
    });
  },
  get C68() {
    return C68 = dart.constList([C69 || CT.C69, C70 || CT.C70, C71 || CT.C71, C72 || CT.C72, C58 || CT.C58, C73 || CT.C73], pesto_demo.RecipeIngredient);
  },
  get C62() {
    return C62 = dart.const({
      __proto__: pesto_demo.Recipe.prototype,
      [Recipe_steps]: C63 || CT.C63,
      [Recipe_ingredients]: C68 || CT.C68,
      [Recipe_ingredientsImagePackage]: "flutter_gallery_assets",
      [Recipe_ingredientsImagePath]: "mxflutter_js_src/mxflutter_app_demo/flutter_gallery_assets/food/icons/quick.png",
      [Recipe_imagePackage]: "flutter_gallery_assets",
      [Recipe_imagePath]: "mxflutter_js_src/mxflutter_app_demo/flutter_gallery_assets/food/spanakopita.png",
      [Recipe_description]: "You 'feta' believe this is a crowd-pleaser! Flaky phyllo pastry surrounds a delicious mixture of spinach and cheeses to create the perfect appetizer.",
      [Recipe_author]: "Trevor Hansen",
      [Recipe_name]: "Spanakopita"
    });
  },
  get C3() {
    return C3 = dart.constList([C4 || CT.C4, C14 || CT.C14, C19 || CT.C19, C33 || CT.C33, C43 || CT.C43, C49 || CT.C49, C62 || CT.C62], pesto_demo.Recipe);
  },
  get C2() {
    return C2 = dart.const({
      __proto__: pesto_demo.RecipeGridPage.prototype,
      [Widget_key]: null,
      [RecipeGridPage_recipes]: C3 || CT.C3
    });
  },
  get C77() {
    return C77 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 3707764736.0
    });
  },
  get C78() {
    return C78 = dart.const({
      __proto__: text.Text.prototype,
      [Widget_key]: null,
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
      [Text_data]: "Pesto Demo"
    });
  },
  get C83() {
    return C83 = dart.const({
      __proto__: icon_data.IconData.prototype,
      [IconData_matchTextDirection]: false,
      [IconData_fontPackage]: null,
      [IconData_fontFamily]: "MaterialIcons",
      [IconData_codePoint]: 58313
    });
  },
  get C82() {
    return C82 = dart.const({
      __proto__: icon$.Icon.prototype,
      [Widget_key]: null,
      [Icon_textDirection]: null,
      [Icon_semanticLabel]: null,
      [Icon_color]: null,
      [Icon_size]: null,
      [Icon_icon]: C83 || CT.C83
    });
  },
  get C85() {
    return C85 = dart.const({
      __proto__: core.Duration.prototype,
      [Duration__duration]: 4000000
    });
  },
  get C86() {
    return C86 = dart.const({
      __proto__: text.Text.prototype,
      [Widget_key]: null,
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
  get C84() {
    return C84 = dart.const({
      __proto__: snack_bar.SnackBar.prototype,
      [Widget_key]: null,
      [SnackBar_onVisible]: null,
      [SnackBar_animation]: null,
      [SnackBar_duration]: C85 || CT.C85,
      [SnackBar_action]: null,
      [SnackBar_behavior]: null,
      [SnackBar_shape]: null,
      [SnackBar_elevation]: null,
      [SnackBar_backgroundColor]: null,
      [SnackBar_content]: C86 || CT.C86
    });
  },
  get C105() {
    return C105 = dart.const({
      __proto__: sliver_grid.SliverGridDelegateWithMaxCrossAxisExtent.prototype,
      [SliverGridDelegateWithMaxCrossAxisExtent_childAspectRatio]: 1,
      [SliverGridDelegateWithMaxCrossAxisExtent_crossAxisSpacing]: 8,
      [SliverGridDelegateWithMaxCrossAxisExtent_mainAxisSpacing]: 8,
      [SliverGridDelegateWithMaxCrossAxisExtent_maxCrossAxisExtent]: 500
    });
  },
  get C118() {
    return C118 = dart.const({
      __proto__: navigator.RouteSettings.prototype,
      [RouteSettings_arguments]: null,
      [RouteSettings_isInitialRoute]: false,
      [RouteSettings_name]: "/pesto/favorites"
    });
  },
  get C120() {
    return C120 = dart.const({
      __proto__: navigator.RouteSettings.prototype,
      [RouteSettings_arguments]: null,
      [RouteSettings_isInitialRoute]: false,
      [RouteSettings_name]: "/pesto/recipe"
    });
  },
  get C129() {
    return C129 = dart.const({
      __proto__: ui.TextBaseline.prototype,
      [_name]: "TextBaseline.alphabetic",
      index: 0
    });
  },
  get C130() {
    return C130 = dart.const({
      __proto__: ui.FontWeight.prototype,
      [FontWeight_index]: 5
    });
  },
  get C128() {
    return C128 = dart.const({
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
      [TextStyle_textBaseline]: C129 || CT.C129,
      [TextStyle_wordSpacing]: null,
      [TextStyle_letterSpacing]: null,
      [TextStyle_fontStyle]: null,
      [TextStyle_fontWeight]: C130 || CT.C130,
      [TextStyle_fontSize]: 24,
      [TextStyle__package]: null,
      [TextStyle__fontFamilyFallback]: null,
      [TextStyle_fontFamily]: "Raleway",
      [TextStyle_backgroundColor]: null,
      [TextStyle_color]: C77 || CT.C77,
      [TextStyle_inherit]: false
    });
  },
  get C132() {
    return C132 = dart.const({
      __proto__: ui.FontWeight.prototype,
      [FontWeight_index]: 4
    });
  },
  get C133() {
    return C133 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 2315255808.0
    });
  },
  get C131() {
    return C131 = dart.const({
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
      [TextStyle_textBaseline]: C129 || CT.C129,
      [TextStyle_wordSpacing]: null,
      [TextStyle_letterSpacing]: null,
      [TextStyle_fontStyle]: null,
      [TextStyle_fontWeight]: C132 || CT.C132,
      [TextStyle_fontSize]: 12,
      [TextStyle__package]: null,
      [TextStyle__fontFamilyFallback]: null,
      [TextStyle_fontFamily]: "Raleway",
      [TextStyle_backgroundColor]: null,
      [TextStyle_color]: C133 || CT.C133,
      [TextStyle_inherit]: false
    });
  },
  get C148() {
    return C148 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 16,
      [EdgeInsets_right]: 16,
      [EdgeInsets_top]: 16,
      [EdgeInsets_left]: 16
    });
  },
  get C194() {
    return C194 = dart.const({
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
      [TextStyle_textBaseline]: C129 || CT.C129,
      [TextStyle_wordSpacing]: null,
      [TextStyle_letterSpacing]: null,
      [TextStyle_fontStyle]: null,
      [TextStyle_fontWeight]: null,
      [TextStyle_fontSize]: 15,
      [TextStyle__package]: null,
      [TextStyle__fontFamilyFallback]: null,
      [TextStyle_fontFamily]: "Raleway",
      [TextStyle_backgroundColor]: null,
      [TextStyle_color]: C133 || CT.C133,
      [TextStyle_inherit]: false
    });
  },
  get C217() {
    return C217 = dart.const({
      __proto__: flexible_space_bar.StretchMode.prototype,
      [_name$]: "StretchMode.zoomBackground",
      index: 0
    });
  },
  get C216() {
    return C216 = dart.constList([C217 || CT.C217], flexible_space_bar.StretchMode);
  },
  get C218() {
    return C218 = dart.const({
      __proto__: flexible_space_bar.CollapseMode.prototype,
      [_name$]: "CollapseMode.parallax",
      index: 0
    });
  },
  get C220() {
    return C220 = dart.const({
      __proto__: proxy_box.DecorationPosition.prototype,
      [_name$0]: "DecorationPosition.background",
      index: 0
    });
  },
  get C222() {
    return C222 = dart.const({
      __proto__: box_border.BoxShape.prototype,
      [_name$1]: "BoxShape.rectangle",
      index: 0
    });
  },
  get C225() {
    return C225 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 1610612736
    });
  },
  get C226() {
    return C226 = dart.const({
      __proto__: ui.Color.prototype,
      [Color_value]: 0
    });
  },
  get C224() {
    return C224 = dart.constList([C225 || CT.C225, C226 || CT.C226], ui.Color);
  },
  get C227() {
    return C227 = dart.const({
      __proto__: ui.TileMode.prototype,
      [_name]: "TileMode.clamp",
      index: 0
    });
  },
  get C228() {
    return C228 = dart.const({
      __proto__: alignment.Alignment.prototype,
      [Alignment_y]: -0.2,
      [Alignment_x]: 0
    });
  },
  get C229() {
    return C229 = dart.const({
      __proto__: alignment.Alignment.prototype,
      [Alignment_y]: -1,
      [Alignment_x]: 0
    });
  },
  get C223() {
    return C223 = dart.const({
      __proto__: gradient.LinearGradient.prototype,
      [Gradient_transform]: null,
      [Gradient_stops]: null,
      [Gradient_colors]: C224 || CT.C224,
      [LinearGradient_tileMode]: C227 || CT.C227,
      [LinearGradient_end]: C228 || CT.C228,
      [LinearGradient_begin]: C229 || CT.C229
    });
  },
  get C221() {
    return C221 = dart.const({
      __proto__: box_decoration.BoxDecoration.prototype,
      [BoxDecoration_shape]: C222 || CT.C222,
      [BoxDecoration_backgroundBlendMode]: null,
      [BoxDecoration_gradient]: C223 || CT.C223,
      [BoxDecoration_boxShadow]: null,
      [BoxDecoration_borderRadius]: null,
      [BoxDecoration_border]: null,
      [BoxDecoration_image]: null,
      [BoxDecoration_color]: null
    });
  },
  get C219() {
    return C219 = dart.const({
      __proto__: container.DecoratedBox.prototype,
      [Widget_key]: null,
      [SingleChildRenderObjectWidget_child]: null,
      [DecoratedBox_position]: C220 || CT.C220,
      [DecoratedBox_decoration]: C221 || CT.C221
    });
  },
  get C215() {
    return C215 = dart.const({
      __proto__: flexible_space_bar.FlexibleSpaceBar.prototype,
      [Widget_key]: null,
      [FlexibleSpaceBar_titlePadding]: null,
      [FlexibleSpaceBar_stretchModes]: C216 || CT.C216,
      [FlexibleSpaceBar_collapseMode]: C218 || CT.C218,
      [FlexibleSpaceBar_centerTitle]: null,
      [FlexibleSpaceBar_background]: C219 || CT.C219,
      [FlexibleSpaceBar_title]: null
    });
  },
  get C236() {
    return C236 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 28,
      [EdgeInsets_left]: 0
    });
  },
  get C272() {
    return C272 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 0,
      [EdgeInsets_right]: 24,
      [EdgeInsets_top]: 0,
      [EdgeInsets_left]: 0
    });
  },
  get C291() {
    return C291 = dart.const({
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
      [TextStyle_textBaseline]: C129 || CT.C129,
      [TextStyle_wordSpacing]: null,
      [TextStyle_letterSpacing]: null,
      [TextStyle_fontStyle]: null,
      [TextStyle_fontWeight]: null,
      [TextStyle_fontSize]: 34,
      [TextStyle__package]: null,
      [TextStyle__fontFamilyFallback]: null,
      [TextStyle_fontFamily]: "Raleway",
      [TextStyle_backgroundColor]: null,
      [TextStyle_color]: C77 || CT.C77,
      [TextStyle_inherit]: false
    });
  },
  get C292() {
    return C292 = dart.const({
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
      [TextStyle_textBaseline]: C129 || CT.C129,
      [TextStyle_wordSpacing]: null,
      [TextStyle_letterSpacing]: null,
      [TextStyle_fontStyle]: null,
      [TextStyle_fontWeight]: null,
      [TextStyle_fontSize]: 15,
      [TextStyle__package]: null,
      [TextStyle__fontFamilyFallback]: null,
      [TextStyle_fontFamily]: "Raleway",
      [TextStyle_backgroundColor]: null,
      [TextStyle_color]: C77 || CT.C77,
      [TextStyle_inherit]: false
    });
  },
  get C294() {
    return C294 = dart.const({
      __proto__: ui.FontWeight.prototype,
      [FontWeight_index]: 6
    });
  },
  get C293() {
    return C293 = dart.const({
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
      [TextStyle_textBaseline]: C129 || CT.C129,
      [TextStyle_wordSpacing]: null,
      [TextStyle_letterSpacing]: null,
      [TextStyle_fontStyle]: null,
      [TextStyle_fontWeight]: C294 || CT.C294,
      [TextStyle_fontSize]: 16,
      [TextStyle__package]: null,
      [TextStyle__fontFamilyFallback]: null,
      [TextStyle_fontFamily]: "Raleway",
      [TextStyle_backgroundColor]: null,
      [TextStyle_color]: C77 || CT.C77,
      [TextStyle_inherit]: false
    });
  },
  get C295() {
    return C295 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 40,
      [EdgeInsets_right]: 16,
      [EdgeInsets_top]: 40,
      [EdgeInsets_left]: 16
    });
  },
  get C297() {
    return C297 = dart.const({
      __proto__: table$.FixedColumnWidth.prototype,
      [FixedColumnWidth_value]: 64
    });
  },
  get C296() {
    return C296 = dart.constMap(core.int, table$.TableColumnWidth, [0, C297 || CT.C297]);
  },
  get C318() {
    return C318 = dart.const({
      __proto__: basic.SizedBox.prototype,
      [Widget_key]: null,
      [SingleChildRenderObjectWidget_child]: null,
      [SizedBox_height]: null,
      [SizedBox_width]: null
    });
  },
  get C319() {
    return C319 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 4,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 8,
      [EdgeInsets_left]: 0
    });
  },
  get C328() {
    return C328 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 4,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 24,
      [EdgeInsets_left]: 0
    });
  },
  get C361() {
    return C361 = dart.const({
      __proto__: edge_insets.EdgeInsets.prototype,
      [EdgeInsets_bottom]: 4,
      [EdgeInsets_right]: 0,
      [EdgeInsets_top]: 4,
      [EdgeInsets_left]: 0
    });
  }
});
const _Location_parameterLocations = dart.privateName(widget_inspector, "_Location.parameterLocations");
const _Location_name = dart.privateName(widget_inspector, "_Location.name");
const _Location_column = dart.privateName(widget_inspector, "_Location.column");
const _Location_line = dart.privateName(widget_inspector, "_Location.line");
const _Location_file = dart.privateName(widget_inspector, "_Location.file");
pesto_demo.PestoDemo = class PestoDemo extends framework.StatelessWidget {
  build(context) {
    return new pesto_demo.PestoHome.new({$creationLocationd_0dea112b090073317d4: {}});
  }
};
(pesto_demo.PestoDemo.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  pesto_demo.PestoDemo.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = pesto_demo.PestoDemo.prototype;
;
;
dart.setLibraryUri(pesto_demo.PestoDemo, "package:flutter_dart2js/pesto_demo.dart");
dart.defineLazy(pesto_demo.PestoDemo, {
  /*pesto_demo.PestoDemo.routeName*/get routeName() {
    return "/pesto";
  }
});
const Widget_key = dart.privateName(framework, "Widget.key");
const RecipeStep_description = dart.privateName(pesto_demo, "RecipeStep.description");
const RecipeStep_duration = dart.privateName(pesto_demo, "RecipeStep.duration");
let C6;
let C7;
let C5;
const Recipe_steps = dart.privateName(pesto_demo, "Recipe.steps");
const RecipeIngredient_description = dart.privateName(pesto_demo, "RecipeIngredient.description");
const RecipeIngredient_amount = dart.privateName(pesto_demo, "RecipeIngredient.amount");
let C9;
let C10;
let C11;
let C12;
let C13;
let C8;
const Recipe_ingredients = dart.privateName(pesto_demo, "Recipe.ingredients");
const Recipe_ingredientsImagePackage = dart.privateName(pesto_demo, "Recipe.ingredientsImagePackage");
const Recipe_ingredientsImagePath = dart.privateName(pesto_demo, "Recipe.ingredientsImagePath");
const Recipe_imagePackage = dart.privateName(pesto_demo, "Recipe.imagePackage");
const Recipe_imagePath = dart.privateName(pesto_demo, "Recipe.imagePath");
const Recipe_description = dart.privateName(pesto_demo, "Recipe.description");
const Recipe_author = dart.privateName(pesto_demo, "Recipe.author");
const Recipe_name = dart.privateName(pesto_demo, "Recipe.name");
let C4;
let C16;
let C15;
let C18;
let C17;
let C14;
let C21;
let C20;
let C23;
let C24;
let C25;
let C26;
let C27;
let C28;
let C29;
let C30;
let C31;
let C32;
let C22;
let C19;
let C35;
let C36;
let C34;
let C38;
let C39;
let C40;
let C41;
let C42;
let C37;
let C33;
let C45;
let C44;
let C47;
let C48;
let C46;
let C43;
let C51;
let C52;
let C53;
let C50;
let C55;
let C56;
let C57;
let C58;
let C59;
let C60;
let C61;
let C54;
let C49;
let C64;
let C65;
let C66;
let C67;
let C63;
let C69;
let C70;
let C71;
let C72;
let C73;
let C68;
let C62;
let C3;
const RecipeGridPage_recipes = dart.privateName(pesto_demo, "RecipeGridPage.recipes");
let C2;
pesto_demo.PestoHome = class PestoHome extends framework.StatelessWidget {
  build(context) {
    return C2 || CT.C2;
  }
};
(pesto_demo.PestoHome.new = function(opts) {
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  pesto_demo.PestoHome.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = pesto_demo.PestoHome.prototype;
;
;
dart.setLibraryUri(pesto_demo.PestoHome, "package:flutter_dart2js/pesto_demo.dart");
pesto_demo.PestoFavorites = class PestoFavorites extends framework.StatelessWidget {
  build(context) {
    return new pesto_demo.RecipeGridPage.new({recipes: pesto_demo._favoriteRecipes[$toList](), $creationLocationd_0dea112b090073317d4: {}});
  }
};
(pesto_demo.PestoFavorites.new = function(opts) {
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  pesto_demo.PestoFavorites.__proto__.new.call(this, {$creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = pesto_demo.PestoFavorites.prototype;
;
;
dart.setLibraryUri(pesto_demo.PestoFavorites, "package:flutter_dart2js/pesto_demo.dart");
const Color_value = dart.privateName(ui, "Color.value");
let C77;
pesto_demo.PestoStyle = class PestoStyle extends text_style.TextStyle {};
(pesto_demo.PestoStyle.new = function(opts) {
  let fontSize = opts && 'fontSize' in opts ? opts.fontSize : 12;
  let fontWeight = opts && 'fontWeight' in opts ? opts.fontWeight : null;
  let color = opts && 'color' in opts ? opts.color : C77 || CT.C77;
  let letterSpacing = opts && 'letterSpacing' in opts ? opts.letterSpacing : null;
  let height = opts && 'height' in opts ? opts.height : null;
  pesto_demo.PestoStyle.__proto__.new.call(this, {inherit: false, color: color, fontFamily: "Raleway", fontSize: fontSize, fontWeight: fontWeight, textBaseline: ui.TextBaseline.alphabetic, letterSpacing: letterSpacing, height: height});
  ;
}).prototype = pesto_demo.PestoStyle.prototype;
;
dart.setLibraryUri(pesto_demo.PestoStyle, "package:flutter_dart2js/pesto_demo.dart");
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
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[recipes$] = recipes;
  pesto_demo.RecipeGridPage.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = pesto_demo.RecipeGridPage.prototype;
;
const recipes$ = RecipeGridPage_recipes;
;
dart.setLibraryUri(pesto_demo.RecipeGridPage, "package:flutter_dart2js/pesto_demo.dart");
;
const Text_textWidthBasis = dart.privateName(text, "Text.textWidthBasis");
const Text_semanticsLabel = dart.privateName(text, "Text.semanticsLabel");
const Text_maxLines = dart.privateName(text, "Text.maxLines");
const Text_textScaleFactor = dart.privateName(text, "Text.textScaleFactor");
const Text_overflow = dart.privateName(text, "Text.overflow");
const Text_softWrap = dart.privateName(text, "Text.softWrap");
const Text_locale = dart.privateName(text, "Text.locale");
const Text_textDirection = dart.privateName(text, "Text.textDirection");
const Text_textAlign = dart.privateName(text, "Text.textAlign");
const Text_strutStyle = dart.privateName(text, "Text.strutStyle");
const Text_style = dart.privateName(text, "Text.style");
const Text_textSpan = dart.privateName(text, "Text.textSpan");
const Text_data = dart.privateName(text, "Text.data");
let C78;
const Icon_textDirection = dart.privateName(icon$, "Icon.textDirection");
const Icon_semanticLabel = dart.privateName(icon$, "Icon.semanticLabel");
const Icon_color = dart.privateName(icon$, "Icon.color");
const Icon_size = dart.privateName(icon$, "Icon.size");
const IconData_matchTextDirection = dart.privateName(icon_data, "IconData.matchTextDirection");
const IconData_fontPackage = dart.privateName(icon_data, "IconData.fontPackage");
const IconData_fontFamily = dart.privateName(icon_data, "IconData.fontFamily");
const IconData_codePoint = dart.privateName(icon_data, "IconData.codePoint");
let C83;
const Icon_icon = dart.privateName(icon$, "Icon.icon");
let C82;
const SnackBar_onVisible = dart.privateName(snack_bar, "SnackBar.onVisible");
const SnackBar_animation = dart.privateName(snack_bar, "SnackBar.animation");
const Duration__duration = dart.privateName(core, "Duration._duration");
let C85;
const SnackBar_duration = dart.privateName(snack_bar, "SnackBar.duration");
const SnackBar_action = dart.privateName(snack_bar, "SnackBar.action");
const SnackBar_behavior = dart.privateName(snack_bar, "SnackBar.behavior");
const SnackBar_shape = dart.privateName(snack_bar, "SnackBar.shape");
const SnackBar_elevation = dart.privateName(snack_bar, "SnackBar.elevation");
const SnackBar_backgroundColor = dart.privateName(snack_bar, "SnackBar.backgroundColor");
let C86;
const SnackBar_content = dart.privateName(snack_bar, "SnackBar.content");
let C84;
const _buildBody = dart.privateName(pesto_demo, "_buildBody");
const SliverGridDelegateWithMaxCrossAxisExtent_childAspectRatio = dart.privateName(sliver_grid, "SliverGridDelegateWithMaxCrossAxisExtent.childAspectRatio");
const SliverGridDelegateWithMaxCrossAxisExtent_crossAxisSpacing = dart.privateName(sliver_grid, "SliverGridDelegateWithMaxCrossAxisExtent.crossAxisSpacing");
const SliverGridDelegateWithMaxCrossAxisExtent_mainAxisSpacing = dart.privateName(sliver_grid, "SliverGridDelegateWithMaxCrossAxisExtent.mainAxisSpacing");
const SliverGridDelegateWithMaxCrossAxisExtent_maxCrossAxisExtent = dart.privateName(sliver_grid, "SliverGridDelegateWithMaxCrossAxisExtent.maxCrossAxisExtent");
let C105;
const RouteSettings_arguments = dart.privateName(navigator, "RouteSettings.arguments");
const RouteSettings_isInitialRoute = dart.privateName(navigator, "RouteSettings.isInitialRoute");
const RouteSettings_name = dart.privateName(navigator, "RouteSettings.name");
let C118;
let C120;
pesto_demo._RecipeGridPageState = class _RecipeGridPageState extends framework.State$(pesto_demo.RecipeGridPage) {
  build(context) {
    let statusBarHeight = media_query.MediaQuery.of(context).padding.top;
    return new theme.Theme.new({data: pesto_demo._kTheme.copyWith({platform: theme.Theme.of(context).platform}), child: new scaffold.Scaffold.new({appBar: new app_bar.AppBar.new({title: C78 || CT.C78, $creationLocationd_0dea112b090073317d4: {}}), key: this.scaffoldKey, floatingActionButton: new floating_action_button.FloatingActionButton.new({child: C82 || CT.C82, onPressed: dart.fn(() => {
            this.scaffoldKey.currentState.showSnackBar(C84 || CT.C84);
          }, VoidToNull()), $creationLocationd_0dea112b090073317d4: {}}), body: new scroll_view.CustomScrollView.new({semanticChildCount: this.widget.recipes[$length], slivers: JSArrayOfWidget().of([this[_buildBody](context, statusBarHeight)]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}});
  }
  [_buildBody](context, statusBarHeight) {
    let mediaPadding = media_query.MediaQuery.of(context).padding;
    let padding = new edge_insets.EdgeInsets.only({top: 8.0, left: 8.0 + dart.notNull(mediaPadding.left), right: 8.0 + dart.notNull(mediaPadding.right), bottom: 8.0});
    return new basic.SliverPadding.new({padding: padding, sliver: new sliver.SliverGrid.new({gridDelegate: C105 || CT.C105, delegate: new sliver.SliverChildBuilderDelegate.new(dart.fn((context, index) => {
          let recipe = this.widget.recipes[$_get](index);
          return new pesto_demo.RecipeCard.new({recipe: recipe, onTap: dart.fn(() => {
              this.showRecipePage(context, recipe);
            }, VoidToNull()), $creationLocationd_0dea112b090073317d4: {}});
        }, BuildContextAndintToRecipeCard()), {childCount: this.widget.recipes[$length]}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}});
  }
  showFavoritesPage(context) {
    navigator.Navigator.push(dart.void, context, new (MaterialPageRouteOfvoid()).new({settings: C118 || CT.C118, builder: dart.fn(context => new pesto_demo.PestoFavorites.new({$creationLocationd_0dea112b090073317d4: {}}), BuildContextToPestoFavorites())}));
  }
  showRecipePage(context, recipe) {
    navigator.Navigator.push(dart.void, context, new (MaterialPageRouteOfvoid()).new({settings: C120 || CT.C120, builder: dart.fn(context => new theme.Theme.new({data: pesto_demo._kTheme.copyWith({platform: theme.Theme.of(context).platform}), child: new pesto_demo.RecipePage.new({recipe: recipe, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), BuildContextToTheme())}));
  }
};
(pesto_demo._RecipeGridPageState.new = function() {
  // this.scaffoldKey = GlobalKeyOfScaffoldState().new();
  pesto_demo._RecipeGridPageState.__proto__.new.call(this);
  ;
}).prototype = pesto_demo._RecipeGridPageState.prototype;
;
;
dart.setLibraryUri(pesto_demo._RecipeGridPageState, "package:flutter_dart2js/pesto_demo.dart");
;
const TextStyle_fontFeatures = dart.privateName(text_style, "TextStyle.fontFeatures");
const TextStyle_shadows = dart.privateName(text_style, "TextStyle.shadows");
const TextStyle_debugLabel = dart.privateName(text_style, "TextStyle.debugLabel");
const TextStyle_decorationThickness = dart.privateName(text_style, "TextStyle.decorationThickness");
const TextStyle_decorationStyle = dart.privateName(text_style, "TextStyle.decorationStyle");
const TextStyle_decorationColor = dart.privateName(text_style, "TextStyle.decorationColor");
const TextStyle_decoration = dart.privateName(text_style, "TextStyle.decoration");
const TextStyle_background = dart.privateName(text_style, "TextStyle.background");
const TextStyle_foreground = dart.privateName(text_style, "TextStyle.foreground");
const TextStyle_locale = dart.privateName(text_style, "TextStyle.locale");
const TextStyle_height = dart.privateName(text_style, "TextStyle.height");
const _name = dart.privateName(ui, "_name");
let C129;
const TextStyle_textBaseline = dart.privateName(text_style, "TextStyle.textBaseline");
const TextStyle_wordSpacing = dart.privateName(text_style, "TextStyle.wordSpacing");
const TextStyle_letterSpacing = dart.privateName(text_style, "TextStyle.letterSpacing");
const TextStyle_fontStyle = dart.privateName(text_style, "TextStyle.fontStyle");
const FontWeight_index = dart.privateName(ui, "FontWeight.index");
let C130;
const TextStyle_fontWeight = dart.privateName(text_style, "TextStyle.fontWeight");
const TextStyle_fontSize = dart.privateName(text_style, "TextStyle.fontSize");
const TextStyle__package = dart.privateName(text_style, "TextStyle._package");
const TextStyle__fontFamilyFallback = dart.privateName(text_style, "TextStyle._fontFamilyFallback");
const TextStyle_fontFamily = dart.privateName(text_style, "TextStyle.fontFamily");
const TextStyle_backgroundColor = dart.privateName(text_style, "TextStyle.backgroundColor");
const TextStyle_color = dart.privateName(text_style, "TextStyle.color");
const TextStyle_inherit = dart.privateName(text_style, "TextStyle.inherit");
let C128;
let C132;
let C133;
let C131;
const EdgeInsets_bottom = dart.privateName(edge_insets, "EdgeInsets.bottom");
const EdgeInsets_right = dart.privateName(edge_insets, "EdgeInsets.right");
const EdgeInsets_top = dart.privateName(edge_insets, "EdgeInsets.top");
const EdgeInsets_left = dart.privateName(edge_insets, "EdgeInsets.left");
let C148;
const recipe$ = dart.privateName(pesto_demo, "RecipeCard.recipe");
const onTap$ = dart.privateName(pesto_demo, "RecipeCard.onTap");
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
    return C128 || CT.C128;
  }
  get authorStyle() {
    return C131 || CT.C131;
  }
  build(context) {
    return new gesture_detector.GestureDetector.new({onTap: this.onTap, child: new card.Card.new({child: new basic.Column.new({crossAxisAlignment: flex.CrossAxisAlignment.start, children: JSArrayOfWidget().of([new heroes.Hero.new({tag: "packages/" + "flutter_gallery_assets" + "/" + dart.str(this.recipe.imagePath), child: new basic.AspectRatio.new({aspectRatio: 4.0 / 3.0, child: new image.Image.asset(this.recipe.imagePath, {package: this.recipe.imagePackage, fit: box_fit.BoxFit.cover, semanticLabel: this.recipe.name, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new basic.Expanded.new({child: new basic.Row.new({children: JSArrayOfWidget().of([new basic.Padding.new({padding: C148 || CT.C148, child: new image.Image.asset(this.recipe.ingredientsImagePath, {package: this.recipe.ingredientsImagePackage, width: 48.0, height: 48.0, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new basic.Expanded.new({child: new basic.Column.new({crossAxisAlignment: flex.CrossAxisAlignment.start, mainAxisAlignment: flex.MainAxisAlignment.center, children: JSArrayOfWidget().of([new text.Text.new(this.recipe.name, {style: this.titleStyle, softWrap: false, overflow: paragraph.TextOverflow.ellipsis, $creationLocationd_0dea112b090073317d4: {}}), new text.Text.new(this.recipe.author, {style: this.authorStyle, $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}});
  }
};
(pesto_demo.RecipeCard.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let recipe = opts && 'recipe' in opts ? opts.recipe : null;
  let onTap = opts && 'onTap' in opts ? opts.onTap : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[recipe$] = recipe;
  this[onTap$] = onTap;
  pesto_demo.RecipeCard.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = pesto_demo.RecipeCard.prototype;
;
;
dart.setGetterSignature(pesto_demo.RecipeCard, () => ({
  __proto__: dart.getGetters(pesto_demo.RecipeCard.__proto__),
  titleStyle: text_style.TextStyle,
  authorStyle: text_style.TextStyle
}));
dart.setLibraryUri(pesto_demo.RecipeCard, "package:flutter_dart2js/pesto_demo.dart");
;
const recipe$0 = dart.privateName(pesto_demo, "RecipePage.recipe");
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
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[recipe$0] = recipe;
  pesto_demo.RecipePage.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = pesto_demo.RecipePage.prototype;
;
;
dart.setLibraryUri(pesto_demo.RecipePage, "package:flutter_dart2js/pesto_demo.dart");
;
const _scaffoldKey = dart.privateName(pesto_demo, "_scaffoldKey");
let C194;
const _getAppBarHeight = dart.privateName(pesto_demo, "_getAppBarHeight");
const _buildMenuItem = dart.privateName(pesto_demo, "_buildMenuItem");
const FlexibleSpaceBar_titlePadding = dart.privateName(flexible_space_bar, "FlexibleSpaceBar.titlePadding");
const _name$ = dart.privateName(flexible_space_bar, "_name");
let C217;
let C216;
const FlexibleSpaceBar_stretchModes = dart.privateName(flexible_space_bar, "FlexibleSpaceBar.stretchModes");
let C218;
const FlexibleSpaceBar_collapseMode = dart.privateName(flexible_space_bar, "FlexibleSpaceBar.collapseMode");
const FlexibleSpaceBar_centerTitle = dart.privateName(flexible_space_bar, "FlexibleSpaceBar.centerTitle");
const SingleChildRenderObjectWidget_child = dart.privateName(framework, "SingleChildRenderObjectWidget.child");
const _name$0 = dart.privateName(proxy_box, "_name");
let C220;
const DecoratedBox_position = dart.privateName(container, "DecoratedBox.position");
const _name$1 = dart.privateName(box_border, "_name");
let C222;
const BoxDecoration_shape = dart.privateName(box_decoration, "BoxDecoration.shape");
const BoxDecoration_backgroundBlendMode = dart.privateName(box_decoration, "BoxDecoration.backgroundBlendMode");
const Gradient_transform = dart.privateName(gradient, "Gradient.transform");
const Gradient_stops = dart.privateName(gradient, "Gradient.stops");
let C225;
let C226;
let C224;
const Gradient_colors = dart.privateName(gradient, "Gradient.colors");
let C227;
const LinearGradient_tileMode = dart.privateName(gradient, "LinearGradient.tileMode");
const Alignment_y = dart.privateName(alignment, "Alignment.y");
const Alignment_x = dart.privateName(alignment, "Alignment.x");
let C228;
const LinearGradient_end = dart.privateName(gradient, "LinearGradient.end");
let C229;
const LinearGradient_begin = dart.privateName(gradient, "LinearGradient.begin");
let C223;
const BoxDecoration_gradient = dart.privateName(box_decoration, "BoxDecoration.gradient");
const BoxDecoration_boxShadow = dart.privateName(box_decoration, "BoxDecoration.boxShadow");
const BoxDecoration_borderRadius = dart.privateName(box_decoration, "BoxDecoration.borderRadius");
const BoxDecoration_border = dart.privateName(box_decoration, "BoxDecoration.border");
const BoxDecoration_image = dart.privateName(box_decoration, "BoxDecoration.image");
const BoxDecoration_color = dart.privateName(box_decoration, "BoxDecoration.color");
let C221;
const DecoratedBox_decoration = dart.privateName(container, "DecoratedBox.decoration");
let C219;
const FlexibleSpaceBar_background = dart.privateName(flexible_space_bar, "FlexibleSpaceBar.background");
const FlexibleSpaceBar_title = dart.privateName(flexible_space_bar, "FlexibleSpaceBar.title");
let C215;
let C236;
const _toggleFavorite = dart.privateName(pesto_demo, "_toggleFavorite");
let C272;
pesto_demo._RecipePageState = class _RecipePageState extends framework.State$(pesto_demo.RecipePage) {
  [_getAppBarHeight](context) {
    return dart.notNull(media_query.MediaQuery.of(context).size.height) * 0.3;
  }
  build(context) {
    let appBarHeight = this[_getAppBarHeight](context);
    let screenSize = media_query.MediaQuery.of(context).size;
    let fullWidth = dart.notNull(screenSize.width) < 500;
    let isFavorite = pesto_demo._favoriteRecipes.contains(this.widget.recipe);
    return new scaffold.Scaffold.new({key: this[_scaffoldKey], body: new basic.Stack.new({children: JSArrayOfWidget().of([new basic.Positioned.new({top: 0.0, left: 0.0, right: 0.0, height: dart.notNull(appBarHeight) + 28, child: new heroes.Hero.new({tag: "packages/" + "flutter_gallery_assets" + "/" + dart.str(this.widget.recipe.imagePath), child: new image.Image.asset(this.widget.recipe.imagePath, {package: this.widget.recipe.imagePackage, fit: fullWidth ? box_fit.BoxFit.fitWidth : box_fit.BoxFit.cover, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new scroll_view.CustomScrollView.new({slivers: JSArrayOfWidget().of([new app_bar.SliverAppBar.new({expandedHeight: dart.notNull(appBarHeight) - 28, backgroundColor: colors.Colors.transparent, actions: JSArrayOfWidget().of([new (PopupMenuButtonOfString()).new({onSelected: dart.fn(item => {
                    }, StringToNull()), itemBuilder: dart.fn(context => JSArrayOfPopupMenuItemOfString().of([this[_buildMenuItem](icons.Icons.share, "Tweet recipe"), this[_buildMenuItem](icons.Icons.email, "Email recipe"), this[_buildMenuItem](icons.Icons.message, "Message recipe"), this[_buildMenuItem](icons.Icons.people, "Share on Facebook")]), BuildContextToListOfPopupMenuItemOfString()), $creationLocationd_0dea112b090073317d4: {}})]), flexibleSpace: C215 || CT.C215, $creationLocationd_0dea112b090073317d4: {}}), new basic.SliverToBoxAdapter.new({child: new basic.Stack.new({children: JSArrayOfWidget().of([new container.Container.new({padding: C236 || CT.C236, width: fullWidth ? null : 500, child: new pesto_demo.RecipeSheet.new({recipe: this.widget.recipe, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new basic.Positioned.new({right: 16.0, child: new floating_action_button.FloatingActionButton.new({child: new icon$.Icon.new(dart.test(isFavorite) ? icons.Icons.favorite : icons.Icons.favorite_border, {$creationLocationd_0dea112b090073317d4: {}}), onPressed: dart.bind(this, _toggleFavorite), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}});
  }
  [_buildMenuItem](icon, label) {
    return new (PopupMenuItemOfString()).new({child: new basic.Row.new({children: JSArrayOfWidget().of([new basic.Padding.new({padding: C272 || CT.C272, child: new icon$.Icon.new(icon, {color: colors.Colors.black54, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new text.Text.new(label, {style: this.menuItemStyle, $creationLocationd_0dea112b090073317d4: {}})]), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}});
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
  // this[_scaffoldKey] = GlobalKeyOfScaffoldState().new();
  this.menuItemStyle = C194 || CT.C194;
  pesto_demo._RecipePageState.__proto__.new.call(this);
  ;
}).prototype = pesto_demo._RecipePageState.prototype;
;
;
dart.setLibraryUri(pesto_demo._RecipePageState, "package:flutter_dart2js/pesto_demo.dart");
;
let C291;
let C292;
let C294;
let C293;
let C295;
const FixedColumnWidth_value = dart.privateName(table$, "FixedColumnWidth.value");
let C297;
let C296;
const SizedBox_height = dart.privateName(basic, "SizedBox.height");
const SizedBox_width = dart.privateName(basic, "SizedBox.width");
let C318;
let C319;
let C328;
const _buildItemRow = dart.privateName(pesto_demo, "_buildItemRow");
let C361;
const titleStyle = dart.privateName(pesto_demo, "RecipeSheet.titleStyle");
const descriptionStyle = dart.privateName(pesto_demo, "RecipeSheet.descriptionStyle");
const itemStyle = dart.privateName(pesto_demo, "RecipeSheet.itemStyle");
const itemAmountStyle = dart.privateName(pesto_demo, "RecipeSheet.itemAmountStyle");
const headingStyle = dart.privateName(pesto_demo, "RecipeSheet.headingStyle");
const recipe$1 = dart.privateName(pesto_demo, "RecipeSheet.recipe");
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
    return new material.Material.new({child: new safe_area.SafeArea.new({top: false, bottom: false, child: new basic.Padding.new({padding: C295 || CT.C295, child: new table.Table.new({columnWidths: C296 || CT.C296, children: (() => {
              let t0 = JSArrayOfTableRow().of([]);
              t0[$add](new table.TableRow.new({children: JSArrayOfWidget().of([new table.TableCell.new({verticalAlignment: table$.TableCellVerticalAlignment.middle, child: new image.Image.asset(this.recipe.ingredientsImagePath, {package: this.recipe.ingredientsImagePackage, width: 32.0, height: 32.0, alignment: alignment.Alignment.centerLeft, fit: box_fit.BoxFit.scaleDown, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new table.TableCell.new({verticalAlignment: table$.TableCellVerticalAlignment.middle, child: new text.Text.new(this.recipe.name, {style: this.titleStyle, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})])}));
              t0[$add](new table.TableRow.new({children: JSArrayOfWidget().of([C318 || CT.C318, new basic.Padding.new({padding: C319 || CT.C319, child: new text.Text.new(this.recipe.description, {style: this.descriptionStyle, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})])}));
              t0[$add](new table.TableRow.new({children: JSArrayOfWidget().of([C318 || CT.C318, new basic.Padding.new({padding: C328 || CT.C328, child: new text.Text.new("Ingredients", {style: this.headingStyle, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})])}));
              for (let t1 of this.recipe.ingredients[$map](table.TableRow, dart.fn(ingredient => this[_buildItemRow](ingredient.amount, ingredient.description), RecipeIngredientToTableRow())))
                t0[$add](t1);
              t0[$add](new table.TableRow.new({children: JSArrayOfWidget().of([C318 || CT.C318, new basic.Padding.new({padding: C328 || CT.C328, child: new text.Text.new("Steps", {style: this.headingStyle, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})])}));
              for (let t2 of this.recipe.steps[$map](table.TableRow, dart.fn(step => {
                let t2;
                return this[_buildItemRow]((t2 = step.duration, t2 == null ? "" : t2), step.description);
              }, RecipeStepToTableRow())))
                t0[$add](t2);
              return t0;
            })(), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}});
  }
  [_buildItemRow](left, right) {
    return new table.TableRow.new({children: JSArrayOfWidget().of([new basic.Padding.new({padding: C361 || CT.C361, child: new text.Text.new(left, {style: this.itemAmountStyle, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}}), new basic.Padding.new({padding: C361 || CT.C361, child: new text.Text.new(right, {style: this.itemStyle, $creationLocationd_0dea112b090073317d4: {}}), $creationLocationd_0dea112b090073317d4: {}})])});
  }
};
(pesto_demo.RecipeSheet.new = function(opts) {
  let key = opts && 'key' in opts ? opts.key : null;
  let recipe = opts && 'recipe' in opts ? opts.recipe : null;
  let $36creationLocationd_0dea112b090073317d4 = opts && '$creationLocationd_0dea112b090073317d4' in opts ? opts.$creationLocationd_0dea112b090073317d4 : null;
  this[titleStyle] = C291 || CT.C291;
  this[descriptionStyle] = C194 || CT.C194;
  this[itemStyle] = C292 || CT.C292;
  this[itemAmountStyle] = new pesto_demo.PestoStyle.new({fontSize: 15.0, color: pesto_demo._kTheme.primaryColor, height: 24.0 / 15.0});
  this[headingStyle] = C293 || CT.C293;
  this[recipe$1] = recipe;
  pesto_demo.RecipeSheet.__proto__.new.call(this, {key: key, $creationLocationd_0dea112b090073317d4: $36creationLocationd_0dea112b090073317d4});
  ;
}).prototype = pesto_demo.RecipeSheet.prototype;
;
;
dart.setLibraryUri(pesto_demo.RecipeSheet, "package:flutter_dart2js/pesto_demo.dart");
;
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
;
const name$ = Recipe_name;
const author$ = Recipe_author;
const description$ = Recipe_description;
const imagePath$ = Recipe_imagePath;
const imagePackage$ = Recipe_imagePackage;
const ingredientsImagePath$ = Recipe_ingredientsImagePath;
const ingredientsImagePackage$ = Recipe_ingredientsImagePackage;
const ingredients$ = Recipe_ingredients;
const steps$ = Recipe_steps;
dart.setLibraryUri(pesto_demo.Recipe, "package:flutter_dart2js/pesto_demo.dart");
;
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
;
const amount$ = RecipeIngredient_amount;
const description$0 = RecipeIngredient_description;
dart.setLibraryUri(pesto_demo.RecipeIngredient, "package:flutter_dart2js/pesto_demo.dart");
;
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
;
const duration$ = RecipeStep_duration;
const description$1 = RecipeStep_description;
dart.setLibraryUri(pesto_demo.RecipeStep, "package:flutter_dart2js/pesto_demo.dart");
;
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
    return C3 || CT.C3;
  }
});
// Exports:
exports.pesto_demo = pesto_demo;

//# sourceMappingURL=pesto_demo.ddc.js.map
