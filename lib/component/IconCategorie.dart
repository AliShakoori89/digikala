import 'package:digikala/models/Icon.dart';
import 'package:flutter/material.dart';


class IconCategorie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 60.0,
        child: ListView.builder(
          reverse: true,
          scrollDirection: Axis.horizontal,
          itemCount: iconheaders.length,
          itemBuilder: (context,index) => BuildCategory(
            iconHeader: iconheaders[index],
          ),
        )
    );
  }
}

class BuildCategory extends StatelessWidget{
  final IconHeader iconHeader;
  final Function press;

  const BuildCategory({Key key, this.iconHeader, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: press,
        child: Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children:<Widget>[
                CircleAvatar(
                    backgroundColor: iconHeader.color,
                    child: iconHeader.icon),
                Text('${iconHeader.title}',style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.w600),)
              ],
            )
        )
    );
  }

}