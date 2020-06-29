import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:share/share.dart';

class Gallery extends StatefulWidget {
  final String title;
  @override
  Gallery(this.title);
  _GalleryState createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  createBody() {
    return ListView(
      children: <Widget>[
        GridView.builder(
          shrinkWrap: true,
          physics: ScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 5,
            mainAxisSpacing: 7,
            // childAspectRatio: (MediaQuery.of(context).size.width) / (MediaQuery.of(context).size.height/1.8),
          ),
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
              elevation: 2.0,
              child: Container(
                child: FlatButton(
                  onPressed: () {
                    setState(() {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  PhotoDescription('Lions International')));
                    });
                  },
                  child: Column(
                    children: <Widget>[
                      // Builder(builder: (BuildContext context) {
                      // return Align(
                      // alignment: Alignment.topRight,
                      // child: Padding(
                      // padding: const EdgeInsets.only(right: 5,top: 10,bottom: 5),
                      //child: GestureDetector(
                      //onTap: (){
                      //Share.share(
                      //  "*You are invited* on 2020-05-13 for the following event");
                      //                   },
                      //               child: Icon(
                      //               Icons.more_vert,
                      //             color: Colors.red,
                      //         ),
                      //     ),
                      // ),
                      // );
                      //}),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              bottom: 10.0, left: 10, right: 10),
                          child: Container(
                            height: 130,
                            width: 170,
                            child: Image.network(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS-I9GgqHQ65s_jMNtosTsSajGB-87Y0Oyb5g&usqp=CAU',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      //Center(
                      //child: Text(
                      //'Taylor',
                      //   style: TextStyle(
                      //   fontWeight: FontWeight.bold,
                      //    ),
                      //),
                      //  ),

                      //Center(child: Text('Description')),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
//    return GridView.count(
//      crossAxisCount: 2,
//      mainAxisSpacing: 2,
//
//      crossAxisSpacing: 0,
//      children: <Widget>[
//
//        Expanded(
//          child: FlatButton(
//              child: Card(
//                shape: RoundedRectangleBorder(
//                  borderRadius: BorderRadius.circular(5.0),
//                ),
//                elevation: 2.0,
//
//                child: Column(
//                  children: <Widget>[
//                    Builder(builder: (BuildContext context) {
//                      return FlatButton(
//                        onPressed: () {
//                          Share.share(
//                              "You are invited on 2020-05-13 for the following event");
//                        },
//                        child: Padding(
//                          padding: const EdgeInsets.only(left: 120.0),
//                          child: Icon(
//                            Icons.more_vert,
//                            color: Colors.red,
//                          ),
//                        ),
//                      );
//                    }),
//                    Padding(
//                      padding: const EdgeInsets.only(bottom: 1.0),
//                      child: Image.network(
//                        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS-I9GgqHQ65s_jMNtosTsSajGB-87Y0Oyb5g&usqp=CAU',
//                        height: 100,
//                        width: 150,
//                        fit: BoxFit.cover,
//                      ),
//                    ),
//                    Text(
//                      'Taylor',
//                      style: TextStyle(
//                        fontWeight: FontWeight.bold,
//                      ),
//                    ),
//                    Text('Description')
//                  ],
//                ),
//              ),
//              onPressed: () {
//                Navigator.of(context).pop();
//                Navigator.push(
//                    context,
//                    MaterialPageRoute(
//                        builder: (context) =>
//                            EventDescription('Lions International')));
//              }),
//        ),
//        Expanded(
//          child: FlatButton(
//              child: Card(
//                shape: RoundedRectangleBorder(
//                  borderRadius: BorderRadius.circular(5.0),
//                ),
//                elevation: 2.0,
//
//                child: Column(
//                  children: <Widget>[
//                    Builder(builder: (BuildContext context) {
//                      return FlatButton(
//                        onPressed: () {
//                          Share.share(
//                              "You are invited on 2020-05-13 for the following event");
//                        },
//                        child: Padding(
//                          padding: const EdgeInsets.only(left: 120.0),
//                          child: Icon(
//                            Icons.more_vert,
//                            color: Colors.red,
//                          ),
//                        ),
//                      );
//                    }),
//                    Padding(
//                      padding: const EdgeInsets.only(bottom: 1.0),
//                      child: Image.network(
//                        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS-I9GgqHQ65s_jMNtosTsSajGB-87Y0Oyb5g&usqp=CAU',
//                        height: 100,
//                        width: 150,
//                        fit: BoxFit.cover,
//                      ),
//                    ),
//                    Text(
//                      'Taylor',
//                      style: TextStyle(
//                        fontWeight: FontWeight.bold,
//                      ),
//                    ),
//                    Text('Description')
//                  ],
//                ),
//              ),
//              onPressed: () {
//                Navigator.of(context).pop();
//                Navigator.push(
//                    context,
//                    MaterialPageRoute(
//                        builder: (context) =>
//                            EventDescription('Lions International')));
//              }),
//        ),
//        Expanded(
//          child: FlatButton(
//              child: Card(
//                shape: RoundedRectangleBorder(
//                  borderRadius: BorderRadius.circular(5.0),
//                ),
//                elevation: 2.0,
//
//                child: Column(
//                  children: <Widget>[
//                    Builder(builder: (BuildContext context) {
//                      return FlatButton(
//                        onPressed: () {
//                          Share.share(
//                              "You are invited on 2020-05-13 for the following event");
//                        },
//                        child: Padding(
//                          padding: const EdgeInsets.only(left: 120.0),
//                          child: Icon(
//                            Icons.more_vert,
//                            color: Colors.red,
//                          ),
//                        ),
//                      );
//                    }),
//                    Padding(
//                      padding: const EdgeInsets.only(bottom: 1.0),
//                      child: Image.network(
//                        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS-I9GgqHQ65s_jMNtosTsSajGB-87Y0Oyb5g&usqp=CAU',
//                        height: 100,
//                        width: 150,
//                        fit: BoxFit.cover,
//                      ),
//                    ),
//                    Text(
//                      'Taylor',
//                      style: TextStyle(
//                        fontWeight: FontWeight.bold,
//                      ),
//                    ),
//                    Text('Description')
//                  ],
//                ),
//              ),
//              onPressed: () {
//                Navigator.of(context).pop();
//                Navigator.push(
//                    context,
//                    MaterialPageRoute(
//                        builder: (context) =>
//                            EventDescription('Lions International')));
//              }),
//        ),
//        Expanded(
//          child: FlatButton(
//              child: Card(
//                shape: RoundedRectangleBorder(
//                  borderRadius: BorderRadius.circular(5.0),
//                ),
//                elevation: 2.0,
//
//                child: Column(
//                  children: <Widget>[
//                    Builder(builder: (BuildContext context) {
//                      return FlatButton(
//                        onPressed: () {
//                          Share.share(
//                              "You are invited on 2020-05-13 for the following event");
//                        },
//                        child: Padding(
//                          padding: const EdgeInsets.only(left: 120.0),
//                          child: Icon(
//                            Icons.more_vert,
//                            color: Colors.red,
//                          ),
//                        ),
//                      );
//                    }),
//                    Padding(
//                      padding: const EdgeInsets.only(bottom: 1.0),
//                      child: Image.network(
//                        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS-I9GgqHQ65s_jMNtosTsSajGB-87Y0Oyb5g&usqp=CAU',
//                        height: 100,
//                        width: 150,
//                        fit: BoxFit.cover,
//                      ),
//                    ),
//                    Text(
//                      'Taylor',
//                      style: TextStyle(
//                        fontWeight: FontWeight.bold,
//                      ),
//                    ),
//                    Text('Description')
//                  ],
//                ),
//              ),
//              onPressed: () {
//                Navigator.of(context).pop();
//                Navigator.push(
//                    context,
//                    MaterialPageRoute(
//                        builder: (context) =>
//                            EventDescription('Lions International')));
//              }),
//        ),
//        Expanded(
//          child: FlatButton(
//              child: Card(
//                shape: RoundedRectangleBorder(
//                  borderRadius: BorderRadius.circular(5.0),
//                ),
//                elevation: 2.0,
//
//                child: Column(
//                  children: <Widget>[
//                    Builder(builder: (BuildContext context) {
//                      return FlatButton(
//                        onPressed: () {
//                          Share.share(
//                              "You are invited on 2020-05-13 for the following event");
//                        },
//                        child: Padding(
//                          padding: const EdgeInsets.only(left: 120.0),
//                          child: Icon(
//                            Icons.more_vert,
//                            color: Colors.red,
//                          ),
//                        ),
//                      );
//                    }),
//                    Padding(
//                      padding: const EdgeInsets.only(bottom: 1.0),
//                      child: Image.network(
//                        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS-I9GgqHQ65s_jMNtosTsSajGB-87Y0Oyb5g&usqp=CAU',
//                        height: 100,
//                        width: 150,
//                        fit: BoxFit.cover,
//                      ),
//                    ),
//                    Text(
//                      'Taylor',
//                      style: TextStyle(
//                        fontWeight: FontWeight.bold,
//                      ),
//                    ),
//                    Text('Description')
//                  ],
//                ),
//              ),
//              onPressed: () {
//                Navigator.of(context).pop();
//                Navigator.push(
//                    context,
//                    MaterialPageRoute(
//                        builder: (context) =>
//                            EventDescription('Lions International')));
//              }),
//        ),
//        Expanded(
//          child: FlatButton(
//              child: Card(
//                shape: RoundedRectangleBorder(
//                  borderRadius: BorderRadius.circular(5.0),
//                ),
//                elevation: 2.0,
//
//                child: Column(
//                  children: <Widget>[
//                    Builder(builder: (BuildContext context) {
//                      return FlatButton(
//                        onPressed: () {
//                          Share.share(
//                              "You are invited on 2020-05-13 for the following event");
//                        },
//                        child: Padding(
//                          padding: const EdgeInsets.only(left: 120.0),
//                          child: Icon(
//                            Icons.more_vert,
//                            color: Colors.red,
//                          ),
//                        ),
//                      );
//                    }),
//                    Padding(
//                      padding: const EdgeInsets.only(bottom: 1.0),
//                      child: Image.network(
//                        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS-I9GgqHQ65s_jMNtosTsSajGB-87Y0Oyb5g&usqp=CAU',
//                        height: 100,
//                        width: 150,
//                        fit: BoxFit.cover,
//                      ),
//                    ),
//                    Text(
//                      'Taylor',
//                      style: TextStyle(
//                        fontWeight: FontWeight.bold,
//                      ),
//                    ),
//                    Text('Description')
//                  ],
//                ),
//              ),
//              onPressed: () {
//                Navigator.of(context).pop();
//                Navigator.push(
//                    context,
//                    MaterialPageRoute(
//                        builder: (context) =>
//                            EventDescription('Lions International')));
//              }),
//        ),
//        Expanded(
//          child: FlatButton(
//              child: Card(
//                shape: RoundedRectangleBorder(
//                  borderRadius: BorderRadius.circular(5.0),
//                ),
//                elevation: 2.0,
//
//                child: Column(
//                  children: <Widget>[
//                    Builder(builder: (BuildContext context) {
//                      return FlatButton(
//                        onPressed: () {
//                          Share.share(
//                              "You are invited on 2020-05-13 for the following event");
//                        },
//                        child: Padding(
//                          padding: const EdgeInsets.only(left: 120.0),
//                          child: Icon(
//                            Icons.more_vert,
//                            color: Colors.red,
//                          ),
//                        ),
//                      );
//                    }),
//                    Padding(
//                      padding: const EdgeInsets.only(bottom: 1.0),
//                      child: Image.network(
//                        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS-I9GgqHQ65s_jMNtosTsSajGB-87Y0Oyb5g&usqp=CAU',
//                        height: 100,
//                        width: 150,
//                        fit: BoxFit.cover,
//                      ),
//                    ),
//                    Text(
//                      'Taylor',
//                      style: TextStyle(
//                        fontWeight: FontWeight.bold,
//                      ),
//                    ),
//                    Text('Description')
//                  ],
//                ),
//              ),
//              onPressed: () {
//                Navigator.of(context).pop();
//                Navigator.push(
//                    context,
//                    MaterialPageRoute(
//                        builder: (context) =>
//                            EventDescription('Lions International')));
//              }),
//        ),
//
//        Expanded(
//          child: FlatButton(
//              child: Card(
//                shape: RoundedRectangleBorder(
//                  borderRadius: BorderRadius.circular(5.0),
//                ),
//                elevation: 2.0,
//
//                child: Column(
//                  children: <Widget>[
//                    Builder(builder: (BuildContext context) {
//                      return FlatButton(
//                        onPressed: () {
//                          Share.share(
//                              "You are invited on 2020-05-13 for the following event");
//                        },
//                        child: Padding(
//                          padding: const EdgeInsets.only(left: 120.0),
//                          child: Icon(
//                            Icons.more_vert,
//                            color: Colors.red,
//                          ),
//                        ),
//                      );
//                    }),
//                    Padding(
//                      padding: const EdgeInsets.only(bottom: 1.0),
//                      child: Image.network(
//                        'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS-I9GgqHQ65s_jMNtosTsSajGB-87Y0Oyb5g&usqp=CAU',
//                        height: 100,
//                        width: 150,
//                        fit: BoxFit.cover,
//                      ),
//                    ),
//                    Text(
//                      'Taylor',
//                      style: TextStyle(
//                        fontWeight: FontWeight.bold,
//                      ),
//                    ),
//                    Text('Description')
//                  ],
//                ),
//              ),
//              onPressed: () {
//                Navigator.of(context).pop();
//                Navigator.push(
//                    context,
//                    MaterialPageRoute(
//                        builder: (context) =>
//                            EventDescription('Lions International')));
//              }),
//        ),
//
//      ],
//    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: createBody(),
    );
  }
}

class PhotoDescription extends StatefulWidget {
  final String title;
  @override
  PhotoDescription(this.title);
  _PhotoDescriptionState createState() => _PhotoDescriptionState();
}

class _PhotoDescriptionState extends State<PhotoDescription> {
  share(BuildContext context) {}

  Widget createDescription() {
    return ListView(
      children: <Widget>[
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.calendar_today,
                    color: Colors.red,
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
            Builder(builder: (BuildContext context) {
              return Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 5, top: 10, bottom: 5),
                  child: GestureDetector(
                    onTap: () {
                      Share.share("*You are invited* on 2020-08-22 .");
                    },
                    child: Icon(
                      Icons.more_vert,
                      color: Colors.red,
                    ),
                  ),
                ),
              );
            }),
          ],
        ),
        SizedBox(
          height: 40,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcS-I9GgqHQ65s_jMNtosTsSajGB-87Y0Oyb5g&usqp=CAU',
              // height: 130,
              //width: 220,
              fit: BoxFit.cover,
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
