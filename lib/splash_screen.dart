import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:project1/profile_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.only(top: 100),
                height: MediaQuery.of(context).size.height/4,
                width: MediaQuery.of(context).size.width/2,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage("images/ICT Minsitry.png"),
                    fit: BoxFit.fill,
                  ),
                border: Border.all(
                  color: Color.fromRGBO(0, 0, 255, 1),
                ),
                ),
              ),


              // Text Container
              Container(
                height: MediaQuery.of(context).size.height/3,
                width: MediaQuery.of(context).size.width/1.5,
                padding: EdgeInsets.only(
                  left: 40,
                  right: 20,
                  top: 30,
                  bottom: 10,
                ),
                child: Text(
                    "Welcome To Flutter Advance Design Course. This course is created by an ICT division Bangladesh. Let's enter in this course.",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 22,
                  fontStyle: FontStyle.normal,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  decorationColor: Colors.green,
                  decorationStyle: TextDecorationStyle.wavy,
                  height: 1.4,
                ),
                  textAlign: TextAlign.center,
                ),
              ),



              // Button Container
              Container(
                height: MediaQuery.of(context).size.height/15,
                  width: MediaQuery.of(context).size.width/4,
                margin: EdgeInsets.only(left: 25, bottom: 150),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(5, 252, 244, 0.5),
                  border: Border.all(
                    color: Color.fromRGBO(199, 69, 47, 0.5),
                    width: 5,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: FlatButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context)=> ProfilePage(),
                      ),
                    );
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Start",
                        style: TextStyle(
                          fontSize: 20,
                          color: Color.fromRGBO(174, 123, 212, 1),
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 20,
                        color: Color.fromRGBO(252, 5, 79, 1),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
