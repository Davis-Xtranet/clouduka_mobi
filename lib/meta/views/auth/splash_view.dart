import 'dart:async';

import 'package:clouduka/meta/nav_screen.dart';
import 'package:clouduka/meta/views/tabs/home_page_view.dart';
import 'package:clouduka/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';


class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    Timer(
        Duration(seconds: 2),
            () => Navigator.pushReplacement(
            context,
            PageTransition(
                child: NavScreen(),
                type: PageTransitionType.fade)));
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/images/cd.jpg',
                ),
              ),
            ),
            height: MediaQuery.of(context).size.height,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  mainThemeColor.withOpacity(0.4),
                  mainThemeColor,
                ],
                stops: [0.0, 1.0],
              ),
            ),

          ),
          Center(
            child: Stack(
              children: [
                Center(child: Text("ClouDuka", style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w900, color: mainThemeColor ),)),
                Center(child: CircularProgressIndicator(
                  color: mainThemeColor,
                ))
              ],
            ),
          )
        ]),
      ),
    );
  }
}
