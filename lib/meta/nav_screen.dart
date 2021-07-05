import 'package:clouduka/meta/views/tabs/account_view.dart';
import 'package:clouduka/meta/views/tabs/categories_views.dart';
import 'package:clouduka/meta/views/tabs/help_view.dart';
import 'package:clouduka/meta/views/tabs/home_page_view.dart';
import 'package:clouduka/shared/colors.dart';
import 'package:flutter/material.dart';



class NavScreen extends StatefulWidget {



  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _selectedIndex = 0;
  final _screens = [
    HomePageView(),
   CategoriesView(),
    AccountView(),
    HelpView(),

  ];


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: _screens.asMap().map(
              (i, screen) => MapEntry(
            i,
            Offstage(
                offstage: _selectedIndex != i,
                child: screen),
          ),
        ).values.toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        //fixedColor: whiteThemeColor,
        selectedFontSize: 10.0,
        unselectedFontSize: 10.0,
        selectedItemColor: mainThemeColor,
        currentIndex: _selectedIndex,
        onTap: (i) => setState(() => _selectedIndex =i),
        items:  [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_outlined),
              activeIcon: Icon(Icons.list_alt_outlined),
              label: 'Categories'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              activeIcon: Icon(Icons.account_circle_rounded),
              label: 'Account'),
          BottomNavigationBarItem(
              icon: Icon(Icons.help_center_outlined),
              activeIcon: Icon(Icons.help_center),
              label: 'Help'),
        ],
      ),
    );
  }
}