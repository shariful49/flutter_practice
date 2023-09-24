import 'package:flutter/material.dart';
import '../module06.dart';

class Button_ extends StatelessWidget {
  Button_({super.key});

  @override
  Widget build(BuildContext context) {
    ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      foregroundColor: Colors.white,shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(50))
      )
    );
    ButtonStyle textButtonStyle = TextButton.styleFrom(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      //backgroundColor: Colors.lightBlueAccent,
    );
    ButtonStyle outlinedButtonStyle = OutlinedButton.styleFrom(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Button'),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Module06()));
            },
            icon: Icon(Icons.backspace)
          )
        ],
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextButton(
            onPressed: (){
              print('I am Text Button');
            },
            child: Text('Text Button'),
            style: textButtonStyle,
          ),
          ElevatedButton(
            onPressed: (){
              print('I am Elevated Button');
            },
            child: Text('Elevated Button',),
            style: elevatedButtonStyle,
          ),
          OutlinedButton(
            onPressed: (){
              print('I am Outlined Button');
            },
            child: Text('Elevated Button'),
            style: outlinedButtonStyle,
          )
        ],
      )
    );
  }
}