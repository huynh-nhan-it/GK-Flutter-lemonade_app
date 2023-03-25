import 'package:flutter/material.dart';
import 'package:lemonade_app/screen/home_screen/home_page.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class SupportPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    // TODO: implement build
    return Scaffold(
      body: Stack(children: [
        Container(
            width: size.width,
            child: ListView(children: [
              Column(
                children: [
                  Container(
                      width: size.width,
                      height: size.width * 0.5,
                      color: Colors.grey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: size.width * 0.015),
                          Text(
                            'Lemonade Fashion',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                                fontSize: size.width * 0.08),
                          ),
                          SizedBox(
                            height: size.width * 0.015,
                          ),
                          Text(
                            'Looking for your next outfit? Get measured for the perfect fit',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: size.width * 0.035),
                          ),
                          SizedBox(
                            height: size.width * 0.02,
                          ),
                          Container(
                              height: size.width * 0.15,
                              width: size.width * 0.15,
                              child: CircleAvatar(
                                radius: size.width * 0.075, // Image radius
                                backgroundImage:
                                    AssetImage('assets/images/city.png'),
                              )),
                          SizedBox(
                            height: size.width * 0.015,
                          ),
                          Text(
                            'King Nope',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: size.width * 0.035),
                          ),
                          SizedBox(
                            height: size.width * 0.015,
                          ),
                          Text(
                            'Typically replies in a few minutes',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                fontSize: size.width * 0.035),
                          ),
                        ],
                      )),
                  Container(
                    color: Colors.white12,
                    child: Column(children: [
                      SizedBox(
                        height: size.width * 0.7,
                      ),
                      Text(
                        'We run on Intercom',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontSize: size.width * 0.035),
                      ),
                      SizedBox(
                        height: size.width * 0.01,
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      TextField(
                          decoration: InputDecoration(
                              hintText: "   Start a coversation...",
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent)))),
                      SizedBox(
                        height: size.width * 0.015,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: size.width * 0.015,
                          ),
                          Text(
                            "Aa",
                            style: TextStyle(
                                fontFamily: "OpenSans",
                                fontSize: size.width * 0.05,
                                color: Colors.black),
                          ),
                          SizedBox(
                            width: size.width * 0.025,
                          ),
                          Container(
                            width: size.width * 0.09,
                            height: size.width * 0.05,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: Colors.grey)),
                            child: Center(
                                child: Text("GIF",
                                    style: TextStyle(
                                        fontFamily: "OpenSans",
                                        fontSize: size.width * 0.03,
                                        color: Colors.grey))),
                          ),
                          SizedBox(
                            width: size.width * 0.025,
                          ),
                          Container(
                              child: Icon(
                            Icons.image,
                            size: size.width * 0.07,
                            color: Colors.grey,
                          ))
                        ],
                      ),
                      SizedBox(
                        height: size.width * 0.05,
                      ),
                    ]),
                  )
                ],
              )
            ])),
      ]),
    );
  }
}
