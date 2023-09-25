import 'package:flutter/material.dart';
import 'package:ostad_module/module08/apiIntro.dart';
import 'home.dart';
import 'module08/doapp.dart';

class Module08 extends StatelessWidget {
  const Module08({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Module 08'),
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
            title: Text('Todo App', style: TextStyle(fontSize: 25),),
            tileColor: Colors.lightBlueAccent,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => TodoApp()));
            }
          ),
          ListTile(
            title: Text('API Introduction', style: TextStyle(fontSize: 25),),
            tileColor: Colors.amber,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ApiIntro()));
            }
          ),
        ]
      )
    );
  }
}