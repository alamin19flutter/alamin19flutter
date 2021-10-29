import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:project1/profile_page.dart';

class EditPage extends StatefulWidget {
  const EditPage({Key key}) : super(key: key);

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(242, 183, 247, 1),
        leading: IconButton(
          onPressed: (){
            Navigator.push
              (context,
              MaterialPageRoute(builder: (context)=>ProfilePage(),
              ),
            );
          },
          icon: Icon(
            Icons.person_outline,
            color: Color.fromRGBO(117, 133, 121, 1),
                ),
          iconSize: 28,
              ),
        title: Text(
          "Edit Page",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 20,
            color: Color.fromRGBO(28, 26, 54, 0.5),
            fontStyle: FontStyle.normal,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 9.5,
            ),
            child: Container(
              height: MediaQuery.of(context).size.height/10,
              width: MediaQuery.of(context).size.width/4,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromRGBO(235, 52, 210,3),
                  width: 3,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(25),
                  color: Color.fromRGBO(235, 52, 210,1),
              ),
              child: FlatButton.icon(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>ProfilePage(),
                      ),
                    );
                  },
                  icon: Icon(Icons.save_outlined,
                  color: Color.fromRGBO(0, 0, 0, 5),
                  size: 15,
                  ),
                  label: Text("Save",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                  ),
              ),
            ),
          ),
        ],
            ),
        );
  }
}
