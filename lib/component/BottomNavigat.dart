import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:digikala/Icon/supermarket.dart';
import 'package:digikala/component/dastebandi_mahsulat.dart';
import 'package:digikala/component/home-page.dart';
import 'package:flutter/material.dart';
import 'ProfilePage.dart';
import 'Sabad_Kharid.dart';


class BottomNav extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomNavState();
  }
}

class BottomNavState extends State<BottomNav> {

  int _selectedIndex = 3;

  final List<Widget> _children = [
    ProfilePage(),
    const SabadKharid(),
    const DastebandiMahsulat(),
    HomePage(),
  ];

  void _incrementTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CustomNavigationBar(
          currentIndex: _selectedIndex,
          selectedColor: Colors.black,
          unSelectedColor: Colors.grey[600],
          backgroundColor: Colors.white,
          items: <CustomNavigationBarItem>[
            CustomNavigationBarItem(
              icon: new Icon(Icons.person),
              title: Text('دیجی کالای من'),
            ),
            CustomNavigationBarItem(
                icon: Icon(SuperMarket.cart), title: Text('سبد خرید')),
            CustomNavigationBarItem(
                icon: Icon(Icons.category_outlined),
                title: Text('دسنه بندی ها')),
            CustomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: Text('خانه'),
            ),
          ],
          onTap: _incrementTab,
        ),
        body: _children[_selectedIndex]
    );
  }
}