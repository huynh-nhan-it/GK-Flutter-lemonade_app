import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lemonade_app/constants.dart';
import 'package:lemonade_app/model/product.dart';
import 'package:lemonade_app/screen/product_screen/appbar_product.dart';
import 'package:lemonade_app/screen/product_screen/detail_product.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class ListProduct extends StatefulWidget {
  final List<Product> list;
  final String title;

  ListProduct({
    Key? key,
    required this.list,
    required this.title,
  }) : super(key: key);

  @override
  State<ListProduct> createState() =>
      _ListProductState(list: list, title: title);
}

class _ListProductState extends State<ListProduct> {
  final List<Product> list;
  final String title;
  List<bool> icon = [];
  _ListProductState({
    Key? key,
    required this.list,
    required this.title,
  });

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < list.length; i++) {
      icon.add(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: buildAppBar(context, title),
        body: Column(children: [
          Expanded(
            flex: 7,
            child: Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.white,
                      spreadRadius: 10,
                      blurRadius: 7,
                      offset: Offset(7, 0)),
                ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Text(
                                  "Recommended",
                                  style: TextStyle(
                                    fontFamily: 'ArchivoBlack',
                                    fontSize: 17,
                                  ),
                                ),
                                Icon(Icons.keyboard_arrow_down)
                              ],
                            )),
                        Positioned.fill(
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              splashColor: Colors.white70,
                              onTap: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                            margin: EdgeInsets.only(right: 10),
                            child: Row(
                              children: [
                                Icon(Icons.filter_list),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "Filter",
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                        Positioned.fill(
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              splashColor: Colors.white70,
                              onTap: () {},
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
          ),
          Expanded(
              flex: 93,
              child: Container(
                color: Colors.white,
                margin: EdgeInsets.only(
                    top: size.width * 0.01,
                    bottom: size.width * 0.01,
                    left: size.width * 0.02,
                    right: size.width * 0.02),
                width: size.width,
                child: ListView(children: [
                  Container(
                    height: size.width * 0.1,
                    child: Center(
                        child: Text(
                      "Show in " +
                          list.length.toString() +
                          " for " +
                          list.length.toString() +
                          " results",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: size.width * 0.035,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                  GridView.count(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 2,
                    mainAxisSpacing: size.width * 0.015,
                    crossAxisSpacing: size.width * 0.02,
                    childAspectRatio: 0.54,
                    children: [
                      ...List.generate(
                          list.length,
                          (index) => Container(
                                child: Stack(children: [
                                  Column(children: [
                                    Container(
                                        height: size.width * 0.6,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    list[index].list_image[0]),
                                                fit: BoxFit.cover))),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        if (list[index].status == 1) ...[
                                          Expanded(
                                              flex: 9,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        top: size.width * 0.01),
                                                    child: Text(
                                                      'NEW',
                                                      style: TextStyle(
                                                          fontFamily: 'Roboto',
                                                          color: Color.fromARGB(
                                                              255,
                                                              219,
                                                              209,
                                                              100),
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          fontSize: size.width *
                                                              0.04),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        top:
                                                            size.width * 0.005),
                                                    child: Text(
                                                        list[index].designer,
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight.w900,
                                                            fontSize:
                                                                size.width *
                                                                    0.035)),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        top:
                                                            size.width * 0.005),
                                                    child: Text(
                                                      list[index].name,
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'OpenSans',
                                                          fontSize: size.width *
                                                              0.035,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        top:
                                                            size.width * 0.008),
                                                    child: Text(
                                                        list[index].price,
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Roboto',
                                                            fontSize:
                                                                size.width *
                                                                    0.035,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                  ),
                                                ],
                                              )),
                                          Expanded(flex: 1, child: Container())
                                        ] else ...[
                                          Expanded(
                                              flex: 9,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        top: size.width * 0.01),
                                                    child: Text(
                                                        list[index].designer,
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight.w900,
                                                            fontSize:
                                                                size.width *
                                                                    0.035)),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        top:
                                                            size.width * 0.005),
                                                    child: Text(
                                                      list[index].name,
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'OpenSans',
                                                          fontSize: size.width *
                                                              0.035,
                                                          fontWeight:
                                                              FontWeight.w700),
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        top: size.width * 0.01),
                                                    child: Text(
                                                        list[index].price,
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Roboto',
                                                            fontSize:
                                                                size.width *
                                                                    0.035,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                  ),
                                                ],
                                              )),
                                          Expanded(flex: 1, child: Container())
                                        ]
                                      ],
                                    )
                                  ]),
                                  Positioned.fill(
                                    child: Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        splashColor: Colors.white70,
                                        onTap: () {
                                          pushNewScreen(
                                            context,
                                            screen: DetailProduct(
                                                product: list[index],
                                                list_like: list),
                                            withNavBar:
                                                false, // OPTIONAL VALUE. True by default.
                                            pageTransitionAnimation:
                                                PageTransitionAnimation
                                                    .cupertino,
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(
                                          top: size.width * 0.585,
                                          left: size.width * 0.40),
                                      width: size.width * 0.5,
                                      height: size.width * 0.1,
                                      child: IconButton(
                                        splashColor: Colors.white,
                                        splashRadius: 1,
                                        icon: SvgPicture.asset(
                                            icon[index]
                                                ? "assets/icons/heart_red.svg"
                                                : "assets/icons/heart.svg",
                                            color: Colors.black,
                                            width: double.maxFinite,
                                            height: double.maxFinite),
                                        onPressed: () {
                                          setState(() {
                                            icon[index] = !icon[index];
                                          });
                                        },
                                      ))
                                ]),
                              ))
                    ],
                  ),
                ]),
              ))
        ]));
  }
}
