import 'package:flutter/material.dart';
import 'package:lionsclub/loginPage.dart';
class ProfilePage extends StatefulWidget {
  final String title;
  @override
  ProfilePage(this.title);
  _ProfilePageState createState() => _ProfilePageState();
}


class _ProfilePageState extends State<ProfilePage> {
  String name = "Sujit Jailwaliya";
  String mobileNumber = "7037251245";
  String mail = "jaiwaliyas@gmail.com";
  String designation = "District Governor";
  Widget setBarCode(){
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          color: Colors.black,
          height: 200,
          width: 200,
        ),
      ),
    );
  }

  Widget setScanMyCode(){
    return Container(
      height:50,
      child: Center(
        child: Text(
          "Scan My Code",
          style: TextStyle(
              fontSize: 20,
              color: Colors.blue[900]
//              fontWeight: FontWeight.w300,
//              fontStyle:FontStyle.italic,

          ),
        ),
      ),
    );
  }

  Widget setName(){
    return Container(
      height:50,
      child: Center(
        child: Text(
          name,
          style: TextStyle(
              fontSize: 25,
              color: mainColor,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }

  Widget setMobileNumber(){
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Icon(
          Icons.call,
          size: 30,
          color: Colors.grey[600],
        ),
      ),
      title: Text(
        "Mobile",
        style: TextStyle(
            color: Colors.grey[600],
            fontWeight: FontWeight.bold
        ),
      ),
      subtitle: Text(
        mobileNumber,
        style: TextStyle(
            fontSize: 20,
            color: mainColor,
            fontWeight: FontWeight.bold
        ),
      ),

    );
  }

  Widget setEmail(){
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Icon(
          Icons.mail,
          size: 30,
          color: Colors.grey[600],
        ),
      ),
      title: Text(
        "Email",
        style: TextStyle(
            color: Colors.grey[600],
            fontWeight: FontWeight.bold
        ),
      ),
      subtitle: Text(
        mail,
        style: TextStyle(
            fontSize: 20,
            color: mainColor,
            fontWeight: FontWeight.bold
        ),
      ),

    );
  }

  Widget setDesignation(){
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Icon(
          Icons.person,
          size: 30,
          color: Colors.grey[600],
        ),
      ),
      title: Text(
        "Designation",
        style: TextStyle(
            color: Colors.grey[600],
            fontWeight: FontWeight.bold
        ),
      ),
      subtitle: Text(
        designation,
        style: TextStyle(
            fontSize: 20,
            color: mainColor,
            fontWeight: FontWeight.bold
        ),
      ),

    );
  }

  Widget createBody(){
    return Column(
      children: <Widget>[
        Spacer(),
        setBarCode(),
        setScanMyCode(),
        Spacer(flex: 2,),
        setName(),
        SizedBox(
          height: 30,
        ),
        setMobileNumber(),
        SizedBox(
          height: 10,
        ),
        setEmail(),
        SizedBox(
          height: 10,
        ),
        setDesignation(),
        SizedBox(
          height: 25,
        ),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            widget.title
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: (){
              // sign out
//              Navigator.push(
//                context,
//                MaterialPageRoute(builder: (context) => ProfilePage('Profile')),
//              );
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(
                Icons.power_settings_new,
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
