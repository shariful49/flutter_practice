import 'package:flutter/material.dart';
import '../module06.dart';

class Form_ extends StatelessWidget {
  Form_({super.key});

  @override
  Widget build(BuildContext context) {
    ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      foregroundColor: Colors.white,
      backgroundColor: Colors.blueAccent
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Module06()));
            },
            icon: Icon(Icons.backspace),
          )
        ],
      ),
      body: ListView(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'First Name',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Last Name',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
          
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Contact Number',
                border: OutlineInputBorder(
          
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
                  onPressed: (){
              
                  },
                  child: Text('Submit', style: TextStyle(fontSize: 20),), 
                  style: elevatedButtonStyle,               
                ),
          ),
        ],
      ),
    );
  }
}