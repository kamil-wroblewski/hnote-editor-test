import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';

class SquareButton extends StatelessWidget {
  final String buttonTitle;
  final Color color;
  var onTap;
  SquareButton({Key key, this.buttonTitle, this.color, this.onTap}) : super(key: key);

  final double height = 100.0;
  final double width = 100.0;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () { Navigator.pushNamed(context, '/notebooks/notes', arguments: {'squareButton': onTap}); },
      child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(20, 20, 10, 15),
                width: width,
                height: height,
                color: color.withOpacity(.75),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(CommunityMaterialIcons.notebook, color: Colors.grey[300], size: 40.0),
                    Divider(color: Colors.white, height: 10,),
                    Text(buttonTitle, style: TextStyle(letterSpacing: 1.0, fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.grey[300])),
                  ],
                ),
              ),
            ],
      ),
    );
  }
}
