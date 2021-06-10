import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: size.width,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
              child: Image.asset(
            "assets/images/corner.png",
            width: size.width * 0.7,
          ),),
          Positioned(
              bottom: 0,
              right: 0,
              child: Image.asset(
                "assets/images/corner_down.png",
                width: size.width * 0.65,
              ),
              ),
              child,
        ],
      ),
    );
  }
}