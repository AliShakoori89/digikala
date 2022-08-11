import 'package:digikala/Icon/supermarket.dart';
import 'package:flutter/material.dart';

import '../homepage.dart';
import 'ProfilePage.dart';
import 'Sabad_Kharid.dart';


class BottomNav extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomNavState();
  }
}

class BottomNavState extends State<BottomNav> {

  int _cIndex = 0;

  void _incrementTab(index) {
    setState(() {
      _cIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _cIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.person),
            label: 'دیجی کالای من',
          ),
          BottomNavigationBarItem(
              icon: Icon(SuperMarket.cart),
              label: 'سبد خرید'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined),
              label: 'دسنه بندی ها'
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            label: 'خانه',
          ),
        ],
        onTap: (index){
          _incrementTab(index);
          switch (_cIndex) {
            case 0:
              return Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage(),),);
              break;

            case 1:
              return Navigator.push(context, MaterialPageRoute(builder: (context)=>SabadKharid(),),);
              break;
          //
          //              case 2:
          //                widget = ThirdPage();
          //                break;
          //
            case 3:
              return Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage(),),);
              break;
          }
        },
    );
  }
}