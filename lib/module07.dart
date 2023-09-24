import 'package:flutter/material.dart';
import 'home.dart';
import 'module07/counter_app.dart';
import 'module07/sum_app.dart';

class Module07 extends StatelessWidget {
  const Module07({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Module 07'),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
            },
            icon: Icon(Icons.home),
          )
        ],
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Counter App', style: TextStyle(fontSize: 20),),
            tileColor: Colors.lightBlueAccent,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CounterApp()));
            }
          ),
          ListTile(
            title: Text('Sum App', style: TextStyle(fontSize: 20),),
            tileColor: Colors.amber,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SumApp()));
            }
          )
        ],
      )
    );
  }
}