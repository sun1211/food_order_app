import 'package:flutter/material.dart';
import 'package:food_order_app/models/food.dart';
import 'package:food_order_app/screen/detail/detail_screen.dart';
import 'package:food_order_app/screen/home/components/first_food_card.dart';
import 'package:food_order_app/screen/home/components/food_card.dart';
import 'package:food_order_app/screen/home/components/menu_bar.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 10,
        ),
        children: [
          //header
          Text(
            "Delicious Salads",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "We made fresh and healthy food",
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          //menu bar
          MenuBar(),
          SizedBox(
            height: 30,
          ),
          FirstFoodCard(
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DetailScreen(
                    food: foodList[0],
                  ),
                ),
              );
            },
            food: foodList[0],
          ),
          SizedBox(
            height: 30,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.only(
                left: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                    foodList.length,
                    (index) => FoodCard(
                          press: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => DetailScreen(
                                  food: foodList[index],
                                ),
                              ),
                            );
                          },
                          food: foodList[index],
                        )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
