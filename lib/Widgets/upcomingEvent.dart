import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

class UpcomingEvent extends StatefulWidget {
  final String title;
  @override
  UpcomingEvent(this.title);
  _UpcomingEventState createState() => _UpcomingEventState();
}

class _UpcomingEventState extends State<UpcomingEvent> {
  createBody() {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 2,

      crossAxisSpacing: 0,
      children: <Widget>[

        Expanded(
          child: FlatButton(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                elevation: 2.0,

                child: Column(
                  children: <Widget>[
                    Builder(builder: (BuildContext context) {
                      return FlatButton(
                        onPressed: () {
                          Share.share(
                              "You are invited on 2020-05-13 for the following event");
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
                        height: 100,
                        width: 150,
                        fit: BoxFit.cover,
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
        Expanded(
          child: FlatButton(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                elevation: 2.0,

                child: Column(
                  children: <Widget>[
                    Builder(builder: (BuildContext context) {
                      return FlatButton(
                        onPressed: () {
                          Share.share(
                              "You are invited on 2020-05-13 for the following event");
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
                        height: 100,
                        width: 150,
                        fit: BoxFit.cover,
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
        Expanded(
          child: FlatButton(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                elevation: 2.0,

                child: Column(
                  children: <Widget>[
                    Builder(builder: (BuildContext context) {
                      return FlatButton(
                        onPressed: () {
                          Share.share(
                              "You are invited on 2020-05-13 for the following event");
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
                        height: 100,
                        width: 150,
                        fit: BoxFit.cover,
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
        Expanded(
          child: FlatButton(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                elevation: 2.0,

                child: Column(
                  children: <Widget>[
                    Builder(builder: (BuildContext context) {
                      return FlatButton(
                        onPressed: () {
                          Share.share(
                              "You are invited on 2020-05-13 for the following event");
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
                        height: 100,
                        width: 150,
                        fit: BoxFit.cover,
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
        Expanded(
          child: FlatButton(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                elevation: 2.0,

                child: Column(
                  children: <Widget>[
                    Builder(builder: (BuildContext context) {
                      return FlatButton(
                        onPressed: () {
                          Share.share(
                              "You are invited on 2020-05-13 for the following event");
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
                        height: 100,
                        width: 150,
                        fit: BoxFit.cover,
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
        Expanded(
          child: FlatButton(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                elevation: 2.0,

                child: Column(
                  children: <Widget>[
                    Builder(builder: (BuildContext context) {
                      return FlatButton(
                        onPressed: () {
                          Share.share(
                              "You are invited on 2020-05-13 for the following event");
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
                        height: 100,
                        width: 150,
                        fit: BoxFit.cover,
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
        Expanded(
          child: FlatButton(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                elevation: 2.0,

                child: Column(
                  children: <Widget>[
                    Builder(builder: (BuildContext context) {
                      return FlatButton(
                        onPressed: () {
                          Share.share(
                              "You are invited on 2020-05-13 for the following event");
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
                        height: 100,
                        width: 150,
                        fit: BoxFit.cover,
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

        Expanded(
          child: FlatButton(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0),
                ),
                elevation: 2.0,

                child: Column(
                  children: <Widget>[
                    Builder(builder: (BuildContext context) {
                      return FlatButton(
                        onPressed: () {
                          Share.share(
                              "You are invited on 2020-05-13 for the following event");
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
                        height: 100,
                        width: 150,
                        fit: BoxFit.cover,
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

      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: createBody(),
      ),
    );
  }
}

class EventDescription extends StatefulWidget {
  final String title;
  @override
  EventDescription(this.title);
  _EventDescriptionState createState() => _EventDescriptionState();
}

class _EventDescriptionState extends State<EventDescription> {
  share(BuildContext context) {}

  Widget createDescription() {
    return Column(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS-I9GgqHQ65s_jMNtosTsSajGB-87Y0Oyb5g&usqp=CAU',
              height: 130,
              width: 220,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Test Event',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Icon(
                  Icons.calendar_today,
                  color: Colors.red,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Text('22-08-2020'),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 220.0),
          child: Text('Description......................'),
        ),
        SizedBox(
          height: 250,
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 8.0),
            child: FlatButton(
              color: Colors.red,
              textColor: Colors.white,
              child: Text(
                'SUMBIT',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                setState(() {});
              },
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: createDescription(),
    );
  }
}
