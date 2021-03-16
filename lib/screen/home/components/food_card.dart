import 'package:flutter/material.dart';
import 'package:food_order_app/models/food.dart';
import 'package:food_order_app/size_config.dart';

class FoodCard extends StatelessWidget {
  final Function press;
  final Food food;
  const FoodCard({Key key, this.press, this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: (SizeConfig.screenWidth - 110) / 2,
        height: 250,
        decoration: BoxDecoration(),
        child: Stack(
          children: [
            Positioned(
              left: 3,
              top: 3,
              //background
              child: Container(
                width: 125,
                height: 235,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(60),
                ),
                //text
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        food.name,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        food.description,
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        food.price,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //img
            Container(
              width: 130,
              height: 130,
              decoration: BoxDecoration(
                color: Colors.redAccent.withOpacity(0.3),
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(food.img),
                  fit: BoxFit.cover,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 10,
                  )
                ],
              ),
            ),
            //plus
            Positioned(
              left: 46,
              top: 210,
              child: IconButton(
                icon: Icon(
                  Icons.add_circle,
                  size: 28,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
