import 'package:flutter/material.dart';
import 'package:projekt/Screens/Notes/notebooks_screen.dart';

import '../../../constants.dart';

class TilesRow extends StatelessWidget {
  final String image1;
  final String image2;
  final String text1;
  final String text2;
  final String url1;
  const TilesRow({
    Key key, this.image1, this.image2, this.text1, this.text2, this.url1
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
        InkWell(
          onTap: () { Navigator.of(context).pushNamed(url1);},
                      child: Container(
              width: 120,
              height: 120,
              
              decoration: BoxDecoration(
               color: primaryLightColor,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Column(children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Image(
                    image: AssetImage(image1),
                    height: 86,
                    width: 86,
                  ),
                ),
                Text(text1,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 15,
                      decoration: TextDecoration.none,
                    )),
              ]),
            ),
          ),
      InkWell(
        onTap: () {},
                      child: Container(
              width: 120,
              height: 120,
  
              decoration: BoxDecoration(
                color: primaryLightColor,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Column(children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  child: Image(
                    image: AssetImage(image2),
                    height: 86,
                    width: 86,
                  ),
                ),
                Text(text2,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontSize: 15,
                      decoration: TextDecoration.none,
                    )),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
