import 'package:flutter/material.dart';
import 'package:lionsclub/Widgets/Models/userModel.dart';
import 'homePage.dart';
import 'package:flutter/services.dart' ;
import 'Animation/animation.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;


class LoginPage extends StatefulWidget {
  final String title;

  @override
  LoginPage(this.title);
  _LoginPageState createState() => _LoginPageState();

}

String logoUrl1 = "images/lionLogo2.png";
String logoUrl2 = "images/lionLogo.png";
String logoUrl3 = "images/lionLogo1.png";

Color mainColor = Colors.red;
Color blackColor = Colors.black;
Color whiteColor = Colors.white;



class _LoginPageState extends State<LoginPage>{


  static User usr;
  Future<User> sendRequest(String username, String password) async {

    var url = 'http://lions3234d2.com/api.php';
    Map data = {
      "userName" : "ritam@brocodedevs.online",
      "password" : "pata nahi",
      'login'    : 'true'
    };

    var response = await http.post(
        url,
        body: data,
    );

    print("Response status: ${response.statusCode}");
    Map userMap = jsonDecode(response.body);
    print("Response body: "+ userMap.toString());


//    userMap['details'] = array[]
//    userMap['details']['name'] // name = ritam

    print("Name:"+userMap['details']['name']);



    usr = User(
      userMap["details"]["memberId"],
      userMap["details"]["name"],
      userMap["details"]["email"],
      userMap["details"]["dob"],
      userMap["details"]["businessType"],
      userMap["details"]["clubId"],
      userMap["details"]["businessName"],
      userMap["details"]["mobileNumber"],
      userMap["details"]["address"],
      userMap["details"]["userName"],
      userMap["details"]["marriageDate"],
      userMap["details"]["type"],
    );

    return usr;
  }


  void _navigateToLogin(BuildContext context){
    var object = sendRequest("Username","Password");


    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>
          MyHomePage(widget.title)
      ),
    );
  }


  @override
  void initState(){
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
  }
  @override
  void dispose() {
    super.dispose();
  }


  Widget createBody() {
    return Column(
      children: <Widget> [
        Stack(
          children: <Widget>[
          FadeAnimation(1.2, "LX", Container(
                  height: 330,
                  decoration: BoxDecoration(
                    color: blackColor,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(00), bottomRight: Radius.elliptical(400, 250)),
                  ),
                )),
            Container(
              height: 300,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(000), bottomRight: Radius.elliptical(400, 250)),
              ),
            ),
            Positioned(
              left: 10,
              bottom: 60,
              child: FadeAnimation(2,"LX",Container(
                width: 150,
                height: 150,
                child: Image.asset(logoUrl1),
              ))
            ),

            Positioned(
              left: 20,
              top: 70,
              right: 20,
              child: FadeAnimation (1, "LX",Container(
                child: Text(
                  "Lion's International",
                  maxLines: 1,
                  style: TextStyle(
                      fontSize: 30,
                      color: mainColor,
                      fontWeight: FontWeight.bold

                  ),
                ),
              ),
              ),
            ),
          ],
        ),
        Spacer(flex: 2,),

        FadeAnimation( 1.3,"LY", Padding(
          padding: const EdgeInsets.only(left: 50,right: 50,top: 10),
          child: GestureDetector(
            onTap: (){
         //       return _navigateToLogin(context);
            },
            child: Container(
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextField(
                    cursorWidth: 10,
                    obscureText: false,
                    maxLengthEnforced: false,
                    cursorColor: blackColor,

                    decoration: InputDecoration(
                      helperMaxLines: 0,
                      border: InputBorder.none,
                      hintText: "  Username",
                      hintStyle: TextStyle(
                        fontSize: 20,
                      ),
                    ),

                  ),
                ),
              ),
              height: 50,
            ),
            ),
          ),
        ),

        SizedBox(
          height: 10,
        ),

//          9720520514

        FadeAnimation( 1.5,"RY",  Padding(
          padding: const EdgeInsets.only(left: 50,right: 50,top: 10),
          child: GestureDetector(
            onTap: (){
           //     return _navigateToLogin(context);
            },
            child: Container(
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: TextField(
                    cursorWidth: 10,
                    obscureText: true,
                    maxLengthEnforced: false,
                    cursorColor: blackColor,

                    decoration: InputDecoration(
                      helperMaxLines: 0,
                      border: InputBorder.none,
                      hintText: "  Password",
                      hintStyle: TextStyle(
                        fontSize: 20,
                      ),
                    ),

                  ),
                ),
              ),
              height: 50,
            ),
          ),
        ),
        ),
        SizedBox(
          height: 50,
        ),
        FadeAnimation( 1.7,'RX', Padding(
          padding: const EdgeInsets.only(left: 40,right: 40,top: 10),
          child: GestureDetector(
            onTap: (){
              return _navigateToLogin(context);
            },
            child: Container(
              alignment: Alignment.bottomLeft,
              decoration: BoxDecoration(
                color: blackColor,
                borderRadius: BorderRadius.circular(400),
              ),
              child: Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              height: 60,
            ),
          ),
        ),
        ),
        Spacer(flex: 1,),

      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: createBody()
    );
  }
}
