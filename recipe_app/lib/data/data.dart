import 'package:recipe_app/models/recipe.dart';

List<Recipe> recipes = [
  const Recipe(
    title: 'Spaghetti with Tomato Sauce',
    imageRoute: 'assets/Spaghetti_Bolognese.jpg',
    duration: 20,
    level: 'Easy',
    cost: 'Pricy',
    ingredients: '4 Tomatoes\n'
        ' 1 Tablespoon of Olive Oil\n'
        ' 1 Onion\n '
        '250g Spaghetti\n'
        ' Spices\n'
        ' Cheese',
    steps: 'Cut the tomatoes and the onion into small pieces.\n'
        'Boil some water - add salt to it once it boils.\n'
        'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.\n'
        'In the meantime, heaten up some olive oil and add the cut onion.\n'
        'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.\n'
        'The sauce will be done once the spaghetti are.\n'
        'Feel free to add some cheese on top of the finished dish.\n',
  ),
  const Recipe(
    title: 'Toast Hawaii',
    imageRoute: 'assets/toast.jpg',
    duration: 10,
    level: 'Easy',
    cost: 'Pricy',
    ingredients: '1 Slice White Bread\n'
        '1 Slice Ham\n'
        '1 Slice Pineapple\n'
        '1-2 Slices of Cheese\n'
        'Butter',
    steps: 'Butter one side of the white bread\n'
        'Layer ham, the pineapple and cheese on the white bread\n'
        'Bake the toast for round about 10 minutes in the oven at 200°C',
  ),
  const Recipe(
    title: 'Classic Hamburger',
    imageRoute: 'assets/burger.jpg',
    duration: 45,
    level: 'Easy',
    cost: 'Pricy',
    ingredients: '300g Cattle Hack\n'
        '1 Tomato\n'
        '1 Cucumber\n'
        '1 Onion\n'
        'Ketchup\n'
        '2 Burger Buns',
    steps: 'Form 2 patties\n'
        'Fry the patties for c. 4 minutes on each side\n'
        'Quickly fry the buns for c. 1 minute on each side\n'
        'Bruch buns with ketchup\n'
        'Serve burger with tomato, cucumber and onion',
  ),
  const Recipe(
    title: 'Wiener Schnitzel',
    imageRoute: 'assets/schnitzel.jpg',
    duration: 60,
    level: 'Easy',
    cost: 'Pricy',
    ingredients: '8 Veal Cutlets\n'
        '4 Eggs\n'
        '200g Bread Crumbs\n'
        '100g Flour\n'
        '300ml Butter\n'
        '100g Vegetable Oil\n'
        'Salt\n'
        'Lemon Slices',
    steps: 'Tenderize the veal to about 2–4mm, and salt on both sides.\n'
        'On a flat plate, stir the eggs briefly with a fork.\n'
        'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.\n'
        'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.\n'
        'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.\n'
        'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.\n'
        'Place the schnitzels on awarmed plate and serve garnishedwith parsley and slices of lemon.',
  ),
  const Recipe(
    title: 'Salad with Smoked Salmon',
    imageRoute: 'assets/smoked-salmon.jpg',
    duration: 15,
    level: 'Easy',
    cost: 'Pricy',
    ingredients: 'Arugula'
        'Lamb\'s Lettuce'
        'Parsley'
        'Fennel'
        '200g Smoked Salmon'
        'Mustard'
        'Balsamic Vinegar'
        'Olive Oil'
        'Salt and Pepper',
    steps: 'Wash and cut salad and herbs'
        'Dice the salmon'
        'Process mustard, vinegar and olive oil into a dessing'
        'Prepare the salad'
        'Add salmon cubes and dressing',
  ),
  const Recipe(
    title: 'Delicious Orange Mousse',
    imageRoute: 'assets/pastry.jpg',
    duration: 240,
    level: 'Easy',
    cost: 'Pricy',
    ingredients: '4 Sheets of Gelatine\n'
        '150ml Orange Juice\n'
        '80g Sugar\n'
        '300g Yoghurt\n'
        '200g Cream\n'
        'Orange Peel',
    steps: 'Dissolve gelatine in pot\n'
        'Add orange juice and sugar\n'
        'Take pot off the stove\n'
        'Add 2 tablespoons of yoghurt\n'
        'Stir gelatin under remaining yoghurt\n'
        'Cool everything down in the refrigerator\n'
        'Whip the cream and lift it under die orange mass\n'
        'Cool down again for at least 4 hours\n'
        'Serve with orange peel',
  ),
  const Recipe(
      title: 'Pancakes',
      imageRoute: 'assets/pancake.jpg',
      duration: 20,
      level: 'Easy',
      cost: 'Pricy',
      ingredients: '1 1/2 Cups all-purpose Flour\n'
          '3 1/2 Teaspoons Baking Powder\n'
          '1 Teaspoon Salt\n'
          '1 Tablespoon White Sugar\n'
          '1 1/4 cups Milk\n'
          '1 Egg\n'
          '3 Tablespoons Butter melted',
      steps:
          'In a large bowl, sift together the flour, baking powder, salt and sugar.\n'
          'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.\n'
          'Heat a lightly oiled griddle or frying pan over medium high heat.\n'
          'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake. Brown on both sides and serve hot.'),
  const Recipe(
    title: 'Creamy Indian Chicken Curry',
    imageRoute: 'assets/indian-food.jpg',
    duration: 35,
    level: 'Easy',
    cost: 'Pricy',
    ingredients: '4 Chicken Breasts\n'
        '1 Onion\n'
        '2 Cloves of Garlic\n'
        '1 Piece of Ginger\n'
        '4 Tablespoons Almonds\n'
        '1 Teaspoon Cayenne Pepper\n'
        '500ml Coconut Milk\n',
    steps: 'Slice and fry the chicken breast\n'
        'Process onion, garlic and ginger into paste and sauté everything\n'
        'Add spices and stir fry\n'
        'Add chicken breast + 250ml of water and cook everything for 10 minutes\n'
        'Add coconut milk\n'
        'Serve with rice\n',
  ),
];
