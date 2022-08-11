import 'dart:ui';
import 'package:digikala/Icon/supermarket.dart';
import 'package:digikala/UIwidget/BottomNavigat.dart';
import 'package:digikala/UIwidget/IconCategorie.dart';
import 'package:digikala/UIwidget/Middle_Windows.dart';
import 'package:digikala/UIwidget/Sabad_Kharid.dart';
import 'package:digikala/UIwidget/SupermarketCategori.dart';
import 'package:digikala/carousel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'UIwidget/ProfilePage.dart';
import 'UIwidget/ShegeftAngizCategorie.dart';


class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final TextEditingController _controller = new TextEditingController();

  List<dynamic> _list;
  bool _isSearching;
  String _searchText = "";
  List searchresult = new List();
  int selectedIndex = 0;


  Widget appBarTitle = Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      Text('دیجی کالا' , style: TextStyle(color: Colors.red , fontFamily: 'Cairo')),
      new Text("  جستجو در", style: TextStyle(fontFamily: 'Amiri', fontSize: 15.0, color: Colors.grey[800]),),
    ],
  );

  Icon icon = new Icon(
    Icons.search,
    color: Colors.grey[800],
  );

  @override
  void initState() {
    super.initState();
    _isSearching = false;
    values();
  }

  void values() {
    _list = List();
    _list.add("Indian rupee");
//    _list.add("United States dollar");
//    _list.add("Australian dollar");
//    _list.add("Euro");
//    _list.add("British pound");
//    _list.add("Yemeni rial");
//    _list.add("Japanese yen");
//    _list.add("Hong Kong dollar");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNav(),
        appBar: buildAppBar(context),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 5.0,),
              TopCarousel(),
              SizedBox(height: 10.0,),
              IconCategorie(),
              SizedBox(height: 10.0,),
              ShegeftAngizCategorie(),
              SizedBox(height: 10.0,),
              MiddleWindows(),
              SizedBox(height: 10.0,),
              SuperMarketCategorie(),
            ],
          ),
        )
      )
    );
  }

  Widget buildAppBar(BuildContext context) {
    return new AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[300],
        title: appBarTitle,
        elevation: 10,
        leading: GestureDetector(
          child: new IconButton(
            icon: icon,
            onPressed: () {
              setState(() {
                if (this.icon.icon == Icons.search) {
                  this.icon = new Icon(
                    Icons.close,
                    color: Colors.grey[800],
                  );
                  this.appBarTitle = Padding(
                    padding: EdgeInsets.only(),
                    child: Container(
                      height: 50.0,
                      child: new TextField(
                        textAlign: TextAlign.right,
                        textDirection: TextDirection.rtl,
                        controller: _controller,
                        style: new TextStyle(
                          color: Colors.white,
                        ),
                        decoration: new InputDecoration(
                          prefixIcon: new Icon(Icons.search, color: Colors.grey[800]),
                          hintText: "جستجو در همه کالاها" ,
                          contentPadding: EdgeInsets.only(top: 10.0, right: 5.0),
                          hintStyle: new TextStyle(color: Colors.grey[800]),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey[800], width: 1.0),
                            borderRadius: BorderRadius.all(Radius.circular(50.0),),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15.0),),
                            borderSide: BorderSide(color: Colors.grey[800], width: 1.0),
                          ),
                        ),
                        onChanged: searchOperation,
                      )
                    )
                  );
                  _handleSearchStart();
                } else {
                  _handleSearchEnd();
                }
              }
              );
            },
          ),
        ),
    );
  }

  @override
  void paint(Canvas canvas, Size size) {
    final p1 = Offset(50, 50);
    final p2 = Offset(250, 150);
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 4;
    canvas.drawLine(p1, p2, paint);
  }

  void _handleSearchStart() {
    setState(() {
      _isSearching = true;
    });
  }

  void _handleSearchEnd() {
    setState(() {
      this.icon = new Icon(
        Icons.search,
        color:Colors.grey[800],
      );
      this.appBarTitle = Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text('دیجی کالا' , style: TextStyle(color: Colors.red,fontFamily: 'Cairo')),
          new Text("  جستجو در", style: TextStyle(fontFamily: 'Amiri', fontSize: 16.0, color: Colors.grey[800]),),
        ],
      );
      _isSearching = false;
      _controller.clear();
    });
  }

  void searchOperation(String searchText) {
    searchresult.clear();
    if (_isSearching != null) {
      for (int i = 0; i < _list.length; i++) {
        String data = _list[i];
        if (data.toLowerCase().contains(searchText.toLowerCase())) {
          searchresult.add(data);
        }
      }
    }
  }
}




