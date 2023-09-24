import 'package:flutter/material.dart';
import 'package:ostad_module/style.dart';
import 'home.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String displayNumber = '';
  String sign = '';
  double previusRresult = 0, finalRresult = 0;
  List symbol = ['C', '<--', '%', 'x2', '7', '8', '9', '/', '4', '5', '6', '*', '1', '2', '3', '-', '0', '.', '=', '+'];
  
  getValue(value){
    setState(() {
      switch(value){
        case 0:{
          // C operation here
          displayNumber = '';
          sign = '';
        }
        break;

        case 1:{
          // <-- operation here
          if(displayNumber != '' && displayNumber.length > 0){
            displayNumber = displayNumber.substring(0, displayNumber.length - 1);
          }
        }
        break;

        case 2:{
          // % operation here
          if(displayNumber != '' && sign == ''){
            previusRresult = double.parse(displayNumber);
          }else if(displayNumber != '' && sign == '/'){
            finalRresult = previusRresult / double.parse(displayNumber);
            previusRresult = finalRresult;
          }else if(displayNumber != '' && sign == '*'){
            finalRresult = previusRresult * double.parse(displayNumber);
            previusRresult = finalRresult;
          }else if(displayNumber != '' && sign == '-'){
            finalRresult = previusRresult - double.parse(displayNumber);
            previusRresult = finalRresult;
          }else if(displayNumber != '' && sign == '+'){
            finalRresult = previusRresult + double.parse(displayNumber);
            previusRresult = finalRresult;
          }else if(displayNumber != '' && sign == '%'){
            finalRresult = previusRresult / 100;
            previusRresult = finalRresult;
          }
          sign = '%';
          displayNumber = '';
        }
        break;

        case 3:{
          // x2 operation here
          if(displayNumber != ''){
            finalRresult = double.parse(displayNumber) * double.parse(displayNumber);
            displayNumber = finalRresult.toString();
          }
          sign = '=';
        }
        break;

        case 4:{
          if(sign == '='){
            displayNumber = '7';
            sign = '';
          }else{
            displayNumber += '7';
          }
        }
        break;

        case 5:{
          if(sign == '='){
            displayNumber = '8';
            sign = '';
          }else{
            displayNumber += '8';
          }
        }
        break;

        case 6:{
          if(sign == '='){
            displayNumber = '9';
            sign = '';
          }else{
            displayNumber += '9';
          }
        }
        break;

        case 7:{
          // / operation here
          if(displayNumber != '' && sign == ''){
            previusRresult = double.parse(displayNumber);
          }
          else if(displayNumber != '' && sign == '/'){
            finalRresult = previusRresult / double.parse(displayNumber);
            previusRresult = finalRresult;
          }else if(displayNumber != '' && sign == '*'){
            finalRresult = previusRresult * double.parse(displayNumber);
            previusRresult = finalRresult;
          }else if(displayNumber != '' && sign == '-'){
            finalRresult = previusRresult - double.parse(displayNumber);
            previusRresult = finalRresult;
          }else if(displayNumber != '' && sign == '+'){
            finalRresult = previusRresult + double.parse(displayNumber);
            previusRresult = finalRresult;
          }else if(displayNumber != '' && sign == '%'){
            finalRresult = previusRresult / 100;
            previusRresult = finalRresult;
          }
          sign = '/';
          displayNumber = '';
        }
        break;

        case 8:{
          if(sign == '='){
            displayNumber = '4';
            sign = '';
          }else{
            displayNumber += '4';
          }
        }
        break;

        case 9:{
          if(sign == '='){
            displayNumber = '5';
            sign = '';
          }else{
            displayNumber += '5';
          }
        }
        break;

        case 10:{
          if(sign == '='){
            displayNumber = '6';
            sign = '';
          }else{
            displayNumber += '6';
          }
        }
        break;

        case 11:{
          // * operation here
          if(displayNumber != '' && sign == ''){
            previusRresult = double.parse(displayNumber);
          }
          else if(displayNumber != '' && sign == '/'){
            finalRresult = previusRresult / double.parse(displayNumber);
            previusRresult = finalRresult;
          }else if(displayNumber != '' && sign == '*'){
            finalRresult = previusRresult * double.parse(displayNumber);
            previusRresult = finalRresult;
          }else if(displayNumber != '' && sign == '-'){
            finalRresult = previusRresult - double.parse(displayNumber);
            previusRresult = finalRresult;
          }else if(displayNumber != '' && sign == '+'){
            finalRresult = previusRresult + double.parse(displayNumber);
            previusRresult = finalRresult;
          }else if(displayNumber != '' && sign == '%'){
            finalRresult = previusRresult / 100;
            previusRresult = finalRresult;
          }
          sign = '*';
          displayNumber = '';
        }
        break;

        case 12:{
          if(sign == '='){
            displayNumber = '1';
            sign = '';
          }else{
            displayNumber += '1';
          }
        }
        break;

        case 13:{
          if(sign == '='){
            displayNumber = '2';
            sign = '';
          }else{
            displayNumber += '2';
          }
        }
        break;

        case 14:{
          if(sign == '='){
            displayNumber = '3';
            sign = '';
          }else{
            displayNumber += '3';
          }
        }
        break;

        case 15:{
          // - operation here
          if(displayNumber != '' && sign == ''){
            previusRresult = double.parse(displayNumber);
          }
          else if(displayNumber != '' && sign == '/'){
            finalRresult = previusRresult / double.parse(displayNumber);
            previusRresult = finalRresult;
          }else if(displayNumber != '' && sign == '*'){
            finalRresult = previusRresult * double.parse(displayNumber);
            previusRresult = finalRresult;
          }else if(displayNumber != '' && sign == '-'){
            finalRresult = previusRresult - double.parse(displayNumber);
            previusRresult = finalRresult;
          }else if(displayNumber != '' && sign == '+'){
            finalRresult = previusRresult + double.parse(displayNumber);
            previusRresult = finalRresult;
          }else if(displayNumber != '' && sign == '%'){
            finalRresult = previusRresult / 100;
            previusRresult = finalRresult;
          }
          sign = '-';
          displayNumber = '';
        }
        break;

        case 16:{
          if(displayNumber != '' && sign == '='){
            displayNumber = '';
            sign = '';
          }else if(displayNumber != ''){
            displayNumber += '0';
          }
        }
        break;

        case 17:{
          var dotIndex = displayNumber.indexOf('.');
          if(dotIndex >= 0 && displayNumber != '' && sign == '='){
            displayNumber = '.';
            sign = '';
          }else if(dotIndex == -1){
            displayNumber += '.';
          }
        }
        break;

        case 18:{
          // = operation here
          if(sign == '/'){
            finalRresult = previusRresult / double.parse(displayNumber);
            displayNumber = finalRresult.toString();
          }else if(sign == '*'){
            finalRresult = previusRresult * double.parse(displayNumber);
            displayNumber = finalRresult.toString();
          }else if(sign == '-'){
            finalRresult = previusRresult - double.parse(displayNumber);
            displayNumber = finalRresult.toString();
          }else if(sign == '+'){
            finalRresult = previusRresult + double.parse(displayNumber);
            displayNumber = finalRresult.toString();
          }else if(sign == '%'){
            finalRresult = previusRresult / 100;
            displayNumber = finalRresult.toString();
            previusRresult = 0;
            finalRresult = 0;
          }
          sign = '=';
        }
        break;

        case 19:{
          // + operation here
          if(displayNumber != '' && sign == ''){
            previusRresult = double.parse(displayNumber);
          }
          else if(displayNumber != '' && sign == '/'){
            finalRresult = previusRresult / double.parse(displayNumber);
            previusRresult = finalRresult;
          }else if(displayNumber != '' && sign == '*'){
            finalRresult = previusRresult * double.parse(displayNumber);
            previusRresult = finalRresult;
          }else if(displayNumber != '' && sign == '-'){
            finalRresult = previusRresult - double.parse(displayNumber);
            previusRresult = finalRresult;
          }else if(displayNumber != '' && sign == '+'){
            finalRresult = previusRresult + double.parse(displayNumber);
            previusRresult = finalRresult;
          }else if(displayNumber != '' && sign == '%'){
            finalRresult = previusRresult / 100;
            previusRresult = finalRresult;
          }
          sign = '+';
          displayNumber = '';
        }
        break;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;
    double containerWidth = 0;
    if(deviceWidth <= 500){
      containerWidth = deviceWidth-50;
    }else{
      containerWidth = 450;
    }
    double contentWidth = containerWidth-40;
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
            },
            icon: Icon(Icons.backspace),
          )
        ],
      ),
      body: Center(
        child: Container(
          width: containerWidth,
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 100,
                    width: contentWidth,
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                    child: Text(displayNumber, textAlign: TextAlign.right, style: calHeadTextStyle(),),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50,),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio: 1
                  ),
                  itemCount: symbol.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: (){
                        
                      },
                      child: Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          child: Text(symbol[index], style: TextStyle(fontSize: 30),),
                          style: appElevatedButtonStyle(),
                          onPressed: (){
                            getValue(index);
                          },
                        ),
                      ),
                    );
                  },
                )
              )
            ],
          ),
        ),
      )
    );
  }
}



