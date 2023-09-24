import 'package:flutter/material.dart';
import 'home.dart';
import 'module06/_container.dart';
import 'module06/_row.dart';
import 'module06/_button.dart';
import 'module06/_alert_dialog.dart';
import 'module06/_form.dart';
import 'module06/_list_view.dart';
import 'module06/_grid_view.dart';
import 'module06/_tab_bar.dart';
import 'module06/_card.dart';
import 'module06/_circular_progress.dart';
import 'module06/_linear_progress.dart';

class Module06 extends StatelessWidget {
  Module06(
    {super.key}
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Module 06'),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
            },
            icon: Icon(Icons.home),
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Container', style: TextStyle(fontSize: 20),),
            tileColor: Colors.lightBlueAccent,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Container_()));
            },
          ),
          ListTile(
            title: Text('Row', style: TextStyle(fontSize: 20),),
            tileColor: Colors.amber,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Row_()));
            },
          ),
          ListTile(
            title: Text('Button', style: TextStyle(fontSize: 20),),
            tileColor: Colors.lightBlueAccent,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Button_()));
            },
          ),
          ListTile(
            title: Text('Alert Dialog', style: TextStyle(fontSize: 20),),
            tileColor: Colors.amber,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => AlertDialog_()));
            },
          ),
          ListTile(
            title: Text('Form', style: TextStyle(fontSize: 20),),
            tileColor: Colors.lightBlueAccent,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Form_()));
            },
          ),
          ListTile(
            title: Text('List View', style: TextStyle(fontSize: 20),),
            tileColor: Colors.amber,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ListView_()));
            },
          ),
          ListTile(
            title: Text('Grid View', style: TextStyle(fontSize: 20),),
            tileColor: Colors.lightBlueAccent,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => GridView_()));
            },
          ),
          ListTile(
            title: Text('Tab Bar', style: TextStyle(fontSize: 20),),
            tileColor: Colors.amber,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => TabBar_()));
            },
          ),
          ListTile(
            title: Text('Card', style: TextStyle(fontSize: 20),),
            tileColor: Colors.lightBlueAccent,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Card_()));
            },
          ),
          ListTile(
            title: Text('Circular Progress', style: TextStyle(fontSize: 20),),
            tileColor: Colors.amber,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CircularProgress_()));
            },
          ),
          ListTile(
            title: Text('Linear Progress', style: TextStyle(fontSize: 20),),
            tileColor: Colors.lightBlueAccent,
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => LinearProgress_()));
            },
          ),
        ],
        
      )
    );
  }
}