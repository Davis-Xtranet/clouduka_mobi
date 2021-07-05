import 'package:clouduka/shared/colors.dart';
import 'package:flutter/material.dart';

class CategoriesView extends StatefulWidget {
  const CategoriesView({Key? key}) : super(key: key);

  @override
  _CategoriesViewState createState() => _CategoriesViewState();
}

class _CategoriesViewState extends State<CategoriesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          cursorColor: Colors.white,
          decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.white54),
              hintText: " Search on ClouDuka",
              border: InputBorder.none,

              icon: IconButton(
                icon: Icon(Icons.search),
                color: whiteThemeColor,
                onPressed: () {},
              )),
          style: TextStyle(color: Colors.white, fontSize: 15.0),
        ),
        elevation: 0,
        backgroundColor: mainThemeColor,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(Icons.shopping_cart_outlined),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
