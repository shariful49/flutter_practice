import 'package:flutter/material.dart';
import 'home.dart';
import 'calculator.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange
      ),
      routes: {
        'https://shariful49.github.io/flutter_practice/calculator' :(context) => Calculator(),
      },
      home: Home(),
    );
  }
}

