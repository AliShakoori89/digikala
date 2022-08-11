import 'package:digikala/UIwidget/BottomNavigat.dart';
import 'package:flutter/material.dart';

class SabadKharid extends StatefulWidget {
  const SabadKharid({Key key}) : super(key: key);

  @override
  _SabadKharidState createState() => _SabadKharidState();
}

class _SabadKharidState extends State<SabadKharid> with SingleTickerProviderStateMixin {

  final List<Tab> myTabs = <Tab>[
    new Tab(text: 'سبد خرید'),
    new Tab(text: 'لیست خرید بعدی'),
  ];

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this , length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          bottomNavigationBar: BottomNav(),
          backgroundColor: Colors.grey[300],
          appBar: AppBar(
            toolbarHeight: 50.0,
            backgroundColor: Colors.grey[300],
            bottom: TabBar(
              controller: _tabController,
              labelColor: Colors.red,
              unselectedLabelColor: Colors.grey[800],
              unselectedLabelStyle: TextStyle(color: Colors.red),
              indicatorColor: Colors.red,
              tabs: myTabs,
            ),
          ),
          //          body: TabBarView(
          //            children: [
          //              Container(
          //                child: Text('qweqwewqewq'),
          //              ),
          //              Container()
          //            ],
          //          ),
        ),
      ),
    );
  }
}
