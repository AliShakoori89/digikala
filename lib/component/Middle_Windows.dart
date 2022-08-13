import 'package:flutter/material.dart';

class MiddleWindows extends StatelessWidget {

  List<String> categories = [
    'Assets/images3/1.jpg',
    'Assets/images3/2.jpg',
    'Assets/images3/3.jpg',
    'Assets/images3/4.jpg'
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10.0,right: 10.0),
      child: Container(
          height: 270.0,
          child: GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: categories.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20.0,
                crossAxisSpacing: 20.0,
                childAspectRatio: 1.5
              ),
              itemBuilder: (context, index) => buildCategory(index)
          )
      )

    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white
          ),
          borderRadius: BorderRadius.circular(30.0),
            image: DecorationImage(
              image: new ExactAssetImage(categories[index]),
              fit:  BoxFit.fill,
            )
        ),
//        child: Image.asset(categories[index],fit: BoxFit.fill,),
      ),
    );
  }
}
