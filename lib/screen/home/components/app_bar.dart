import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar HomeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
        icon: SvgPicture.asset('assets/images/burger_icon.svg'),
        onPressed: () {}),
    actions: <Widget>[
      IconButton(
          icon: SvgPicture.asset("assets/images/search_icon.svg"),
          onPressed: () {}),
      IconButton(
          icon: SvgPicture.asset("assets/images/filter_icon.svg"),
          onPressed: () {}),
    ],
  );
}
