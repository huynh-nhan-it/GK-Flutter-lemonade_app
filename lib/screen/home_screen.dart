import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lemonade_app/constants.dart';
import 'package:lemonade_app/screen/discover_sceen/discover_page.dart';
import 'package:lemonade_app/screen/home_screen/home_page.dart';

import 'package:lemonade_app/screen/proflie_screen/profile.dart';
import 'package:lemonade_app/screen/support_screen/support_page.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class Homescreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Homestate();
  }
}

class _Homestate extends State<Homescreen> {
  PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return PersistentTabView(
      context,
      controller: _controller,
      screens: [HomePage(), DiscoverPage(), SupportPage(), Profile_Screen()],
      items: [...getFooter()],
      confineInSafeArea: true,
      backgroundColor: Color.fromARGB(255, 255, 254, 254),
      navBarHeight:
          MediaQuery.of(context).size.height * 0.1, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        colorBehindNavBar: Color.fromARGB(255, 90, 78, 78),
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style6,
    );
  }

  List<PersistentBottomNavBarItem> getFooter() {
    return List.generate(
        list_icons.length,
        (index) => PersistentBottomNavBarItem(
              icon: list_icons[index],
              title: list_names[index],
              iconSize: MediaQuery.of(context).size.height * 0.043,
              activeColorPrimary: Color.fromARGB(255, 9, 14, 19),
              inactiveColorPrimary: CupertinoColors.systemGrey,
            ));
  }
}
