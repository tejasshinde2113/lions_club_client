import 'package:flutter/material.dart';
class NewsPage extends StatefulWidget {
  final String title;
  @override
  NewsPage(this.title);
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
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
