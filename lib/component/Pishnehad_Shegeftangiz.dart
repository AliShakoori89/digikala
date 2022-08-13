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
        Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height / 3.8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(20.0),
                  )),
              Positioned(
                  top: 1,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 8,
                    width: MediaQuery.of(context).size.width / 3,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                          alignment: Alignment.topCenter,
                          image: AssetImage(topstore.image),
                        )),
                  )),
              Positioned(
                top: 160,
                left: 8,
                child: (topstore.darsadtakhfif == true)
                    ? Padding(
                        padding: EdgeInsets.only(left: 33.0),
                        child: CustomPaint(
                          painter: Curvepainter(),
                          child: Center(
                              child: Text(
                            topstore.mablaghtakhfif.toPersianDigit().seRagham(),
                            style:
                                TextStyle(color: Colors.grey, fontSize: 12.0),
                          )),
                        ))
                    : Container(),
              ),
              Positioned(
                top: 170,
                left: 10,
                child: Text('تومان', style: TextStyle(fontSize: 12.0)),
              ),
              Positioned(
                top: 180,
                left: 40,
                child: Text(
                  topstore.price.toPersianDigit().seRagham(),
                  style: TextStyle(fontSize: 12.0),
                ),
              ),
              Positioned(
                top: 110,
                left: 10,
                right: 10,
                child: Text(topstore.title,
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 12),
                    maxLines: 1,
                    textAlign: TextAlign.center),
              ),
              Positioned(
                  top: 170,
                  left: 100,
                  child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: IconButton(
                          hoverColor: Colors.green,
                          padding: EdgeInsets.only(),
                          icon: Icon(
                            Icons.add,
                            size: 18,
                            color: Colors.red,
                          ),
                          onPressed: () {  },
                        ),
                      )))
            ],
          ),
        ),
      ],
    ));
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
