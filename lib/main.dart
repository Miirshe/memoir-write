import 'package:flutter/material.dart';

import 'HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext buildContext){
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      darkTheme: ThemeData(
        backgroundColor: Colors.blue,
        scaffoldBackgroundColor: Color(0xffe9e9f3)
      ),
    ));
  }
}