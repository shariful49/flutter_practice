import 'package:flutter/material.dart';
import 'module01.dart';
import 'module02.dart';
import 'module03.dart';
import 'module04.dart';
import 'module05.dart';
import 'module06.dart';
import 'module07.dart';
import 'module08.dart';
import 'calculator.dart';

class Home extends StatelessWidget{
  Home({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      
      body: ListView(
        children: [
          ListTile(
            leading: Text('Module 01', style: TextStyle(fontSize: 20)),
            tileColor: Colors.lightBlueAccent,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Module01('Module 01')));
            },
          ),
          ListTile(
            leading: Text('Module 02', style: TextStyle(fontSize: 20)),
            tileColor: Colors.amberAccent,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Module02('Module 02')));
            },
          ),
          ListTile(
            leading: Text('Module 03', style: TextStyle(fontSize: 20)),
            tileColor: Colors.lightBlueAccent,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Module03('Module 03')));
            },
          ),
          ListTile(
            leading: Text('Module 04', style: TextStyle(fontSize: 20)),
            tileColor: Colors.amberAccent,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Module04('Module 04')));
            },
          ),
          ListTile(
            leading: Text('Module 05', style: TextStyle(fontSize: 20)),
            tileColor: Colors.lightBlueAccent,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Module05('Module 05')));
            },
          ),
          ListTile(
            leading: Text('Module 06', style: TextStyle(fontSize: 20)),
            tileColor: Colors.amberAccent,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Module06()));
            },
          ),
          ListTile(
            leading: Text('Module 07', style: TextStyle(fontSize: 20)),
            tileColor: Colors.lightBlueAccent,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Module07()));
            },
          ),
          ListTile(
            leading: Text('Module 08', style: TextStyle(fontSize: 20)),
            tileColor: Colors.amberAccent,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Module08()));
            },
          ),
          ListTile(
            leading: Text('Calculator', style: TextStyle(fontSize: 20)),
            tileColor: Colors.lightBlueAccent,
            onTap: (){
              Navigator.pushNamed(context, 'https://shariful49.github.io/flutter_practice/calculator');
            },
          ),
        ],
      ),
    );
  }
}