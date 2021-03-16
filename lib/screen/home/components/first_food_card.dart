import 'package:flutter/material.dart';
import 'package:food_order_app/models/food.dart';
import 'package:food_order_app/size_config.dart';

class FirstFoodCard extends StatelessWidget {
  final Function press;
  final Food food;
  const FirstFoodCard({Key key, this.press, this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 160,
        height: 160,
        child: Stack(
          children: [
            Positioned(
              top: 15,
              left: 0,
              child: Container(
                //background
                width: SizeConfig.screenWidth - 30,
                height: 120,
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(60)),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: (SizeConfig.screenWidth - 20) * 0.46,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              food.name,
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(food.description),
                                Icon(Icons.add_circle)
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              food.price,
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //img
            Container(
              width: 170,
              height: 150,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 10,
                    blurRadius: 15,
                  )
                ],
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(food.img),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
