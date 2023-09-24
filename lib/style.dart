import 'package:flutter/material.dart';

InputDecoration appInputStyle(label){
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
    filled: true,
    fillColor: Color.fromARGB(255, 198, 237, 255),
    labelText: label,
    border: OutlineInputBorder(),
  );
}

TextStyle appTextStyle(){
  return TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );
}

ButtonStyle appElevatedButtonStyle(){
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(15),
    backgroundColor: Colors.lightBlueAccent,
    foregroundColor: Colors.white,
  );
}

TextStyle calHeadTextStyle(){
  return TextStyle(
    fontSize: 40,
    fontWeight: FontWeight.bold,
  );
}