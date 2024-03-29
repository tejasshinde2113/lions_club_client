import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lionsclub/Widgets/Members/memberDirectory.dart';
import 'package:lionsclub/Widgets/News/newsArguments.dart';
import 'package:lionsclub/Widgets/gallery.dart';
import 'package:lionsclub/Widgets/upcomingEvent.dart';
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
            onPressed: _shareData
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
      final ByteData bytes = await rootBundle.load(todo.imageUrls);
      await WcFlutterShare.share(
          sharePopupTitle: 'Share',
          subject: todo.newsTitles+'\n',
          fileName: todo.imageUrls,
          text: todo.newsArticle,
          mimeType: 'image/png',
          bytesOfFile: bytes.buffer.asUint8List()
          );
    } catch (e) {
      print('Error ' + e);
    }
  }
}


//    TODAY -> 2 JULY

//    TARGET -> 12 JULY


// TOTAL 10 DAYS

// ACTIVITY REPORTING -> TEJAS ---------------\ 3 DAYS       ----------------------- 5 JULY
// ADMIN REPORTING    -> TEJAS ----------------\   1 DAYS    ----------------------- 6 JULY
                                                                                              //   8DAYS    (2 DAYs) MERGE SUJIT
// BILLING            -> TEJAS -----------------/  2 DAY     ----------------------- 8 JULY

                                                                                              // profile -> SUJIT

// UpcomingEvent      -> Prateek ----------------/  2 DAY    ----------------------- 4 JULY
// Gallery            -> Prateek  ---------------\  2 DAY     ----------------------- 6 JULY
// MemberDirectory    -> Prateek ------------------ 2 DAYS    ----------------------- 8 JULY
// NewsDetail         -> Prateek ----------------/  2 DAYS   ----------------------- 10 JULY




