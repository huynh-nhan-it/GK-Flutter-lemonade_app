import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lemonade_app/constants.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../cart.dart';
import '../product_like.dart';
import '../search_screen.dart';

AppBar buildAppBar(BuildContext context, String title) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: Icon(Icons.arrow_back_rounded, color: Colors.black, size: 25),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    title: Container(
        margin: EdgeInsets.only(bottom: 2.0),
        child: Text(
          title,
          maxLines: 1,
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'OpenSans',
            fontSize: 28,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600,
          ),
        )),
    actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset(
          "assets/icons/search.svg",
          color: kTextColor,
        ),
        onPressed: () {
          pushNewScreen(context, screen: Search_Screen(), withNavBar: false);
        },
      ),
      IconButton(
        icon: SvgPicture.asset(
          "assets/icons/heart.svg",
          color: kTextColor,
        ),
        onPressed: () {
          pushNewScreen(context,
              screen: ProductLikeScreen(), withNavBar: false);
        },
      ),
      IconButton(
        icon: SvgPicture.asset(
          "assets/icons/cart.svg",
          color: kTextColor,
        ),
        onPressed: () {
          pushNewScreen(context, screen: CartScreen(), withNavBar: false);
        },
      ),
      SizedBox(
        width: MediaQuery.of(context).size.width * 0.01,
      )
    ],
  );
}
