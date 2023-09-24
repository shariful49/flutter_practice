import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import '_row.dart';

class ImageView extends StatelessWidget {
  final String url;
  ImageView(
    this.url,
    {super.key}
    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Row_()));
            },
            icon: Icon(Icons.backspace),
          )
        ],
      ),
      body: Container(
        width: 400,
        color: Colors.lightBlueAccent,
        child: PhotoView(
          imageProvider: AssetImage(url),
          //maxScale: 10,
          initialScale: PhotoViewComputedScale.contained * 1,
          maxScale: PhotoViewComputedScale.contained * 100,
        ),
      ),
    );
  }
}