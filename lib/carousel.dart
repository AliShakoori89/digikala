import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class TopCarousel extends StatefulWidget {
  @override
  _TopCarouselState createState() => _TopCarouselState();
}

class _TopCarouselState extends State<TopCarousel> {
  int _currentIndex=0;

  List cardList=[
    Item1(),
    Item2(),
    Item3(),
    Item4(),
    Item5(),
    Item6(),
    Item7()
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: double.infinity,
            // height: MediaQuery.of(context).size.height / 5,
            child: CarouselSlider(
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height / 3.5,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 5),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                pauseAutoPlayOnTouch: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              items: cardList.map((card) {
                return Builder(builder: (BuildContext context) {
                  return Container(
                    // height: MediaQuery.of(context).size.height * 0.09,
                    width: MediaQuery.of(context).size.width / 0.5,
                    child: Card(
                      elevation: 0,
                      child: card,
                      shadowColor: Colors.white,
                    ),
                  );
                });
              }).toList(),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 4,
            child: Container(
              child: Opacity(
                opacity: 0.8,
                child: Row(
                  children: map<Widget>(cardList, (index, url) {
                    return Container(
                      width: 5.0,
                      height: 5.0,
                      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentIndex == index
                            ? Colors.blueAccent
                            : Colors.grey,
                      ),
                    );
                  }),
                ),
              )
            )
          )
        ],
      ),
    );
  }
}

class Item1 extends StatelessWidget {
  const Item1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(25.0),
        image: DecorationImage(
          image: new ExactAssetImage('Assets/images/1.jpg'),
          fit: BoxFit.fill
        )
      ),
    );
  }
}

class Item2 extends StatelessWidget {
  const Item2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(25.0),
          image: DecorationImage(
              image: new ExactAssetImage('Assets/images/2.jpg'),
              fit: BoxFit.fill
          )
      ),
    );
  }
}

class Item3 extends StatelessWidget {
  const Item3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(25.0),
          image: DecorationImage(
              image: new ExactAssetImage('Assets/images/3.jpg'),
              fit: BoxFit.fill
          )
      ),
    );
  }
}

class Item4 extends StatelessWidget {
  const Item4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(25.0),
          image: DecorationImage(
              image: new ExactAssetImage('Assets/images/4.jpg'),
              fit: BoxFit.fill
          )
      ),
    );
  }
}

class Item5 extends StatelessWidget {
  const Item5({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(25.0),
          image: DecorationImage(
              image: new ExactAssetImage('Assets/images/5.jpg'),
              fit: BoxFit.fill
          )
      ),
    );
  }
}

class Item6 extends StatelessWidget {
  const Item6({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(25.0),
          image: DecorationImage(
              image: new ExactAssetImage('Assets/images/6.gif'),
              fit: BoxFit.fill
          )
      ),
    );
  }
}

class Item7 extends StatelessWidget {
  const Item7({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(25.0),
          image: DecorationImage(
              image: new ExactAssetImage('Assets/images/7.jpg'),
              fit: BoxFit.fill
          )
      ),
    );
  }
}