class Recipe {
  final String title;
  final String imageRoute;
  final String ingredients;
  final String steps;
  final String level;
  final String cost;
  final int duration;

  const Recipe({
    required this.title,
    required this.imageRoute,
    required this.ingredients,
    required this.steps,
    required this.duration,
    required this.level,
    required this.cost,
  });
}
