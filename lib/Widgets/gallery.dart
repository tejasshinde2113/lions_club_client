import 'package:flutter/material.dart';
class Gallery extends StatefulWidget {
  final String title;
  @override
  Gallery(this.title);
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  createBody(){

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            widget.title
        ),
      ),
      body: createBody(),
    );
  }
}
