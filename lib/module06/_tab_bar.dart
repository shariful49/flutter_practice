import 'package:flutter/material.dart';
import '../module06.dart';

class TabBar_ extends StatelessWidget {
  TabBar_({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab Bar'),
          actions: [
            IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Module06()));
              },
              icon: Icon(Icons.backspace),
            )
          ],
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home',),
              Tab(icon: Icon(Icons.search), text: 'Search',),
              Tab(icon: Icon(Icons.settings), text: 'Settings',),
              Tab(icon: Icon(Icons.contact_page), text: 'Contact',),
              Tab(icon: Icon(Icons.person), text: 'Profile',),
              Tab(icon: Icon(Icons.access_alarm), text: 'Alarm',),
              Tab(icon: Icon(Icons.email), text: 'Email',),
              Tab(icon: Icon(Icons.emergency_share), text: 'Emergency',),
              Tab(icon: Icon(Icons.verified_user), text: 'User',),
              Tab(icon: Icon(Icons.shop), text: 'Shopping',),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text('This is Home Page from Tab Bar', style: TextStyle(fontSize: 20, color: Colors.blue),)),
            Center(child: Text('This is Search Page from Tab Bar', style: TextStyle(fontSize: 20, color: Colors.blue),)),
            Center(child: Text('This is Settings Page from Tab Bar', style: TextStyle(fontSize: 20, color: Colors.blue),)),
            Center(child: Text('This is Contact Page from Tab Bar', style: TextStyle(fontSize: 20, color: Colors.blue),)),
            Center(child: Text('This is Profile Page from Tab Bar', style: TextStyle(fontSize: 20, color: Colors.blue),)),
            Center(child: Text('This is Alarm Page from Tab Bar', style: TextStyle(fontSize: 20, color: Colors.blue),)),
            Center(child: Text('This is Email Page from Tab Bar', style: TextStyle(fontSize: 20, color: Colors.blue),)),
            Center(child: Text('This is Emergency Page from Tab Bar', style: TextStyle(fontSize: 20, color: Colors.blue),)),
            Center(child: Text('This is User Page from Tab Bar', style: TextStyle(fontSize: 20, color: Colors.blue),)),
            Center(child: Text('This is Shopping Page from Tab Bar', style: TextStyle(fontSize: 20, color: Colors.blue),)),
          ],
        )
      )
    );
  }
}