

import 'package:flutter/material.dart';
import 'package:lemonade_app/screen/Signup/components/body.dart';

import '../../constants.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryLightColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded, color: Colors.black, size: 25),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Container(
            margin: EdgeInsets.only(bottom: 2.0),
            child: Text(
              "SIGN UP",
              maxLines: 1,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'OpenSans',
                fontSize: 28,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
              ),
            )),
      ),
      body: Body(),
    );
  }
}
