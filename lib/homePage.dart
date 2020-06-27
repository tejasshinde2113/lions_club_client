import 'package:flutter/material.dart';
import 'package:lionsclub/Widgets/upcomingEvent.dart';
import 'package:lionsclub/Widgets/uploadBills.dart';
import 'loginPage.dart';
import 'Widgets/sideBar.dart';
import 'Widgets/AdminWidget/adminReport.dart';
import 'Widgets/ActivityReporting/activityReport.dart';
import 'package:lionsclub/Widgets/profilePage.dart';
import 'Widgets/uploadBills.dart';
import 'package:share/share.dart';


class MyHomePage extends StatefulWidget {

  final String title;
  @override
  MyHomePage(this.title);
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();

  Widget createBody() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 20,bottom: 20),
          child: Container(
            height: 200,
            child: Center(
              child: Image.asset(logoUrl3),
              //Text("IMAGE Portion"),
            ),
          ),
        ),

        SizedBox(
          height: 20,
        ),

        Container(
            child:Row(
              children: <Widget>[
                Spacer(),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ActivityReport('Activity Report')),
                    );
                  },
                  child: Container(
                    width: 110,
                    height: 90,
                    decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          "Activity Report",
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AdminReport('Admin Reports')),
                    );
                  },
                  child: Container(
                    width: 120,
                    height: 90,
                    decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          "Admin Reporting",
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UploadBills('Upload Bills')),
                    );
                  },
                  child: Container(
                    width: 110,
                    height: 90,
                    decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          "Upload Bills",
                          maxLines: 2,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
              ],
            )

        ),

        Container(
          height: 60,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "Upcoming events",
                      style: TextStyle(
                          fontSize: 25
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10,top: 35),
                  child: Container(
                    alignment: Alignment.bottomRight,
                    child: FlatButton(
                      child: Text(
                        "Load More",
                        style: TextStyle(
                            color: Colors.blue[900]
                        ),
                      ),
                      onPressed: (){
                        Navigator.of(context).pop();
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => UpcomingEvent('Upcoming Events')),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),



        Expanded(
          child: GridView.count(
            crossAxisCount: 2,
            children: <Widget>[
              Container(
                child: FlatButton(
                    child: Card(
                      margin: EdgeInsets.all(
                        1.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      elevation: 10.0,
                      child: Column(
                        children: <Widget>[
                          Builder(builder: (BuildContext context) {
                            return FlatButton(
                              onPressed: () {
                                Share.share("You are invited on 2020-05-13 for the following event");
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(left: 120.0),
                                child: Icon(
                                  Icons.more_vert,
                                  color: Colors.red,
                                ),
                              ),
                            );
                          }),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 1.0),
                            child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS-I9GgqHQ65s_jMNtosTsSajGB-87Y0Oyb5g&usqp=CAU',
                              height: 120,
                              width: 130,
                            ),
                          ),
                          Text(
                            'Taylor',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Description')
                        ],
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EventDescription('Lions International')));
                    }),
              ),
              Container(
                child: FlatButton(
                    child: Card(
                      margin: EdgeInsets.all(
                        1.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      elevation: 10.0,
                      child: Column(
                        children: <Widget>[
                          Builder(builder: (BuildContext context) {
                            return FlatButton(
                              onPressed: () {

                                Share.share("You are invited on 2020-05-13 for the following event");

                              },
                              child: Padding(
                                padding: const EdgeInsets.only(left: 120.0),
                                child: Icon(
                                  Icons.more_vert,
                                  color: Colors.red,
                                ),
                              ),
                            );
                          }),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 1.0),
                            child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS-I9GgqHQ65s_jMNtosTsSajGB-87Y0Oyb5g&usqp=CAU',
                              height: 120,
                              width: 130,
                            ),
                          ),
                          Text(
                            'Taylor',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Description')
                        ],
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EventDescription('Lions International')));
                    }),
              ),
              Container(
                child: FlatButton(
                    child: Card(
                      margin: EdgeInsets.all(
                        1.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      elevation: 10.0,
                      child: Column(
                        children: <Widget>[
                          Builder(builder: (BuildContext context) {
                            return FlatButton(
                              onPressed: () {
                                Share.share("You are invited on 2020-05-13 for the following event");
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(left: 120.0),
                                child: Icon(
                                  Icons.more_vert,
                                  color: Colors.red,
                                ),
                              ),
                            );
                          }),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 1.0),
                            child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS-I9GgqHQ65s_jMNtosTsSajGB-87Y0Oyb5g&usqp=CAU',
                              height: 120,
                              width: 130,
                            ),
                          ),
                          Text(
                            'Taylor',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Description')
                        ],
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EventDescription('Lions International')));
                    }),
              ),
              Container(
                child: FlatButton(
                    child: Card(
                      margin: EdgeInsets.all(
                        1.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      elevation: 10.0,
                      child: Column(
                        children: <Widget>[
                          Builder(builder: (BuildContext context) {
                            return FlatButton(
                              onPressed: () {
                                Share.share("You are invited on 2020-05-13 for the following event");
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(left: 120.0),
                                child: Icon(
                                  Icons.more_vert,
                                  color: Colors.red,
                                ),
                              ),
                            );
                          }),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 1.0),
                            child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS-I9GgqHQ65s_jMNtosTsSajGB-87Y0Oyb5g&usqp=CAU',
                              height: 120,
                              width: 130,
                            ),
                          ),
                          Text(
                            'Taylor',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Description')
                        ],
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  EventDescription('Lions International')));
                    }),
              ),
              Container(
                child: FlatButton(
                    child: Card(
                      margin: EdgeInsets.all(
                        1.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      elevation: 10.0,
                      child: Column(
                        children: <Widget>[
                          Builder(builder: (BuildContext context) {
                            return FlatButton(
                              onPressed: () {
                                Share.share("You are invited on 2020-05-13 for the following event");
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(left: 120.0),
                                child: Icon(
                                  Icons.more_vert,
                                  color: Colors.red,
                                ),
                              ),
                            );
                          }),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 1.0),
                            child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS-I9GgqHQ65s_jMNtosTsSajGB-87Y0Oyb5g&usqp=CAU',
                              height: 120,
                              width: 130,
                            ),
                          ),
                          Text(
                            'Taylor',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Description')
                        ],
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EventDescription('Lions International')));
                    }),
              ),
              Container(
                child: FlatButton(
                    child: Card(
                      margin: EdgeInsets.all(
                        1.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      elevation: 10.0,
                      child: Column(
                        children: <Widget>[
                          Builder(builder: (BuildContext context) {
                            return FlatButton(
                              onPressed: () {
                                Share.share("You are invited on 2020-05-13 for the following event");
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(left: 120.0),
                                child: Icon(
                                  Icons.more_vert,
                                  color: Colors.red,
                                ),
                              ),
                            );
                          }),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 1.0),
                            child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS-I9GgqHQ65s_jMNtosTsSajGB-87Y0Oyb5g&usqp=CAU',
                              height: 120,
                              width: 130,
                            ),
                          ),
                          Text(
                            'Taylor',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Description')
                        ],
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EventDescription('Lions International')));
                    }),
              ),
              Container(
                child: FlatButton(
                    child: Card(
                      margin: EdgeInsets.all(
                        1.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      elevation: 10.0,
                      child: Column(
                        children: <Widget>[
                          Builder(builder: (BuildContext context) {
                            return FlatButton(
                              onPressed: () {
                                Share.share("You are invited on 2020-05-13 for the following event");
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(left: 120.0),
                                child: Icon(
                                  Icons.more_vert,
                                  color: Colors.red,
                                ),
                              ),
                            );
                          }),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 1.0),
                            child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS-I9GgqHQ65s_jMNtosTsSajGB-87Y0Oyb5g&usqp=CAU',
                              height: 120,
                              width: 130,
                            ),
                          ),
                          Text(
                            'Taylor',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Description')
                        ],
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EventDescription('Lions International')));
                    }),
              ),
              Container(
                child: FlatButton(
                    child: Card(
                      margin: EdgeInsets.all(
                        1.0,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      elevation: 10.0,
                      child: Column(
                        children: <Widget>[
                          Builder(builder: (BuildContext context) {
                            return FlatButton(
                              onPressed: () {
                                Share.share("You are invited on 2020-05-13 for the following event");
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(left: 120.0),
                                child: Icon(
                                  Icons.more_vert,
                                  color: Colors.red,
                                ),
                              ),
                            );
                          }),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 1.0),
                            child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS-I9GgqHQ65s_jMNtosTsSajGB-87Y0Oyb5g&usqp=CAU',
                              height: 120,
                              width: 130,
                            ),
                          ),
                          Text(
                            'Taylor',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text('Description')
                        ],
                      ),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EventDescription('Liond International')));
                    }),
              ),
            ],
          ),
        )

      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: NavDrawer(),
      appBar: AppBar(
        elevation: 10,
        backgroundColor: mainColor,
        leading: GestureDetector(
          onTap: (){
            _scaffoldKey.currentState.openDrawer();
          },
          child: Icon(
            Icons.view_headline,
            size: 35,
          ),
        ),
        title: Text(
          widget.title,
          style: TextStyle(
              fontSize: 20
          ),
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage('Profile')),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.person,
                size: 30,
              ),
            ),
          )
        ],

      ),
      body: createBody(),
    );
  }
}


