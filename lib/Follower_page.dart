import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:project1/profile_page.dart';


class FollowerPage extends StatefulWidget {
  const FollowerPage({Key key}) : super(key: key);

  @override
  _FollowerPageState createState() => _FollowerPageState();
}

class _FollowerPageState extends State<FollowerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(240, 240, 240, 0.6),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_outlined,
            color: Color.fromRGBO(24, 24, 35, 1),
          ),
          iconSize: 20,
          onPressed: (){
            Navigator.push(
                context,
              MaterialPageRoute(
                  builder: (context)=> ProfilePage(),
              ),
            );
          },
        ),
        title: Text(
          "Follower",
          style: TextStyle(
            color: Color.fromRGBO(24, 24, 35, 1),
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.refresh_outlined,
            color: Color.fromRGBO(24, 24, 35, 1),
              size: 20,
            ),
            onPressed: (){
              Navigator.push(
                  context,
                MaterialPageRoute(
                    builder: (context)=> FollowerPage(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
