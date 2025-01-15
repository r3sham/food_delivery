
class Food {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  List<Addons> availablaAddons;
  final FoodCategory category;

   Food({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.availablaAddons,
    required this.category

  });
}

//food category
enum FoodCategory {
  burgers,
  salads,
  sides,
  desserts,
  drinks
}

//Addons
class Addons {
  final String name;
  final double price;
  Addons({required this.name, required this.price}
      );
}