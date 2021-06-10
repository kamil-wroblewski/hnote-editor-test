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
      width: double.infinity,
      height: size.height,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
           top: 0,
           left: 0,
            child: Image.asset(
              "assets/images/corner_login.png",
             scale: 0.6,
           ),
          ),
          Positioned(
           bottom: 0,
           right: 0,
           child: Image.asset(
              "assets/images/corner_down_login.png",
              scale: 2,
            width: size.width*0.8,
            ),
         ),
         child,
        ],
      ),
    );
  }
}
