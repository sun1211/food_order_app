import 'package:flutter/material.dart';
import 'package:food_order_app/constants.dart';
import 'package:food_order_app/models/food.dart';
import 'package:line_icons/line_icons.dart';
import 'dart:math' as math;

import 'product_slider.dart';

class Body extends StatelessWidget {
  final Food food;
  const Body({Key key, this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //img carousel
            Stack(
              children: <Widget>[
                ProductSlider(
                  items: food.imgMul,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(LineIcons.arrowLeft),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    food.description,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        food.name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                      //number layout
                      Row(
                        children: <Widget>[
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                color: kBlackColor,
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Text(
                                "-",
                                style: TextStyle(color: kWhiteColor),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "1",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                color: kBlackColor,
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: Text(
                                "+",
                                style: TextStyle(color: kWhiteColor),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //description
                  Text(
                    "A salad is a dish consisting of pieces of food in a mixture, with at least one raw ingredient. It is often dressed, and is typically served at room temperature or chilled, though some (such as south German potato salad, or chicken salad) can be served warm",
                    style: TextStyle(height: 1.3),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //deliver infor
                  Row(
                    children: <Widget>[
                      Text("Delivery Time"),
                      SizedBox(
                        width: 30,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.timer),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "25 Mins",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  //bottom layout
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      //price labels
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Total Price",
                            style: TextStyle(fontSize: 15),
                          ),
                          SizedBox(height: 10),
                          Text(
                            food.price,
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      //shop button
                      Stack(
                        children: <Widget>[
                          Transform.rotate(
                            angle: -math.pi / 4,
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                  color: kBlackColor,
                                  borderRadius: BorderRadius.circular(25)),
                            ),
                          ),
                          Positioned(
                            top: 20,
                            left: 18,
                            child: Container(
                              width: 35,
                              height: 35,
                              child: Stack(
                                children: <Widget>[
                                  Icon(
                                    LineIcons.shoppingCart,
                                    color: kWhiteColor,
                                    size: 30,
                                  ),
                                  Positioned(
                                    right: 0,
                                    child: Container(
                                      width: 18,
                                      height: 18,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.red),
                                      child: Center(
                                        child: Text(
                                          "1",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: kWhiteColor),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
