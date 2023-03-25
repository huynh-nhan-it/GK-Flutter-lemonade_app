import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:lemonade_app/constants.dart';
import 'package:lemonade_app/screen/discover_sceen/appbar_discover.dart';
import 'package:lemonade_app/screen/product_screen/list_product.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class DetailDiscoverScreen extends StatefulWidget {
  final List<String> list_men;
  final List<String> list_women;
  final int index;
  final String title;
  @override
  _DetailDiscoverScreen createState() => _DetailDiscoverScreen(
      list_men: list_men, list_women: list_women, index: index, title: title);
  const DetailDiscoverScreen(
      {Key? key,
      required this.list_men,
      required this.list_women,
      required this.index,
      required this.title})
      : super(key: key);
}

class _DetailDiscoverScreen extends State<DetailDiscoverScreen>
    with TickerProviderStateMixin {
  final List<String> list_men;
  final List<String> list_women;
  final int index;
  final String title;

  _DetailDiscoverScreen(
      {Key? key,
      required this.list_men,
      required this.list_women,
      required this.index,
      required this.title});
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    _tabController.index = index;
    var size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: buildAppBar(context, title),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: TabBar(
                  controller: _tabController,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.black,
                  tabs: <Widget>[
                    Container(
                      child: Center(
                          child: Text("Women",
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: size.height * 0.03,
                                  fontWeight: FontWeight.w600))),
                    ),
                    Container(
                      child: Center(
                          child: Text(
                        "Men",
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: size.height * 0.03,
                            fontWeight: FontWeight.w600),
                      )),
                    ),
                  ]),
            ),
          ),
          Expanded(
              flex: 9,
              child: TabBarView(controller: _tabController, children: <Widget>[
                Container(
                  child: ListView.builder(
                      controller: ScrollController(),
                      itemCount: list_women.length,
                      itemBuilder: (context, index) {
                        return Stack(children: [
                          Container(
                              width: size.width,
                              child: Column(children: [
                                Container(
                                  margin: EdgeInsets.all(size.width * 0.04),
                                  width: size.width,
                                  child: Text(
                                    list_women[index],
                                    style: TextStyle(
                                        fontSize: size.width * 0.035,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 2,
                                        fontStyle: FontStyle.normal),
                                  ),
                                ),
                                Divider(
                                  height: 0,
                                  thickness: 1,
                                )
                              ])),
                          Positioned.fill(
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {
                                  pushNewScreen(
                                    context,
                                    screen: ListProduct(
                                        list: get_list_product_women,
                                        title: list_women[index]),
                                    withNavBar:
                                        true, // OPTIONAL VALUE. True by default.
                                    pageTransitionAnimation:
                                        PageTransitionAnimation.cupertino,
                                  );
                                },
                              ),
                            ),
                          ),
                        ]);
                      }),
                ),
                Container(
                  child: ListView.builder(
                      controller: ScrollController(),
                      itemCount: list_men.length,
                      itemBuilder: (context, index) {
                        return Stack(children: [
                          Container(
                              width: size.width,
                              child: Column(children: [
                                Container(
                                  margin: EdgeInsets.all(size.width * 0.04),
                                  width: size.width,
                                  child: Text(
                                    list_men[index],
                                    style: TextStyle(
                                        fontSize: size.width * 0.035,
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 2,
                                        fontStyle: FontStyle.normal),
                                  ),
                                ),
                                Divider(
                                  height: 0,
                                  thickness: 1,
                                )
                              ])),
                          Positioned.fill(
                            child: Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () async {
                                  pushNewScreen(
                                    context,
                                    screen: ListProduct(
                                        list: get_list_product_men,
                                        title: list_men[index]),
                                    withNavBar:
                                        true, // OPTIONAL VALUE. True by default.
                                    pageTransitionAnimation:
                                        PageTransitionAnimation.cupertino,
                                  );
                                },
                              ),
                            ),
                          ),
                        ]);
                      }),
                ),
              ]))
        ],
      ),
    );
  }
}
