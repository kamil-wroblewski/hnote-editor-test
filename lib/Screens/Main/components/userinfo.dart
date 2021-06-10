import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  final String name;
  final String image;
  const UserInfo({
    Key key, this.name, this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CircleAvatar(
          backgroundColor: Colors.white,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              fit: BoxFit.fill,
              color: Colors.black,
              image: AssetImage(
                image,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          name,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}


