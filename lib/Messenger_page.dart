import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:project1/profile_page.dart';


class MessengerPage extends StatefulWidget {
  const MessengerPage({Key key}) : super(key: key);

  @override
  _MessengerPageState createState() => _MessengerPageState();
}

class _MessengerPageState extends State<MessengerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(240, 240, 240, 0.6),
        leading: IconButton(
          icon: Icon(
              Icons.arrow_back_ios_outlined,
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
          "Messenger",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            color: Color.fromRGBO(24, 24, 35, 1)
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.refresh_outlined,
              color: Color.fromRGBO(24, 24, 35, 1),
              ),
              iconSize: 20,
              onPressed: (){
                Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context)=> MessengerPage(),
                ),
                );
              },
          ),
        ],
      ),
    );
  }
}
