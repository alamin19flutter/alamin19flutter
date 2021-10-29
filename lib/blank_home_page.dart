import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:project1/splash_screen.dart';

class BlankHomePage extends StatefulWidget {
  const BlankHomePage({Key key}) : super(key: key);

  @override
  _BlankHomePageState createState() => _BlankHomePageState();
}

class _BlankHomePageState extends State<BlankHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: FlatButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>SplashScreen(),
                ),
            );
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 48,
                  backgroundImage: AssetImage(
                    "image/Profile_image.jpg",
                  ),
                  backgroundColor: Color.fromRGBO(191,255, 0, 1),
                ),
              ),
            ],
          ),
          ),
        ),
      );
  }
}
