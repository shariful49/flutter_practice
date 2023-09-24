import 'package:flutter/material.dart';
import '../module06.dart';
class Card_ extends StatelessWidget {
  const Card_({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Module06()));
            },
            icon: Icon(Icons.backspace),
          )
        ],
      ),
      body: Center(
        child: Card(
          elevation: 50,
          color: Colors.lightBlueAccent,
          shadowColor: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          child: SizedBox(
            height: 200,
            width: 200,
            child: Center(
              child: Text('Card'),
            )
          )
        ),
      ),
    );
  }
}