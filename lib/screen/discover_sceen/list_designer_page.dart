import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lemonade_app/constants.dart';
import 'package:lemonade_app/model/list_designer.dart';
import 'package:lemonade_app/screen/designer/designer_screen.dart';
import 'package:lemonade_app/screen/discover_sceen/appbar_discover.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class Designer_Page extends StatefulWidget {
  final List<ListDesigner> list_men;
  final List<ListDesigner> list_women;
  final int index;
  final String title;
  const Designer_Page(
      {Key? key,
      required this.list_men,
      required this.list_women,
      required this.index,
      required this.title})
      : super(key: key);
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Designer_State(
        list_men: list_men, list_women: list_women, index: index, title: title);
  }
}

class _Designer_State extends State<Designer_Page>
    with TickerProviderStateMixin {
  final List<ListDesigner> list_men;
  final List<ListDesigner> list_women;
  final int index;
  final String title;

  _Designer_State(
      {Key? key,
      required this.list_men,
      required this.list_women,
      required this.index,
      required this.title});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    TabController _tabController = TabController(length: 2, vsync: this);
    // TODO: implement build
    _tabController.index = index;
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
                child:
                    TabBarView(controller: _tabController, children: <Widget>[
                  ListView.builder(
                      controller: ScrollController(),
                      itemCount: list_women.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(size.width * 0.04),
                          child: Container(
                            width: size.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      top: size.width * 0.02,
                                      bottom: size.width * 0.039),
                                  child: Text(
                                    list_women[index].Alphaword,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.width * 0.06),
                                  ),
                                ),
                                ...List.generate(
                                    list_women[index].list_design.length,
                                    (index_item) => Column(
                                          children: [
                                            Stack(children: [
                                              Container(
                                                margin: EdgeInsets.only(
                                                    bottom: size.width * 0.02,
                                                    top: size.width * 0.02),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      list_women[index]
                                                              .list_design[
                                                          index_item],
                                                      style: TextStyle(
                                                          fontSize: size.width *
                                                              0.035,
                                                          fontFamily: 'Roboto'),
                                                    ),
                                                    Icon(
                                                      Icons
                                                          .arrow_forward_ios_rounded,
                                                      size: size.width * 0.03,
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Positioned.fill(
                                                child: Material(
                                                  color: Colors.transparent,
                                                  child: InkWell(
                                                    onTap: () {
                                                      pushNewScreen(
                                                        context,
                                                        screen: Designer_detail(
                                                            name: list_women[
                                                                        index]
                                                                    .list_design[
                                                                index_item]),
                                                        withNavBar:
                                                            true, // OPTIONAL VALUE. True by default.
                                                        pageTransitionAnimation:
                                                            PageTransitionAnimation
                                                                .cupertino,
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ]),
                                            Divider(
                                              thickness: 0.5,
                                              height: 0,
                                            ),
                                          ],
                                        )),
                              ],
                            ),
                          ),
                        );
                      }),
                  ListView.builder(
                      controller: ScrollController(),
                      itemCount: list_men.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(size.width * 0.04),
                          child: Container(
                            width: size.width,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      top: size.width * 0.02,
                                      bottom: size.width * 0.039),
                                  child: Text(
                                    list_men[index].Alphaword,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.width * 0.06),
                                  ),
                                ),
                                ...List.generate(
                                    list_men[index].list_design.length,
                                    (index_item) => Column(
                                          children: [
                                            Stack(children: [
                                              Container(
                                                margin: EdgeInsets.only(
                                                    bottom: size.width * 0.02,
                                                    top: size.width * 0.02),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      list_men[index]
                                                              .list_design[
                                                          index_item],
                                                      style: TextStyle(
                                                          fontSize: size.width *
                                                              0.035,
                                                          fontFamily: 'Roboto'),
                                                    ),
                                                    Icon(
                                                      Icons
                                                          .arrow_forward_ios_rounded,
                                                      size: size.width * 0.03,
                                                    )
                                                  ],
                                                ),
                                              ),
                                              Positioned.fill(
                                                child: Material(
                                                  color: Colors.transparent,
                                                  child: InkWell(
                                                    onTap: () {
                                                      pushNewScreen(
                                                        context,
                                                        screen: Designer_detail(
                                                            name: list_men[
                                                                        index]
                                                                    .list_design[
                                                                index_item]),
                                                        withNavBar:
                                                            true, // OPTIONAL VALUE. True by default.
                                                        pageTransitionAnimation:
                                                            PageTransitionAnimation
                                                                .cupertino,
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ]),
                                            Divider(
                                              thickness: 0.5,
                                              height: 0,
                                            ),
                                          ],
                                        )),
                              ],
                            ),
                          ),
                        );
                      }),
                ]))
          ],
        ));
  }
}
