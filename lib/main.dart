import 'package:flutter/material.dart';
import 'package:pentagon/pentagon_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pentagon',
      theme: ThemeData(
       
        primarySwatch:Colors.blue,
      ),
      home: const PentagonScreen(),
      debugShowCheckedModeBanner:false
    );
  }
}