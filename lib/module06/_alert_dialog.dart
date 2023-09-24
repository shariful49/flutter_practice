import 'package:flutter/material.dart';
import '../module06.dart';

class AlertDialog_ extends StatelessWidget {
  const AlertDialog_({super.key});
  MyAlertDialog(context){
    return showDialog(
      context: context,
      builder: (BuildContext context){
        return Expanded(
          child: AlertDialog(
            title: Text('Alert!'),
            content: Text('Do you want to execute?'),
            actions: [
              TextButton(
                onPressed: (){
                  print('Clicked');
                  Navigator.of(context).pop();
                },
                child: Text('Yes'),
              ),
              TextButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                child: Text('No'),
              )
            ],
          ),
        );
      }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog'),
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
        child: ElevatedButton(
          child: Text('Alert'),
          onPressed: (){
            MyAlertDialog(context);
          },
        ),
      ),
    );
  }
}