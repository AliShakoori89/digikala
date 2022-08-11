import 'package:digikala/models/TopStories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';


class PishnehadShegeftAngiz extends StatelessWidget {

  final TopStore topstore;
  final Function press;

  const PishnehadShegeftAngiz({Key key, this.topstore, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(padding: EdgeInsets.only(left: 10.0),
              child: Container(
                  width: 160.0,
                  height: 300.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: GestureDetector(
                      onTap: press,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: 188,
                                    width: 138,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(color: Colors.white),
                                        borderRadius: BorderRadius.circular(20.0),
                                        image: DecorationImage(
                                          alignment: Alignment.topCenter,
                                          image: AssetImage(topstore.image),
                                        )
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 150.0 ,left: 115.0),
                                    child: Container(
                                      width: 30.0,
                                      height: 30.0,
                                      decoration: BoxDecoration(
                                          border: Border.all(color: Colors.red, width: 1.0),
                                          borderRadius: BorderRadius.circular(50.0)
                                      ),
                                      child: CircleAvatar(
                                          backgroundColor: Colors.white,
                                          child: IconButton(
                                            hoverColor: Colors.green,
                                            padding:EdgeInsets.only(),
                                            icon: Icon(Icons.add, color: Colors.red,),
                                          )
                                      )
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Text(topstore.title, textDirection: TextDirection.rtl ),
                            ),
                          ),
                          SizedBox(height: 10.0,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 15.0),
                                child: Column(
                                  children: [
                                    Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text('تومان'),
                                            Text(topstore.price.toPersianDigit().seRagham(),
                                              style: TextStyle(fontSize: 15.0),),
                                          ],
                                        ),
                                        (topstore.darsadtakhfif == true) ?
                                        Padding(padding: EdgeInsets.only(left: 33.0),
                                            child: CustomPaint(
                                              painter: Curvepainter(),
                                              child: Center(
                                                  child: Text(topstore.mablaghtakhfif.toPersianDigit().seRagham(),
                                                    style: TextStyle(color: Colors.grey, fontSize: 15.0 ),)
                                              ),
                                            )
                                        ):Container()
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              (topstore.darsadtakhfif == true) ?
                              Container(
                                  width: 35.0,
                                  height: 17.0,
                                  decoration: BoxDecoration(
                                      color: Colors.redAccent,
                                      border: Border.all(color: Colors.redAccent),
                                      borderRadius: BorderRadius.circular(40)
                                  ),
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Text(topstore.meghdardarsadtakhfif.toPersianDigit(),style: TextStyle(color: Colors.white),)
                                  )
                              ): Container()
                            ],
                          )
                        ],
                      )
                  )
              ),
            ),
          ],
        )
    );
  }
}

class Curvepainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Colors.grey[300];
    paint.strokeWidth = 3;

    canvas.drawLine(
      Offset(0, size.height / 2),
      Offset(size.width, size.height / 2),
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
