import 'package:flutter/material.dart';
import '../../constants.dart';
import 'package:lemonade_app/screen/Login/components/body.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kPrimaryLightColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_rounded, color: Colors.black, size: 25),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Container(
            margin: EdgeInsets.only(bottom: 2.0),
            child: Text(
              "LOGIN",
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
