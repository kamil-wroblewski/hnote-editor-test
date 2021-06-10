import 'package:flutter/material.dart';
import 'package:projekt/Screens/Main/components/menu.dart';
import 'package:projekt/Screens/Main/components/ui.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [Menu(), UI()],
        )
      )
    );
  }
}