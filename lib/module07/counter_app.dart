import 'package:flutter/material.dart';
import '../module07.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Module07()));
            },
            icon: Icon(Icons.backspace),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.remove), label: 'Dec'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Inc')
        ],
        currentIndex: 1,
        onTap: (index){
          if(index == 0 && count > 0){
            setState((){
              count -= 1;
            });
          }else if(index == 1){

          }else if(index == 2){
            setState((){
              count += 1;
            });
          }
        },
      ),
      body: Center(
        child: Text(count.toString(), style: TextStyle(fontSize: 50, color: Colors.blue),),
      ),
    );
  }
}