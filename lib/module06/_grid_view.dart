import 'package:flutter/material.dart';
import '../module06.dart';

class GridView_ extends StatelessWidget {
  GridView_({super.key});
  final myItems = [
    {'img' : 'images/001.jpg', 'title' : 'Profile 1'},
    {'img' : 'images/002.jpg', 'title' : 'Profile 2'},
    {'img' : 'images/003.jpg', 'title' : 'Profile 3'},
    {'img' : 'images/004.jpg', 'title' : 'Profile 4'},
    {'img' : 'images/005.jpg', 'title' : 'Profile 5'},
    {'img' : 'images/006.jpg', 'title' : 'Profile 6'},
    {'img' : 'images/007.jpg', 'title' : 'Profile 7'},
    {'img' : 'images/008.jpg', 'title' : 'Profile 8'},
    {'img' : 'images/009.jpg', 'title' : 'Profile 9'},
    {'img' : 'images/010.jpg', 'title' : 'Profile 10'},
    {'img' : 'images/011.jpg', 'title' : 'Profile 11'},
    {'img' : 'images/012.jpg', 'title' : 'Profile 12'},
    {'img' : 'images/013.jpg', 'title' : 'Profile 13'},
    {'img' : 'images/014.jpg', 'title' : 'Profile 14'},
    {'img' : 'images/015.jpg', 'title' : 'Profile 15'},
    {'img' : 'images/016.jpg', 'title' : 'Profile 16'},
    {'img' : 'images/017.jpg', 'title' : 'Profile 17'},
    {'img' : 'images/018.jpg', 'title' : 'Profile 18'},
    {'img' : 'images/019.jpg', 'title' : 'Profile 19'},
    {'img' : 'images/020.jpg', 'title' : 'Profile 20'},
    {'img' : 'images/021.jpg', 'title' : 'Profile 21'},
    {'img' : 'images/022.jpg', 'title' : 'Profile 22'},
    {'img' : 'images/023.jpg', 'title' : 'Profile 23'},
    {'img' : 'images/024.jpg', 'title' : 'Profile 24'},
    {'img' : 'images/025.jpg', 'title' : 'Profile 25'},
    {'img' : 'images/026.jpg', 'title' : 'Profile 26'},
    {'img' : 'images/027.jpg', 'title' : 'Profile 27'},
    {'img' : 'images/028.jpg', 'title' : 'Profile 28'},
    {'img' : 'images/029.jpg', 'title' : 'Profile 29'},
    {'img' : 'images/030.jpg', 'title' : 'Profile 30'},
    {'img' : 'images/031.jpg', 'title' : 'Profile 31'},
    {'img' : 'images/032.jpg', 'title' : 'Profile 32'},
    {'img' : 'images/033.jpg', 'title' : 'Profile 33'},
    {'img' : 'images/034.jpg', 'title' : 'Profile 34'},
    {'img' : 'images/035.jpg', 'title' : 'Profile 35'},
    {'img' : 'images/036.jpg', 'title' : 'Profile 36'},
    {'img' : 'images/037.jpg', 'title' : 'Profile 37'},
    {'img' : 'images/038.jpg', 'title' : 'Profile 38'},
    {'img' : 'images/039.jpg', 'title' : 'Profile 39'},
    {'img' : 'images/040.jpg', 'title' : 'Profile 40'},
    {'img' : 'images/041.jpg', 'title' : 'Profile 41'},
    {'img' : 'images/042.jpg', 'title' : 'Profile 42'},
    {'img' : 'images/043.jpg', 'title' : 'Profile 43'},
    {'img' : 'images/044.jpg', 'title' : 'Profile 44'},
    {'img' : 'images/045.jpg', 'title' : 'Profile 45'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Module06()));
            },
            icon: Icon(Icons.backspace),
          )
        ],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 1,
          childAspectRatio: .8
        ),
        itemCount: myItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              print(myItems[index]['title']);
            },
            child: Container(
              margin: EdgeInsets.all(5),
              //color: Colors.red,
              //height: 300,
              width: double.infinity,
              child: Image.asset(myItems[index]['img']!, fit: BoxFit.fill,),
            ),
          );
        },
      )
    );
  }
}