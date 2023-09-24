import 'package:flutter/material.dart';
import 'home.dart';
class Module04 extends StatelessWidget {
  final String msg;
  Module04(
    this.msg,
    {super.key}
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Module 04'),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
            },
            icon: Icon(Icons.home),
          ),
        ],
      ),
      body: Container(
        color: Colors.blueAccent,
        child: Center(child: Text(msg, style: TextStyle(fontSize: 50, color: Colors.orange),)),
      ),
    );
  }
}