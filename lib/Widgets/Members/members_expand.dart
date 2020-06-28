import 'package:flutter/material.dart';
import 'package:lionsclub/Widgets/Members/member_item.dart';

class MembersExpansion extends StatefulWidget {
  @override
  _MembersExpansionState createState() => _MembersExpansionState();
}

class _MembersExpansionState extends State<MembersExpansion> {
  ListView List_Criteria;
  
  List<MemberItem> items = <MemberItem>[
    
    MemberItem(
        false,
        'Prateek Rai',
        'Android Developer',
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 6),
                    margin: EdgeInsets.only(
                      left: 40,
                    ),
                    child: Icon(Icons.person, color: Colors.grey),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "Leo Club",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 74),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text(
                      'Club',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 6),
                    margin: EdgeInsets.only(
                      left: 40,
                    ),
                    child: Icon(Icons.call, color: Colors.grey),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "123456789",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 74),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text(
                      'Mobile',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 6),
                    margin: EdgeInsets.only(
                      left: 40,
                    ),
                    child: Icon(Icons.email, color: Colors.grey),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "pratiekray@gmail.com",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 74),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text(
                      'Email',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Image.network(
          'https://upload.wikimedia.org/wikipedia/en/thumb/5/5b/Lions_Clubs_International_logo.svg/1200px-Lions_Clubs_International_logo.svg.png',
          height: 40,
          width: 40,
        )),

    MemberItem(
        false,
        'Sujit',
        'Flutter Developer',
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 6),
                    margin: EdgeInsets.only(
                      left: 40,
                    ),
                    child: Icon(Icons.person, color: Colors.grey),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "Leo Club",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 74),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text(
                      'Club',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 6),
                    margin: EdgeInsets.only(
                      left: 40,
                    ),
                    child: Icon(Icons.call, color: Colors.grey),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "90909090",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 74),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text(
                      'Mobile',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(top: 6),
                    margin: EdgeInsets.only(
                      left: 40,
                    ),
                    child: Icon(Icons.email, color: Colors.grey),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      "sujit@gmail.com",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 74),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text(
                      'Email',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Image.network(
          'https://upload.wikimedia.org/wikipedia/en/thumb/5/5b/Lions_Clubs_International_logo.svg/1200px-Lions_Clubs_International_logo.svg.png',
          height: 40,
          width: 40,
        )),
  ];



  @override
  Widget build(BuildContext context) {
    List_Criteria = ListView(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10.0),
          child: ExpansionPanelList(
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                items[index].isExpanded = !items[index].isExpanded;
              });
            },
            children: items.map((MemberItem item) {
              return ExpansionPanel(
                  headerBuilder: (BuildContext context, bool isExpanded) {
                    return ListTile(
                      leading: item.lionsLogo,
                      title: Text(
                        item.memberName,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      subtitle: Text(item.memberDesgination),
                    );
                  },
                  isExpanded: item.isExpanded,
                  body: item.body);
            }).toList(),
          ),
        ),
      ],
    );


    Scaffold scaffold = Scaffold(
      body: List_Criteria,
    );
    return scaffold;
  }
}

