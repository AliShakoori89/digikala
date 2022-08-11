import 'dart:async';
import 'package:digikala/Animation/animation.dart';
import 'package:flutter/material.dart';
import 'package:loading/indicator/ball_pulse_indicator.dart';
import 'package:loading/loading.dart';
import '../Icon/app_icons.dart';
import '../homepage.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build( BuildContext context ) {
    return initScreen(
        context);
  }

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer( ) async {
    var duration = Duration(seconds: 5);
    return new Timer(duration, route);
  }

  route( ) {
    Navigator.pushReplacement(
        context, MaterialPageRoute(
        builder: ( context ) =>
            HomePage()
      )
    );
  }

  initScreen( BuildContext context ) {
    return Scaffold(
//        debugShowCheckedModeBanner: false,
        body: Container(
            color: Colors.red,
            child: Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    SizedBox(
                      height: 200.0,),
                    Flexible(
                      child: AnimationSmile(
                        5,
                        Container(
                          child: Icon(
                            MyFlutterApp.emo_happy,
                            size: 120.0,
                            color: Colors.white,
                          )
                        )
                      ),
                    ),
                    SizedBox(
                      height: 250.0,),
                    Flexible(
                      child: AnimationSmile(
                        10,
                        Container(
                          child: Text(
                            'Digikala', style: TextStyle(
                              fontSize: 25.0, color: Colors.white),
                          ),
                        )
                      ),
                    ),
                    Loading(
                        indicator: BallPulseIndicator(
                        ), size: 30.0, color: Colors.white),
                  ],
                )
            )
        )
    );
  }
}