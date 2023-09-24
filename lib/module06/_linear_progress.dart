import 'package:flutter/material.dart';
import '../module06.dart';

class LinearProgress_ extends StatelessWidget {
  LinearProgress_({super.key});

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
        child: LinearProgressIndicator(
          color: Colors.lightBlueAccent,
          backgroundColor: Colors.orange,
          minHeight: 10,
        ),
      )
    );
  }
}