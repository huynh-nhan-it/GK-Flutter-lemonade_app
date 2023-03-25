import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lemonade_app/model/product.dart';
import 'package:lemonade_app/screen/designer/designer_screen.dart';
import 'package:lemonade_app/screen/discover_sceen/detail_discover.dart';

import 'package:lemonade_app/screen/discover_sceen/discover_page.dart';
import 'package:lemonade_app/screen/discover_sceen/list_designer_page.dart';
import 'package:lemonade_app/screen/home_screen.dart';
import 'package:lemonade_app/screen/home_screen/home_page.dart';
import 'package:lemonade_app/screen/login_signup/login.dart';
import 'package:lemonade_app/screen/product_screen/detail_product.dart';
import 'package:lemonade_app/screen/product_screen/list_product.dart';
import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lemonade App',
      home: Homescreen(),
    );
  }
}
