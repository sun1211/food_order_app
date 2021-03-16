import 'package:flutter/material.dart';
import 'package:food_order_app/screen/home/components/app_bar.dart';
import 'package:food_order_app/screen/home/components/body.dart';
import 'package:food_order_app/size_config.dart';

import 'components/bottom_navigation.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: HomeAppBar(context),
      body: Body(),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
