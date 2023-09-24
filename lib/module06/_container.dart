import 'package:flutter/material.dart';
import '../module06.dart';
class Container_ extends StatelessWidget {
  const Container_({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
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
        child: Container(
          //color: Colors.blueAccent,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(20),
          height: 300,
          width: 300,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            border: Border.all(color: Colors.green, width: 5),
          ),
          child: Text('Container', style: TextStyle(fontSize: 50, color: Colors.orange),),
        ),
      ),
    );
  }
}