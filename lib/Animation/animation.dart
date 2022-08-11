import 'package:flutter/material.dart';

class AnimationSmile extends StatelessWidget {

  final int delay;
  final Widget child;
  AnimationSmile(this.delay, this.child);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Animations(delay,child),
    );
  }
}

class Animations extends StatefulWidget {
  final int delay;
  final Widget child;
  Animations(this.delay, this.child,{Key key}) : super(key: key);

  @override
  _AnimationsState createState() => _AnimationsState(this.delay,this.child);
}

class _AnimationsState extends State<Animations>
    with TickerProviderStateMixin {
  final int delay;
  final Widget child;
  AnimationController _controller;
  Animation<double> _animation;

  _AnimationsState(this.delay, this.child);

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: delay),
      vsync: this,
    )..repeat();
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SizeTransition(
        sizeFactor: _animation,
        axis: Axis.horizontal,
        axisAlignment: -1,
        child: Center(
          child: child,
          )
        ),
    );
  }
}
