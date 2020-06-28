import 'package:flutter/material.dart';
import 'package:lionsclub/Widgets/News/newsArguments.dart';
import 'package:wc_flutter_share/wc_flutter_share.dart';

class NewsDetail extends StatefulWidget {
  @override
  _NewsDetailState createState() => _NewsDetailState();
}

class _NewsDetailState extends State<NewsDetail> {
  @override
  Widget build(BuildContext context) {
    final NewsArguments newsargs = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text('Lions International'),
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share, color: Colors.white),
             onPressed: _shareData,
          ),
        ],
      ),
      body: Padding(
          child: Column(
            children: <Widget>[
              Image.network(newsargs.imageUrls, height: 300),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text(
                      newsargs.newsTitles,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: Colors.black),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.calendar_today,
                      color: Colors.red,
                    ),
                    SizedBox(width: 5),
                    Text(newsargs.date),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        child: Text(
                      newsargs.newsArticle,
                      style: TextStyle(fontSize: 16),
                    ))),
              )
            ],
          ),
          padding: EdgeInsets.all(8)),
    );
  }

   void _shareData() async {

    final NewsArguments todo = ModalRoute.of(context).settings.arguments;
    
    try {
      await WcFlutterShare.share(
          sharePopupTitle: 'Share',
          subject: todo.newsTitles+'\n',
          text: todo.newsArticle,
          mimeType: 'text/plain');
    } catch (e) {
      print(e);
    }
  }
}
