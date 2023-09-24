import 'package:flutter/material.dart';
//import 'package:ostad_module/style.dart';
import '../module08.dart';

class ApiIntro extends StatefulWidget {
  const ApiIntro({super.key});

  @override
  State<ApiIntro> createState() => _ApiIntroState();
}

class _ApiIntroState extends State<ApiIntro> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Introduction'),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Module08()));
            },
            icon: Icon(Icons.backspace),
          )
        ],
      ),
      body: Container(
        
      )
    );
  }
}



