import 'package:flutter/material.dart';
import '../module07.dart';
import '../style.dart';

class SumApp extends StatefulWidget {
  const SumApp({super.key});

  @override
  State<SumApp> createState() => _SumAppState();
}

class _SumAppState extends State<SumApp> {
  double sum = 0;
  String num1='0', num2='0';
  Map<String, double> formValue = {
    'num1' : 0,
    'num2' : 0,
  };
  @override
  Widget build(BuildContext context) {
    inputValue(key, fValue){
      setState(() {
        formValue.update(key, (value) => double.parse(fValue));
      });
      print(formValue['num1']);
    }
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Sum App'),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Module07()));
            },
            icon: Icon(Icons.backspace),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(50),
        child: ListView(
          children: [
            Center(child: Text('First Number = $num1', style: appTextStyle(),)),
            SizedBox(height: 20,),
            Center(child: Text('Second Number = $num2', style: appTextStyle(),)),
            SizedBox(height: 20,),
            TextFormField(
              decoration: appInputStyle('Number 1'),
              keyboardType: TextInputType.number,
              onChanged: (value){
                inputValue('num1', value);
                setState(() {
                  num1 = value;
                });
              },
            ),
            SizedBox(height: 20,),
            TextFormField(
              decoration: appInputStyle('Number 2'),
              keyboardType: TextInputType.number,
              onChanged: (value){
                inputValue('num2', value);
                setState(() {
                  num2 = value;
                });
              },
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: (){
                setState(() {
                  sum = formValue['num1']! + formValue['num2']!;
                });
              },
              child: Text('Add'),
              style: appElevatedButtonStyle(),
            ),
            SizedBox(height: 20,),
            Center(child: Text('Summation = $sum', style: appTextStyle(),)),
          ],
        ),
      ),
    );
  }
}