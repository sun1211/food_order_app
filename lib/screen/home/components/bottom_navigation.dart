import 'package:flutter/material.dart';
import 'package:food_order_app/constants.dart';
import 'package:food_order_app/size_config.dart';
import 'package:line_icons/line_icons.dart';

class BottomNavigation extends StatefulWidget {
  BottomNavigation({Key key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int activeTab = 0;
  List activeTabs = [
    LineIcons.home,
    LineIcons.barcode,
    LineIcons.comment,
    LineIcons.user
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kWhiteColor,
      ),
      width: SizeConfig.screenWidth,
      height: 90,
      child: Padding(
        padding: EdgeInsets.only(top: 10, bottom: 15, left: 15, right: 15),
        child: Container(
          //background
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.grey.withOpacity(0.5),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(activeTabs.length, (index) {
                return IconButton(
                    icon: Icon(
                      activeTabs[index],
                      size: 25,
                      color: activeTab == index ? Colors.black : Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        activeTab = index;
                      });
                    });
              }),
            ),
          ),
        ),
      ),
    );
  }
}
