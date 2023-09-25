import 'package:flutter/material.dart';
import '../module06.dart';
import '../style.dart';

class Form_ extends StatefulWidget {
  const Form_({super.key});

  @override
  State<Form_> createState() => _Form_State();
}

class _Form_State extends State<Form_> {
  Map<String, String> _inputValue = {'firstName':'', 'lastName':'', 'email':'', 'contactNumber':''};
  String fName = '';
  String lName = '';
  String email = '';
  String cNumber = '';

  @override
  Widget build(BuildContext context) {
    ButtonStyle elevatedButtonStyle = ElevatedButton.styleFrom(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      foregroundColor: Colors.white,
      backgroundColor: Colors.blueAccent
    );

    inputValue(key, formValue){
      setState(() {
        formValue.update(key, (value) => double.parse(formValue));
      });
      print(formValue['num1']);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Form'),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Module06()));
            },
            icon: Icon(Icons.backspace),
          )
        ],
      ),
      body: ListView(
        //mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'First Name',
                border: OutlineInputBorder(),
              ),
              onChanged: (value){
                inputValue('firstName', value);
                setState(() {
                  fName = value;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Last Name',
                border: OutlineInputBorder(),
              ),
              onChanged: (value){
                inputValue('lastName', value);
                setState(() {
                  lName = value;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
          
                )
              ),
              onChanged: (value){
                inputValue('email', value);
                setState(() {
                  email = value;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Contact Number',
                border: OutlineInputBorder(
          
                )
              ),
              onChanged: (value){
                inputValue('contactNumber', value);
                setState(() {
                  cNumber = value;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: (){
                
              },
              child: Text('Submit', style: TextStyle(fontSize: 20),), 
              style: elevatedButtonStyle,               
            ),
          ),
          Center(child: Text('Your First Name $fName', style: appTextStyle(),)),
          Center(child: Text('Your Last Name $lName', style: appTextStyle(),)),
          Center(child: Text('Your Email $email', style: appTextStyle(),)),
          Center(child: Text('Your Contact Number $cNumber', style: appTextStyle(),)),
        ],
      ),
    );
  }
}
