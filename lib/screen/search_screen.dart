import 'package:flutter/material.dart';

class Search_Screen extends StatelessWidget {
  const Search_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          height: 25,
          width: 25,
          margin: EdgeInsets.only(left: 10, top: 5, bottom: 12),
          child: IconButton(
            splashRadius: 30,
            icon: Icon(Icons.arrow_back_rounded, color: Colors.black, size: 20),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        backgroundColor: Colors.white,
        toolbarHeight: 60.0,
        title: TextField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
              hintText: " Search...",
              border: InputBorder.none,
              suffixIcon: IconButton(
                icon: Icon(Icons.search),
                color: Colors.black26,
                onPressed: () {},
              )),
          style: TextStyle(color: Colors.black, fontSize: 15.0),
        ),
      ),
    );
  }
}
