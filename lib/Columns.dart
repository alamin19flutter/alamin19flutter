import "package:flutter/material.dart";
import 'package:flutter/cupertino.dart';

class Columns extends StatefulWidget {
  const Columns({Key key}) : super(key: key);

  @override
  _ColumnsState createState() => _ColumnsState();
}

class _ColumnsState extends State<Columns> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime,
        title: Text(
          "Index",
          style: TextStyle(
            fontStyle: FontStyle.normal,
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            color: Colors.black38,
            child: Row(
              children: [
                Text("Level-1"),
              ],
            ),
            alignment: Alignment.topLeft,
          ),
          Container(
            height: 100,
            color: Colors.black38,
          ),
        ],
      ),
    );
  }
}

