import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lemonade_app/constants.dart';

import 'package:lemonade_app/screen/cart.dart';
import 'package:lemonade_app/screen/product_like.dart';
import 'package:lemonade_app/screen/search_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

Widget getleading(String title) {
  if (title == 'Home') {
    return Container(
        margin: EdgeInsets.only(left: 20),
        child: Image.asset('assets/images/logo.png'));
  } else if (title == '') {
    Container(
        margin: EdgeInsets.only(left: 16, top: 6),
        child: Text(
          "Beauty",
          maxLines: 1,
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'OpenSans',
            fontSize: 28,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600,
          ),
        ));
  } else {
    return Container(
        margin: EdgeInsets.only(left: 16, top: 6),
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
        ));
  }
  return Container();
}

AppBar buildAppBar(BuildContext context, String title) {
  return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: getleading(title),
      leadingWidth: 150,
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
      ]);
}
