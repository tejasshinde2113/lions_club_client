import 'package:flutter/material.dart';
import 'homePage.dart';
import 'package:flutter/services.dart' ;
import 'Animation/animation.dart';


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
  void _navigateToLogin(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MyHomePage(widget.title)),
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
    return Container(
      color: mainColor,
//        color: Colors.amber,
      child: Column(
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
//                return _navigateToLogin(context);
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
//                return _navigateToLogin(context);
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
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: createBody()
    );
  }
}
