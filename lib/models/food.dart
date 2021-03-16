List foodCategories = [
  "Salads",
  "Soups",
  "Grilled",
];

List menusList = [
  "Salads",
  "Soups",
  "Grilled",
];

class Food {
  final int id;
  final String name;
  final String description;
  final String price;
  final String img;
  final List<String> imgMul;

  Food({
    this.id,
    this.name,
    this.description,
    this.price,
    this.img,
    this.imgMul,
  });
}

List<Food> foodList = [
  Food(
      id: 1,
      name: "Chicken Salad",
      description: "Chicken with avocado",
      price: "\$ 32.00",
      img: "assets/images/salad_1.png",
      imgMul: [
        "assets/images/salad_1.png",
        "assets/images/salad_4.png",
        "assets/images/salad_5.png",
      ]),
  Food(
      id: 2,
      name: "Mixed Salad",
      description: "Mixed Vegetables",
      price: "\$ 62.00",
      img: "assets/images/salad_2.png",
      imgMul: [
        "assets/images/salad_2.png",
        "assets/images/salad_4.png",
        "assets/images/salad_5.png",
      ]),
  Food(
      id: 3,
      name: "Quinoa Salad",
      description: "Spicy with garlic",
      price: "\$ 12.00",
      img: "assets/images/salad_3.png",
      imgMul: [
        "assets/images/salad_3.png",
        "assets/images/salad_4.png",
        "assets/images/salad_5.png",
      ]),
];
