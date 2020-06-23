import 'package:flutter/material.dart';
import 'loginPage.dart';
import 'Widgets/sideBar.dart';
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
        Container(
          height: 200,
          child: Center(
            child: Text("IMAGE Portion"),
          ),
        ),

        SizedBox(
          height: 10,
        ),

        Container(
          height: 75,
          child:Row(
            children: <Widget>[
              Spacer(),
              Container(
                width: 110,
                height: 75,
                color: mainColor,
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
              Spacer(),
              Container(
                width: 110,
                height: 75,
                color: mainColor,
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
              Spacer(),
              Container(
                width: 110,
                height: 75,
                color: mainColor,
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
                  padding: const EdgeInsets.only(right: 10),
                  child: Container(
                    alignment: Alignment.bottomRight,
                    child: Text("Load More"),
                  ),
                ),
              ],
            ),
          ),
        ),




        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (BuildContext context, int index){

                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
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
                          size: 30,
                        )),
                    title: Text('Event Name'),
                    onTap: () => {
//                  Navigator.of(context).pop(),
//                  Navigator.push(
//                    context,
//                    MaterialPageRoute(builder: (context) => ActitvityReport('Actitvity Reporting')),
//                  )
                    },
                  ),
                );
            },
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

      ),
      body: createBody(),
    );
  }
}


