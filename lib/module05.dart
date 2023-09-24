import 'package:flutter/material.dart';
import 'home.dart';

class Module05 extends StatelessWidget {
  final String msg;
  Module05(
    this.msg,
    {super.key}
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Module 05'),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
            },
            icon: Icon(Icons.home),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          children: [
            Container(
              height: 200,
              child: DrawerHeader(
                child: UserAccountsDrawerHeader(
                  accountName: Text('Kazi Shariful Islam'),
                  accountEmail: Text('sharifulbbb@gmail.com'),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  //currentAccountPicture: Image(image: AssetImage('images/001.jpg')),
                  currentAccountPicture: CircleAvatar(backgroundImage: AssetImage('images/002.jpg')),
                ),
              ),
            ),
            ListTile(
              title: Text('Profile Details 1'),
              leading: Icon(Icons.description),
              textColor: Colors.white,
              iconColor: Colors.yellow,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (contaxt) => PD1('Profile Details 1')));
              },
            ),
            ListTile(
              title: Text('Profile Details 2'),
              leading: Icon(Icons.description),
              textColor: Colors.white,
              iconColor: Colors.yellow,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (contaxt) => PD2('Profile Details 2')));
              },
            ),
            ListTile(
              title: Text('Profile Details 3'),
              leading: Icon(Icons.description),
              textColor: Colors.white,
              iconColor: Colors.yellow,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (contaxt) => PD3('Profile Details 3')));
              },
            ),
            ListTile(
              title: Text('Profile Details 4'),
              leading: Icon(Icons.description),
              textColor: Colors.white,
              iconColor: Colors.yellow,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (contaxt) => PD4('Profile Details 4')));
              },
            ),
            ListTile(
              title: Text('Profile Details 5'),
              leading: Icon(Icons.description),
              textColor: Colors.white,
              iconColor: Colors.yellow,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (contaxt) => PD5('Profile Details 5')));
              },
            ),
            ListTile(
              title: Text('Profile Details 6'),
              leading: Icon(Icons.description),
              textColor: Colors.white,
              iconColor: Colors.yellow,
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (contaxt) => PD6('Profile Details 6')));
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Contact'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
        onTap: (int index) {
          if(index == 0 || index == 1 || index == 2){
            print('Clicked');
          }
        },
        currentIndex: 1,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          print('Floating Action Button Clicked');
        },
        backgroundColor: Colors.orange,
      ),
      body: Container(
        color: Colors.blueAccent,
        child: Center(child: Text(msg, style: TextStyle(fontSize: 50, color: Colors.orange),)),
      ),
    );
  }
}

class PD1 extends StatelessWidget {
  final String msg;
  PD1(
    this.msg,
    {super.key}
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
        backgroundColor: Colors.orange,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Module05('Module 05')));
            },
            icon: Icon(Icons.backspace),
          ),
        ],
      ),
      body: Container(
        color: Colors.blueAccent,
      ),
    );
  }
}

class PD2 extends StatelessWidget {
  final String msg;
  PD2(
    this.msg,
    {super.key}
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
        backgroundColor: Colors.orange,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Module05('Module 05')));
            },
            icon: Icon(Icons.backspace),
          ),
        ],
      ),
      body: Container(
        color: Colors.blueAccent,
      ),
    );
  }
}

class PD3 extends StatelessWidget {
  final String msg;
  PD3(
    this.msg,
    {super.key}
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
        backgroundColor: Colors.orange,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Module05('Module 05')));
            },
            icon: Icon(Icons.backspace),
          ),
        ],
      ),
      body: Container(
        color: Colors.blueAccent,
      ),
    );
  }
}

class PD4 extends StatelessWidget {
  final String msg;
  PD4(
    this.msg,
    {super.key}
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
        backgroundColor: Colors.orange,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Module05('Module 05')));
            },
            icon: Icon(Icons.backspace),
          ),
        ],
      ),
      body: Container(
        color: Colors.blueAccent,
      ),
    );
  }
}

class PD5 extends StatelessWidget {
  final String msg;
  PD5(
    this.msg,
    {super.key}
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
        backgroundColor: Colors.orange,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Module05('Module 05')));
            },
            icon: Icon(Icons.backspace),
          ),
        ],
      ),
      body: Container(
        color: Colors.blueAccent,
      ),
    );
  }
}

class PD6 extends StatelessWidget {
  final String msg;
  PD6(
    this.msg,
    {super.key}
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(msg),
        backgroundColor: Colors.orange,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Module05('Module 05')));
            },
            icon: Icon(Icons.backspace),
          ),
        ],
      ),
      body: Container(
        color: Colors.blueAccent,
      ),
    );
  }
}