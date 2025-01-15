import 'food.dart';

class Restaurant {
  final List<Food> _menu = [
    Food
      (
        name: 'Cheese Burger',
        description: 'Burger is the awesome thing i have test in my life',
        imagePath: 'lib/images/burger.jpg',
        price: 4.99,
        category: FoodCategory.burgers,
        availablaAddons: [
          Addons(name: 'Cheese', price: 1.39),
          Addons(name: 'Cheese', price: 1.39),
          Addons(name: 'Cheese', price: 1.39)
        ]
    ),
    Food
      (
        name: 'Rediet Burger',
        description: 'Rediet burger it taste like it sounds which is amazing',
        imagePath: 'lib/images/rediet_burger.jpg',
        price: 4.99,
        category: FoodCategory.burgers,
        availablaAddons: [
          Addons(name: 'Cheese', price: 1.39),
          Addons(name: 'Cheese', price: 1.39),
          Addons(name: 'Cheese', price: 1.39)
        ]
    ),
    Food(
      name: 'Long Burger',
      description: 'long burger that have neen alive',
      imagePath: 'lib/images/long_burger.jpg',
      price: 3.99,
      category: FoodCategory.burgers,
      availablaAddons: [
        Addons(name: 'Cheese', price: 4.99)
      ]
    ),

  //   Salad
  Food(name: 'Salad1',
      description: 'It is about taste and feeling',
      imagePath: 'lib/images/salad.jpg',
      price: 3.99,
      availablaAddons: [
        Addons(name: 'name', price: 0.99)
      ],
      category: FoodCategory.salads
  ),
    Food(name: 'Salad1',
        description: 'It is about taste and feeling',
        imagePath: 'lib/images/salad.jpg',
        price: 3.99,
        availablaAddons: [
          Addons(name: 'name', price: 0.99)
        ],
        category: FoodCategory.salads
    ),
    Food(name: 'Salad1',
        description: 'It is about taste and feeling',
        imagePath: 'lib/images/salad.jpg',
        price: 3.99,
        availablaAddons: [
          Addons(name: 'name', price: 0.99)
        ],
        category: FoodCategory.salads
    ),
    Food(name: 'Salad1',
        description: 'It is about taste and feeling',
        imagePath: 'lib/images/salad.jpg',
        price: 3.99,
        availablaAddons: [
          Addons(name: 'name', price: 0.99)
        ],
        category: FoodCategory.salads
    )
  ];
}