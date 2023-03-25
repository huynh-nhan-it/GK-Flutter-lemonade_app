import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lemonade_app/screen/appbar.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../../constants.dart';
import '../designer/designer_screen.dart';
import '../product_screen/list_product.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: buildAppBar(context, 'Home'),
      backgroundColor: Colors.white,
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        Stack(
          children: [
            Container(
                width: size.width,
                height: size.width * 0.38,
                color: Colors.black),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: size.width * 0.045,
                ),
                Center(
                  child: Text(
                    "You Got 15% Off",
                    style: TextStyle(
                        fontSize: size.width * 0.055,
                        color: Colors.white,
                        fontFamily: 'ArchivoBlack'),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                        child: Text("Welcome to the Lemonade",
                            style: TextStyle(
                                fontSize: size.width * 0.05,
                                color: Colors.white,
                                fontFamily: 'OpenSans'))),
                    Center(
                        child: Text("Community. Your discount is applied",
                            style: TextStyle(
                                fontSize: size.width * 0.05,
                                color: Colors.white,
                                fontFamily: 'OpenSans'))),
                    Center(
                        child: Text("automatically on checkout.",
                            style: TextStyle(
                                fontSize: size.width * 0.05,
                                color: Colors.white,
                                fontFamily: 'OpenSans'))),
                  ],
                )
              ],
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
              top: size.width * 0.04,
              left: size.width * 0.04,
              right: size.width * 0.04,
              bottom: size.width * 0.02),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Material(
                  child: Ink.image(
                    image: AssetImage('assets/images/your_fashion.png'),
                    width: size.width,
                    height: size.width * 1.35,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Center(
                child: Container(
                    margin: EdgeInsets.only(top: size.width * 0.75),
                    child: Column(
                      children: [
                        Text(
                          'Your Fashion',
                          style: TextStyle(
                              fontFamily: 'ArchivoBlack',
                              color: Colors.white,
                              fontSize: size.width * 0.09),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Movement',
                            style: TextStyle(
                                fontFamily: 'ArchivoBlack',
                                color: Colors.white,
                                fontSize: size.width * 0.08)),
                        SizedBox(
                          height: size.width * 0.06,
                        ),
                        Container(
                          child: Center(
                            child: Text(
                              'Shop Now',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: size.width * 0.035),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          width: size.width * 0.36,
                          height: size.width * 0.075,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white),
                        )
                      ],
                    )),
              ),
              Positioned.fill(
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadius.circular(13),
                    onTap: () {
                      pushNewScreen(
                        context,
                        screen: ListProduct(
                            list: get_list_product_men, title: "Your Fashion"),
                        withNavBar: true, // OPTIONAL VALUE. True by default.
                        pageTransitionAnimation:
                            PageTransitionAnimation.cupertino,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        Divider(
          thickness: 1.5,
        ),
        SizedBox(
          height: size.width * 0.01,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: size.width * 0.01,
                  bottom: size.width * 0.02,
                  left: size.width * 0.02),
              child: Text(
                'Fashion That Fits',
                style: TextStyle(
                    fontFamily: 'ArchivoBlack',
                    fontSize: size.width * 0.06,
                    color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5, left: size.width * 0.02),
              child: Container(
                width: size.width * 0.45,
                height: size.width * 0.18,
                child: Text(
                  'Discover classic and cool essentials by independent designers.',
                  style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontWeight: FontWeight.bold,
                      fontSize: size.width * 0.035,
                      color: Colors.black),
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                    top: size.width * 0.03, bottom: size.width * 0.01),
                child: ClipRRect(
                  child: Image.asset(
                    'assets/images/Fit.png',
                    width: size.width,
                    height: size.width * 0.6,
                    fit: BoxFit.cover,
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(
                  right: size.width * 0.04,
                  top: size.width * 0.01,
                  bottom: size.width * 0.005),
              child: InkWell(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Join the Lemonade movement",
                        style: TextStyle(
                            fontSize: size.width * 0.04,
                            fontFamily: 'ArchivoBlack',
                            color: Colors.black),
                      ),
                      SizedBox(width: size.width * 0.05),
                      Icon(Icons.arrow_forward_ios_sharp,
                          size: size.width * 0.035)
                    ],
                  ),
                  onTap: () {
                    pushNewScreen(
                      context,
                      screen: ListProduct(
                          list: get_list_product_men, title: "Your movement"),
                      withNavBar: true, // OPTIONAL VALUE. True by default.
                      pageTransitionAnimation:
                          PageTransitionAnimation.cupertino,
                    );
                  }),
            ),
          ],
        ),
        Divider(
          thickness: 1.5,
        ),
        Padding(
          padding: EdgeInsets.only(
              top: size.width * 0.03,
              left: size.width * 0.04,
              right: size.width * 0.04,
              bottom: size.width * 0.02),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Material(
              child: Ink.image(
                image: AssetImage('assets/images/zed.png'),
                width: size.width,
                height: size.width * 1.3,
                fit: BoxFit.cover,
                child: InkWell(
                  onTap: (() {
                    pushNewScreen(
                      context,
                      screen: Designer_detail(name: "ZED"),
                      withNavBar: true, // OPTIONAL VALUE. True by default.
                      pageTransitionAnimation:
                          PageTransitionAnimation.cupertino,
                    );
                  }),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: size.width * 0.025),
        Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text(
            'New Drops',
            style: TextStyle(
                fontFamily: 'ArchivoBlack',
                fontSize: size.width * 0.06,
                color: Colors.black),
          ),
          SizedBox(
            height: size.width * 0.04,
          ),
          Padding(
            padding: EdgeInsets.only(
                top: size.width * 0.06,
                left: size.width * 0.04,
                right: size.width * 0.04,
                bottom: size.width * 0.02),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Material(
                child: Ink.image(
                  image: AssetImage('assets/images/Potion_Kitchen.png'),
                  width: size.width,
                  height: size.width * 1.3,
                  fit: BoxFit.cover,
                  child: InkWell(
                    onTap: (() {
                      pushNewScreen(
                        context,
                        screen: ListProduct(
                            list: get_list_product_men, title: "New Drop"),
                        withNavBar: true, // OPTIONAL VALUE. True by default.
                        pageTransitionAnimation:
                            PageTransitionAnimation.cupertino,
                      );
                    }),
                  ),
                ),
              ),
            ),
          ),
        ]),
        SizedBox(
          height: size.width * 0.02,
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text(
            'Beauty and Wellness',
            style: TextStyle(
                fontFamily: 'ArchivoBlack',
                fontSize: size.width * 0.06,
                color: Colors.black),
          ),
          SizedBox(
            height: size.width * 0.015,
          ),
          Padding(
            padding: EdgeInsets.only(
                top: size.width * 0.06,
                left: size.width * 0.04,
                right: size.width * 0.04,
                bottom: size.width * 0.02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Stack(children: [
                        Container(
                          height: size.width * 0.59,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 0.5,
                                    blurRadius: 2,
                                    offset: Offset(0, 6))
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "New Drops",
                                style: TextStyle(
                                  fontFamily: 'ArchivoBlack',
                                  fontSize: size.width * 0.04,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: size.width * 0.05,
                              )
                            ],
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20)),
                          child: Material(
                            child: Ink.image(
                              image: AssetImage('assets/images/new_drops.png'),
                              height: size.width * 0.465,
                              fit: BoxFit.cover,
                              child: InkWell(
                                onTap: (() {
                                  pushNewScreen(
                                    context,
                                    screen: ListProduct(
                                        list: get_list_product_men,
                                        title: "New Drops"),
                                    withNavBar:
                                        true, // OPTIONAL VALUE. True by default.
                                    pageTransitionAnimation:
                                        PageTransitionAnimation.cupertino,
                                  );
                                }),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                    SizedBox(
                      width: size.width * 0.08,
                    ),
                    Expanded(
                      child: Stack(children: [
                        Container(
                          height: size.width * 0.59,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 0.5,
                                    blurRadius: 2,
                                    offset: Offset(0, 6))
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Shop Slides",
                                style: TextStyle(
                                    fontFamily: 'ArchivoBlack',
                                    fontSize: size.width * 0.04,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                height: size.width * 0.05,
                              )
                            ],
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20)),
                          child: Material(
                            child: Ink.image(
                              image:
                                  AssetImage('assets/images/shop_slides.png'),
                              height: size.width * 0.465,
                              fit: BoxFit.cover,
                              child: InkWell(
                                onTap: (() {
                                  pushNewScreen(
                                    context,
                                    screen: ListProduct(
                                        list: get_list_product_men,
                                        title: "Shop Slides"),
                                    withNavBar:
                                        true, // OPTIONAL VALUE. True by default.
                                    pageTransitionAnimation:
                                        PageTransitionAnimation.cupertino,
                                  );
                                }),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
                SizedBox(height: size.width * 0.06),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Stack(children: [
                        Container(
                            width: double.infinity,
                            height: size.width * 0.59,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 0.5,
                                      blurRadius: 2,
                                      offset: Offset(0, 6))
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: size.width * 0.01,
                                ),
                                Text(
                                  "Designer of",
                                  style: TextStyle(
                                      fontFamily: 'ArchivoBlack',
                                      fontSize: size.width * 0.04,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  height: size.width * 0.01,
                                ),
                                Text(
                                  "the Week",
                                  style: TextStyle(
                                      fontFamily: 'ArchivoBlack',
                                      fontSize: size.width * 0.04,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  height: size.width * 0.01,
                                ),
                              ],
                            )),
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20)),
                          child: Material(
                            child: Ink.image(
                              image: AssetImage('assets/images/designer.png'),
                              height: size.width * 0.465,
                              fit: BoxFit.cover,
                              child: InkWell(
                                onTap: (() {
                                  pushNewScreen(
                                    context,
                                    screen: Designer_detail(name: "ZED"),
                                    withNavBar:
                                        true, // OPTIONAL VALUE. True by default.
                                    pageTransitionAnimation:
                                        PageTransitionAnimation.cupertino,
                                  );
                                }),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                    SizedBox(
                      width: size.width * 0.08,
                    ),
                    Expanded(
                      child: Stack(children: [
                        Container(
                          height: size.width * 0.59,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 0.5,
                                    blurRadius: 2,
                                    offset: Offset(0, 6))
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Shop Suits",
                                style: TextStyle(
                                  fontFamily: 'ArchivoBlack',
                                  fontSize: size.width * 0.04,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: size.width * 0.05,
                              )
                            ],
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20)),
                          child: Material(
                            child: Ink.image(
                              image: AssetImage('assets/images/shop_suits.png'),
                              height: size.width * 0.465,
                              fit: BoxFit.cover,
                              child: InkWell(
                                onTap: (() {
                                  pushNewScreen(
                                    context,
                                    screen: ListProduct(
                                        list: get_list_product_men,
                                        title: "Shop Suits"),
                                    withNavBar:
                                        true, // OPTIONAL VALUE. True by default.
                                    pageTransitionAnimation:
                                        PageTransitionAnimation.cupertino,
                                  );
                                }),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.width * 0.06,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Stack(children: [
                        Container(
                          height: size.width * 0.59,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 0.5,
                                    blurRadius: 2,
                                    offset: Offset(0, 6))
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "Button Up",
                                style: TextStyle(
                                  fontFamily: 'ArchivoBlack',
                                  fontSize: size.width * 0.04,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(
                                height: size.width * 0.05,
                              )
                            ],
                          ),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20)),
                          child: Material(
                            child: Ink.image(
                              image: AssetImage('assets/images/button_up.png'),
                              height: size.width * 0.465,
                              fit: BoxFit.cover,
                              child: InkWell(
                                onTap: (() {
                                  pushNewScreen(
                                    context,
                                    screen: ListProduct(
                                        list: get_list_product_men,
                                        title: "Button Up"),
                                    withNavBar:
                                        true, // OPTIONAL VALUE. True by default.
                                    pageTransitionAnimation:
                                        PageTransitionAnimation.cupertino,
                                  );
                                }),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                    SizedBox(
                      width: size.width * 0.08,
                    ),
                    Expanded(
                      child: Stack(children: [
                        Container(
                            width: double.infinity,
                            height: size.width * 0.59,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 0.5,
                                      blurRadius: 2,
                                      offset: Offset(0, 6))
                                ]),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: size.width * 0.01,
                                ),
                                Text(
                                  "Best Selling",
                                  style: TextStyle(
                                      fontFamily: 'ArchivoBlack',
                                      fontSize: size.width * 0.04,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  height: size.width * 0.01,
                                ),
                                Text(
                                  "T-Shirts",
                                  style: TextStyle(
                                      fontFamily: 'ArchivoBlack',
                                      fontSize: size.width * 0.04,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  height: size.width * 0.01,
                                ),
                              ],
                            )),
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20),
                              topLeft: Radius.circular(20)),
                          child: Material(
                            child: Ink.image(
                              image: AssetImage('assets/images/t_shirts.png'),
                              height: size.width * 0.465,
                              fit: BoxFit.cover,
                              child: InkWell(
                                onTap: (() {
                                  pushNewScreen(
                                    context,
                                    screen: ListProduct(
                                        list: get_list_product_men,
                                        title: "Best Selling"),
                                    withNavBar:
                                        true, // OPTIONAL VALUE. True by default.
                                    pageTransitionAnimation:
                                        PageTransitionAnimation.cupertino,
                                  );
                                }),
                              ),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
        SizedBox(height: size.width * 0.06)
      ],
    );
  }
}
