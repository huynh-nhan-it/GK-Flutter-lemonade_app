import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Container(
            margin: EdgeInsets.only(bottom: 2.0),
            child: Text(
              "My Bag",
              maxLines: 1,
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'OpenSans',
                fontSize: 28,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w600,
              ),
            )),
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
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Your cart is empty",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "ArchivoBlack",
                fontSize: size.height * 0.05,
              ),
            ),
            SizedBox(
              height: size.height * 0.08,
            ),
            Text(
              "You can shop 5,000+ items from over 200+ designer brands.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Roboto",
                fontWeight: FontWeight.w500,
                fontSize: size.height * 0.03,
              ),
            ),
            SizedBox(
              height: size.height * 0.12,
            ),
            Container(
              height: size.height * 0.08,
              width: size.width * 0.8,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(8)),
              child: Center(
                child: Text("GET INSPIRED",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: size.height * 0.03,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
