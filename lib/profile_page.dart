import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:project1/edit_page.dart';
import 'splash_screen.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(242, 183, 247, 1),
        title: Text(
            "Profile Page",
          style: TextStyle(
            fontSize: 25,
            color: Color.fromRGBO(19, 211, 36, 1),
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(
              builder: (context)=> SplashScreen(),
             ),
            );
          },
          icon: Icon(
            Icons.home,
            color: Color.fromRGBO(7, 125, 28, 0.7),
          ),
          iconSize: 25,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 2,),
            child: Container(
              height: 25,
              width: 85,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Color.fromRGBO(235, 153, 14, 1),
                border: Border.all(
                  color: Color.fromRGBO(188, 85, 149, 1),
                  width: 3,
                  style: BorderStyle.solid,
                )
              ),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>EditPage(),
                    ),
                  );
                } ,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Edit",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    Icon(
                      Icons.create_rounded,
                      size: 15,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.center,
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                // Profile image, Address And Name Container

                Container(
                  height: MediaQuery.of(context).size.height/5,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                      // Profile Image Container

                      Container(
                        height: MediaQuery.of(context).size.height/5,
                        width: MediaQuery.of(context).size.width/3.5,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("images/Sheikh Hasina.jpg"),
                            fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            color: Color.fromRGBO(0, 0, 0, .5),
                            width: 3,
                            style: BorderStyle.solid,
                          ),
                          borderRadius:  BorderRadius.circular(15),
                        ),
                      ),



                      // Profile  Name And Address

                      Container(
                        height: MediaQuery.of(context).size.height/6,
                        width: MediaQuery.of(context).size.width/1.5,
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: RichText(
                          textAlign: TextAlign.start,
                          text: TextSpan(
                            text: "Sheikh Hasina\n\n",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 20,
                              fontStyle: FontStyle.normal,
                              color: Color.fromRGBO(86, 86, 86, 1),
                            ),
                            children: [
                              TextSpan(
                                text: "National Parliament House, Sher-E-Bangla Nagar, Dhaka.",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  fontStyle: FontStyle.normal,
                                  color: Color.fromRGBO(91, 79, 79, 1),
                                ),
                              ),
                            ]
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                 //Bio Container

                Container(
                  height: MediaQuery.of(context).size.height/3,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    //Bio Text And Create Icon Container.
                    children: [
                      //text and icon container


                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: MediaQuery.of(context).size.height/10,
                          width: MediaQuery.of(context).size.width/4,
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "Bio",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                  color: Color.fromRGBO(34, 38, 42, 1),
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Icon(CupertinoIcons.info_circle,
                              size: 20,
                              color: Color.fromRGBO(35, 38, 45, 1),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Bio Container
                      Container(
                        height: MediaQuery.of(context).size.height/5,
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "Sheikh Hasina Wazed is a Bangladeshi politician who has been serving as the Prime Minister of Bangladesh since January 2009."
                          "She previously served as prime minister from June 1996 to July 2001."
                          "She is the longest serving prime minister in the history of Bangladesh,"
                          "having served for a combined total of over 17 years. "
                          "Hasina has been considered one of the most powerful women in the world,"
                          "ranking 39th on Forbes magazine's list of The World's 100 Most Powerful Women in 2020, 26th in 2018,",

                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            color: Color.fromRGBO(65, 55, 45, 1),
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  ),
                ),

                //Information Container
                Container(
                  height: MediaQuery.of(context).size.height/3.2,
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      // Dob

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.calendar_today_sharp,
                          size: 16,
                          color: Color.fromRGBO(65, 63, 21, 1),
                          ),
                          SizedBox(width: 15,),
                          Text(
                            "Born : ",
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(65, 63, 21, 1),
                            ),
                          ),
                          SizedBox(width: 15,),
                          Text(
                            "September 28, 1947 (age 75 years)",
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(65, 63, 21, 1),
                            ),
                          ),
                        ],
                      ),

                      //Spouse Row

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.perm_identity_outlined,
                            size: 16,
                            color: Color.fromRGBO(65, 63, 21, 1),
                          ),
                          SizedBox(width: 15,),
                          Text(
                            "Spouse: ",
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(65, 63, 21, 1),
                            ),
                          ),
                          SizedBox(width: 15,),
                          Text(
                            "M. A. Wazed Miah (m. 1967–2009)",
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(65, 63, 21, 1),
                            ),
                          ),
                        ],
                      ),

                      //Book Row

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.library_books_outlined,
                            size: 16,
                            color: Color.fromRGBO(122, 72, 12, 1),
                          ),
                          SizedBox(width: 15,),
                          Text(
                            "Books : ",
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(122, 72, 12, 1),
                            ),
                          ),
                          SizedBox(width: 15,),
                          Text(
                            " People and Democracy",
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(122, 72, 12, 1),
                            ),
                          ),
                        ],
                      ),

                      //Children Row

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.person_add_alt,
                            size: 16,
                            color: Color.fromRGBO(142, 92, 74, 1),
                          ),
                          SizedBox(width: 15,),
                          Text(
                            "Children : ",
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(142, 92, 74, 1),
                            ),
                          ),
                          SizedBox(width: 15,),
                          Text(
                            "Sajeeb Wazed, Saima Wazed",
                            style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(142, 92, 74, 1),
                            ),
                          ),
                        ],
                      ),

                      //Education Wrap

                      Container(
                        margin: EdgeInsets.only(right: 99),
                        child: Wrap(
                          runSpacing: 5,
                          alignment: WrapAlignment.start,
                          direction: Axis.horizontal,
                          children: [
                            Icon(Icons.bookmark_border,
                              size: 16,
                              color: Color.fromRGBO(142, 92, 74, 1),
                            ),
                            SizedBox(width: 15,),
                            Text(
                              "Education : ",
                              style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(142, 92, 74, 1),
                              ),
                            ),
                            SizedBox(width: 15,),
                            Text(
                              "University of Dhaka (1973), Eden Mohila College",
                              style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(142, 92, 74, 1),
                              ),
                            ),
                          ],
                        ),
                      ),

                      //Award Wrap

                      Container(
                        margin: EdgeInsets.only(right: 97),
                        child: Wrap(
                          runSpacing: 5,
                          alignment: WrapAlignment.start,
                          direction: Axis.horizontal,
                          children: [
                            Icon(Icons.bookmark,
                              size: 16,
                              color: Color.fromRGBO(142, 92, 74, 1),
                            ),
                            SizedBox(width: 15,),
                            Text(
                              "Award : ",
                              style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(142, 92, 74, 1),
                              ),
                            ),
                            SizedBox(width: 15,),
                            Text(
                              "Indira Gandhi Prize, Glamour Award The Chosen Ones",
                              style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(142, 92, 74, 1),
                              ),
                            ),


                          ],
                        ),
                      ),


                    ],
                  ),

                ),


                Container(
                  height: MediaQuery.of(context).size.height/4,
                  width:  MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(top: 12, left: 15),

                  child: Wrap(
                    direction: Axis.horizontal,
                    //alignment: WrapAlignment.spaceEvenly,
                    spacing: 10,
                    runSpacing: 5,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height/16,
                        width:  MediaQuery.of(context).size.width/4.2,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(22, 22, 22, 1),
                            width: 2.5,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(25),
                          color: Color.fromRGBO(245, 245, 245, 0.5),
                        ),
                        child: FlatButton.icon(
                          onPressed: (){},
                          icon: Icon(Icons.message_outlined,
                            size: 12,
                            color: Color.fromRGBO(22, 22, 22, 1),
                          ),
                          label: Text("Messenger",
                            style: TextStyle(
                              color: Color.fromRGBO(22, 22, 22, 1),
                              fontWeight: FontWeight.w600,
                              fontSize: 11,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height/16,
                        width:  MediaQuery.of(context).size.width/4.7,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(22, 22, 22, 1),
                            width: 2.5,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(25),
                          color: Color.fromRGBO(245, 245, 245, 0.5),
                        ),
                        child: FlatButton.icon(
                          onPressed: (){},
                          icon: Icon(
                            Icons.follow_the_signs_rounded,
                            size: 12,
                            color: Color.fromRGBO(22, 22, 22, 1),
                          ),
                          label: Text("Follower",
                            style: TextStyle(
                              color: Color.fromRGBO(22, 22, 22, 1),
                              fontWeight: FontWeight.w600,
                              fontSize: 11,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height/16,
                        width:  MediaQuery.of(context).size.width/4.5,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(22, 22, 22, 1),
                            width: 2.5,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(25),
                          color: Color.fromRGBO(245, 245, 245, 0.5),
                        ),
                        child: FlatButton.icon(
                          onPressed: (){},
                          icon: Icon(
                            Icons.add_circle_outline,
                            size: 12,
                            color: Color.fromRGBO(22, 22, 22, 1),
                          ),
                          label: Text(
                            "Following",
                            style: TextStyle(
                              color: Color.fromRGBO(22, 22, 22, 1),
                              fontWeight: FontWeight.w600,
                              fontSize: 11,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height/16,
                        width:  MediaQuery.of(context).size.width/4.6,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(22, 22, 22, 1),
                            width: 2.5,
                            style: BorderStyle.solid,
                          ),
                          borderRadius: BorderRadius.circular(25),
                          color: Color.fromRGBO(245, 245, 245, 0.5),
                        ),
                        child: FlatButton.icon(
                          onPressed: (){},
                          icon: Icon(
                            Icons.post_add_outlined,
                            size: 12,
                            color: Color.fromRGBO(22, 22, 22, 1),
                          ),
                          label: Text(
                            "Posts",
                            style: TextStyle(
                              color: Color.fromRGBO(22, 22, 22, 1),
                              fontWeight: FontWeight.w600,
                              fontSize: 11,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
