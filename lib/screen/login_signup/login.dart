import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login_SignUp extends StatefulWidget {
  Login_SignUp({Key? key}) : super(key: key);

  @override
  State<Login_SignUp> createState() => _Login_SignUpState();
}

class _Login_SignUpState extends State<Login_SignUp> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Container(
          margin: EdgeInsets.only(top: 5, left: 5, bottom: 5),
          width: 40,
          height: 40,
          child: IconButton(
            icon: Icon(Icons.arrow_back_rounded, color: Colors.black, size: 25),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        leadingWidth: 60,
        centerTitle: true,
        title: Image.asset('assets/images/logo.png',
            fit: BoxFit.cover, width: 200, height: 30),
      ),
      body: Container(
        width: size.width,
        child: ListView(
          children: [
            SizedBox(
              height: size.width * 0.15,
            ),
            Center(
                child: Container(
              height: size.width * 0.13,
              width: size.width * 0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(size.width * 0.02),
                  color: Color.fromARGB(60, 109, 106, 106)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      child: SvgPicture.asset(
                    "assets/icons/google.svg",
                    height: size.width * 0.08,
                    width: size.width * 0.08,
                    fit: BoxFit.cover,
                  )),
                  SizedBox(
                    width: size.width * 0.02,
                  ),
                  Container(
                    child: Text("Continue with Google",
                        style: TextStyle(
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w500,
                            fontSize: size.width * 0.04)),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
