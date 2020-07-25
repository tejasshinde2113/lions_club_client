import 'package:flutter/material.dart';
import 'AdminWidget/adminReport.dart';
import 'ActivityReporting/activityReport.dart';
import 'gallery.dart';
import 'upcomingEvent.dart';
import 'Members/memberDirectory.dart';
import 'News/news.dart';
class NavDrawer extends StatefulWidget {
  @override
  _NavDrawerState createState() => _NavDrawerState();
}

class _NavDrawerState extends State<NavDrawer> {

  var _name = 'Lions International';
  var _email = 'clubId@email.com';
  var _phone = '0987654321';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    Widget profile = InkWell(
      child: Row(
        children: <Widget>[
          Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('images/logo.png'))),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: Text(
                      _name,
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: Text(
                      _email,
                      style: TextStyle(color: Colors.white54, fontSize: 12),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                    child: Text(
                      _phone,
                      style: TextStyle(color: Colors.white54, fontSize: 12),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

    Widget drawerHeader = Container(
      height: 150,
      child: DrawerHeader(
        child: Column(
          children: <Widget>[profile],
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).primaryColor,
        ),
      ),
    );

    return Drawer(
      child: Scaffold(
        body: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            drawerHeader,
            ListTile(
              leading: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.all(const Radius.circular(100.0)),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Icon(
                    Icons.attach_file,
                    color: Colors.white,
                    size: 15,
                  )),
              title: Text('Actitvity Reporting'),
              onTap: () => {
                Navigator.of(context).pop(),
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ActivityReport('Actitvity Reporting')),
                )
              },
            ),

            ListTile(
              leading: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.all(const Radius.circular(100.0)),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Icon(
                    Icons.calendar_today,
                    color: Colors.white,
                    size: 15,
                  )),
              title: Text('Admin Reporting'),
              onTap: () => {
                Navigator.of(context).pop(),
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AdminReport('Admin Reporting')),
                ),
              },
            ),
            ListTile(
              leading: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.all(const Radius.circular(100.0)),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Icon(
                    Icons.group_work,
                    color: Colors.white,
                    size: 15,
                  )),
              title: Text('Upcoming Events'),
              onTap: () => {
                Navigator.of(context).pop(),
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UpcomingEvent('Upcoming Events')),
                )
              },
            ),
            ListTile(
              leading: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.all(const Radius.circular(100.0)),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Icon(
                    Icons.photo_album,
                    color: Colors.white,
                    size: 15,
                  )),
              title: Text('Gallery'),
              onTap: () => {
                Navigator.of(context).pop(),
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Gallery("Gallery")),
                )
              },
            ),
            ListTile(
              leading: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.all(const Radius.circular(100.0)),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Icon(
                    Icons.store_mall_directory,
                    color: Colors.white,
                    size: 15,
                  )),
              title: Text('Member Directory'),
              onTap: () => {
                Navigator.of(context).pop(),
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MemberDirectory("Member Directory")),
                )
              },
            ),
            ListTile(
              leading: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.all(const Radius.circular(100.0)),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Icon(
                    Icons.description,
                    color: Colors.white,
                    size: 15,
                  )),
              title: Text('News'),
              onTap: () => {
                Navigator.of(context).pop(),
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewsPage("News")),
                )
              },
            ),

            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Copyright 2021 @ Lions District 32334D2',
              style: TextStyle(
                fontSize: 22
              ),),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('2020-21 All rights reserved',
                style: TextStyle(
                    fontSize: 20
                ),),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Product By HSPM Solutions',
                style: TextStyle(
                    fontSize: 10,
                  fontWeight: FontWeight.bold
                ),),
            )
          ],
        ),
      ),
    );
  }
}
