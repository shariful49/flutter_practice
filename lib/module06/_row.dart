import 'package:flutter/material.dart';
import '../module06.dart';
import 'image_view.dart';

class Row_ extends StatelessWidget {
  const Row_({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row'),
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
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/001.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  //color: Colors.red,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/001.jpg'),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/002.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/002.jpg'),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/003.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/003.jpg'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/004.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  //color: Colors.red,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/004.jpg'),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/005.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/005.jpg'),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/006.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/006.jpg'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/007.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  //color: Colors.red,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/007.jpg'),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/008.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/008.jpg'),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/009.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/009.jpg'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/010.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  //color: Colors.red,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/010.jpg'),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/011.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/011.jpg'),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/012.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/012.jpg'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/013.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  //color: Colors.red,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/013.jpg'),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/014.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/014.jpg'),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/015.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/015.jpg'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/016.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  //color: Colors.red,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/016.jpg'),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/017.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/017.jpg'),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/018.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/018.jpg'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/019.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  //color: Colors.red,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/019.jpg'),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/020.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/020.jpg'),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/021.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/021.jpg'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/022.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  //color: Colors.red,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/022.jpg'),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/023.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/023.jpg'),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/024.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/024.jpg'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/025.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  //color: Colors.red,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/025.jpg'),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/026.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/026.jpg'),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/027.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/027.jpg'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/028.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  //color: Colors.red,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/028.jpg'),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/029.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/029.jpg'),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/030.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/030.jpg'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/031.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  //color: Colors.red,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/031.jpg'),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/032.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/032.jpg'),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/033.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/033.jpg'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/034.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  //color: Colors.red,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/034.jpg'),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/035.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/035.jpg'),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/036.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/036.jpg'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/037.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  //color: Colors.red,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/037.jpg'),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/038.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/038.jpg'),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/039.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/039.jpg'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/040.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  //color: Colors.red,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/040.jpg'),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/041.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/041.jpg'),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/042.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/042.jpg'),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/043.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  //color: Colors.red,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/043.jpg'),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/044.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/044.jpg'),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ImageView('images/045.jpg')));
                },
                child: Container(
                  height: 100,
                  width: 100,
                  margin: EdgeInsets.only(top: 20),
                  child: Image.asset('images/045.jpg'),
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}