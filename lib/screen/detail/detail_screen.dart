import 'package:flutter/material.dart';
import 'package:food_order_app/models/food.dart';
import 'package:food_order_app/screen/detail/components/body.dart';
import 'package:food_order_app/size_config.dart';

class DetailScreen extends StatelessWidget {
  final Food food;
  const DetailScreen({Key key, this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(
        food: food,
      ),
    );
  }
}
