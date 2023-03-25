import 'package:carousel_pro/carousel_pro.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lemonade_app/model/product.dart';
import 'package:multi_select_flutter/bottom_sheet/multi_select_bottom_sheet.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../cart.dart';

class DetailProduct extends StatefulWidget {
  final Product product;
  final List<Product> list_like;

  DetailProduct({Key? key, required this.product, required this.list_like})
      : super(key: key);

  @override
  State<DetailProduct> createState() =>
      _DetailProductState(product: product, list_like: list_like);
}

class _DetailProductState extends State<DetailProduct> {
  final Product product;
  final List<Product> list_like;
  var icon;
  var size;

  _DetailProductState(
      {Key? key, required this.product, required this.list_like});

  @override
  void initState() {
    super.initState();
    icon = false;
    size = "Select Size";
  }

  AppBar buildAppBar_detail() {
    return AppBar(
      toolbarHeight: 60,
      backgroundColor: Colors.white,
      elevation: 0,
      leading: Container(
        height: 25,
        width: 25,
        margin: EdgeInsets.only(left: 10, top: 5, bottom: 5),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 237, 234, 234),
          borderRadius: BorderRadius.circular(25),
        ),
        child: IconButton(
          splashRadius: 15,
          icon: Icon(Icons.arrow_back_rounded, color: Colors.black, size: 20),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      leadingWidth: 60,
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 20, top: 5, bottom: 5),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 237, 234, 234),
              borderRadius: BorderRadius.circular(45),
            ),
            child: IconButton(
              splashRadius: 15,
              icon: SvgPicture.asset(
                icon ? "assets/icons/heart_red.svg" : "assets/icons/heart.svg",
                height: 20,
                width: 20,
                color: Colors.black,
              ),
              onPressed: () {
                setState(() {
                  icon = !icon;
                });
              },
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 5, bottom: 5),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 237, 234, 234),
              borderRadius: BorderRadius.circular(45),
            ),
            child: IconButton(
              splashRadius: 15,
              icon: SvgPicture.asset(
                "assets/icons/cart.svg",
                height: 20,
                width: 20,
                color: Colors.black,
              ),
              onPressed: () {
                pushNewScreen(context, screen: CartScreen(), withNavBar: false);
              },
            ),
          ),
        ),
        SizedBox(width: 10)
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: Container(
        height: size.width * 0.16,
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(size.width * 0.03),
          child: Stack(children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(size.width * 0.02)),
              child: Center(
                  child: Text("Add to Bag",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          color: Colors.white,
                          fontSize: size.width * 0.04,
                          fontWeight: FontWeight.w500))),
            ),
            Positioned.fill(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(size.width * 0.02),
                  splashColor: Colors.white70,
                  onTap: () {},
                ),
              ),
            ),
          ]),
        ),
      ),
      appBar: buildAppBar_detail(),
      body: Container(
          color: Colors.white,
          width: size.width,
          child: ListView(
            children: <Widget>[
              Stack(children: [
                Column(
                  children: [
                    Container(
                        height: size.width * 1.2,
                        width: size.width,
                        child: Carousel(
                          dotSize: size.width * 0.01,
                          dotSpacing: size.width * 0.04,
                          dotColor: Colors.grey,
                          dotBgColor: Colors.transparent,
                          dotIncreasedColor: Colors.black,
                          autoplay: true,
                          images: [
                            ...List.generate(
                                product.list_image.length,
                                (index) => Image.asset(
                                      product.list_image[index],
                                      fit: BoxFit.cover,
                                    ))
                          ],
                        )),
                    Divider(
                      thickness: 2,
                      height: 0,
                    ),
                    Padding(
                      padding: EdgeInsets.all(size.width * 0.02),
                      child: Column(
                        children: [
                          Container(
                            width: size.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: size.width * 0.01,
                                ),
                                Text(
                                  product.designer,
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                      fontSize: size.width * 0.08),
                                ),
                                SizedBox(
                                  height: size.width * 0.01,
                                ),
                                Text(
                                  product.name,
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      fontSize: size.width * 0.04),
                                ),
                                SizedBox(
                                  height: size.width * 0.015,
                                ),
                                Text(
                                  product.price,
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w600,
                                      fontSize: size.width * 0.05),
                                ),
                                SizedBox(
                                  height: size.width * 0.015,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: size.width * 0.025),
                          SizedBox(
                            height: size.width * 0.01,
                            width: size.width,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 205, 201, 201),
                                  borderRadius:
                                      BorderRadius.circular(size.width * 0.01)),
                            ),
                          ),
                          SizedBox(height: size.width * 0.025),
                          Container(
                            width: size.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Fabric',
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.bold,
                                      fontSize: size.width * 0.06),
                                ),
                                SizedBox(
                                  height: size.width * 0.015,
                                ),
                                Text(
                                  product.fabric,
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      fontSize: size.width * 0.04),
                                ),
                                SizedBox(
                                  height: size.width * 0.01,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: size.width * 0.025),
                          SizedBox(
                            height: size.width * 0.01,
                            width: size.width,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 205, 201, 201),
                                  borderRadius:
                                      BorderRadius.circular(size.width * 0.01)),
                            ),
                          ),
                          SizedBox(height: size.width * 0.09),
                          Stack(children: [
                            Container(
                              width: size.width,
                              height: size.width * 0.1,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border(
                                    top: BorderSide(color: Colors.black),
                                    bottom: BorderSide(color: Colors.black),
                                    right: BorderSide(color: Colors.black),
                                    left: BorderSide(color: Colors.black),
                                  ),
                                  borderRadius:
                                      BorderRadius.circular(size.width * 0.02)),
                              child: Center(
                                child: Text('Select Size',
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w700,
                                        fontSize: size.width * 0.04)),
                              ),
                            ),
                            Positioned.fill(
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  borderRadius:
                                      BorderRadius.circular(size.width * 0.02),
                                  splashColor: Colors.white70,
                                  onTap: () {},
                                ),
                              ),
                            ),
                          ]),
                          SizedBox(height: size.width * 0.06),
                          Container(
                              width: size.width,
                              child: ExpandablePanel(
                                header: Container(
                                  margin:
                                      EdgeInsets.only(top: size.width * 0.01),
                                  child: Text(
                                    "Description",
                                    style: TextStyle(
                                        fontFamily: "ArchivoBlack",
                                        fontSize: size.width * 0.05),
                                  ),
                                ),
                                theme: ExpandableThemeData(
                                    iconSize: size.width * 0.05,
                                    iconColor: Colors.black),
                                collapsed: Text(
                                  "",
                                  softWrap: true,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                expanded: Text(
                                  product.des,
                                  style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontWeight: FontWeight.w500,
                                      fontSize: size.width * 0.035),
                                  softWrap: true,
                                  maxLines: 6,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              )),
                          Divider(
                            thickness: 2,
                          ),
                          Container(
                              width: size.width,
                              child: ExpandablePanel(
                                  header: Container(
                                    margin:
                                        EdgeInsets.only(top: size.width * 0.01),
                                    child: Text(
                                      "Comments & Add-ons",
                                      style: TextStyle(
                                          fontFamily: "ArchivoBlack",
                                          fontSize: size.width * 0.05),
                                    ),
                                  ),
                                  theme: ExpandableThemeData(
                                      iconSize: size.width * 0.05,
                                      iconColor: Colors.black),
                                  collapsed: Text(
                                    "",
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  expanded: Container(
                                    width: size.width,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Comments",
                                            style: TextStyle(
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.bold,
                                                fontSize: size.width * 0.04)),
                                        SizedBox(
                                          height: size.width * 0.02,
                                        ),
                                        Text(
                                            "We do our best to tailor things to your needs. Request anything you want.",
                                            style: TextStyle(
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w500,
                                                fontSize: size.width * 0.035)),
                                        SizedBox(
                                          height: size.width * 0.02,
                                        ),
                                        Container(
                                            child: TextField(
                                          maxLines: 9,
                                          decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color:
                                                          Colors.transparent)),
                                              hintText:
                                                  "Write your comments here...",
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: Colors.grey))),
                                        ))
                                      ],
                                    ),
                                  ))),
                          Divider(
                            thickness: 2,
                          ),
                          Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 0.5,
                                        blurRadius: 3,
                                        offset: Offset(0, 6))
                                  ]),
                              width: size.width,
                              child: ExpandablePanel(
                                  header: Container(
                                    margin:
                                        EdgeInsets.only(top: size.width * 0.01),
                                    child: Text(
                                      "Delivery",
                                      style: TextStyle(
                                          fontFamily: "ArchivoBlack",
                                          fontSize: size.width * 0.05),
                                    ),
                                  ),
                                  theme: ExpandableThemeData(
                                      iconSize: size.width * 0.05,
                                      iconColor: Colors.black),
                                  collapsed: Text(
                                    "",
                                    softWrap: true,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  expanded: Container(
                                    color: Colors.white,
                                    width: size.width,
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          RichText(
                                            text: TextSpan(children: <TextSpan>[
                                              TextSpan(
                                                  text:
                                                      'This product will ship from ',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black,
                                                      fontFamily: 'Roboto',
                                                      fontSize:
                                                          size.width * 0.035)),
                                              TextSpan(
                                                  text: 'Lebanon',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors.black,
                                                      fontFamily: 'Roboto',
                                                      fontSize:
                                                          size.width * 0.035)),
                                            ]),
                                          ),
                                          SizedBox(
                                            height: size.width * 0.045,
                                          ),
                                          Text(
                                              "Production & Shipping may take up to 10 − 14 days. Designers do their best to craft your items earlier. Every item is handmade and customized to fit your every need. 100% refund and exchange guaranteed within 14 days of receiving item.",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily: 'Roboto',
                                                  fontSize:
                                                      size.width * 0.035)),
                                          SizedBox(
                                            height: size.width * 0.045,
                                          ),
                                          RichText(
                                            text: TextSpan(children: <TextSpan>[
                                              TextSpan(
                                                  text:
                                                      'For more information, please read ',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: 'Roboto',
                                                      color: Colors.black,
                                                      fontSize:
                                                          size.width * 0.035)),
                                              TextSpan(
                                                  text: 'our policy',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: 'Roboto',
                                                      decoration: TextDecoration
                                                          .underline,
                                                      color: Colors.blueAccent,
                                                      fontSize:
                                                          size.width * 0.035)),
                                              TextSpan(
                                                  text: '.',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: 'Roboto',
                                                      fontSize:
                                                          size.width * 0.035)),
                                            ]),
                                          ),
                                        ]),
                                  ))),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                    margin: EdgeInsets.only(
                        top: size.width * 1.14, left: size.width * 0.85),
                    child: Stack(children: [
                      Container(
                        height: size.width * 0.12,
                        width: size.width * 0.12,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius:
                                BorderRadius.circular(size.width * 0.12)),
                        child: Icon(
                          Icons.drive_folder_upload,
                          color: Colors.white,
                          size: size.width * 0.065,
                        ),
                      ),
                      Positioned.fill(
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            borderRadius:
                                BorderRadius.circular(size.width * 0.12),
                            splashColor: Colors.white70,
                            onTap: () {},
                          ),
                        ),
                      ),
                    ]))
              ]),
              SizedBox(height: size.width * 0.02),
              Container(
                width: size.width,
                color: Colors.white70,
                child: Padding(
                  padding: EdgeInsets.all(size.width * 0.02),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("More Like This",
                                style: TextStyle(
                                    fontFamily: 'ArchivoBlack',
                                    color: Colors.black,
                                    fontSize: size.width * 0.035)),
                            Text(list_like.length.toString() + " items",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'OpenSans',
                                    color: Colors.black87,
                                    fontSize: size.width * 0.035))
                          ],
                        ),
                        SizedBox(height: size.width * 0.04),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ...List.generate(
                                  list_like.length >= 5 ? 5 : list_like.length,
                                  (index) {
                                return Container(
                                    width: size.width * 0.5,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                          size.width * 0.03),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey.withOpacity(0.2),
                                            spreadRadius: 0.5,
                                            blurRadius: 3,
                                            offset: Offset(0, 6))
                                      ],
                                    ),
                                    margin: EdgeInsets.only(
                                        bottom: size.width * 0.03,
                                        right: size.width * 0.03,
                                        left: size.width * 0.03),
                                    child: Stack(
                                      children: [
                                        Column(children: [
                                          Container(
                                              height: size.width * 0.6,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  size.width *
                                                                      0.02),
                                                          topRight:
                                                              Radius.circular(
                                                                  size.width *
                                                                      0.02)),
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          list_like[index]
                                                              .list_image[0]),
                                                      fit: BoxFit.cover))),
                                          Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  size.width *
                                                                      0.02),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  size.width *
                                                                      0.02))),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  if (list_like[index].status ==
                                                      1) ...[
                                                    Expanded(
                                                        flex: 9,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top: size
                                                                              .width *
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
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top: size
                                                                              .width *
                                                                          0.005),
                                                              child: Text(
                                                                  list_like[
                                                                          index]
                                                                      .designer,
                                                                  style: TextStyle(
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w900,
                                                                      fontSize:
                                                                          size.width *
                                                                              0.035)),
                                                            ),
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top: size
                                                                              .width *
                                                                          0.005),
                                                              child: Text(
                                                                list_like[index]
                                                                    .name,
                                                                maxLines: 1,
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
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top: size
                                                                              .width *
                                                                          0.008),
                                                              child: Text(
                                                                  list_like[
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
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top: size
                                                                              .width *
                                                                          0.01),
                                                              child: Text(
                                                                  list_like[
                                                                          index]
                                                                      .designer,
                                                                  style: TextStyle(
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w900,
                                                                      fontSize:
                                                                          size.width *
                                                                              0.035)),
                                                            ),
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top: size
                                                                              .width *
                                                                          0.005),
                                                              child: Text(
                                                                list_like[index]
                                                                    .name,
                                                                maxLines: 1,
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
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top: size
                                                                              .width *
                                                                          0.01),
                                                              child: Text(
                                                                  list_like[
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
                                                            Container(
                                                              child: Text(
                                                                '',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        size.width *
                                                                            0.04),
                                                              ),
                                                            ),
                                                          ],
                                                        )),
                                                    Expanded(
                                                        flex: 1,
                                                        child: Container())
                                                  ]
                                                ],
                                              ))
                                        ]),
                                        Positioned.fill(
                                          child: Material(
                                            color: Colors.transparent,
                                            child: InkWell(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      size.width * 0.02),
                                              splashColor: Colors.white70,
                                              onTap: () {
                                                pushNewScreen(
                                                  context,
                                                  screen: DetailProduct(
                                                      product: list_like[index],
                                                      list_like: list_like),
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
                                      ],
                                    ));
                              })
                            ],
                          ),
                        )
                      ]),
                ),
              )
            ],
          )),
    );
  }
}
