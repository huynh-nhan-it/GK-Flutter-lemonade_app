import 'package:flutter/material.dart';

import 'package:lemonade_app/constants.dart';

import 'package:lemonade_app/screen/appbar.dart';
import 'package:lemonade_app/screen/discover_sceen/detail_discover.dart';
import 'package:lemonade_app/screen/discover_sceen/list_designer_page.dart';

import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../product_screen/list_product.dart';

class DiscoverPage extends StatefulWidget {
  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<DiscoverPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: buildAppBar(context, 'Discover'), body: getBody());
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;
    TabController _tabController = TabController(length: 2, vsync: this);
    return Column(
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
          child: Container(
            width: size.width,
            child: TabBarView(controller: _tabController, children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(
                      top: size.width * 0.04,
                      left: size.width * 0.04,
                      right: size.width * 0.04),
                  child: ListView.builder(
                      controller: ScrollController(),
                      itemCount: list_women.length,
                      itemBuilder: (_, index) {
                        return Container(
                            margin: EdgeInsets.only(bottom: size.width * 0.04),
                            child: Stack(children: [
                              Row(
                                children: [
                                  Expanded(
                                      flex: 7,
                                      child: Container(
                                        height: size.width * 0.27,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(11),
                                                bottomLeft:
                                                    Radius.circular(11)),
                                            color: color_women[index]),
                                      )),
                                  Expanded(
                                    flex: 3,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(11),
                                          bottomRight: Radius.circular(11)),
                                      child: Image.asset(
                                        list_women[index].image,
                                        height: size.width * 0.27,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: size.width * 0.093,
                                    left: size.width * 0.03),
                                child: Text(
                                  list_women[index].name,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'OpenSans',
                                    fontSize: size.width * 0.05,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Positioned.fill(
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                      borderRadius: BorderRadius.circular(11),
                                      onTap: () async {
                                        if (list_women[index].ID == 4 ||
                                            list_women[index].ID == 5 ||
                                            list_women[index].ID == 8) {
                                          var list_discover_men =
                                              await list_detail_discover_men(
                                                  list_men[index].ID);
                                          var list_discover_women =
                                              await list_detail_discover_women(
                                                  list_women[index].ID);
                                          pushNewScreen(
                                            context,
                                            screen: DetailDiscoverScreen(
                                              list_men: list_discover_men
                                                  as List<String>,
                                              list_women: list_discover_women
                                                  as List<String>,
                                              index: _tabController.index,
                                              title: list_men[index].name,
                                            ),
                                            withNavBar:
                                                true, // OPTIONAL VALUE. True by default.
                                            pageTransitionAnimation:
                                                PageTransitionAnimation
                                                    .cupertino,
                                          );
                                        } else if (list_women[index].ID == 3) {
                                          pushNewScreen(
                                            context,
                                            screen: Designer_Page(
                                              list_men: list_desiner_men,
                                              list_women: list_desiner_women,
                                              index: _tabController.index,
                                              title: list_men[index].name,
                                            ),
                                            withNavBar:
                                                true, // OPTIONAL VALUE. True by default.
                                            pageTransitionAnimation:
                                                PageTransitionAnimation
                                                    .cupertino,
                                          );
                                        } else {
                                          pushNewScreen(
                                            context,
                                            screen: ListProduct(
                                                list: get_list_product_women,
                                                title: list_women[index].name),
                                            withNavBar:
                                                true, // OPTIONAL VALUE. True by default.
                                            pageTransitionAnimation:
                                                PageTransitionAnimation
                                                    .cupertino,
                                          );
                                        }
                                      }),
                                ),
                              ),
                            ]));
                      })),
              Padding(
                  padding: EdgeInsets.only(
                      top: size.width * 0.04,
                      left: size.width * 0.04,
                      right: size.width * 0.04),
                  child: ListView.builder(
                      controller: ScrollController(),
                      itemCount: list_men.length,
                      itemBuilder: (_, index) {
                        return Container(
                            margin: EdgeInsets.only(bottom: size.width * 0.04),
                            child: Stack(children: [
                              Row(
                                children: [
                                  Expanded(
                                      flex: 7,
                                      child: Container(
                                        height: size.width * 0.27,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(11),
                                                bottomLeft:
                                                    Radius.circular(11)),
                                            color: color_men[index]),
                                      )),
                                  Expanded(
                                    flex: 3,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(11),
                                          bottomRight: Radius.circular(11)),
                                      child: Image.asset(
                                        list_men[index].image,
                                        height: size.width * 0.27,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: size.width * 0.093,
                                    left: size.width * 0.03),
                                child: Text(
                                  list_men[index].name,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'OpenSans',
                                    fontSize: size.width * 0.05,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Positioned.fill(
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(11),
                                    onTap: () async {
                                      if (list_men[index].ID == 4 ||
                                          list_men[index].ID == 5 ||
                                          list_men[index].ID == 8) {
                                        var list_discover_men =
                                            await list_detail_discover_men(
                                                list_men[index].ID);
                                        var list_discover_women =
                                            await list_detail_discover_women(
                                                list_women[index].ID);
                                        pushNewScreen(
                                          context,
                                          screen: DetailDiscoverScreen(
                                            list_men: list_discover_men
                                                as List<String>,
                                            list_women: list_discover_women
                                                as List<String>,
                                            index: _tabController.index,
                                            title: list_men[index].name,
                                          ),
                                          withNavBar:
                                              true, // OPTIONAL VALUE. True by default.
                                          pageTransitionAnimation:
                                              PageTransitionAnimation.cupertino,
                                        );
                                      } else if (list_men[index].ID == 3) {
                                        pushNewScreen(
                                          context,
                                          screen: Designer_Page(
                                            list_men: list_desiner_men,
                                            list_women: list_desiner_women,
                                            index: _tabController.index,
                                            title: list_men[index].name,
                                          ),
                                          withNavBar:
                                              true, // OPTIONAL VALUE. True by default.
                                          pageTransitionAnimation:
                                              PageTransitionAnimation.cupertino,
                                        );
                                      } else {
                                        pushNewScreen(
                                          context,
                                          screen: ListProduct(
                                              list: get_list_product_men,
                                              title: list_men[index].name),
                                          withNavBar:
                                              true, // OPTIONAL VALUE. True by default.
                                          pageTransitionAnimation:
                                              PageTransitionAnimation.cupertino,
                                        );
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ]));
                      })),
            ]),
          ),
        ),
      ],
    );
  }
}
