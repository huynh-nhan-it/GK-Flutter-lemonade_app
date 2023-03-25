import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lemonade_app/constants.dart';
import 'package:lemonade_app/screen/discover_sceen/appbar_discover.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:readmore/readmore.dart';

import '../product_screen/detail_product.dart';

class Designer_detail extends StatefulWidget {
  final String name;
  Designer_detail({Key? key, required this.name}) : super(key: key);

  @override
  State<Designer_detail> createState() => Designer_detailState(name: name);
}

class Designer_detailState extends State<Designer_detail> {
  final String name;
  List<bool> icon = [];
  @override
  void initState() {
    super.initState();
    for (int i = 0; i < get_list_product_men.length; i++) {
      icon.add(false);
    }
  }

  Designer_detailState({Key? key, required this.name});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: buildAppBar(context, "Designer"),
      body: Container(
        width: size.width,
        child: ListView(
          children: [
            Container(
              width: size.width,
              height: size.width * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/city.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: size.width,
              child: Padding(
                padding: EdgeInsets.all(size.width * 0.02),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontSize: size.width * 0.08,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: size.width * 0.03,
                    ),
                    ReadMoreText(
                      "Mallika has always had an interest in fashion, so it was only fitting that she would create her own brand for both men and women.Most of the looks in the collection are sold as a set to take out the mental stress of putting together an outfit. Craftsmanship and high-quality fabrics remain of utmost importance and that is why the brand uses a wide assortment of organic fabrics. Be Aside is for those who want to look stylish, with no stress. Proudly designed and made in India.",
                      trimLines: 4,
                      style: TextStyle(
                        fontSize: size.width * 0.035,
                        fontWeight: FontWeight.w500,
                      ),
                      colorClickableText: Colors.blueAccent,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Read more...',
                      trimExpandedText: 'See less',
                      moreStyle: TextStyle(
                          fontSize: size.width * 0.03,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: size.width * 0.03,
                    ),
                    Container(
                      width: size.width,
                      child: Column(
                        children: [
                          Container(
                              decoration: BoxDecoration(boxShadow: [
                                BoxShadow(
                                    color: Colors.white,
                                    spreadRadius: 10,
                                    blurRadius: 7,
                                    offset: Offset(7, 0)),
                              ]),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                          child: Row(
                                        children: [
                                          Text(
                                            "Recommended",
                                            style: TextStyle(
                                              fontFamily: 'ArchivoBlack',
                                              fontSize: size.width * 0.035,
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
                                              Icon(
                                                Icons.filter_list,
                                                size: size.width * 0.04,
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Text(
                                                "Filter",
                                                style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    fontSize:
                                                        size.width * 0.035,
                                                    fontWeight:
                                                        FontWeight.bold),
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
                          Container(
                            height: size.width * 0.1,
                            child: Center(
                                child: Text(
                              "Show in " +
                                  get_list_product_men.length.toString() +
                                  " for " +
                                  get_list_product_men.length.toString() +
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
                                  get_list_product_men.length,
                                  (index) => Container(
                                        child: Stack(children: [
                                          Column(children: [
                                            Container(
                                                height: size.width * 0.6,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            get_list_product_men[
                                                                    index]
                                                                .list_image[0]),
                                                        fit: BoxFit.cover))),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                if (get_list_product_men[index]
                                                        .status ==
                                                    1) ...[
                                                  Expanded(
                                                      flex: 9,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            margin: EdgeInsets.only(
                                                                top:
                                                                    size.width *
                                                                        0.01),
                                                            child: Text(
                                                              'NEW',
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'Roboto',
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          219,
                                                                          209,
                                                                          100),
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  fontSize:
                                                                      size.width *
                                                                          0.04),
                                                            ),
                                                          ),
                                                          Container(
                                                            margin: EdgeInsets.only(
                                                                top:
                                                                    size.width *
                                                                        0.005),
                                                            child: Text(
                                                                get_list_product_men[
                                                                        index]
                                                                    .designer,
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w900,
                                                                    fontSize: size
                                                                            .width *
                                                                        0.035)),
                                                          ),
                                                          Container(
                                                            margin: EdgeInsets.only(
                                                                top:
                                                                    size.width *
                                                                        0.005),
                                                            child: Text(
                                                              get_list_product_men[
                                                                      index]
                                                                  .name,
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'OpenSans',
                                                                  fontSize:
                                                                      size.width *
                                                                          0.035,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700),
                                                            ),
                                                          ),
                                                          Container(
                                                            margin: EdgeInsets.only(
                                                                top:
                                                                    size.width *
                                                                        0.008),
                                                            child: Text(
                                                                get_list_product_men[
                                                                        index]
                                                                    .price,
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
                                                  Expanded(
                                                      flex: 1,
                                                      child: Container())
                                                ] else ...[
                                                  Expanded(
                                                      flex: 9,
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            margin: EdgeInsets.only(
                                                                top:
                                                                    size.width *
                                                                        0.01),
                                                            child: Text(
                                                                get_list_product_men[
                                                                        index]
                                                                    .designer,
                                                                style: TextStyle(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w900,
                                                                    fontSize: size
                                                                            .width *
                                                                        0.035)),
                                                          ),
                                                          Container(
                                                            margin: EdgeInsets.only(
                                                                top:
                                                                    size.width *
                                                                        0.005),
                                                            child: Text(
                                                              get_list_product_men[
                                                                      index]
                                                                  .name,
                                                              style: TextStyle(
                                                                  fontFamily:
                                                                      'OpenSans',
                                                                  fontSize:
                                                                      size.width *
                                                                          0.035,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700),
                                                            ),
                                                          ),
                                                          Container(
                                                            margin: EdgeInsets.only(
                                                                top:
                                                                    size.width *
                                                                        0.01),
                                                            child: Text(
                                                                get_list_product_men[
                                                                        index]
                                                                    .price,
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
                                                  Expanded(
                                                      flex: 1,
                                                      child: Container())
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
                                                        product:
                                                            get_list_product_men[
                                                                index],
                                                        list_like:
                                                            get_list_product_men),
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
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
