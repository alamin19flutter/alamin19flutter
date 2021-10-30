import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:project1/Models/models.dart';
import 'package:project1/profile_page.dart';

List<Followingmodel> followingmodel = [
  Followingmodel(profileImageURL: "images/user_images/User-1.jpg", date: DateTime.now().hour.toString(), username: "Chanchal Chowdhury",),
  Followingmodel(profileImageURL: "images/user_images/User-2.jpg", date: DateTime.now().hour.toString(), username: "Riaz",),
  Followingmodel(profileImageURL: "images/user_images/User-3.jpg", date: DateTime.now().hour.toString(), username: "Mosharraf Karim",),
  Followingmodel(profileImageURL: "images/user_images/User-4.jpg", date: DateTime.now().hour.toString(), username: "Humayun Faridi",),
  Followingmodel(profileImageURL: "images/user_images/User-5.jpg", date: DateTime.now().hour.toString(), username: "Purnima",),
  Followingmodel(profileImageURL: "images/user_images/User-6.jpg", date: DateTime.now().hour.toString(), username: "Nusrat Imroz Tisha",),
  Followingmodel(profileImageURL: "images/user_images/User-7.jpg", date: DateTime.now().hour.toString(), username: "Asaduzzaman Noor",),
  Followingmodel(profileImageURL: "images/user_images/User-8.jpg", date: DateTime.now().hour.toString(), username: "Jaya Ahsan",),
  Followingmodel(profileImageURL: "images/user_images/User-9.jpg", date: DateTime.now().hour.toString(), username: "A.T.M. Shamsuzzaman",),
  Followingmodel(profileImageURL: "images/user_images/User-10.jpg", date: DateTime.now().hour.toString(), username: "Abul Hayat",),
];


class FollowingPage extends StatefulWidget {
  const FollowingPage({Key key}) : super(key: key);

  @override
  _FollowingPageState createState() => _FollowingPageState();
}

class _FollowingPageState extends State<FollowingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(245, 245, 245, 0.6),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_outlined,
            color: Color.fromRGBO(24, 24, 35, 1),
            size: 20,
            ),
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
          "Following",
          style: TextStyle(
            color: Color.fromRGBO(24, 24, 35, 1),
            fontSize: 20,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.refresh_outlined),
              iconSize: 20,
              color: Color.fromRGBO(24, 24, 35, 1),
              onPressed: (){
                Navigator.push(
                    context,
                  MaterialPageRoute(
                      builder: (context)=> FollowingPage(),
                  ),
                );
              },
          ),
        ],
    ),
      body: Align(
        alignment: Alignment.centerLeft,
        child:
        ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            itemCount: followingmodel.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                height: MediaQuery.of(context).size.height/10,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  children: [

                  ],
                ),
              );
            }
        ),
      ),
    );
  }
}
