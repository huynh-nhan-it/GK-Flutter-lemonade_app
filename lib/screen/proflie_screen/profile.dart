import 'package:flutter/material.dart';
import 'package:lemonade_app/screen/Login/login_screen.dart';
import 'package:lemonade_app/screen/Signup/signup_screen.dart';
import 'package:lemonade_app/screen/appbar.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import '../login_signup/login.dart';

class Profile_Screen extends StatefulWidget {
  Profile_Screen({Key? key}) : super(key: key);

  @override
  State<Profile_Screen> createState() => _Profile_ScreenState();
}

enum SingingCharacter { Men, Women }

class _Profile_ScreenState extends State<Profile_Screen> {
  SingingCharacter? _character = SingingCharacter.Men;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: buildAppBar(context, "Profile"),
        body: Container(
          width: size.width,
          child: ListView(
            children: [
              SizedBox(
                height: size.width * 0.03,
              ),
              Container(
                  child: Center(
                child: Text(
                    "Accesss your favorites, orders, and more from any device.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: size.width * 0.043,
                        fontWeight: FontWeight.w600)),
              )),
              SizedBox(
                height: size.width * 0.01,
              ),
              Container(
                margin: EdgeInsets.all(size.width * 0.04),
                child: Row(children: [
                  Expanded(
                      child: Stack(children: [
                    Container(
                      height: size.width * 0.08,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.white12,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                          child: Text("Sign Up",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: size.width * 0.035,
                                  fontWeight: FontWeight.bold))),
                    ),
                    Positioned.fill(
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            pushNewScreen(
                              context,
                              screen: SignUpScreen(),
                              withNavBar:
                                  true, // OPTIONAL VALUE. True by default.
                              pageTransitionAnimation:
                                  PageTransitionAnimation.cupertino,
                            );
                          },
                        ),
                      ),
                    ),
                  ])),
                  SizedBox(
                    width: size.width * 0.04,
                  ),
                  Expanded(
                      child: Stack(children: [
                    Container(
                      height: size.width * 0.08,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5)),
                      child: Center(
                          child: Text("Sign In",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'Roboto',
                                  fontSize: size.width * 0.035,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))),
                    ),
                    Positioned.fill(
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          onTap: () {
                            pushNewScreen(
                              context,
                              screen: LoginScreen(),
                              withNavBar:
                                  true, // OPTIONAL VALUE. True by default.
                              pageTransitionAnimation:
                                  PageTransitionAnimation.cupertino,
                            );
                          },
                        ),
                      ),
                    ),
                  ])),
                ]),
              ),
              Container(
                width: size.width,
                height: size.width * 0.02,
                color: Color.fromARGB(255, 237, 234, 234),
              ),
              SizedBox(
                height: size.width * 0.03,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(size.width * 0.02),
                    child: Text("My Location & Currency",
                        style: TextStyle(
                            fontFamily: 'ArchivoBlack',
                            fontSize: size.width * 0.04,
                            color: Colors.black)),
                  ),
                  SizedBox(height: size.width * 0.01),
                  Container(
                    margin: EdgeInsets.all(size.width * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            ImageIcon(
                              AssetImage(
                                "assets/icons/flag.png",
                              ),
                              size: size.width * 0.05,
                            ),
                            SizedBox(
                              width: size.width * 0.02,
                            ),
                            Text(
                              "VietNam (VND)",
                              style: TextStyle(
                                  fontSize: size.width * 0.035,
                                  fontFamily: 'Roboto'),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: size.width * 0.03,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.width * 0.01,
              ),
              Container(
                width: size.width,
                height: size.width * 0.02,
                color: Color.fromARGB(255, 237, 234, 234),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(size.width * 0.02),
                    child: Text("My Language",
                        style: TextStyle(
                            fontFamily: 'ArchivoBlack',
                            fontSize: size.width * 0.04,
                            color: Colors.black)),
                  ),
                  SizedBox(height: size.width * 0.02),
                  Container(
                    margin: EdgeInsets.all(size.width * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "English",
                          style: TextStyle(
                              fontSize: size.width * 0.035,
                              fontFamily: 'Roboto'),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: size.width * 0.03,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.width * 0.01,
              ),
              Container(
                width: size.width,
                height: size.width * 0.02,
                color: Color.fromARGB(255, 237, 234, 234),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(size.width * 0.02),
                    child: Text("My Shopping Preferences",
                        style: TextStyle(
                            fontFamily: 'ArchivoBlack',
                            fontSize: size.width * 0.04,
                            color: Colors.black)),
                  ),
                  SizedBox(height: size.width * 0.02),
                  Container(
                    child: ListTile(
                      title: Text('Menswear',
                          style: TextStyle(
                              fontSize: size.width * 0.035,
                              fontFamily: 'Roboto')),
                      leading: Radio<SingingCharacter>(
                        value: SingingCharacter.Men,
                        activeColor: Colors.black,
                        groupValue: _character,
                        onChanged: (SingingCharacter? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Container(
                      child: ListTile(
                          title: Text('Womenswear',
                              style: TextStyle(
                                  fontSize: size.width * 0.035,
                                  fontFamily: 'Roboto')),
                          leading: Radio<SingingCharacter>(
                            value: SingingCharacter.Women,
                            activeColor: Colors.black,
                            groupValue: _character,
                            onChanged: (SingingCharacter? value) {
                              setState(() {
                                _character = value;
                              });
                            },
                          )))
                ],
              ),
              SizedBox(
                height: size.width * 0.01,
              ),
              Container(
                width: size.width,
                height: size.width * 0.02,
                color: Color.fromARGB(255, 237, 234, 234),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(size.width * 0.02),
                    child: Text("Gift Cards",
                        style: TextStyle(
                            fontFamily: 'ArchivoBlack',
                            fontSize: size.width * 0.04,
                            color: Colors.black)),
                  ),
                  SizedBox(height: size.width * 0.02),
                  Container(
                    margin: EdgeInsets.all(size.width * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Send Giftcards",
                          style: TextStyle(
                              fontSize: size.width * 0.035,
                              fontFamily: 'Roboto'),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: size.width * 0.03,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(size.width * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "I have a giftcard",
                          style: TextStyle(
                              fontSize: size.width * 0.035,
                              fontFamily: 'Roboto'),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: size.width * 0.03,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.width * 0.01,
              ),
              Container(
                width: size.width,
                height: size.width * 0.02,
                color: Color.fromARGB(255, 237, 234, 234),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(size.width * 0.02),
                    child: Text("Terms & Policies",
                        style: TextStyle(
                            fontFamily: 'ArchivoBlack',
                            fontSize: size.width * 0.04,
                            color: Colors.black)),
                  ),
                  SizedBox(height: size.width * 0.02),
                  Container(
                    margin: EdgeInsets.all(size.width * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Term of Service",
                          style: TextStyle(
                              fontSize: size.width * 0.035,
                              fontFamily: 'Roboto'),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: size.width * 0.03,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(size.width * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Privacy Policy",
                          style: TextStyle(
                              fontSize: size.width * 0.035,
                              fontFamily: 'Roboto'),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: size.width * 0.03,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(size.width * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Cookie Policy",
                          style: TextStyle(
                              fontSize: size.width * 0.035,
                              fontFamily: 'Roboto'),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: size.width * 0.03,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(size.width * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delivery Policy",
                          style: TextStyle(
                              fontSize: size.width * 0.035,
                              fontFamily: 'Roboto'),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: size.width * 0.03,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(size.width * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Returns Policy",
                          style: TextStyle(
                              fontSize: size.width * 0.035,
                              fontFamily: 'Roboto'),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: size.width * 0.03,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.width * 0.01,
              ),
              Container(
                width: size.width,
                height: size.width * 0.02,
                color: Color.fromARGB(255, 237, 234, 234),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(size.width * 0.02),
                    child: Text("Tell Us What you Think",
                        style: TextStyle(
                            fontFamily: 'ArchivoBlack',
                            fontSize: size.width * 0.04,
                            color: Colors.black)),
                  ),
                  SizedBox(height: size.width * 0.02),
                  Container(
                    margin: EdgeInsets.all(size.width * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Help improve the app",
                          style: TextStyle(
                              fontSize: size.width * 0.035,
                              fontFamily: 'Roboto'),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                          size: size.width * 0.03,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.width * 0.03,
              ),
            ],
          ),
        ));
  }
}
