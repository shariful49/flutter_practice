import 'package:flutter/material.dart';
import '../module06.dart';

class CircularProgress_ extends StatelessWidget {
  CircularProgress_({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Circular Progress'),
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
        child: CircularProgressIndicator(
          color: Colors.lightBlueAccent,
          strokeWidth: 10,
          backgroundColor: Colors.orange,
        ),
      )
    );
  }
}