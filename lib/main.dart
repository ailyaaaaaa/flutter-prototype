//Import the Flutter package and the homepage file
import 'package:flutter/material.dart';
import 'package:prototype/material_homepage.dart';

//Main function, runs the root widget
void main() {
  runApp(const MyApp());
}

//Create a stateless widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //Override the build method which describes the part of the UI represented by this widget
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //Set the home property to HomePage widget, which will be the first screen users see
      home: const HomePage(),
    );
  }
}
