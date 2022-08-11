import 'package:digikala/Icon/Shirt.dart';
import 'package:digikala/Icon/mobl.dart';
import 'package:digikala/Icon/my_flutter_app_icons.dart';
import 'package:digikala/Icon/supermarket.dart';
import 'package:flutter/material.dart';

class IconHeader{
  final String  title;
  final Icon icon;
  final int id;
  final Color color;

  IconHeader({this.color, this.icon, this.title, this.id});
}


List<IconHeader> iconheaders = [
  IconHeader(
    id: 1,
    title: 'فروش ویژه',
    icon: Icon(IconApp.percent,color: Colors.white,),
    color: Colors.red
  ),
  IconHeader(
      id: 2,
      title: 'سوپر مارکت',
      icon: Icon(SuperMarket.cart , color: Colors.white,),
      color: Colors.green
  ),
  IconHeader(
      id: 3,
      title: 'الکترونیک و دیجیتال',
      icon: Icon(Icons.laptop , color: Colors.white,),
      color: Colors.blue
  ),
  IconHeader(
      id: 4,
      title: 'مد و پوشاک',
      icon: Icon(Shirt.shirt , color: Colors.white),
      color: Colors.purple
  ),
  IconHeader(
      id: 5,
      title: 'خانه و آشپزخانه',
      icon: Icon(Mobl.couch , color: Colors.white,size: 20,),
      color: Colors.orange
  ),
  IconHeader(
      id: 6,
      title: 'خرید شارژ',
      icon: Icon(Icons.add_to_home_screen , color: Colors.white),
      color: Colors.indigo
  ),
];